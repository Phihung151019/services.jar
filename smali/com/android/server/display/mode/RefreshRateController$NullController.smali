.class public final Lcom/android/server/display/mode/RefreshRateController$NullController;
.super Lcom/android/server/display/mode/RefreshRateController;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILandroid/os/IBinder;)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/mode/RefreshRateController$NullController;->$r8$classId:I

    invoke-direct {p0, p2}, Lcom/android/server/display/mode/RefreshRateController;-><init>(Landroid/os/IBinder;)V

    return-void
.end method

.method private final onBrightnessChangedLocked$com$android$server$display$mode$RefreshRateController$SwitchableController()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getControllerType()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/android/server/display/mode/RefreshRateController$NullController;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string/jumbo p0, "SwitchableController"

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "SeamlessController"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "NullController"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNormalSpeedVote()Lcom/android/server/display/mode/Vote;
    .locals 1

    iget v0, p0, Lcom/android/server/display/mode/RefreshRateController$NullController;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lcom/android/server/display/mode/RefreshRateController;->getNormalSpeedVote()Lcom/android/server/display/mode/Vote;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getNormalSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->min()I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateController;->mConfig:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getNormalSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->max()I

    move-result p0

    int-to-float p0, p0

    invoke-static {v0, p0}, Lcom/android/server/display/mode/Vote;->forPolicyRate(FF)Lcom/android/server/display/mode/Vote;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getSwitchingType()I
    .locals 1

    iget v0, p0, Lcom/android/server/display/mode/RefreshRateController$NullController;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lcom/android/server/display/mode/RefreshRateController;->getSwitchingType()I

    move-result p0

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public isPassiveModeForTypeLocked()Z
    .locals 2

    iget v0, p0, Lcom/android/server/display/mode/RefreshRateController$NullController;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lcom/android/server/display/mode/RefreshRateController;->isPassiveModeForTypeLocked()Z

    move-result p0

    return p0

    :pswitch_0
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mBrightness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/RefreshRateController;->getBrightnessZone(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->isLowAmbientLuxZone()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->isHighBrightnessAmbientLuxZone()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/android/server/display/mode/RefreshRateController;->hasPassiveModeToken()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public logBrightnessStateLocked()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/server/display/mode/RefreshRateController$NullController;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lcom/android/server/display/mode/RefreshRateController;->logBrightnessStateLocked()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " BrightnessState mPassive="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateController;->mPassive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", PassiveModeToken="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/display/mode/RefreshRateController;->hasPassiveModeToken()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", mBrightness="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/android/server/display/mode/RefreshRateController;->mBrightness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", mAmbientLux="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/android/server/display/mode/RefreshRateController;->mAmbientLux:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBrightnessChangedLocked()V
    .locals 1

    iget v0, p0, Lcom/android/server/display/mode/RefreshRateController$NullController;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lcom/android/server/display/mode/RefreshRateController;->onBrightnessChangedLocked()V

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public updatePassiveLocked()V
    .locals 1

    iget v0, p0, Lcom/android/server/display/mode/RefreshRateController$NullController;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lcom/android/server/display/mode/RefreshRateController;->updatePassiveLocked()V

    return-void

    :pswitch_0
    const-string/jumbo p0, "RefreshRateModeManager"

    const-string/jumbo v0, "NullController-updatePassiveLocked controller is not ready!"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
