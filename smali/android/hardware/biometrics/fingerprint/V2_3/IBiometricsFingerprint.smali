.class public interface abstract Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;


# direct methods
.method public static castFrom(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;)Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;
    .locals 5

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "android.hardware.biometrics.fingerprint@2.3::IBiometricsFingerprint"

    invoke-interface {p0, v0}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v2, v1, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;

    return-object v1

    :cond_2
    new-instance v1, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint$Proxy;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p0, v1, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    :try_start_0
    invoke-virtual {v1}, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint$Proxy;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_3
    if-ge v3, v2, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_3

    return-object v1

    :catch_0
    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract onFingerDown(IFFI)V
.end method

.method public abstract onFingerUp()V
.end method
