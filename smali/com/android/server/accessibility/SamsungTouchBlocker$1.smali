.class public final Lcom/android/server/accessibility/SamsungTouchBlocker$1;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungTouchBlocker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$1;->this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    const-string/jumbo p1, "SamsungTouchBlocker"

    const-string/jumbo v0, "Touch Blocker is deactivated"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$1;->this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z

    return-void
.end method
