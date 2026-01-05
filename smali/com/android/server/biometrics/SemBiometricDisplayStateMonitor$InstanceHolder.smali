.class public abstract Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$InstanceHolder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final INSTANCE:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    sget-object v1, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getBiometricCallbackHandler()Landroid/os/Handler;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_FOLDABLE_TYPE_FOLD:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_LARGE_COVER_SCREEN:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;-><init>(Landroid/os/Handler;Z)V

    sput-object v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    return-void
.end method
