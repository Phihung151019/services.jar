.class public final Lcom/android/server/accessibility/autoaction/CornerActionController$1;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/CornerActionController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/CornerActionController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$1;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$1;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "accessibility_corner_actions"

    iget v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mUserId:I

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mCornerActions:[Ljava/lang/String;

    :cond_0
    return-void
.end method
