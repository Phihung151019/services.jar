.class public final Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;
.super Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mService:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;Ljava/util/function/Supplier;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;-><init>(Ljava/util/function/Supplier;)V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;->mService:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;

    return-void
.end method


# virtual methods
.method public final invokeRegisteredCallback(Landroid/os/IInterface;Ljava/util/List;)V
    .locals 0

    check-cast p1, Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;

    invoke-interface {p1, p2}, Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;->onAllAuthenticatorsRegistered(Ljava/util/List;)V

    return-void
.end method

.method public final registerService(Landroid/hardware/biometrics/IBiometricService;Landroid/hardware/biometrics/SensorPropertiesInternal;)V
    .locals 4

    check-cast p2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v0, p2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorStrength:I

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->propertyStrengthToAuthenticatorStrength(I)I

    move-result v0

    :try_start_0
    iget v1, p2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;->mService:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;

    iget v3, p2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-direct {v2, p0, v3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;I)V

    const/4 p0, 0x2

    invoke-interface {p1, v1, p0, v0, v2}, Landroid/hardware/biometrics/IBiometricService;->registerAuthenticator(IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Remote exception when registering sensorId: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    const-string p2, "FingerprintServiceRegistry"

    invoke-static {p0, p1, p2}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method
