.class public final Lcom/android/server/display/EarlyWakeUpManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAppliedLocked:Z

.field public final mBlanker:Lcom/android/server/display/DisplayManagerService$1;

.field public final mCallbacks:Lcom/android/server/display/DisplayPowerController$4;

.field public final mDisplayId:I

.field public mEarlyDisplayEnabled:Z

.field public mEarlyDisplayReadyLocked:Z

.field public mEarlyLightSensorEnabled:Z

.field public final mEarlyLightSensorReadyListener:Lcom/android/server/display/EarlyWakeUpManager$1;

.field public mEarlyLightSensorReadyLocked:Z

.field public final mEarlyWakeUpLock:Ljava/lang/Object;

.field public final mHandler:Lcom/android/server/display/EarlyWakeUpManager$EarlyWakeUpHandler;

.field public mHoldingSuspendBlocker:Z

.field public mIsRequestInvalidated:Z

.field public mLastEnableRequestedTime:J

.field public final mTag:Ljava/lang/String;

.field public final mWakelockController:Lcom/android/server/display/WakelockController;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/android/server/display/DisplayPowerController$4;Lcom/android/server/display/DisplayManagerService$1;Lcom/android/server/display/WakelockController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyWakeUpLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyLightSensorReadyLocked:Z

    iput-boolean v0, p0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyDisplayReadyLocked:Z

    new-instance v0, Lcom/android/server/display/EarlyWakeUpManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/EarlyWakeUpManager$1;-><init>(Lcom/android/server/display/EarlyWakeUpManager;)V

    iput-object v0, p0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyLightSensorReadyListener:Lcom/android/server/display/EarlyWakeUpManager$1;

    iput-object p1, p0, Lcom/android/server/display/EarlyWakeUpManager;->mTag:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/display/EarlyWakeUpManager;->mDisplayId:I

    iput-object p3, p0, Lcom/android/server/display/EarlyWakeUpManager;->mCallbacks:Lcom/android/server/display/DisplayPowerController$4;

    iput-object p4, p0, Lcom/android/server/display/EarlyWakeUpManager;->mBlanker:Lcom/android/server/display/DisplayManagerService$1;

    iput-object p5, p0, Lcom/android/server/display/EarlyWakeUpManager;->mWakelockController:Lcom/android/server/display/WakelockController;

    new-instance p2, Landroid/os/HandlerThread;

    const/4 p3, -0x4

    invoke-direct {p2, p1, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Lcom/android/server/display/EarlyWakeUpManager$EarlyWakeUpHandler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/display/EarlyWakeUpManager$EarlyWakeUpHandler;-><init>(Lcom/android/server/display/EarlyWakeUpManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/display/EarlyWakeUpManager;->mHandler:Lcom/android/server/display/EarlyWakeUpManager$EarlyWakeUpHandler;

    return-void
.end method


# virtual methods
.method public final isEarlyLightSensorEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyLightSensorEnabled:Z

    return p0
.end method

.method public final setEarlyDisplayEnabledLocked(IZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyDisplayEnabled:Z

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    move-result p1

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_AOD_LIVE_CLOCK:Z

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    iput-boolean p2, p0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyDisplayEnabled:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyDisplayReadyLocked:Z

    new-instance p1, Lcom/android/server/display/EarlyWakeUpManager$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lcom/android/server/display/EarlyWakeUpManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/EarlyWakeUpManager;Z)V

    iget-object p0, p0, Lcom/android/server/display/EarlyWakeUpManager;->mHandler:Lcom/android/server/display/EarlyWakeUpManager$EarlyWakeUpHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setEarlyLightSensorEnabledLocked(ZZLcom/android/server/display/AutomaticBrightnessController;Z)V
    .locals 0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_3

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p2, p0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyLightSensorEnabled:Z

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    iput-boolean p1, p0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyLightSensorEnabled:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyLightSensorReadyLocked:Z

    iget-object p0, p0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyLightSensorReadyListener:Lcom/android/server/display/EarlyWakeUpManager$1;

    iget-boolean p2, p3, Lcom/android/server/display/AutomaticBrightnessController;->mShouldApplyEarlyWakeUp:Z

    if-eq p1, p2, :cond_3

    iput-boolean p1, p3, Lcom/android/server/display/AutomaticBrightnessController;->mShouldApplyEarlyWakeUp:Z

    iput-object p0, p3, Lcom/android/server/display/AutomaticBrightnessController;->mPendingEarlyLightSensorReadyListener:Lcom/android/server/display/EarlyWakeUpManager$1;

    :cond_3
    :goto_0
    return-void
.end method

.method public final update(ZIZLcom/android/server/display/AutomaticBrightnessController;ZZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    const-string/jumbo v5, "[ew] "

    iget-object v6, v0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyWakeUpLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v1, v9, :cond_4

    iget-boolean v9, v0, Lcom/android/server/display/EarlyWakeUpManager;->mIsRequestInvalidated:Z

    if-nez v9, :cond_4

    if-eqz p6, :cond_4

    iget-boolean v9, v0, Lcom/android/server/display/EarlyWakeUpManager;->mAppliedLocked:Z

    const-wide/16 v12, 0xbb8

    if-eqz v9, :cond_1

    iget-wide v14, v0, Lcom/android/server/display/EarlyWakeUpManager;->mLastEnableRequestedTime:J

    add-long/2addr v14, v12

    cmp-long v9, v7, v14

    if-ltz v9, :cond_0

    goto :goto_0

    :cond_0
    move v9, v10

    goto :goto_1

    :cond_1
    :goto_0
    move v9, v11

    :goto_1
    if-nez p1, :cond_3

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    move v9, v11

    goto :goto_3

    :cond_3
    :goto_2
    move v9, v10

    :goto_3
    if-eqz p1, :cond_5

    iput-wide v7, v0, Lcom/android/server/display/EarlyWakeUpManager;->mLastEnableRequestedTime:J

    iget-object v7, v0, Lcom/android/server/display/EarlyWakeUpManager;->mTag:Ljava/lang/String;

    const-string/jumbo v8, "[ew] resetEnableRequestTimeout +"

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v0, Lcom/android/server/display/EarlyWakeUpManager;->mHandler:Lcom/android/server/display/EarlyWakeUpManager$EarlyWakeUpHandler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-wide v14, v0, Lcom/android/server/display/EarlyWakeUpManager;->mLastEnableRequestedTime:J

    add-long/2addr v14, v12

    invoke-virtual {v7, v10, v14, v15}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_4
    move v9, v11

    :cond_5
    :goto_4
    iget-boolean v7, v0, Lcom/android/server/display/EarlyWakeUpManager;->mAppliedLocked:Z

    if-eq v9, v7, :cond_8

    iget-object v7, v0, Lcom/android/server/display/EarlyWakeUpManager;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_6

    invoke-virtual {v0, v10, v2, v3, v4}, Lcom/android/server/display/EarlyWakeUpManager;->setEarlyLightSensorEnabledLocked(ZZLcom/android/server/display/AutomaticBrightnessController;Z)V

    invoke-virtual {v0, v1, v10}, Lcom/android/server/display/EarlyWakeUpManager;->setEarlyDisplayEnabledLocked(IZ)V

    goto :goto_5

    :cond_6
    invoke-virtual {v0, v11, v2, v3, v4}, Lcom/android/server/display/EarlyWakeUpManager;->setEarlyLightSensorEnabledLocked(ZZLcom/android/server/display/AutomaticBrightnessController;Z)V

    invoke-virtual {v0, v1, v11}, Lcom/android/server/display/EarlyWakeUpManager;->setEarlyDisplayEnabledLocked(IZ)V

    :goto_5
    if-nez v9, :cond_7

    iget-object v1, v0, Lcom/android/server/display/EarlyWakeUpManager;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "[ew] clearEnableRequestTimeout -"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/display/EarlyWakeUpManager;->mHandler:Lcom/android/server/display/EarlyWakeUpManager$EarlyWakeUpHandler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->removeMessages(I)V

    :cond_7
    iput-boolean v9, v0, Lcom/android/server/display/EarlyWakeUpManager;->mAppliedLocked:Z

    :cond_8
    iput-boolean v11, v0, Lcom/android/server/display/EarlyWakeUpManager;->mIsRequestInvalidated:Z

    invoke-virtual {v0}, Lcom/android/server/display/EarlyWakeUpManager;->updateSuspendBlockerLocked()V

    monitor-exit v6

    return-void

    :goto_6
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final updateSuspendBlockerLocked()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/display/EarlyWakeUpManager;->mAppliedLocked:Z

    iget-object v1, p0, Lcom/android/server/display/EarlyWakeUpManager;->mWakelockController:Lcom/android/server/display/WakelockController;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/android/server/display/EarlyWakeUpManager;->mTag:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyDisplayReadyLocked:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyLightSensorReadyLocked:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/EarlyWakeUpManager;->mHoldingSuspendBlocker:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "[ew] releaseSuspendBlocker: -"

    invoke-static {v3, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/EarlyWakeUpManager;->mHoldingSuspendBlocker:Z

    invoke-virtual {v1, v2}, Lcom/android/server/display/WakelockController;->releaseWakelockInternal(I)Z

    return-void

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/display/EarlyWakeUpManager;->mHoldingSuspendBlocker:Z

    if-nez v0, :cond_2

    const-string/jumbo v0, "[ew] acquireSuspendBlocker: +"

    invoke-static {v3, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v2}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/EarlyWakeUpManager;->mHoldingSuspendBlocker:Z

    :cond_2
    return-void
.end method
