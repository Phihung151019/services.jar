.class public final Lcom/android/server/inputmethod/HandwritingModeController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentDisplayId:I

.field public mCurrentRequestId:I

.field public mDelegatePackageName:Ljava/lang/String;

.field public mDelegationConnectionlessFlow:Z

.field public mDelegationIdleTimeoutHandler:Landroid/os/Handler;

.field public mDelegationIdleTimeoutRunnable:Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda0;

.field public mDelegatorFromDefaultHomePackage:Z

.field public mDelegatorPackageName:Ljava/lang/String;

.field public final mDiscardDelegationTextRunnable:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda4;

.field public mHandwritingBuffer:Ljava/util/ArrayList;

.field public mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

.field public mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

.field public mInkWindowInitRunnable:Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;

.field public final mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

.field public final mLooper:Landroid/os/Looper;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mRecordingGesture:Z

.field public mRecordingGestureAfterStylusUp:Z

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mLooper:Landroid/os/Looper;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentDisplayId:I

    const-class p1, Lcom/android/server/input/InputManagerService$LocalService;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/input/InputManagerService$LocalService;

    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    const-class p1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    iput-object p3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInkWindowInitRunnable:Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;

    iput-object p4, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDiscardDelegationTextRunnable:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda4;

    return-void
.end method


# virtual methods
.method public final clearPendingHandwritingDelegation()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutRunnable:Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutHandler:Landroid/os/Handler;

    :cond_0
    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutRunnable:Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda0;

    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatorPackageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatePackageName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatorFromDefaultHomePackage:Z

    iget-boolean v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationConnectionlessFlow:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationConnectionlessFlow:Z

    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDiscardDelegationTextRunnable:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda4;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda4;->run()V

    :cond_1
    return-void
.end method

.method public final getCurrentRequestId()Ljava/util/OptionalInt;
    .locals 1

    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    if-nez v0, :cond_0

    const-string p0, "HandwritingModeController"

    const-string v0, "Cannot get requestId: Handwriting was not initialized."

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object p0

    return-object p0

    :cond_0
    iget p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    invoke-static {p0}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object p0

    return-object p0
.end method

.method public final getHandwritingBufferSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatePackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatorPackageName:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/16 p0, 0x7d0

    return p0

    :cond_0
    const/16 p0, 0x64

    return p0
.end method

.method public final initializeHandwritingSpy(I)V
    .locals 5

    iget v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentDisplayId:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/HandwritingModeController;->reset(Z)V

    iput p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentDisplayId:I

    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->getHandwritingBufferSize()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    :cond_1
    const-string/jumbo v0, "stylus-handwriting-event-receiver-"

    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    iget-object v2, v2, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/input/InputManagerService;->createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v2

    const-string v3, "Failed to create input channel"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mInputSurface:Landroid/view/SurfaceControl;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowManagerInternal;->getHandwritingSurfaceForDisplay(I)Landroid/view/SurfaceControl;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_3

    const-string p0, "HandwritingModeController"

    const-string p1, "Failed to create input surface"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    new-instance v4, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    invoke-direct {v4, v0, p1, v3, v2}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;-><init>(Ljava/lang/String;ILandroid/view/SurfaceControl;Landroid/view/InputChannel;)V

    iput-object v4, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    new-instance p1, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;

    invoke-virtual {v2}, Landroid/view/InputChannel;->dup()Landroid/view/InputChannel;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v3

    new-instance v4, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/inputmethod/HandwritingModeController;)V

    invoke-direct {p1, v0, v2, v3, v4}, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;)V

    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    iget p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    return-void
.end method

.method public final isStylusGestureOngoing()Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    sub-long/2addr v3, v0

    const-wide/16 v0, 0xc8

    cmp-long p0, v3, v0

    if-gez p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    iget-boolean p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    return p0
.end method

.method public final prepareStylusHandwritingDelegation(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    iput-object p2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatePackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatorPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatorFromDefaultHomePackage:Z

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    check-cast p2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/android/server/pm/Computer;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatorFromDefaultHomePackage:Z

    :cond_0
    iput-boolean p4, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationConnectionlessFlow:Z

    if-nez p4, :cond_2

    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->getHandwritingBufferSize()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->getHandwritingBufferSize()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutHandler:Landroid/os/Handler;

    if-nez p1, :cond_3

    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mLooper:Landroid/os/Looper;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutHandler:Landroid/os/Handler;

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutRunnable:Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_1
    new-instance p1, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/HandwritingModeController;)V

    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutRunnable:Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutHandler:Landroid/os/Handler;

    const-wide/16 p2, 0xbb8

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final reset(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    new-instance v2, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-nez p1, :cond_1

    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object p1, p1, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    :cond_2
    iget-boolean p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationConnectionlessFlow:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->clearPendingHandwritingDelegation()V

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    iput-boolean p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    return-void
.end method

.method public final setNotTouchable(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->getCurrentRequestId()Ljava/util/OptionalInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget v0, p1, Landroid/view/InputWindowHandle;->inputConfig:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Landroid/view/InputWindowHandle;->inputConfig:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget v0, p1, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p1, Landroid/view/InputWindowHandle;->inputConfig:I

    :goto_0
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mInputSurface:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mWindowHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public final startHandwritingSession(IIILandroid/os/IBinder;)Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->clearPendingHandwritingDelegation()V

    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    const-string v1, "HandwritingModeController"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "Cannot start handwriting session: Handwriting was not initialized."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    iget v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    if-eq p1, v0, :cond_1

    const-string p0, "Cannot start handwriting session: Invalid request id: "

    invoke-static {p1, p0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->isStylusGestureOngoing()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p0, "Cannot start handwriting session: No stylus gesture is being recorded."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    const-string v0, "Handwriting session was already transferred to IME."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    iget v3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentDisplayId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget-object v6, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v6, p4, v3, v4, v5}, Lcom/android/server/wm/WindowManagerInternal;->isPointInsideWindow(Landroid/os/IBinder;IFF)Z

    move-result p4

    if-nez p4, :cond_3

    const-string p0, "Cannot start handwriting session: Stylus gesture did not start inside the focused window."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object p4

    iget-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    iget-object v1, v1, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/hardware/input/InputManagerGlobal;->pilferPointers(Landroid/os/IBinder;)V

    iget-object p4, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {p4}, Landroid/view/InputEventReceiver;->dispose()V

    iput-object v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    iput-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    iput-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    iget-object p4, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    iget-boolean v1, p4, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mIsIntercepting:Z

    if-nez v1, :cond_4

    iget-object v1, p4, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mWindowHandle:Landroid/view/InputWindowHandle;

    iput p2, v1, Landroid/view/InputWindowHandle;->ownerPid:I

    iput p3, v1, Landroid/view/InputWindowHandle;->ownerUid:I

    iget p2, v1, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int/lit16 p2, p2, -0x4001

    iput p2, v1, Landroid/view/InputWindowHandle;->inputConfig:I

    new-instance p2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object p3, p4, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mInputSurface:Landroid/view/SurfaceControl;

    iget-object v1, p4, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mWindowHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {p2, p3, v1}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 p2, 0x1

    iput-boolean p2, p4, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mIsIntercepting:Z

    iget-object p3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mContext:Landroid/content/Context;

    const-class p4, Landroid/hardware/input/InputManager;

    invoke-virtual {p3, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Landroid/hardware/input/InputManager;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mContext:Landroid/content/Context;

    invoke-static {p3, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    iget-object p1, p1, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {p1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/input/InputManager;->setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z

    new-instance p1, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;

    iget p2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    iget-object p3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    iget-object p3, p3, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mClientChannel:Landroid/view/InputChannel;

    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    invoke-direct {p1, p2, p3, p0}, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;-><init>(ILandroid/view/InputChannel;Ljava/util/List;)V

    return-object p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Handwriting surface should not be already intercepting."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
