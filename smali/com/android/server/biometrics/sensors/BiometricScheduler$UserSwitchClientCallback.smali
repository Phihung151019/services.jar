.class public final Lcom/android/server/biometrics/sensors/BiometricScheduler$UserSwitchClientCallback;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final mOwner:Lcom/android/server/biometrics/sensors/HalClientMonitor;

.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/BiometricScheduler;Lcom/android/server/biometrics/sensors/HalClientMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$UserSwitchClientCallback;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$UserSwitchClientCallback;->mOwner:Lcom/android/server/biometrics/sensors/HalClientMonitor;

    return-void
.end method


# virtual methods
.method public final onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$UserSwitchClientCallback;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$1$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;Lcom/android/server/biometrics/sensors/BaseClientMonitor;ZI)V

    iget-object p0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
