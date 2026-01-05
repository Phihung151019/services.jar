.class public abstract Lcom/android/server/biometrics/sensors/AuthenticationClient;
.super Lcom/android/server/biometrics/sensors/AcquisitionClient;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/biometrics/sensors/AuthenticationConsumer;


# instance fields
.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field public final mAllowBackgroundAuthentication:Z

.field public mAuthAttempted:Z

.field public mAuthSuccess:Z

.field public final mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

.field public final mIsRestricted:Z

.field public final mIsStrongBiometric:Z

.field public final mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

.field public final mOperationId:J

.field public final mOptions:Landroid/hardware/biometrics/AuthenticateOptions;

.field public mPromptPrivilegedFlags:I

.field public final mRequireConfirmation:Z

.field public final mSensorStrength:I

.field public mShouldCancelIfBackgroundAuthentication:Z

.field public final mShouldUseLockoutTracker:Z

.field public mStartTimeMs:J

.field public mState:I

.field public final mTaskStackListener:Landroid/app/TaskStackListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLandroid/hardware/biometrics/AuthenticateOptions;IZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/LockoutTracker;ZI)V
    .locals 14

    move-object/from16 v0, p15

    invoke-interface/range {p8 .. p8}, Landroid/hardware/biometrics/AuthenticateOptions;->getUserId()I

    move-result v6

    invoke-interface/range {p8 .. p8}, Landroid/hardware/biometrics/AuthenticateOptions;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {p8 .. p8}, Landroid/hardware/biometrics/AuthenticateOptions;->getSensorId()I

    move-result v9

    invoke-interface/range {p8 .. p8}, Landroid/hardware/biometrics/AuthenticateOptions;->isMandatoryBiometrics()Z

    move-result v13

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v8, p9

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v1 .. v13}, Lcom/android/server/biometrics/sensors/AcquisitionClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    iput-boolean v3, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAuthSuccess:Z

    move/from16 v4, p13

    iput-boolean v4, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsStrongBiometric:Z

    move-wide/from16 v4, p5

    iput-wide v4, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOperationId:J

    move/from16 v4, p10

    iput-boolean v4, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mRequireConfirmation:Z

    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    const-class v4, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/biometrics/BiometricManager;

    iput-object v4, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    move-object/from16 v4, p14

    iput-object v4, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mTaskStackListener:Landroid/app/TaskStackListener;

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    move/from16 v4, p7

    iput-boolean v4, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsRestricted:Z

    move/from16 v4, p16

    iput-boolean v4, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAllowBackgroundAuthentication:Z

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mShouldUseLockoutTracker:Z

    move/from16 v0, p17

    iput v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mSensorStrength:I

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOptions:Landroid/hardware/biometrics/AuthenticateOptions;

    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mActivityManager:Landroid/app/ActivityManager;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->binderDiedInternal(Z)V

    return-void
.end method

.method public final cancel()V
    .locals 0

    invoke-super {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->cancel()V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->unregisterListenersForTaskStack()V

    return-void
.end method

.method public destroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->destroy()V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->unregisterListenersForTaskStack()V

    return-void
.end method

.method public final getProtoEnum()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public final getRequestReason()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    const-string/jumbo v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "com.android.settings"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x6

    return p0

    :cond_2
    const/4 p0, 0x5

    return p0
.end method

.method public abstract handleLifecycleAfterAuth(Z)V
.end method

.method public final interruptsPrecedingClients()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isCryptoOperation()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOperationId:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isKeyguard()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p2

    iget-object v2, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getOperationContext()Lcom/android/server/biometrics/log/OperationContextExt;

    move-result-object v5

    iget-boolean v12, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mRequireConfirmation:Z

    iget v13, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    move-result v3

    iget-boolean v4, v2, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    const/4 v14, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_0

    goto :goto_3

    :cond_0
    iget-object v4, v2, Lcom/android/server/biometrics/log/BiometricLogger;->mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v13, v0}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->authenticate(IZ)V

    :cond_1
    if-nez v0, :cond_2

    move v11, v14

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    if-eqz v12, :cond_3

    const/4 v11, 0x2

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    move v11, v3

    :goto_0
    iget-wide v3, v2, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    if-eqz v3, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v7, v2, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    sub-long/2addr v3, v7

    :goto_1
    move-wide v9, v3

    goto :goto_2

    :cond_4
    const-wide/16 v3, -0x1

    goto :goto_1

    :goto_2
    const-string v3, "BiometricLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Authentication latency: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_3
    move v15, v6

    goto :goto_5

    :cond_5
    iget-object v4, v2, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    move v3, v6

    iget v6, v2, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget v7, v2, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    iget v8, v2, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    iget-object v2, v2, Lcom/android/server/biometrics/log/BiometricLogger;->mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v16, v3

    new-instance v3, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda2;

    move/from16 v15, v16

    invoke-direct/range {v3 .. v13}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;Lcom/android/server/biometrics/log/OperationContextExt;IIIJIZI)V

    monitor-enter v2

    :try_start_0
    new-instance v4, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

    invoke-direct {v4, v3}, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;-><init>(Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda2;)V

    iget v3, v2, Lcom/android/server/biometrics/log/ALSProbe;->mLastAmbientLux:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v5, v3, v5

    if-lez v5, :cond_6

    invoke-virtual {v4, v3}, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;->consume(F)V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_13

    :cond_6
    iget-object v5, v2, Lcom/android/server/biometrics/log/ALSProbe;->mNextConsumer:Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

    if-eqz v5, :cond_7

    iget-object v3, v5, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;->mOthers:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    iget-object v5, v2, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v5, :cond_8

    iput-boolean v15, v2, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyed:Z

    iput-object v4, v2, Lcom/android/server/biometrics/log/ALSProbe;->mNextConsumer:Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

    invoke-virtual {v2}, Lcom/android/server/biometrics/log/ALSProbe;->enableLightSensorLoggingLocked()V

    goto :goto_4

    :cond_8
    const-string v5, "ALSProbe"

    const-string/jumbo v6, "No light sensor - use current to consume"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v3}, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;->consume(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    monitor-exit v2

    :goto_5
    iget-object v7, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    const-string v2, "Biometrics/AuthenticationClient"

    const-string/jumbo v3, "onAuthenticated("

    const-string v4, "), ID:"

    invoke-static {v3, v4, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Owner: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isBP: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", requireConfirmation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mRequireConfirmation:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isStrong: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsStrongBiometric:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", clientMonitor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isCryptoOperation()Z

    move-result v3

    if-eqz v3, :cond_a

    iget v3, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->createUserEntryIfNecessary(I)V

    if-eqz v0, :cond_9

    iget-object v2, v2, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v3, v2, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcceptCrypto:I

    add-int/2addr v3, v14

    iput v3, v2, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcceptCrypto:I

    goto :goto_6

    :cond_9
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v3, v2, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mRejectCrypto:I

    add-int/2addr v3, v14

    iput v3, v2, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mRejectCrypto:I

    goto :goto_6

    :cond_a
    iget v3, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->createUserEntryIfNecessary(I)V

    if-eqz v0, :cond_b

    iget-object v2, v2, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v3, v2, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAccept:I

    add-int/2addr v3, v14

    iput v3, v2, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAccept:I

    goto :goto_6

    :cond_b
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v3, v2, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mReject:I

    add-int/2addr v3, v14

    iput v3, v2, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mReject:I

    :goto_6
    iget-boolean v2, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAllowBackgroundAuthentication:Z

    if-eqz v2, :cond_c

    const-string v2, "Biometrics/AuthenticationClient"

    const-string v3, "Allowing background authentication, this is allowed only for platform or test invocations"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-boolean v2, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAllowBackgroundAuthentication:Z

    if-nez v2, :cond_d

    if-eqz v0, :cond_d

    iget-object v2, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/biometrics/Utils;->isSystem(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/biometrics/Utils;->isBackground(Ljava/lang/String;)Z

    move-result v6

    goto :goto_7

    :cond_d
    move v6, v15

    :goto_7
    const/4 v2, -0x1

    const v3, 0x534e4554

    if-eqz v6, :cond_f

    const-string v0, "Biometrics/AuthenticationClient"

    const-string v4, "Failing possible background authentication"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const-string v4, "159249069"

    if-eqz v0, :cond_e

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_8

    :cond_e
    move v0, v2

    :goto_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v5, "Attempted background authentication"

    filled-new-array {v4, v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    move v4, v15

    goto :goto_9

    :cond_f
    move v4, v0

    :goto_9
    if-eqz v4, :cond_18

    if-eqz v6, :cond_11

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const-string v5, "159249069"

    if-eqz v0, :cond_10

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    :cond_10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v2, "Successful background authentication!"

    filled-new-array {v5, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_11
    iput-boolean v14, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAuthSuccess:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "marking operation as done: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BaseClientMonitor"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v14, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mAlreadyDone:Z

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->unregisterListenersForTaskStack()V

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v10, v0, [B

    move v6, v15

    :goto_a
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_12

    move-object/from16 v2, p3

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_12
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    move-result v2

    if-nez v2, :cond_15

    if-le v0, v14, :cond_15

    iget-boolean v0, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsStrongBiometric:Z

    if-eqz v0, :cond_13

    iget-object v8, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    iget-object v9, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mToken:Landroid/os/IBinder;

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget v11, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    iget v12, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    move-object v13, v10

    move-object v10, v0

    invoke-virtual/range {v8 .. v13}, Landroid/hardware/biometrics/BiometricManager;->resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V

    move-object v10, v13

    :cond_13
    invoke-static {}, Landroid/security/KeyStoreAuthorization;->getInstance()Landroid/security/KeyStoreAuthorization;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/security/KeyStoreAuthorization;->addAuthToken([B)I

    move-result v0

    if-eqz v0, :cond_14

    const-string v2, "Biometrics/AuthenticationClient"

    const-string v3, "Error adding auth token : "

    invoke-static {v0, v3, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_14
    const-string v0, "Biometrics/AuthenticationClient"

    const-string/jumbo v2, "addAuthToken succeeded"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_15
    const-string v0, "Biometrics/AuthenticationClient"

    const-string/jumbo v2, "Skipping addAuthToken"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    :try_start_1
    iget-boolean v0, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsRestricted:Z

    if-eqz v0, :cond_17

    iget v0, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mPromptPrivilegedFlags:I

    if-eqz v0, :cond_16

    goto :goto_c

    :cond_16
    iget v8, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    iget v11, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    iget-boolean v12, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsStrongBiometric:Z

    const/4 v9, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onAuthenticationSucceeded(ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;[BIZ)V

    goto/16 :goto_11

    :catch_0
    move-exception v0

    goto :goto_d

    :cond_17
    :goto_c
    iget v8, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    iget v11, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    iget-boolean v12, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsStrongBiometric:Z

    move-object/from16 v9, p1

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onAuthenticationSucceeded(ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;[BIZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_11

    :goto_d
    const-string v2, "Biometrics/AuthenticationClient"

    const-string/jumbo v3, "Unable to notify listener"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, v1, v15}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void

    :cond_18
    if-eqz v6, :cond_1b

    const-string v0, "Biometrics/AuthenticationClient"

    const-string/jumbo v2, "Sending cancel to client(Due to background auth)"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->unregisterListenersForTaskStack()V

    iget-boolean v0, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mShouldCancelIfBackgroundAuthentication:Z

    if-eqz v0, :cond_19

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->cancel()V

    goto/16 :goto_11

    :cond_19
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    const-string v2, "Biometrics/AuthenticationClient"

    if-nez v0, :cond_1a

    const-string/jumbo v0, "Unable to sendAuthenticationCanceled, listener null"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_1a
    :try_start_2
    iget v3, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    iget v5, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCookie:I

    const/4 v6, 0x5

    invoke-virtual {v0, v3, v5, v6, v15}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_e

    :catch_1
    move-exception v0

    const-string/jumbo v3, "Remote exception"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, v1, v15}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    goto :goto_11

    :cond_1b
    iget-boolean v0, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mShouldUseLockoutTracker:Z

    if-eqz v0, :cond_1f

    iget v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    iget-object v2, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    if-eqz v2, :cond_1c

    invoke-interface {v2, v0}, Lcom/android/server/biometrics/sensors/LockoutTracker;->addFailedAttemptForUser(I)V

    :cond_1c
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    invoke-interface {v2, v0}, Lcom/android/server/biometrics/sensors/LockoutTracker;->getLockoutModeForUser(I)I

    move-result v2

    iget v3, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v3

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1d

    invoke-virtual {v3, v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementPermanentLockoutForUser(I)V

    goto :goto_f

    :cond_1d
    if-ne v2, v14, :cond_1e

    invoke-virtual {v3, v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementTimedLockoutForUser(I)V

    :cond_1e
    :goto_f
    if-eqz v2, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "marking operation as done: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BaseClientMonitor"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v14, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mAlreadyDone:Z

    :cond_1f
    :try_start_3
    iget-boolean v0, v1, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldVibrate:Z

    if-eqz v0, :cond_20

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->vibrateError()V

    goto :goto_10

    :catch_2
    move-exception v0

    goto :goto_12

    :cond_20
    :goto_10
    iget v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    iget-object v2, v7, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    if-eqz v2, :cond_21

    invoke-interface {v2, v0}, Landroid/hardware/biometrics/IBiometricSensorReceiver;->onAuthenticationFailed(I)V

    goto :goto_11

    :cond_21
    iget-object v0, v7, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_22

    invoke-interface {v0}, Landroid/hardware/face/IFaceServiceReceiver;->onAuthenticationFailed()V

    goto :goto_11

    :cond_22
    iget-object v0, v7, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v0, :cond_23

    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationFailed()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_23
    :goto_11
    invoke-virtual {v1, v4}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->handleLifecycleAfterAuth(Z)V

    return-void

    :goto_12
    const-string v2, "Biometrics/AuthenticationClient"

    const-string/jumbo v3, "Unable to notify listener"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, v1, v15}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void

    :goto_13
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public onError(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onErrorInternal(IIZ)V

    const/4 p1, 0x4

    iput p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->unregisterListenersForTaskStack()V

    return-void
.end method

.method public semHasPromptPrivilegedAttr()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public semIsAllowedBackgroundAuthentication()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAllowBackgroundAuthentication:Z

    return p0
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mShouldUseLockoutTracker:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    iget v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    invoke-interface {p1, v0}, Lcom/android/server/biometrics/sensors/LockoutTracker;->getLockoutModeForUser(I)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    check-cast p1, Lcom/android/server/biometrics/log/BiometricContextProvider;

    iget-object p1, p1, Lcom/android/server/biometrics/log/BiometricContextProvider;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    iget v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    iget v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mSensorStrength:I

    monitor-enter p1

    :try_start_0
    iget-object v2, p1, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mMultiBiometricLockoutState:Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->getLockoutState(II)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    move p1, v0

    :goto_0
    const-string v0, "Biometrics/AuthenticationClient"

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "In lockout mode("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") ; disallowing authentication"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v1, :cond_1

    const/4 p1, 0x7

    goto :goto_1

    :cond_1
    const/16 p1, 0x9

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onError(II)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mTaskStackListener:Landroid/app/TaskStackListener;

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    invoke-virtual {v2, p1}, Landroid/app/ActivityTaskManager;->registerTaskStackListener(Landroid/app/TaskStackListener;)V

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mTaskStackListener:Landroid/app/TaskStackListener;

    instance-of v2, p1, Landroid/app/ActivityManager$SemProcessListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mActivityManager:Landroid/app/ActivityManager;

    check-cast p1, Landroid/app/ActivityManager$SemProcessListener;

    invoke-virtual {v2, p1}, Landroid/app/ActivityManager;->semRegisterProcessListener(Landroid/app/ActivityManager$SemProcessListener;)V

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Requesting auth for "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mStartTimeMs:J

    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAuthAttempted:Z

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->startHalOperation()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final unregisterListenersForTaskStack()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mTaskStackListener:Landroid/app/TaskStackListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    invoke-virtual {v1, v0}, Landroid/app/ActivityTaskManager;->unregisterTaskStackListener(Landroid/app/TaskStackListener;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mTaskStackListener:Landroid/app/TaskStackListener;

    instance-of v1, v0, Landroid/app/ActivityManager$SemProcessListener;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mActivityManager:Landroid/app/ActivityManager;

    check-cast v0, Landroid/app/ActivityManager$SemProcessListener;

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->semUnregisterProcessListener(Landroid/app/ActivityManager$SemProcessListener;)V

    :cond_0
    return-void
.end method
