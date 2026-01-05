.class public final Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;
.super Lcom/android/server/biometrics/sensors/EnrollClient;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

.field public final mBiometricUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

.field public mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

.field public final mDebugConsent:Z

.field public final mDisabledFeatures:[I

.field public final mEnrollIgnoreList:[I

.field public final mEnrollIgnoreListVendor:[I

.field public final mEnrollReason:I

.field public mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

.field public final mMaxTemplatesPerUser:I

.field public mOsPreviewHandle:Landroid/os/NativeHandle;

.field public final mPreviewHandleDeleterCallback:Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;

.field public final mPreviewSurface:Landroid/view/Surface;

.field public final mSemCancelDaemonCallback:Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;JLcom/android/server/biometrics/sensors/face/FaceUtils;[ILandroid/view/Surface;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;IZLandroid/hardware/face/FaceEnrollOptions;Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;Lcom/android/server/biometrics/sensors/face/FaceUtils;)V
    .locals 14

    invoke-virtual/range {p18 .. p18}, Landroid/hardware/face/FaceEnrollOptions;->getEnrollReason()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricFaceConstants;->reasonToMetric(I)I

    move-result v13

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p10

    move/from16 v9, p13

    move-object/from16 v11, p14

    move-object/from16 v12, p15

    invoke-direct/range {v0 .. v13}, Lcom/android/server/biometrics/sensors/EnrollClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;IZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;I)V

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;I)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mPreviewHandleDeleterCallback:Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;I)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mSemCancelDaemonCallback:Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;

    move-wide/from16 v1, p8

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->setRequestId(J)V

    move-object/from16 v1, p19

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    invoke-virtual/range {p18 .. p18}, Landroid/hardware/face/FaceEnrollOptions;->getEnrollReason()I

    move-result v1

    iput v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mEnrollReason:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070102

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mEnrollIgnoreList:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070105

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mEnrollIgnoreListVendor:[I

    move/from16 v1, p16

    iput v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mMaxTemplatesPerUser:I

    move/from16 v1, p17

    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mDebugConsent:Z

    move-object/from16 v1, p11

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mDisabledFeatures:[I

    move-object/from16 v1, p12

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mPreviewSurface:Landroid/view/Surface;

    move-object/from16 v1, p20

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EnrollOptions "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p18 .. p18}, Landroid/hardware/face/FaceEnrollOptions;->getEnrollReason()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/face/FaceEnrollOptions;->enrollReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceEnrollClient"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final doEnroll([B)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mHardwareAuthToken:[B

    invoke-static {v1}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    move-result-object v1

    iget v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mHalInterfaceVersion:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getOperationContext()Lcom/android/server/biometrics/log/OperationContextExt;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    new-instance v4, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0, v1, p1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;Landroid/hardware/keymaster/HardwareAuthToken;[B)V

    new-instance p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$$ExternalSyntheticLambda1;

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;)V

    const/4 p1, 0x0

    check-cast v3, Lcom/android/server/biometrics/log/BiometricContextProvider;

    invoke-virtual {v3, v2, v4, p0, p1}, Lcom/android/server/biometrics/log/BiometricContextProvider;->subscribe(Lcom/android/server/biometrics/log/OperationContextExt;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Landroid/hardware/biometrics/AuthenticateOptions;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, p1, v2}, Landroid/hardware/biometrics/face/ISession;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    return-void
.end method

.method public getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;
    .locals 0

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object p0

    return-object p0
.end method

.method public final hasReachedEnrollmentLimit()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsHIDL:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    invoke-virtual {v0, v2, p0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_JDM_HAL:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    if-lt p0, v0, :cond_2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mMaxTemplatesPerUser:I

    if-lt v0, p0, :cond_2

    :goto_1
    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final onAcquired(II)V
    .locals 7

    const/16 v0, 0x16

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mEnrollIgnoreListVendor:[I

    invoke-static {p2, v3}, Lcom/android/server/biometrics/Utils;->listContains(I[I)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mEnrollIgnoreList:[I

    invoke-static {p1, v3}, Lcom/android/server/biometrics/Utils;->listContains(I[I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    if-ne p1, v0, :cond_2

    add-int/lit16 v0, p2, 0x3e8

    goto :goto_2

    :cond_2
    move v0, p1

    :goto_2
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Landroid/hardware/face/FaceManager;->getEnrollHelpMessage(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    new-instance v4, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;

    sget-object v5, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    iget v6, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mEnrollReason:I

    invoke-static {v6}, Lcom/android/server/biometrics/sensors/EnrollClient;->getRequestReasonFromFaceEnrollReason(I)I

    move-result v6

    invoke-direct {v4, v5, v6, v2, v0}, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;ILjava/lang/String;I)V

    invoke-virtual {v4}, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationHelpInfo;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationHelp(Landroid/hardware/biometrics/events/AuthenticationHelpInfo;)V

    :cond_3
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquiredInternal(IIZ)V

    return-void
.end method

.method public final onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/EnrollClient;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    if-nez p2, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string/jumbo p2, "last_enroll_time_changed"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    const-string/jumbo v0, "android.intent.extra.user_handle"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p2, "modality"

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final onError(II)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    new-instance v1, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;

    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mEnrollReason:I

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/EnrollClient;->getRequestReasonFromFaceEnrollReason(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    invoke-static {v4, p1, p2}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p1}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;ILjava/lang/String;I)V

    invoke-virtual {v1}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationErrorInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationError(Landroid/hardware/biometrics/events/AuthenticationErrorInfo;)V

    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/EnrollClient;->onError(II)V

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    new-instance p2, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mEnrollReason:I

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->getRequestReasonFromFaceEnrollReason(I)I

    move-result p0

    invoke-direct {p2, v2, p0}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    invoke-virtual {p2}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V

    return-void
.end method

.method public final start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/EnrollClient;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->DISMISS_FRR_INTENT:Landroid/content/Intent;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v1, "FaceEnroll"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    const-class p1, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const-string p1, "FaceReEnroll"

    invoke-virtual {p0, p1, v2, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public final startHalOperation()V
    .locals 13

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    new-instance v1, Landroid/hardware/biometrics/events/AuthenticationStartedInfo$Builder;

    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mEnrollReason:I

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/EnrollClient;->getRequestReasonFromFaceEnrollReason(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/hardware/biometrics/events/AuthenticationStartedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    invoke-virtual {v1}, Landroid/hardware/biometrics/events/AuthenticationStartedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStartedInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStarted(Landroid/hardware/biometrics/events/AuthenticationStartedInfo;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mPreviewSurface:Landroid/view/Surface;

    const-string v1, "FaceEnrollClient"

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->acquireSurfaceHandle(Landroid/view/Surface;)Landroid/os/NativeHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mOsPreviewHandle:Landroid/os/NativeHandle;

    :try_start_0
    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlNativeHandleUtils;->dup(Landroid/os/NativeHandle;)Landroid/hardware/common/NativeHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    const-string/jumbo v0, "Obtained handles for the preview surface."

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    const-string v2, "Failed to dup mOsPreviewHandle"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mDebugConsent:Z

    if-eqz v4, :cond_1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mDisabledFeatures:[I

    array-length v5, v4

    const/4 v6, 0x1

    move v7, v2

    move v8, v6

    :goto_2
    if-ge v7, v5, :cond_3

    aget v9, v4, v7

    invoke-static {v9}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->convertFrameworkToAidlFeature(I)B

    move-result v9

    if-ne v9, v6, :cond_2

    move v8, v2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    if-eqz v8, :cond_4

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v9, v4, [B

    move v4, v2

    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    aput-byte v5, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->startOperation(I)V

    const-string/jumbo v0, "enroll START"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->isUsingSehAPI()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mHardwareAuthToken:[B

    invoke-static {v8}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    iget-object v11, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mPreviewSurface:Landroid/view/Surface;

    iget v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mHalInterfaceVersion:I

    const/4 v12, 0x4

    if-lt v0, v12, :cond_6

    goto :goto_4

    :cond_6
    move v6, v2

    :goto_4
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonEnroll(Landroid/hardware/keymaster/HardwareAuthToken;[BLandroid/hardware/common/NativeHandle;Landroid/view/Surface;Ljava/lang/Boolean;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    goto :goto_5

    :cond_7
    invoke-virtual {p0, v9}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->doEnroll([B)V

    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enroll FINISH ("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms) RESULT: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :goto_6
    const-string v4, "Exception when requesting enroll"

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v3, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->onError(II)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_7
    return-void
.end method

.method public final stopHalOperation()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    new-instance v1, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;

    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mEnrollReason:I

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/EnrollClient;->getRequestReasonFromFaceEnrollReason(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    invoke-virtual {v1}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unsubscribeBiometricContext()V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonCancel(Landroid/hardware/biometrics/common/ICancellationSignal;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "FaceEnrollClient"

    const-string/jumbo v3, "Remote exception when requesting cancel"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->onError(II)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v1, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_0
    return-void
.end method

.method public final wrapCallbackForStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .locals 5

    new-instance v0, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mPreviewHandleDeleterCallback:Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mSemCancelDaemonCallback:Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    new-instance v3, Lcom/android/server/biometrics/log/CallbackWithProbe;

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/android/server/biometrics/log/CallbackWithProbe;-><init>(Lcom/android/server/biometrics/log/ALSProbe;Z)V

    filled-new-array {v1, v2, v3, p1}, [Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-object v0
.end method
