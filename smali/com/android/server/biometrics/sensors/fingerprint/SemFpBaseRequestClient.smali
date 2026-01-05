.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCommand:I

.field public final mInputBuffer:[B

.field public final mIsAsyncOperation:Z

.field public final mOutputBuffer:[B

.field public final mParam:I

.field public mRequestResult:I

.field public final mUseScheduler:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IILjava/lang/String;ZII[B[B)V
    .locals 13

    move-object/from16 v0, p12

    new-instance v10, Lcom/android/server/biometrics/log/BiometricLogger;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v1, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(Landroid/content/Context;IIILcom/android/server/biometrics/AuthenticationStatsCollector;)V

    const/4 v12, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v11, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v9, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v12}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    move/from16 p1, p9

    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mUseScheduler:Z

    move/from16 p1, p10

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mCommand:I

    move/from16 p1, p11

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mParam:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mRequestResult:I

    move-object/from16 p1, p13

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mOutputBuffer:[B

    if-eqz p5, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mIsAsyncOperation:Z

    :cond_0
    if-eqz v0, :cond_2

    array-length p1, v0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mInputBuffer:[B

    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mInputBuffer:[B

    return-void
.end method


# virtual methods
.method public final getProtoEnum()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public interruptsPrecedingClients()Z
    .locals 1

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mCommand:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onRequestResult(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintRequestReceiver:Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;->onResult(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "FingerprintRequestClient"

    const-string v1, "Failed to invoke sendEvent with onRequestResult"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setRequestResultForTest(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mRequestResult:I

    return-void
.end method

.method public final start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->startHalOperation()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "request["

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mCommand:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "] FP_FINISH ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms) RESULT: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mRequestResult:I

    const-string v1, "FingerprintRequestClient"

    invoke-static {p1, v0, v1}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mRequestResult:I

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mUseScheduler:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mIsAsyncOperation:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, p1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public final startHalOperation()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mLazySehFingerprint:Ljava/util/function/Function;

    if-eqz v0, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;

    if-eqz v1, :cond_1

    move-object v2, v0

    check-cast v2, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-nez v2, :cond_3

    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mUseScheduler:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->unableToStart()V

    return-void

    :cond_2
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mRequestResult:I

    return-void

    :cond_3
    :try_start_0
    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mCommand:I

    iget v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mParam:I

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mInputBuffer:[B

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    new-array v5, v0, [B

    :goto_1
    invoke-interface {v2, v1, v3, v4, v5}, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;->sehRequest(III[B)Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    iget v2, v1, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;->retValue:I

    iput v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mRequestResult:I

    if-nez v2, :cond_8

    iget-object v1, v1, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;->data:[B

    if-eqz v1, :cond_8

    array-length v2, v1

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mOutputBuffer:[B

    if-eqz v2, :cond_8

    array-length v3, v2

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    array-length v3, v1

    array-length v2, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mOutputBuffer:[B

    invoke-static {v1, v0, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mRequestResult:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "FingerprintRequestClient"

    const-string/jumbo v1, "Remote exception"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_2
    return-void
.end method

.method public final startWithoutScheduler()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mUseScheduler:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mRequestResult:I

    return p0

    :cond_0
    const-string p0, "FingerprintRequestClient"

    const-string/jumbo v0, "startWithoutScheduler: It must be started by the scheduler!!"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v0, "useScheduler option is set"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final unableToStart()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mRequestResult:I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method
