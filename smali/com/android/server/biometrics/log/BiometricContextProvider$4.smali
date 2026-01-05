.class public final Lcom/android/server/biometrics/log/BiometricContextProvider$4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$4;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    return-void
.end method


# virtual methods
.method public final onDisplayOff()V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$4;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mIBiometricContextListener:Lcom/android/server/biometrics/log/BiometricContextProvider$2;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/log/BiometricContextProvider$2;->onDisplayStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public final onDisplayOn()V
    .locals 0

    return-void
.end method
