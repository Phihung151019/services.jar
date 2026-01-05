.class public interface abstract Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v1, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    return-object v2

    :cond_1
    new-instance v2, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p0, v2, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    :try_start_0
    invoke-virtual {v2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_2
    if-ge v4, v3, :cond_3

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_2

    return-object v2

    :catch_0
    :cond_3
    return-object v0
.end method


# virtual methods
.method public abstract onAcquired(IIJ)V
.end method

.method public abstract onAuthenticated(JIILjava/util/ArrayList;)V
.end method

.method public abstract onEnrollResult(IIIJ)V
.end method

.method public abstract onEnumerate(II)V
.end method

.method public abstract onError(IIJ)V
.end method

.method public abstract onRemoved(III)V
.end method
