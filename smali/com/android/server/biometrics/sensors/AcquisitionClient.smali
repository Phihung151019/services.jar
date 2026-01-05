.class public abstract Lcom/android/server/biometrics/sensors/AcquisitionClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ErrorConsumer;


# instance fields
.field public mAlreadyCancelled:Z

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mShouldSendErrorToClient:Z

.field public mShouldVibrate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x32

    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move/from16 v11, p12

    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldSendErrorToClient:Z

    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mPowerManager:Landroid/os/PowerManager;

    move/from16 p1, p9

    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldVibrate:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mAlreadyCancelled:Z

    if-eqz v0, :cond_0

    const-string p0, "Biometrics/AcquisitionClient"

    const-string v0, "Cancel was already requested"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->stopHalOperation()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mAlreadyCancelled:Z

    return-void
.end method

.method public final cancelWithoutStarting(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "cancelWithoutStarting: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Biometrics/AcquisitionClient"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iget v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    iget v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCookie:I

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Failed to invoke sendError"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public final isInterruptable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onAcquired(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquiredInternal(IIZ)V

    return-void
.end method

.method public final onAcquiredInternal(IIZ)V
    .locals 24

    move-object/from16 v1, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v0, p3

    iget-object v2, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getOperationContext()Lcom/android/server/biometrics/log/OperationContextExt;

    move-result-object v3

    iget v4, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    iget-boolean v5, v2, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    const/4 v6, 0x2

    if-nez v5, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v5, 0x1

    const/4 v10, 0x4

    iget v11, v2, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    if-ne v11, v10, :cond_1

    move v10, v5

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    if-ne v11, v5, :cond_2

    move v11, v5

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_1
    if-nez v10, :cond_4

    if-eqz v11, :cond_3

    goto :goto_2

    :cond_3
    if-nez v8, :cond_7

    iget-wide v10, v2, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v2, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    goto :goto_3

    :cond_4
    :goto_2
    if-eqz v11, :cond_5

    const/4 v11, 0x7

    if-eq v8, v11, :cond_6

    const/16 v11, 0x2712

    if-eq v9, v11, :cond_6

    :cond_5
    if-eqz v10, :cond_7

    const/16 v10, 0x14

    if-ne v8, v10, :cond_7

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v2, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    :cond_7
    :goto_3
    invoke-virtual {v2}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v10

    if-eqz v10, :cond_8

    goto/16 :goto_8

    :cond_8
    iget-object v10, v2, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v3, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget-boolean v11, v10, Landroid/hardware/biometrics/common/OperationContext;->isCrypto:Z

    iget v12, v10, Landroid/hardware/biometrics/common/OperationContext;->id:I

    iget-byte v13, v10, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    if-ne v13, v5, :cond_9

    move v13, v6

    goto :goto_4

    :cond_9
    if-ne v13, v6, :cond_a

    move v13, v5

    goto :goto_4

    :cond_a
    const/4 v13, 0x0

    :goto_4
    iget-boolean v14, v10, Landroid/hardware/biometrics/common/OperationContext;->isAod:Z

    iget-boolean v15, v3, Lcom/android/server/biometrics/log/OperationContextExt;->mIsDisplayOn:Z

    iget v10, v3, Lcom/android/server/biometrics/log/OperationContextExt;->mDockState:I

    iget v7, v3, Lcom/android/server/biometrics/log/OperationContextExt;->mOrientation:I

    invoke-static {v7}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->orientationType(I)I

    move-result v17

    iget v7, v3, Lcom/android/server/biometrics/log/OperationContextExt;->mFoldState:I

    move/from16 v18, v4

    const/4 v4, 0x3

    if-eq v7, v5, :cond_c

    if-eq v7, v6, :cond_d

    if-eq v7, v4, :cond_b

    const/4 v5, 0x0

    goto :goto_5

    :cond_b
    move v5, v6

    goto :goto_5

    :cond_c
    move v5, v4

    :cond_d
    :goto_5
    iget-object v4, v3, Lcom/android/server/biometrics/log/OperationContextExt;->mSessionInfo:Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    if-eqz v4, :cond_e

    iget-object v4, v4, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;->mOrder:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    :goto_6
    move/from16 v19, v4

    goto :goto_7

    :cond_e
    const/4 v4, -0x1

    goto :goto_6

    :goto_7
    invoke-static {v3}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->toProtoWakeReason(Lcom/android/server/biometrics/log/OperationContextExt;)I

    move-result v20

    move v3, v6

    iget v6, v2, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    move/from16 v4, v18

    move/from16 v18, v5

    move v5, v11

    const/4 v11, -0x1

    const/16 v7, 0x57

    move/from16 v21, v3

    iget v3, v2, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget v2, v2, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    move/from16 v16, v10

    const/16 v22, 0x0

    const/4 v10, 0x0

    move/from16 v23, v7

    move v7, v2

    move/from16 v2, v23

    invoke-static/range {v2 .. v20}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIIIIZIIIZZIIIII)V

    :goto_8
    const-string v2, "Acquired: "

    const-string v3, " "

    const-string v4, ", shouldSend: "

    invoke-static {v8, v9, v2, v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Biometrics/AcquisitionClient"

    invoke-static {v3, v2, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    if-nez v8, :cond_f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v2, v1, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mPowerManager:Landroid/os/PowerManager;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/os/PowerManager;->userActivity(JII)V

    goto :goto_9

    :cond_f
    const/4 v7, 0x0

    :goto_9
    if-eqz v0, :cond_12

    :try_start_0
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iget v2, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    if-eqz v4, :cond_10

    invoke-interface {v4, v2, v8, v9}, Landroid/hardware/biometrics/IBiometricSensorReceiver;->onAcquired(III)V

    return-void

    :cond_10
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v2, :cond_11

    invoke-interface {v2, v8, v9}, Landroid/hardware/face/IFaceServiceReceiver;->onAcquired(II)V

    return-void

    :cond_11
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v0, :cond_12

    invoke-interface {v0, v8, v9}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAcquired(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v2, "Failed to invoke sendAcquired"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, v1, v7}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_12
    return-void
.end method

.method public onError(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onErrorInternal(IIZ)V

    return-void
.end method

.method public final onErrorInternal(IIZ)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onErrorInternal code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", finish: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Biometrics/AcquisitionClient"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldSendErrorToClient:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getOperationContext()Lcom/android/server/biometrics/log/OperationContextExt;

    move-result-object v3

    iget v4, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    invoke-virtual {v0, v3, p1, p2, v4}, Lcom/android/server/biometrics/log/BiometricLogger;->logOnError(Lcom/android/server/biometrics/log/OperationContextExt;III)V

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldSendErrorToClient:Z

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iget v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    iget v4, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCookie:I

    invoke-virtual {v0, v3, v4, p1, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Failed to invoke sendError"

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    if-nez p1, :cond_1

    const-string p0, "Callback is null, perhaps the client hasn\'t been started yet?"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-interface {p1, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final onUserCanceled()V
    .locals 2

    const-string v0, "Biometrics/AcquisitionClient"

    const-string/jumbo v1, "onUserCanceled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onErrorInternal(IIZ)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->stopHalOperation()V

    return-void
.end method

.method public abstract stopHalOperation()V
.end method

.method public final unableToStart()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    iget p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCookie:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "Biometrics/AcquisitionClient"

    const-string/jumbo v1, "Unable to send error"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public abstract vibrateError()V
.end method

.method public vibrateSuccess()V
    .locals 0

    return-void
.end method
