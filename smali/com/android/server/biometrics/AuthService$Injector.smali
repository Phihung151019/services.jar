.class public Lcom/android/server/biometrics/AuthService$Injector;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppOps(Landroid/content/Context;)Landroid/app/AppOpsManager;
    .locals 0

    const-class p0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public getBiometricService()Landroid/hardware/biometrics/IBiometricService;
    .locals 0

    const-string/jumbo p0, "biometric"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object p0

    return-object p0
.end method

.method public getConfiguration(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sget-boolean p1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SUPPORT_FINGERPRINT:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string/jumbo p1, "ro.board.first_api_level"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    sget v1, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v2, 0x21

    if-nez p1, :cond_0

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ge p1, v2, :cond_1

    goto :goto_0

    :cond_1
    sget-boolean p1, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_FINGERPRINT_JDM_HAL:Z

    if-eqz p1, :cond_2

    :goto_0
    const-string p1, "0:2:15"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-boolean p1, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_JDM_HAL:Z

    if-eqz p1, :cond_3

    const/16 p1, 0xfff

    goto :goto_1

    :cond_3
    const/16 p1, 0xff

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "1:8:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p1, v0, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getFaceAidlInstances()[Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/FaceService;->getDeclaredInstances()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFaceConfiguration(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthService$Injector;->getConfiguration(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFaceService()Landroid/hardware/face/IFaceService;
    .locals 0

    const-string/jumbo p0, "face"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/face/IFaceService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceService;

    move-result-object p0

    return-object p0
.end method

.method public getFingerprintAidlInstances()[Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getDeclaredInstances()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFingerprintConfiguration(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthService$Injector;->getConfiguration(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFingerprintService()Landroid/hardware/fingerprint/IFingerprintService;
    .locals 0

    const-string/jumbo p0, "fingerprint"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object p0

    return-object p0
.end method

.method public getIrisConfiguration(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthService$Injector;->getConfiguration(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIrisService()Landroid/hardware/iris/IIrisService;
    .locals 0

    const-string/jumbo p0, "iris"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/iris/IIrisService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/iris/IIrisService;

    move-result-object p0

    return-object p0
.end method

.method public isHidlDisabled(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public publishBinderService(Lcom/android/server/biometrics/AuthService;Landroid/hardware/biometrics/IAuthService$Stub;)V
    .locals 0

    const-string/jumbo p0, "auth"

    invoke-virtual {p1, p0, p2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
