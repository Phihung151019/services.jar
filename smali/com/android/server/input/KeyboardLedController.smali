.class public final Lcom/android/server/input/KeyboardLedController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field public mAudioManager:Landroid/media/AudioManager;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mInputManager:Landroid/hardware/input/InputManager;

.field public final mKeyboardsWithMicMuteLed:Landroid/util/SparseArray;

.field public final mKeyboardsWithVolumeMuteLed:Landroid/util/SparseArray;

.field public final mMicrophoneMuteChangedIntentReceiver:Lcom/android/server/input/KeyboardLedController$1;

.field public final mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

.field public mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field public final mVolumeMuteIntentReceiver:Lcom/android/server/input/KeyboardLedController$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/input/KeyboardLedController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/input/NativeInputManagerService$NativeImpl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithMicMuteLed:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithVolumeMuteLed:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/input/KeyboardLedController$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/input/KeyboardLedController$1;-><init>(Lcom/android/server/input/KeyboardLedController;I)V

    iput-object v0, p0, Lcom/android/server/input/KeyboardLedController;->mMicrophoneMuteChangedIntentReceiver:Lcom/android/server/input/KeyboardLedController$1;

    new-instance v0, Lcom/android/server/input/KeyboardLedController$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/input/KeyboardLedController$1;-><init>(Lcom/android/server/input/KeyboardLedController;I)V

    iput-object v0, p0, Lcom/android/server/input/KeyboardLedController;->mVolumeMuteIntentReceiver:Lcom/android/server/input/KeyboardLedController$1;

    iput-object p1, p0, Lcom/android/server/input/KeyboardLedController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/input/KeyboardLedController;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    new-instance p1, Landroid/os/Handler;

    new-instance p3, Lcom/android/server/input/KeyboardLedController$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/server/input/KeyboardLedController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/KeyboardLedController;)V

    invoke-direct {p1, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/server/input/KeyboardLedController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getKeyboardMicMuteLight(Landroid/view/InputDevice;)Landroid/hardware/lights/Light;
    .locals 3

    invoke-virtual {p0}, Landroid/view/InputDevice;->getLightsManager()Landroid/hardware/lights/LightsManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/lights/LightsManager;->getLights()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/lights/Light;

    invoke-virtual {v0}, Landroid/hardware/lights/Light;->getType()I

    move-result v1

    const/16 v2, 0x2714

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/hardware/lights/Light;->hasBrightnessControl()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getKeyboardVolumeMuteLight(Landroid/view/InputDevice;)Landroid/hardware/lights/Light;
    .locals 3

    invoke-virtual {p0}, Landroid/view/InputDevice;->getLightsManager()Landroid/hardware/lights/LightsManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/lights/LightsManager;->getLights()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/lights/Light;

    invoke-virtual {v0}, Landroid/hardware/lights/Light;->getType()I

    move-result v1

    const/16 v2, 0x2715

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/hardware/lights/Light;->hasBrightnessControl()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final onInputDeviceAdded(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardLedController;->onInputDeviceChanged(I)V

    return-void
.end method

.method public final onInputDeviceChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/input/KeyboardLedController;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/android/server/input/KeyboardLedController;->getKeyboardMicMuteLight(Landroid/view/InputDevice;)Landroid/hardware/lights/Light;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithMicMuteLed:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/input/KeyboardLedController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/input/KeyboardLedController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    invoke-static {v0}, Lcom/android/server/input/KeyboardLedController;->getKeyboardVolumeMuteLight(Landroid/view/InputDevice;)Landroid/hardware/lights/Light;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithVolumeMuteLed:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/server/input/KeyboardLedController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/input/KeyboardLedController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final onInputDeviceRemoved(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithMicMuteLed:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object p0, p0, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithVolumeMuteLed:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method
