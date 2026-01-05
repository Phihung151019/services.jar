.class public final Lcom/android/server/display/DisplayPowerProximityStateController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field static final MSG_PROXIMITY_SENSOR_DEBOUNCED:I = 0x1

.field static final PROXIMITY_POSITIVE:I = 0x1

.field static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0x0

.field static final PROXIMITY_UNKNOWN:I = -0x1


# instance fields
.field public final mClock:Lcom/android/server/display/DisplayPowerProximityStateController$Injector$$ExternalSyntheticLambda0;

.field public mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field public final mDisplayId:I

.field public mDualScreenPolicy:I

.field public final mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

.field public mIgnoreProximityUntilChanged:Z

.field public mIsEarsenseProximity:Z

.field public mIsProximitySensorOnFoldingSide:Z

.field public mIsViewTypeCover:Z

.field public final mLock:Ljava/lang/Object;

.field public final mNudgeUpdatePowerState:Ljava/lang/Runnable;

.field public mPendingProximity:I

.field public mPendingProximityDebounceTime:J

.field public mPendingWaitForNegativeProximityLocked:Z

.field public mProximity:I

.field public mProximitySensor:Landroid/hardware/Sensor;

.field public mProximitySensorEnabled:Z

.field public final mProximitySensorListener:Lcom/android/server/display/DisplayPowerProximityStateController$1;

.field public mProximityThreshold:F

.field public mScreenOffBecauseOfProximity:Z

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public mSensorNegativeDebounceDelay:I

.field public mSensorPositiveDebounceDelay:I

.field public mSkipRampBecauseOfProximityChangeToNegative:Z

.field public final mTag:Ljava/lang/String;

.field public mWaitingForNegativeProximity:Z

.field public final mWakelockController:Lcom/android/server/display/WakelockController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WakelockController;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Looper;Ljava/lang/Runnable;ILandroid/hardware/SensorManager;Lcom/android/server/display/DisplayPowerProximityStateController$Injector;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/display/DisplayPowerProximityStateController$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayPowerProximityStateController$1;-><init>(Lcom/android/server/display/DisplayPowerProximityStateController;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorListener:Lcom/android/server/display/DisplayPowerProximityStateController$1;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSkipRampBecauseOfProximityChangeToNegative:Z

    iput v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorPositiveDebounceDelay:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorNegativeDebounceDelay:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mDualScreenPolicy:I

    if-nez p7, :cond_0

    new-instance p7, Lcom/android/server/display/DisplayPowerProximityStateController$Injector;

    invoke-direct {p7}, Lcom/android/server/display/DisplayPowerProximityStateController$Injector;-><init>()V

    :cond_0
    new-instance p7, Lcom/android/server/display/DisplayPowerProximityStateController$Injector$$ExternalSyntheticLambda0;

    invoke-direct {p7}, Ljava/lang/Object;-><init>()V

    iput-object p7, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mClock:Lcom/android/server/display/DisplayPowerProximityStateController$Injector$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWakelockController:Lcom/android/server/display/WakelockController;

    new-instance p1, Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    invoke-direct {p1, p0, p3}, Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;-><init>(Lcom/android/server/display/DisplayPowerProximityStateController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    iput-object p4, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mNudgeUpdatePowerState:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iput p5, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mDisplayId:I

    const-string p1, "DisplayPowerProximityStateController["

    const-string/jumbo p2, "]"

    invoke-static {p5, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mTag:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerProximityStateController;->loadProximitySensor()V

    return-void
.end method

.method public static proximityToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo p0, "Positive"

    return-object p0

    :cond_1
    const-string/jumbo p0, "Negative"

    return-object p0

    :cond_2
    const-string/jumbo p0, "Unknown"

    return-object p0
.end method


# virtual methods
.method public final debounceProximitySensor()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mClock:Lcom/android/server/display/DisplayPowerProximityStateController$Injector$$ExternalSyntheticLambda0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    iget v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Applying proximity: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerProximityStateController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mNudgeUpdatePowerState:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWakelockController:Lcom/android/server/display/WakelockController;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/display/WakelockController;->releaseWakelockInternal(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    return-object p0
.end method

.method public getPendingProximity()I
    .locals 0

    iget p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    return p0
.end method

.method public getPendingProximityDebounceTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    return-wide v0
.end method

.method public getPendingWaitForNegativeProximityLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingWaitForNegativeProximityLocked:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getProximity()I
    .locals 0

    iget p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    return p0
.end method

.method public getProximitySensorListener()Landroid/hardware/SensorEventListener;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorListener:Lcom/android/server/display/DisplayPowerProximityStateController$1;

    return-object p0
.end method

.method public getWaitingForNegativeProximity()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    return p0
.end method

.method public final isProximityPositive()Z
    .locals 1

    iget p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isProximitySensorValidState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z
    .locals 3

    iget-boolean p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mDisplayId:I

    if-nez p1, :cond_1

    iget v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mDualScreenPolicy:I

    if-eq v2, v1, :cond_1

    return v1

    :cond_1
    if-ne p1, v1, :cond_2

    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIsProximitySensorOnFoldingSide:Z

    if-nez p1, :cond_2

    iget p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mDualScreenPolicy:I

    if-ne p0, v1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    return v1
.end method

.method public final loadProximitySensor()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mDisplayId:I

    if-eqz v2, :cond_1

    if-ne v2, v1, :cond_0

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_LARGE_COVER_DISPLAY:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v2, 0x8

    :goto_1
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v4, v4, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/config/SensorData;

    if-nez v4, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    iget-object v5, v4, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    iget-object v4, v4, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    invoke-static {v3, v5, v4, v2}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/Sensor;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximityThreshold:F

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Palm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Ear Hover"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIsEarsenseProximity:Z

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->semIsOnFoldingSide()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIsProximitySensorOnFoldingSide:Z

    :cond_5
    return-void
.end method

.method public final setProximitySensorEnabled(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorListener:Lcom/android/server/display/DisplayPowerProximityStateController$1;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mTag:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorEnabled:Z

    if-nez p1, :cond_1

    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorEnabled:Z

    iput-boolean v5, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    const-string/jumbo p1, "setProximitySensorEnabled::registerListener"

    invoke-static {v3, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {p1, v0, p0, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorEnabled:Z

    if-eqz p1, :cond_1

    iput-boolean v5, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorEnabled:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    iput-boolean v5, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    iput p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    const-string/jumbo p1, "setProximitySensorEnabled::unregisterListener"

    invoke-static {v3, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWakelockController:Lcom/android/server/display/WakelockController;

    invoke-virtual {p1, v2}, Lcom/android/server/display/WakelockController;->releaseWakelockInternal(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    :cond_1
    return-void
.end method

.method public shouldIgnoreProximityUntilChanged()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    return p0
.end method

.method public final shouldSkipRampBecauseOfProximityChangeToNegative()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSkipRampBecauseOfProximityChangeToNegative:Z

    return p0
.end method

.method public final updatePendingProximityRequestsLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingWaitForNegativeProximityLocked:Z

    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingWaitForNegativeProximityLocked:Z

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
