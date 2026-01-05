.class public final Lcom/android/server/accessibility/MouseKeysInterceptor;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# static fields
.field public static final DEBUG:Z

.field public static final MOUSE_POINTER_MOVEMENT_STEP:F = 1.8f

.field public static final MOUSE_SCROLL_STEP:F = 0.2f


# instance fields
.field public mActiveInputDeviceId:I

.field public mActiveMoveKey:I

.field public mActiveScrollKey:I

.field public final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final mCreateVirtualMouseThread:Ljava/lang/Thread;

.field public final mDeviceKeyCodeMap:Landroid/util/SparseArray;

.field public final mHandler:Landroid/os/Handler;

.field public final mInputManager:Landroid/hardware/input/InputManager;

.field public mLastTimeKeyActionPerformed:J

.field public mScrollToggleOn:Z

.field public mVirtualDevice:Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

.field public mVirtualMouse:Landroid/hardware/input/VirtualMouse;


# direct methods
.method public static $r8$lambda$bmlvUec6jxm8e9vAdANaoGIFYyk(Lcom/android/server/accessibility/MouseKeysInterceptor;Landroid/view/KeyEvent;I)V
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    iput v3, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveInputDeviceId:I

    iget-object v4, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v4, v3}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    const-string/jumbo v4, "MouseKeysInterceptor"

    if-nez v3, :cond_1

    const-string/jumbo p0, "onKeyEventInternal inputDevice is null"

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    iget v6, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveInputDeviceId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->contains(I)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/MouseKeysInterceptor;->initializeDeviceToEnumMap(Landroid/view/InputDevice;)V

    :cond_2
    iget v5, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveInputDeviceId:I

    iget-object v6, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-super {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    return-void

    :cond_3
    const/4 p2, 0x2

    const/4 v5, -0x1

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->SCROLL_TOGGLE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->getKeyCode(Landroid/view/InputDevice;)I

    move-result v0

    if-ne v2, v0, :cond_5

    iget-boolean p1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mScrollToggleOn:Z

    xor-int/lit8 p2, p1, 0x1

    iput-boolean p2, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mScrollToggleOn:Z

    sget-boolean p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->DEBUG:Z

    if-eqz p0, :cond_11

    if-nez p1, :cond_4

    const-string/jumbo p0, "ON"

    goto :goto_1

    :cond_4
    const-string/jumbo p0, "OFF"

    :goto_1
    const-string/jumbo p1, "Scroll toggle "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    sget-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->HOLD:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->getKeyCode(Landroid/view/InputDevice;)I

    move-result v0

    const/16 v6, 0xb

    if-ne v2, v0, :cond_6

    invoke-virtual {p0, v1, v6}, Lcom/android/server/accessibility/MouseKeysInterceptor;->sendVirtualMouseButtonEvent(II)V

    return-void

    :cond_6
    sget-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->RELEASE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->getKeyCode(Landroid/view/InputDevice;)I

    move-result v0

    const/16 v7, 0xc

    if-ne v2, v0, :cond_7

    invoke-virtual {p0, v1, v7}, Lcom/android/server/accessibility/MouseKeysInterceptor;->sendVirtualMouseButtonEvent(II)V

    return-void

    :cond_7
    sget-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->LEFT_CLICK:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->getKeyCode(Landroid/view/InputDevice;)I

    move-result v0

    if-eq v2, v0, :cond_b

    sget-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->RIGHT_CLICK:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->getKeyCode(Landroid/view/InputDevice;)I

    move-result v0

    if-ne v2, v0, :cond_8

    goto :goto_2

    :cond_8
    iget-boolean v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mScrollToggleOn:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->UP_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->getKeyCode(Landroid/view/InputDevice;)I

    move-result v0

    if-eq v2, v0, :cond_9

    sget-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->DOWN_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->getKeyCode(Landroid/view/InputDevice;)I

    move-result v0

    if-eq v2, v0, :cond_9

    sget-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->LEFT_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->getKeyCode(Landroid/view/InputDevice;)I

    move-result v0

    if-eq v2, v0, :cond_9

    sget-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->RIGHT_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->getKeyCode(Landroid/view/InputDevice;)I

    move-result v0

    if-ne v2, v0, :cond_a

    :cond_9
    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveScrollKey:I

    if-ne v0, v5, :cond_11

    iput v2, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveScrollKey:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mLastTimeKeyActionPerformed:J

    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_a
    iget p2, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveMoveKey:I

    if-ne p2, v5, :cond_11

    iput v2, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveMoveKey:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mLastTimeKeyActionPerformed:J

    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_b
    :goto_2
    iget p1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveInputDeviceId:I

    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    if-eqz p1, :cond_c

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    goto :goto_3

    :cond_c
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_e

    const/16 v1, 0x9

    if-eq v0, v1, :cond_d

    move v1, v5

    goto :goto_4

    :cond_d
    move v1, p2

    :cond_e
    :goto_4
    if-eq v1, v5, :cond_f

    invoke-virtual {p0, v1, v6}, Lcom/android/server/accessibility/MouseKeysInterceptor;->sendVirtualMouseButtonEvent(II)V

    invoke-virtual {p0, v1, v7}, Lcom/android/server/accessibility/MouseKeysInterceptor;->sendVirtualMouseButtonEvent(II)V

    :cond_f
    sget-boolean p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->DEBUG:Z

    if-eqz p0, :cond_11

    if-ne v1, v5, :cond_10

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Button code is unknown for mouse key event: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Performed mouse key event: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for button action"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-void

    :cond_12
    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveMoveKey:I

    if-ne v0, v2, :cond_13

    iput v5, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveMoveKey:I

    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_13
    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveScrollKey:I

    if-ne v0, v2, :cond_14

    iput v5, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveScrollKey:I

    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_14
    const-string p0, "Dropping event with key code: \'"

    const-string p2, "\', with no matching down event from deviceId = "

    invoke-static {v2, p0, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "MouseKeysInterceptor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/accessibility/MouseKeysInterceptor;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/hardware/input/InputManager;Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mVirtualDevice:Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    iput-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mVirtualMouse:Landroid/hardware/input/VirtualMouse;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveMoveKey:I

    iput v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveScrollKey:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mLastTimeKeyActionPerformed:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mScrollToggleOn:Z

    iput v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveInputDeviceId:I

    iput-object p1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iput-object p2, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mInputManager:Landroid/hardware/input/InputManager;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    new-instance p3, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/MouseKeysInterceptor;I)V

    invoke-direct {p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p3, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mCreateVirtualMouseThread:Ljava/lang/Thread;

    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    invoke-virtual {p2, p0, p1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const-string/jumbo p0, "MouseKeysInterceptor"

    const-string/jumbo p1, "Unexpected message type"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v3

    iget p1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveScrollKey:I

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/android/server/accessibility/MouseKeysInterceptor;->handleMouseMessage(IIJ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v2

    iget p1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveMoveKey:I

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/accessibility/MouseKeysInterceptor;->handleMouseMessage(IIJ)V

    :goto_0
    return v1
.end method

.method public final handleMouseMessage(IIJ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    iget-wide v5, v0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mLastTimeKeyActionPerformed:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0xa

    cmp-long v5, v5, v7

    if-ltz v5, :cond_9

    const/4 v5, 0x0

    const-string/jumbo v6, "MouseKeysInterceptor"

    const-string v9, ")"

    const-string v10, ", y="

    const-string/jumbo v11, "Performed mouse key event: "

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ne v2, v13, :cond_2

    iget v13, v0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveInputDeviceId:I

    iget-object v14, v0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseArray;

    if-eqz v13, :cond_0

    invoke-virtual {v13, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    const v14, -0x4019999a    # -1.8f

    const v15, 0x3fe66666    # 1.8f

    const/high16 v16, 0x40000000    # 2.0f

    packed-switch v13, :pswitch_data_0

    :cond_1
    move v13, v12

    goto :goto_2

    :pswitch_0
    invoke-static/range {v16 .. v16}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v12

    div-float v12, v15, v12

    invoke-static/range {v16 .. v16}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v13

    :goto_0
    div-float v13, v15, v13

    goto :goto_2

    :pswitch_1
    iget-boolean v13, v0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mScrollToggleOn:Z

    if-nez v13, :cond_1

    move v13, v15

    goto :goto_2

    :pswitch_2
    invoke-static/range {v16 .. v16}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v12

    div-float v12, v14, v12

    invoke-static/range {v16 .. v16}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v13

    goto :goto_0

    :pswitch_3
    move v13, v12

    move v12, v15

    goto :goto_2

    :pswitch_4
    move v13, v12

    move v12, v14

    goto :goto_2

    :pswitch_5
    invoke-static/range {v16 .. v16}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v12

    div-float v12, v15, v12

    invoke-static/range {v16 .. v16}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v13

    :goto_1
    div-float v13, v14, v13

    goto :goto_2

    :pswitch_6
    iget-boolean v13, v0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mScrollToggleOn:Z

    if-nez v13, :cond_1

    move v13, v14

    goto :goto_2

    :pswitch_7
    invoke-static/range {v16 .. v16}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v12

    div-float v12, v14, v12

    invoke-static/range {v16 .. v16}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v13

    goto :goto_1

    :goto_2
    invoke-virtual {v0}, Lcom/android/server/accessibility/MouseKeysInterceptor;->waitForVirtualMouseCreation()V

    iget-object v14, v0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mVirtualMouse:Landroid/hardware/input/VirtualMouse;

    new-instance v15, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;

    invoke-direct {v15}, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;-><init>()V

    invoke-virtual {v15, v12}, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;->setRelativeX(F)Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;

    move-result-object v15

    invoke-virtual {v15, v13}, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;->setRelativeY(F)Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;->build()Landroid/hardware/input/VirtualMouseRelativeEvent;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/hardware/input/VirtualMouse;->sendRelativeEvent(Landroid/hardware/input/VirtualMouseRelativeEvent;)V

    sget-boolean v14, Lcom/android/server/accessibility/MouseKeysInterceptor;->DEBUG:Z

    if-eqz v14, :cond_8

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for relative pointer movement (x="

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_2
    const/4 v14, 0x2

    if-ne v2, v14, :cond_8

    iget v14, v0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveInputDeviceId:I

    iget-object v15, v0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/SparseArray;

    if-eqz v14, :cond_3

    invoke-virtual {v14, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    :cond_3
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const v15, 0x3e4ccccd    # 0.2f

    if-eq v14, v13, :cond_7

    const/4 v13, 0x6

    const v16, -0x41b33333    # -0.2f

    if-eq v14, v13, :cond_6

    const/4 v13, 0x3

    if-eq v14, v13, :cond_5

    const/4 v13, 0x4

    if-eq v14, v13, :cond_4

    move v15, v12

    goto :goto_3

    :cond_4
    move v15, v12

    move/from16 v12, v16

    goto :goto_3

    :cond_5
    move/from16 v17, v15

    move v15, v12

    move/from16 v12, v17

    goto :goto_3

    :cond_6
    move/from16 v15, v16

    :cond_7
    :goto_3
    invoke-virtual {v0}, Lcom/android/server/accessibility/MouseKeysInterceptor;->waitForVirtualMouseCreation()V

    iget-object v13, v0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mVirtualMouse:Landroid/hardware/input/VirtualMouse;

    new-instance v14, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;

    invoke-direct {v14}, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;-><init>()V

    invoke-virtual {v14, v12}, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;->setXAxisMovement(F)Landroid/hardware/input/VirtualMouseScrollEvent$Builder;

    move-result-object v14

    invoke-virtual {v14, v15}, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;->setYAxisMovement(F)Landroid/hardware/input/VirtualMouseScrollEvent$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;->build()Landroid/hardware/input/VirtualMouseScrollEvent;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/hardware/input/VirtualMouse;->sendScrollEvent(Landroid/hardware/input/VirtualMouseScrollEvent;)V

    sget-boolean v13, Lcom/android/server/accessibility/MouseKeysInterceptor;->DEBUG:Z

    if-eqz v13, :cond_8

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for scroll action with axis movement (x="

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    iput-wide v3, v0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mLastTimeKeyActionPerformed:J

    :cond_9
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    iget-object v0, v0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final initializeDeviceToEnumMap(Landroid/view/InputDevice;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/InputDevice;->getId()I

    move-result v0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-static {}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->values()[Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    invoke-virtual {v5, p1}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->getKeyCode(Landroid/view/InputDevice;)I

    move-result v6

    invoke-virtual {v1, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/MouseKeysInterceptor;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mVirtualDevice:Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->close()V

    :cond_0
    return-void
.end method

.method public final onInputDeviceAdded(I)V
    .locals 0

    return-void
.end method

.method public final onInputDeviceChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "onInputDeviceChanged inputDevice is null, deviceId : "

    const-string/jumbo v0, "MouseKeysInterceptor"

    invoke-static {p1, p0, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/MouseKeysInterceptor;->initializeDeviceToEnumMap(Landroid/view/InputDevice;)V

    :cond_1
    return-void
.end method

.method public final onInputDeviceRemoved(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public final onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x1000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "event="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ";policyFlags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "MouseKeysInterceptor.onKeyEvent"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/MouseKeysInterceptor;Landroid/view/KeyEvent;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendVirtualMouseButtonEvent(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/MouseKeysInterceptor;->waitForVirtualMouseCreation()V

    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mVirtualMouse:Landroid/hardware/input/VirtualMouse;

    new-instance v0, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;

    invoke-direct {v0}, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;-><init>()V

    invoke-virtual {v0, p2}, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->setAction(I)Landroid/hardware/input/VirtualMouseButtonEvent$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->setButtonCode(I)Landroid/hardware/input/VirtualMouseButtonEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->build()Landroid/hardware/input/VirtualMouseButtonEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/hardware/input/VirtualMouse;->sendButtonEvent(Landroid/hardware/input/VirtualMouseButtonEvent;)V

    return-void
.end method

.method public final waitForVirtualMouseCreation()V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mCreateVirtualMouseThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
