.class public final Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;
.super Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mFingerprintService:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;

.field public final mSensorId:I


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;I)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;

    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    return-void
.end method


# virtual methods
.method public final cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;J)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->cancelAuthenticationFromService(ILandroid/os/IBinder;Ljava/lang/String;J)V

    return-void
.end method

.method public final createTestSession(Landroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object p0

    return-object p0
.end method

.method public final dumpSensorServiceStateProto(Z)[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    invoke-virtual {v0, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->dumpSensorServiceStateProto(IZ)[B

    move-result-object p0

    return-object p0
.end method

.method public final getAuthenticatorId(I)J
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    invoke-virtual {v0, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->getAuthenticatorId(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getLockoutModeForUser(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    invoke-virtual {v0, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->getLockoutModeForUser(II)I

    move-result p0

    return p0
.end method

.method public final getSensorProperties(Ljava/lang/String;)Landroid/hardware/biometrics/SensorPropertiesInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    invoke-virtual {v0, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->getSensorProperties(ILjava/lang/String;)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object p0

    return-object p0
.end method

.method public final hasEnrolledTemplates(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->hasEnrolledFingerprints(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final invalidateAuthenticatorId(ILandroid/hardware/biometrics/IInvalidationCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->invalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    return-void
.end method

.method public final isHardwareDetected(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    invoke-virtual {v0, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->isHardwareDetected(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZZZ)V
    .locals 1

    move-object p1, p0

    iget-object p0, p1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;

    new-instance v0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    invoke-direct {v0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;-><init>()V

    iget p1, p1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setSensorId(I)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setUserId(I)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    move-result-object p1

    invoke-virtual {p1, p7}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setOpPackageName(Ljava/lang/String;)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    move-result-object p1

    invoke-virtual {p1, p13}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setIsMandatoryBiometrics(Z)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->build()Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    move-result-object p5

    move-object p1, p2

    move-wide p2, p3

    move-object p4, p6

    move-wide p6, p8

    move p8, p10

    move p9, p11

    move p10, p12

    invoke-virtual/range {p0 .. p10}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->prepareForAuthentication(Landroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricSensorReceiver;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;JIZZ)V

    return-void
.end method

.method public final resetLockout(Landroid/os/IBinder;Ljava/lang/String;I[B)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    move-object v1, p1

    move-object v5, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V

    return-void
.end method

.method public final startPreparedClient(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    invoke-virtual {v0, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->startPreparedClient(II)V

    return-void
.end method
