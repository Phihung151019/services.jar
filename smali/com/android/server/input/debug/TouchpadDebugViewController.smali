.class public final Lcom/android/server/input/debug/TouchpadDebugViewController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mInputManagerService:Lcom/android/server/input/InputManagerService;

.field public mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

.field public mTouchpadVisualizerEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/input/InputManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadVisualizerEnabled:Z

    iput-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    return-void
.end method


# virtual methods
.method public final hideDebugView(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadId:I

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    const-string/jumbo p0, "TouchpadDebugView"

    const-string/jumbo p1, "Touchpad debug view removed."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final onInputDeviceAdded(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadVisualizerEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    const v1, 0x10200a

    invoke-virtual {v0, v1}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/input/debug/TouchpadDebugViewController;->showDebugView(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onInputDeviceChanged(I)V
    .locals 0

    return-void
.end method

.method public final onInputDeviceRemoved(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/input/debug/TouchpadDebugViewController;->hideDebugView(I)V

    iget-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/hardware/input/InputManager;

    invoke-virtual {p1}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/android/server/input/debug/TouchpadDebugViewController;->onInputDeviceAdded(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final showDebugView(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    iget-object v1, v1, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {v1, p1}, Lcom/android/server/input/NativeInputManagerService;->getTouchpadHardwareProperties(I)Lcom/android/server/input/TouchpadHardwareProperties;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/debug/TouchpadDebugView;

    iget-object v3, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/input/debug/TouchpadDebugViewController;)V

    invoke-direct {v2, v3, p1, v1, v4}, Lcom/android/server/input/debug/TouchpadDebugView;-><init>(Landroid/content/Context;ILcom/android/server/input/TouchpadHardwareProperties;Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda1;)V

    iput-object v2, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    iget-object p0, v2, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo p0, "TouchpadDebugView"

    const-string/jumbo v0, "Touchpad debug view created."

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/input/TouchpadHardwareProperties;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "Failed to retrieve touchpad hardware properties for device ID: "

    invoke-static {p1, v0, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
