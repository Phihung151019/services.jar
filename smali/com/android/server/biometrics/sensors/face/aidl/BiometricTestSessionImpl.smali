.class public final Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;
.super Landroid/hardware/biometrics/ITestSession$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

.field public final mContext:Landroid/content/Context;

.field public final mEnrollmentIds:Ljava/util/Set;

.field public final mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field public final mRandom:Ljava/util/Random;

.field public final mReceiver:Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$1;

.field public final mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

.field public final mSensorId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/biometrics/ITestSession$Stub;-><init>()V

    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$1;

    invoke-direct {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mReceiver:Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$1;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensorId:I

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iput-object p5, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public final acceptAuthentication(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->acceptAuthentication_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensorId:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo p0, "face/aidl/BiometricTestSessionImpl"

    const-string/jumbo p1, "No faces, returning"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/Face;

    invoke-virtual {v0}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    const/16 p1, 0x45

    new-array p1, p1, [B

    invoke-static {p1}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V

    return-void
.end method

.method public final cleanupInternalState(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->cleanupInternalState_enforcePermission()V

    const-string/jumbo v0, "cleanupInternalState: "

    const-string/jumbo v1, "face/aidl/BiometricTestSessionImpl"

    invoke-static {p1, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensorId:I

    new-instance v2, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$2;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$2;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public final finishEnroll(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->finishEnroll_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onEnrollmentProgress(II)V

    return-void
.end method

.method public final getSensorId()I
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->getSensorId_enforcePermission()V

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensorId:I

    return p0
.end method

.method public final notifyAcquired(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->notifyAcquired_enforcePermission()V

    new-instance v0, Landroid/hardware/biometrics/face/BaseFrame;

    invoke-direct {v0}, Landroid/hardware/biometrics/face/BaseFrame;-><init>()V

    int-to-byte p2, p2

    iput-byte p2, v0, Landroid/hardware/biometrics/face/BaseFrame;->acquiredInfo:B

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    iget-object p2, p2, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p2

    instance-of p2, p2, Lcom/android/server/biometrics/sensors/EnrollClient;

    if-eqz p2, :cond_0

    new-instance p2, Landroid/hardware/biometrics/face/EnrollmentFrame;

    invoke-direct {p2}, Landroid/hardware/biometrics/face/EnrollmentFrame;-><init>()V

    iput-object v0, p2, Landroid/hardware/biometrics/face/EnrollmentFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onEnrollmentFrame(Landroid/hardware/biometrics/face/EnrollmentFrame;)V

    return-void

    :cond_0
    new-instance p2, Landroid/hardware/biometrics/face/AuthenticationFrame;

    invoke-direct {p2}, Landroid/hardware/biometrics/face/AuthenticationFrame;-><init>()V

    iput-object v0, p2, Landroid/hardware/biometrics/face/AuthenticationFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onAuthenticationFrame(Landroid/hardware/biometrics/face/AuthenticationFrame;)V

    return-void
.end method

.method public final notifyError(II)V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->notifyError_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    int-to-byte p1, p2

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onError(BI)V

    return-void
.end method

.method public final notifyVendorAcquired(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->notifyVendorAcquired_enforcePermission()V

    new-instance v0, Landroid/hardware/biometrics/face/BaseFrame;

    invoke-direct {v0}, Landroid/hardware/biometrics/face/BaseFrame;-><init>()V

    const/16 v1, 0x17

    iput-byte v1, v0, Landroid/hardware/biometrics/face/BaseFrame;->acquiredInfo:B

    iput p2, v0, Landroid/hardware/biometrics/face/BaseFrame;->vendorCode:I

    new-instance p2, Landroid/hardware/biometrics/face/AuthenticationFrame;

    invoke-direct {p2}, Landroid/hardware/biometrics/face/AuthenticationFrame;-><init>()V

    iput-object v0, p2, Landroid/hardware/biometrics/face/AuthenticationFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onAuthenticationFrame(Landroid/hardware/biometrics/face/AuthenticationFrame;)V

    return-void
.end method

.method public final notifyVendorError(II)V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->notifyVendorError_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    const/4 p1, 0x7

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onError(BI)V

    return-void
.end method

.method public final rejectAuthentication(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->rejectAuthentication_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onAuthenticationFailed()V

    return-void
.end method

.method public final setTestHalEnabled(Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->setTestHalEnabled_enforcePermission()V

    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "face/aidl/BiometricTestSessionImpl"

    const-string/jumbo v2, "exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Face setTestHalEnabled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Sensor"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTestHalEnabled:Z

    if-eq p1, v1, :cond_1

    :try_start_1
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    if-eqz v1, :cond_0

    const-string v1, "Closing old face session"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/biometrics/face/ISession;->close()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v3, "RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    :cond_1
    iput-boolean p1, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTestHalEnabled:Z

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mTestHalEnabled:Z

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mTestHalEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setTestHalEnabled(): isVhalForTestingFlags=false mTestHalEnabled="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mTestHalEnabled:Z

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
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/hardware/biometrics/ITestSession$Stub;->startEnroll_enforcePermission()V

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "startEnroll(): isVhalForTesting=false"

    const-string/jumbo v2, "face/aidl/BiometricTestSessionImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget v4, v0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensorId:I

    new-instance v6, Landroid/os/Binder;

    invoke-direct {v6}, Landroid/os/Binder;-><init>()V

    const/16 v1, 0x45

    new-array v8, v1, [B

    iget-object v7, v0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mReceiver:Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$1;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x0

    new-array v12, v0, [I

    new-instance v0, Landroid/hardware/face/FaceEnrollOptions$Builder;

    invoke-direct {v0}, Landroid/hardware/face/FaceEnrollOptions$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/hardware/face/FaceEnrollOptions$Builder;->build()Landroid/hardware/face/FaceEnrollOptions;

    move-result-object v15

    iget-object v0, v3, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v10

    iget-object v0, v3, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v5, p1

    invoke-direct/range {v2 .. v15}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;[BLjava/lang/String;J[ILandroid/view/Surface;ZLandroid/hardware/face/FaceEnrollOptions;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
