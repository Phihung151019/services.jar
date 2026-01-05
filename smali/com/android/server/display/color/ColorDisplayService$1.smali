.class public final Lcom/android/server/display/color/ColorDisplayService$1;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;

.field public final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$1;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iput-object p3, p0, Lcom/android/server/display/color/ColorDisplayService$1;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$1;->val$cr:Landroid/content/ContentResolver;

    iget-object p2, p0, Lcom/android/server/display/color/ColorDisplayService$1;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget p2, p2, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v0, "user_setup_complete"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$1;->val$cr:Landroid/content/ContentResolver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$1;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Lcom/android/server/display/color/ColorDisplayService$1;

    iget-boolean p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mBootCompleted:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->setUp()V

    :cond_0
    return-void
.end method
