.class public final Lcom/android/server/input/debug/FocusEventDebugGlobalMonitor;
.super Landroid/view/InputEventReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mDebugView:Lcom/android/server/input/debug/FocusEventDebugView;


# direct methods
.method public constructor <init>(Lcom/android/server/input/debug/FocusEventDebugView;Lcom/android/server/input/InputManagerService;)V
    .locals 3

    const-string v0, "FocusEventDebugGlobalMonitor"

    const/4 v1, 0x0

    const v2, 0xffff

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->monitorInput(Ljava/lang/String;II)Landroid/view/InputChannel;

    move-result-object p2

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugGlobalMonitor;->mDebugView:Lcom/android/server/input/debug/FocusEventDebugView;

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/input/debug/FocusEventDebugGlobalMonitor;->mDebugView:Lcom/android/server/input/debug/FocusEventDebugView;

    move-object v2, p1

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    const/high16 v4, 0x400000

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    new-instance v3, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, v2}, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/input/debug/FocusEventDebugView;Landroid/view/MotionEvent;)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v1
.end method
