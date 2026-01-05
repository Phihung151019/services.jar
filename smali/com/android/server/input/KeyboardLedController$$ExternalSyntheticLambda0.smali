.class public final synthetic Lcom/android/server/input/KeyboardLedController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/KeyboardLedController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/KeyboardLedController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/KeyboardLedController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/KeyboardLedController;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 5

    iget-object p0, p0, Lcom/android/server/input/KeyboardLedController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/KeyboardLedController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    const/4 p1, 0x2

    const/4 v3, -0x1

    if-eq v0, p1, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    return v2

    :cond_0
    iget-object p1, p0, Lcom/android/server/input/KeyboardLedController;->mAudioManager:Landroid/media/AudioManager;

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    iget-object p1, p0, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithVolumeMuteLed:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v2, p1, :cond_8

    iget-object p1, p0, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithVolumeMuteLed:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InputDevice;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/InputDevice;->getId()I

    move-result v0

    invoke-static {p1}, Lcom/android/server/input/KeyboardLedController;->getKeyboardVolumeMuteLight(Landroid/view/InputDevice;)Landroid/hardware/lights/Light;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/android/server/input/KeyboardLedController;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-virtual {p1}, Landroid/hardware/lights/Light;->getId()I

    move-result p1

    invoke-interface {v4, v0, p1, v3}, Lcom/android/server/input/NativeInputManagerService;->setLightColor(III)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/server/input/KeyboardLedController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/server/input/KeyboardLedController;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {p1, v1}, Landroid/hardware/SensorPrivacyManager;->areAnySensorPrivacyTogglesEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v3, v2

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithMicMuteLed:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v2, p1, :cond_8

    iget-object p1, p0, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithMicMuteLed:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InputDevice;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/InputDevice;->getId()I

    move-result v0

    invoke-static {p1}, Lcom/android/server/input/KeyboardLedController;->getKeyboardMicMuteLight(Landroid/view/InputDevice;)Landroid/hardware/lights/Light;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v4, p0, Lcom/android/server/input/KeyboardLedController;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-virtual {p1}, Landroid/hardware/lights/Light;->getId()I

    move-result p1

    invoke-interface {v4, v0, p1, v3}, Lcom/android/server/input/NativeInputManagerService;->setLightColor(III)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [I

    array-length v0, p1

    :goto_2
    if-ge v2, v0, :cond_8

    aget v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/android/server/input/KeyboardLedController;->onInputDeviceChanged(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    return v1
.end method
