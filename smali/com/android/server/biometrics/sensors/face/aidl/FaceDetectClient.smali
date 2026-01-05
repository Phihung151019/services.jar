.class public Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;
.super Lcom/android/server/biometrics/sensors/AcquisitionClient;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/biometrics/sensors/DetectionConsumer;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

.field public mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

.field public final mIsStrongBiometric:Z

.field public final mOptions:Landroid/hardware/face/FaceAuthenticateOptions;

.field public final mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/face/FaceAuthenticateOptions;Lcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;ZLandroid/hardware/SensorPrivacyManager;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
            ">;",
            "Landroid/os/IBinder;",
            "J",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "Landroid/hardware/face/FaceAuthenticateOptions;",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;",
            "Z",
            "Landroid/hardware/SensorPrivacyManager;",
            ")V"
        }
    .end annotation

    invoke-virtual/range {p7 .. p7}, Landroid/hardware/face/FaceAuthenticateOptions;->getUserId()I

    move-result v5

    invoke-virtual/range {p7 .. p7}, Landroid/hardware/face/FaceAuthenticateOptions;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p7 .. p7}, Landroid/hardware/face/FaceAuthenticateOptions;->getSensorId()I

    move-result v8

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v0 .. v12}, Lcom/android/server/biometrics/sensors/AcquisitionClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    move-wide/from16 p1, p4

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->setRequestId(J)V

    move-object/from16 p1, p10

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    move/from16 p1, p11

    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mIsStrongBiometric:Z

    move-object/from16 p1, p12

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    move-object/from16 p1, p7

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mOptions:Landroid/hardware/face/FaceAuthenticateOptions;

    return-void
.end method


# virtual methods
.method public final doDetectInteraction()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    iget v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mHalInterfaceVersion:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getOperationContext()Lcom/android/server/biometrics/log/OperationContextExt;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    new-instance v3, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;)V

    new-instance v4, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;)V

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mOptions:Landroid/hardware/face/FaceAuthenticateOptions;

    check-cast v2, Lcom/android/server/biometrics/log/BiometricContextProvider;

    invoke-virtual {v2, v1, v3, v4, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->subscribe(Lcom/android/server/biometrics/log/OperationContextExt;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Landroid/hardware/biometrics/AuthenticateOptions;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/biometrics/face/ISession;->detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    return-void
.end method

.method public final getProtoEnum()I
    .locals 0

    const/16 p0, 0xd

    return p0
.end method

.method public final onError(II)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    new-instance v1, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;

    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v1, v2, v4, v3, p1}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;ILjava/lang/String;I)V

    invoke-virtual {v1}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationErrorInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationError(Landroid/hardware/biometrics/events/AuthenticationErrorInfo;)V

    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onError(II)V

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    new-instance p1, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;

    invoke-direct {p1, v2, v4}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V

    return-void
.end method

.method public final start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->startHalOperation()V

    return-void
.end method

.method public final startHalOperation()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    new-instance v1, Landroid/hardware/biometrics/events/AuthenticationStartedInfo$Builder;

    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Landroid/hardware/biometrics/events/AuthenticationStartedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    invoke-virtual {v1}, Landroid/hardware/biometrics/events/AuthenticationStartedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStartedInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStarted(Landroid/hardware/biometrics/events/AuthenticationStartedInfo;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->onError(II)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->doDetectInteraction()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v2, "FaceDetectClient"

    const-string/jumbo v3, "Remote exception when requesting face detect"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public final stopHalOperation()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    new-instance v1, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;

    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    invoke-virtual {v1}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unsubscribeBiometricContext()V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/hardware/biometrics/common/ICancellationSignal;->cancel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "FaceDetectClient"

    const-string/jumbo v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_0
    return-void
.end method
