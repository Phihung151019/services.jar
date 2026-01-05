.class public interface abstract Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# direct methods
.method public static getService()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .locals 6

    const-string/jumbo v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    const-string/jumbo v1, "default"

    invoke-static {v0, v1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, v0}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    return-object v2

    :cond_1
    new-instance v2, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Proxy;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    :try_start_0
    invoke-virtual {v2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Proxy;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_2
    if-ge v4, v3, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_2

    return-object v2

    :catch_0
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public abstract authenticate(IJ)I
.end method

.method public abstract cancel()I
.end method

.method public abstract enroll(II[B)I
.end method

.method public abstract enumerate()I
.end method

.method public abstract getAuthenticatorId()J
.end method

.method public abstract postEnroll()I
.end method

.method public abstract preEnroll()J
.end method

.method public abstract remove(II)I
.end method

.method public abstract setActiveGroup(ILjava/lang/String;)I
.end method

.method public abstract setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J
.end method
