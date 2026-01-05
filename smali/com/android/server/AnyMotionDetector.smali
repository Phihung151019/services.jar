.class public final Lcom/android/server/AnyMotionDetector;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAccelSensor:Landroid/hardware/Sensor;

.field public final mCallback:Lcom/android/server/DeviceIdleController;

.field public mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

.field public final mHandler:Landroid/os/Handler;

.field public final mListener:Lcom/android/server/AnyMotionDetector$1;

.field public final mLock:Ljava/lang/Object;

.field public mMeasurementInProgress:Z

.field public final mMeasurementTimeout:Lcom/android/server/AnyMotionDetector$2;

.field public mMeasurementTimeoutIsActive:Z

.field public final mNumSufficientSamples:I

.field public mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

.field public final mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public final mSensorRestart:Lcom/android/server/AnyMotionDetector$2;

.field public mSensorRestartIsActive:Z

.field public mState:I

.field public final mThresholdAngle:F

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mWakelockTimeout:Lcom/android/server/AnyMotionDetector$2;

.field public volatile mWakelockTimeoutIsActive:Z


# direct methods
.method public static -$$Nest$mstopOrientationMeasurementLocked(Lcom/android/server/AnyMotionDetector;)I
    .locals 14

    sget-boolean v0, Lcom/android/server/AnyMotionDetector;->DEBUG:Z

    const-string v1, "AnyMotionDetector"

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "stopOrientationMeasurement. mMeasurementInProgress="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    invoke-static {v1, v2, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeout:Lcom/android/server/AnyMotionDetector$2;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeoutIsActive:Z

    iget-object v4, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/android/server/AnyMotionDetector;->mListener:Lcom/android/server/AnyMotionDetector$1;

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iput-boolean v2, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    iget-object v4, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iput-object v4, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iget-object v4, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    iget v5, v4, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    if-lez v5, :cond_1

    iget-object v4, v4, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

    const/high16 v6, 0x3f800000    # 1.0f

    int-to-float v7, v5

    div-float/2addr v6, v7

    new-instance v7, Lcom/android/server/AnyMotionDetector$Vector3;

    iget v8, v4, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    mul-float/2addr v8, v6

    iget v9, v4, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    mul-float/2addr v9, v6

    iget v10, v4, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    mul-float/2addr v10, v6

    iget-wide v11, v4, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    invoke-direct/range {v7 .. v12}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(FFFJ)V

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    iput-object v7, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    if-nez v5, :cond_2

    const-string/jumbo v4, "No accelerometer data acquired for orientation measurement."

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v0, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "mRunningStats = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    invoke-virtual {v5}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    const-string/jumbo v5, "null"

    if-nez v4, :cond_3

    move-object v4, v5

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    iget-object v6, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mCurrentGravityVector = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "mPreviousGravityVector = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v4, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    const/4 v5, 0x1

    if-eqz v4, :cond_b

    iget-object v6, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    if-nez v6, :cond_6

    goto/16 :goto_3

    :cond_6
    iget v6, v4, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    mul-float/2addr v6, v6

    iget v7, v4, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    mul-float/2addr v7, v7

    add-float/2addr v7, v6

    iget v6, v4, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    mul-float/2addr v6, v6

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    new-instance v7, Lcom/android/server/AnyMotionDetector$Vector3;

    iget v8, v4, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    div-float/2addr v8, v6

    iget v9, v4, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    div-float/2addr v9, v6

    iget v10, v4, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    div-float/2addr v10, v6

    iget-wide v11, v4, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    invoke-direct/range {v7 .. v12}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(FFFJ)V

    iget-object v4, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iget v6, v4, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    mul-float/2addr v6, v6

    iget v8, v4, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    mul-float/2addr v8, v8

    add-float/2addr v8, v6

    iget v6, v4, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    mul-float/2addr v6, v6

    add-float/2addr v6, v8

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v6, v8

    new-instance v8, Lcom/android/server/AnyMotionDetector$Vector3;

    iget v9, v4, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    div-float/2addr v9, v6

    iget v10, v4, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    div-float/2addr v10, v6

    iget v11, v4, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    div-float/2addr v11, v6

    iget-wide v12, v4, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    invoke-direct/range {v8 .. v13}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(FFFJ)V

    iget v4, v7, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    mul-float v6, v4, v11

    iget v12, v7, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    mul-float v13, v12, v10

    sub-float/2addr v6, v13

    mul-float/2addr v12, v9

    iget v13, v7, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    mul-float/2addr v11, v13

    sub-float/2addr v12, v11

    mul-float/2addr v13, v10

    mul-float/2addr v4, v9

    sub-float/2addr v13, v4

    mul-float/2addr v6, v6

    mul-float/2addr v12, v12

    add-float/2addr v12, v6

    mul-float/2addr v13, v13

    add-float/2addr v13, v12

    float-to-double v9, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v4, v9

    float-to-double v9, v4

    iget v4, v8, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    iget v6, v7, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    mul-float/2addr v6, v4

    iget v4, v7, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    iget v11, v8, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    mul-float/2addr v4, v11

    add-float/2addr v4, v6

    iget v6, v7, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    iget v11, v8, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    mul-float/2addr v6, v11

    add-float/2addr v6, v4

    float-to-double v11, v6

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    double-to-float v4, v9

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "angleBetween: this = "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", other = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", degrees = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v4, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    if-eqz v0, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "getStationaryStatus: angle = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " energy = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->energy:F

    invoke-static {v7, v8, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    :cond_7
    iget v7, p0, Lcom/android/server/AnyMotionDetector;->mThresholdAngle:F

    cmpg-float v7, v4, v7

    if-gez v7, :cond_8

    iget v6, v6, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->energy:F

    const/high16 v7, 0x40a00000    # 5.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_8

    move v4, v2

    goto :goto_4

    :cond_8
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    move v4, v5

    goto :goto_4

    :cond_a
    iget-object v4, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iget-wide v6, v4, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    iget-object v4, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iget-wide v8, v4, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x1d4c0

    cmp-long v4, v6, v8

    if-lez v4, :cond_9

    if-eqz v0, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "getStationaryStatus: mPreviousGravityVector is too stale at "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms ago. Returning RESULT_UNKNOWN."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_3
    move v4, v3

    :goto_4
    iget-object v6, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    invoke-virtual {v6}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->reset()V

    if-eqz v0, :cond_c

    const-string/jumbo v6, "getStationaryStatus() returned "

    invoke-static {v4, v6, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-eq v4, v3, :cond_f

    iget-object v3, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeout:Lcom/android/server/AnyMotionDetector$2;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v2, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeoutIsActive:Z

    iget-object v3, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_d
    if-eqz v0, :cond_e

    const-string/jumbo v0, "Moved from STATE_ACTIVE to STATE_INACTIVE. status = "

    invoke-static {v4, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_e
    iput v2, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    return v4

    :cond_f
    if-eqz v0, :cond_10

    const-string/jumbo v0, "stopOrientationMeasurementLocked(): another measurement scheduled in 5000 milliseconds."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestart:Lcom/android/server/AnyMotionDetector$2;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iput-boolean v5, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestartIsActive:Z

    return v4

    :cond_11
    return v3
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "AnyMotionDetector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/AnyMotionDetector;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/PowerManager;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/DeviceIdleController;F)V
    .locals 5

    const-string/jumbo v0, "mNumSufficientSamples = "

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iput-object v2, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    new-instance v2, Lcom/android/server/AnyMotionDetector$1;

    invoke-direct {v2, p0}, Lcom/android/server/AnyMotionDetector$1;-><init>(Lcom/android/server/AnyMotionDetector;)V

    iput-object v2, p0, Lcom/android/server/AnyMotionDetector;->mListener:Lcom/android/server/AnyMotionDetector$1;

    new-instance v2, Lcom/android/server/AnyMotionDetector$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/AnyMotionDetector$2;-><init>(Lcom/android/server/AnyMotionDetector;I)V

    iput-object v2, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestart:Lcom/android/server/AnyMotionDetector$2;

    new-instance v2, Lcom/android/server/AnyMotionDetector$2;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/server/AnyMotionDetector$2;-><init>(Lcom/android/server/AnyMotionDetector;I)V

    iput-object v2, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeout:Lcom/android/server/AnyMotionDetector$2;

    new-instance v2, Lcom/android/server/AnyMotionDetector$2;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/android/server/AnyMotionDetector$2;-><init>(Lcom/android/server/AnyMotionDetector;I)V

    iput-object v2, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeout:Lcom/android/server/AnyMotionDetector$2;

    sget-boolean v2, Lcom/android/server/AnyMotionDetector;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v3, "AnyMotionDetector"

    const-string v4, "AnyMotionDetector instantiated."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-enter v1

    :try_start_0
    const-string v3, "AnyMotionDetector"

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iput-object p2, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/AnyMotionDetector;->mAccelSensor:Landroid/hardware/Sensor;

    iput-boolean v3, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    iput-boolean v3, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeoutIsActive:Z

    iput-boolean v3, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeoutIsActive:Z

    iput-boolean v3, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestartIsActive:Z

    iput v3, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    iput-object p4, p0, Lcom/android/server/AnyMotionDetector;->mCallback:Lcom/android/server/DeviceIdleController;

    iput p5, p0, Lcom/android/server/AnyMotionDetector;->mThresholdAngle:F

    new-instance p1, Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->reset()V

    iput-object p1, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    const-wide p1, 0x404f400000000000L    # 62.5

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/android/server/AnyMotionDetector;->mNumSufficientSamples:I

    if-eqz v2, :cond_1

    const-string p0, "AnyMotionDetector"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final startOrientationMeasurementLocked()V
    .locals 5

    sget-boolean v0, Lcom/android/server/AnyMotionDetector;->DEBUG:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startOrientationMeasurementLocked: mMeasurementInProgress="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", (mAccelSensor != null)="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mAccelSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "AnyMotionDetector"

    invoke-static {v3, v0, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mAccelSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/AnyMotionDetector;->mListener:Lcom/android/server/AnyMotionDetector$1;

    const v4, 0x9c40

    invoke-virtual {v2, v3, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->reset()V

    :cond_2
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeout:Lcom/android/server/AnyMotionDetector$2;

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iput-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeoutIsActive:Z

    :cond_3
    return-void
.end method

.method public final stop()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    iput v3, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    sget-boolean v1, Lcom/android/server/AnyMotionDetector;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "AnyMotionDetector"

    const-string/jumbo v2, "Moved from STATE_ACTIVE to STATE_INACTIVE."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeout:Lcom/android/server/AnyMotionDetector$2;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestart:Lcom/android/server/AnyMotionDetector$2;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v3, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeoutIsActive:Z

    iput-boolean v3, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestartIsActive:Z

    iget-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mListener:Lcom/android/server/AnyMotionDetector$1;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iput-object v1, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeout:Lcom/android/server/AnyMotionDetector$2;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v3, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeoutIsActive:Z

    iget-object p0, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
