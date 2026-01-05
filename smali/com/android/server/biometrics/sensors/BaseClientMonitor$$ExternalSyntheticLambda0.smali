.class public final synthetic Lcom/android/server/biometrics/sensors/BaseClientMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    iput-boolean p2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor$$ExternalSyntheticLambda0;->f$1:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Binder died, operation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseClientMonitor"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mAlreadyDone:Z

    if-eqz v1, :cond_0

    const-string p0, "Binder died but client is finished, ignoring"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->isInterruptable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Binder died, cancelling client"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->cancel()V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mToken:Landroid/os/IBinder;

    if-eqz p0, :cond_2

    new-instance p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    new-instance v1, Landroid/hardware/biometrics/IBiometricSensorReceiver$Default;

    invoke-direct {v1}, Landroid/hardware/biometrics/IBiometricSensorReceiver$Default;-><init>()V

    invoke-direct {p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/biometrics/IBiometricSensorReceiver;)V

    iput-object p0, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    :cond_2
    return-void
.end method
