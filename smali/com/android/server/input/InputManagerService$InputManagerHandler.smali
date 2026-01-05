.class public final Lcom/android/server/input/InputManagerService$InputManagerHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    const/16 v2, 0x20

    const-wide v3, 0xffffffffL

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    sget-boolean p1, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "InputManager"

    const-string/jumbo p1, "mSensorManager is null."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v1, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget p1, p1, Lcom/android/internal/os/SomeArgs;->argi4:I

    sget-boolean v3, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/input/InputManagerService;->deliverSwitchEventChanged(IIII)V

    return-void

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    int-to-long v0, v0

    and-long/2addr v0, v3

    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    int-to-long v3, v3

    shl-long v2, v3, v2

    or-long/2addr v0, v2

    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/input/InputManagerService;->wakeUp(JILjava/lang/String;)V

    return-void

    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    sget-boolean v1, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    invoke-virtual {p0, v0, p1}, Lcom/android/server/input/InputManagerService;->deliverMultiFingerGesture(II)V

    return-void

    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, p1, Landroid/view/PointerIcon;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/view/PointerIcon;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-boolean v1, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    invoke-virtual {p0, v0, p1}, Lcom/android/server/input/InputManagerService;->deliverPointerIconChanged(ILandroid/view/PointerIcon;)V

    return-void

    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    int-to-long v0, v0

    and-long/2addr v0, v3

    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    int-to-long v3, v3

    shl-long v2, v3, v2

    or-long/2addr v0, v2

    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget-boolean v2, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/input/InputManagerService;->deliverLidStateChanged(JZ)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->systemRunning()V

    return-void

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->handleCurrentUserChanged(I)V

    return-void

    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    int-to-long v0, v0

    and-long/2addr v0, v3

    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    int-to-long v3, v3

    shl-long v2, v3, v2

    or-long/2addr v0, v2

    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget-boolean v2, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/input/InputManagerService;->deliverTabletModeChanged(JZ)V

    return-void

    :cond_4
    sget-boolean p1, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->reloadDeviceAliases()V

    return-void

    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Landroid/view/InputDevice;

    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->deliverInputDevicesChanged([Landroid/view/InputDevice;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
