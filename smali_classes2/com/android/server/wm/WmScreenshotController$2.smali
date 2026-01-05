.class public final Lcom/android/server/wm/WmScreenshotController$2;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/WmScreenshotController;

.field public final synthetic val$conn:Lcom/android/server/wm/WmScreenshotController$1;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WmScreenshotController;Landroid/os/Looper;Lcom/android/server/wm/WmScreenshotController$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotController$2;->this$0:Lcom/android/server/wm/WmScreenshotController;

    iput-object p3, p0, Lcom/android/server/wm/WmScreenshotController$2;->val$conn:Lcom/android/server/wm/WmScreenshotController$1;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/WmScreenshotController$2;->val$conn:Lcom/android/server/wm/WmScreenshotController$1;

    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController$2;->this$0:Lcom/android/server/wm/WmScreenshotController;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WmScreenshotController;->resetConnection(Landroid/content/ServiceConnection;Z)V

    return-void
.end method
