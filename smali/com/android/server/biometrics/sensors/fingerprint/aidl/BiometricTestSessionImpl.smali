.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;
.super Landroid/hardware/biometrics/ITestSession$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

.field public final mContext:Landroid/content/Context;

.field public final mEnrollmentIds:Ljava/util/Set;

.field public final mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

.field public final mRandom:Ljava/util/Random;

.field public final mReceiver:Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl$1;

.field public final mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

.field public final mSensorId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/biometrics/ITestSession$Stub;-><init>()V

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl$1;

    invoke-direct {v0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mReceiver:Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl$1;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensorId:I

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iput-object p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public final acceptAuthentication(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->acceptAuthentication_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo p0, "fp/aidl/BiometricTestSessionImpl"

    const-string/jumbo p1, "No fingerprints, returning"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    const/16 p1, 0x45

    new-array p1, p1, [B

    invoke-static {p1}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V

    return-void
.end method

.method public final cleanupInternalState(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->cleanupInternalState_enforcePermission()V

    const-string/jumbo v0, "cleanupInternalState: "

    const-string/jumbo v1, "fp/aidl/BiometricTestSessionImpl"

    invoke-static {p1, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensorId:I

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl$2;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public final finishEnroll(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->finishEnroll_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "finishEnroll(): useVhalForTesting=false"

    const-string/jumbo v1, "fp/aidl/BiometricTestSessionImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onEnrollmentProgress(II)V

    return-void
.end method

.method public final getSensorId()I
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->getSensorId_enforcePermission()V

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensorId:I

    return p0
.end method

.method public final notifyAcquired(II)V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->notifyAcquired_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    int-to-byte p1, p2

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onAcquired(BI)V

    return-void
.end method

.method public final notifyError(II)V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->notifyError_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    int-to-byte p1, p2

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onError(BI)V

    return-void
.end method

.method public final notifyVendorAcquired(II)V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->notifyAcquired_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    const/4 p1, 0x7

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onAcquired(BI)V

    return-void
.end method

.method public final notifyVendorError(II)V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->notifyVendorError_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    const/4 p1, 0x7

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onError(BI)V

    return-void
.end method

.method public final rejectAuthentication(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->rejectAuthentication_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onAuthenticationFailed()V

    return-void
.end method

.method public final setTestHalEnabled(Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->setTestHalEnabled_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->setTestHalEnabled(Z)V

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTestHalEnabled:Z

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTestHalEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setTestHalEnabled(): useVhalForTestingFlags=false mTestHalEnabled="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTestHalEnabled:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " changed="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final startEnroll(I)V
    .locals 9

    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->startEnroll_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensorId:I

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    const/16 v3, 0x45

    new-array v3, v3, [B

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mReceiver:Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl$1;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    new-instance p0, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;->build()Landroid/hardware/fingerprint/FingerprintEnrollOptions;

    move-result-object v8

    const/4 v7, 0x2

    move v4, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;ILandroid/hardware/fingerprint/FingerprintEnrollOptions;)J

    return-void
.end method
