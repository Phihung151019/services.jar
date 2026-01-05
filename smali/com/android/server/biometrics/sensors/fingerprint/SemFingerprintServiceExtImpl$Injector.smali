.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAodController()Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;
    .locals 3

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    invoke-virtual {v2}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method
