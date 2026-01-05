.class public final Lcom/android/server/biometrics/sensors/BaseClientMonitor$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# virtual methods
.method public final onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 0

    const-string p0, "BaseClientMonitor"

    const-string/jumbo p1, "mCallback onClientFinished: called before set (should not happen)"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0

    const-string p0, "BaseClientMonitor"

    const-string/jumbo p1, "mCallback onClientStarted: called before set (should not happen)"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
