.class public final Lcom/android/server/display/DisplayOffloadSessionImpl;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mDisplayOffloader:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;

.field public final mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

.field public mIsActive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DisplayOffloadSessionImpl"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayOffloadSessionImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayOffloader:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;

    iput-object p2, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    return-void
.end method


# virtual methods
.method public final allowAutoBrightnessInDoze()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayOffloader:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;->allowAutoBrightnessInDoze()Z

    move-result p0

    return p0
.end method

.method public final blockScreenOn(Ljava/lang/Runnable;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayOffloader:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;->onBlockingScreenOn(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final cancelBlockScreenOn()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayOffloader:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;->cancelBlockScreenOn()V

    return-void
.end method

.method public final getAutoBrightnessLevels(I)[F
    .locals 4

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    const-string/jumbo v3, "screen_brightness_for_als"

    invoke-static {v1, v3, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getAutoBrightnessBrighteningLevels(II)[F

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "Unknown auto-brightness mode: "

    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAutoBrightnessLuxLevels(I)[F
    .locals 4

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    const-string/jumbo v3, "screen_brightness_for_als"

    invoke-static {v1, v3, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getAutoBrightnessBrighteningLevelsLux(II)[F

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "Unknown auto-brightness mode: "

    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getBrightness()F
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getScreenBrightnessSetting()F

    move-result p0

    return p0
.end method

.method public final getDozeBrightness()F
    .locals 1

    iget-object p0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    move-result v0

    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mDozeScaleFactor:F

    mul-float/2addr v0, p0

    return v0
.end method

.method public final isActive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mIsActive:Z

    return p0
.end method

.method public final setDozeStateOverride(I)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "New offload doze override: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;->isSupportedOffloadState(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v0, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mOffloadDozeOverrideHoldsWakelock:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingOverrideDozeScreenStateLocked:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    return-void
.end method

.method public final updateBrightness(F)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mIsActive:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method
