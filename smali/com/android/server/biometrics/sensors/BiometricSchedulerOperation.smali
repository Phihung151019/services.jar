.class public Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field final mCancelWatchdog:Ljava/lang/Runnable;

.field public final mClientCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

.field public final mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

.field public mOnStartCallback:Lcom/android/server/biometrics/sensors/BiometricScheduler$1;

.field public mState:I


# direct methods
.method public constructor <init>(ILcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    iput p1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    new-instance p1, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;)V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mCancelWatchdog:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;-><init>(ILcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method


# virtual methods
.method public final cancel(Landroid/os/Handler;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 4

    const/4 v0, 0x5

    filled-new-array {v0}, [I

    move-result-object v0

    iget v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    const-string v1, "BiometricSchedulerOperation"

    if-eqz v0, :cond_0

    const-string/jumbo v2, "biometric.value_biometric_scheduler_operation_state_error_count"

    invoke-static {v2}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cancel: mState must not be "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    invoke-static {v2, v3, v1}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cannot cancel - already invoked for operation: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iput v2, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    goto :goto_0

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "[Cancelling] Current client: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->cancel()V

    goto :goto_1

    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[Cancelling] Current client (without start): "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getWrappedCallback(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->cancelWithoutStarting(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    :goto_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mCancelWatchdog:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final doStart(Lcom/android/server/biometrics/sensors/BiometricScheduler$1;)Z
    .locals 6

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mOnStartCallback:Lcom/android/server/biometrics/sensors/BiometricScheduler$1;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getWrappedCallback(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    move-result-object p1

    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    const/4 v1, 0x0

    const-string v2, "BiometricSchedulerOperation"

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Operation marked for cancellation, cancelling now: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v3, v4}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    instance-of p0, v3, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    if-eqz p0, :cond_0

    check-cast v3, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    const/4 p0, 0x5

    invoke-interface {v3, p0, v1}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    return v1

    :cond_0
    const-string/jumbo p0, "monitor cancelled but does not implement ErrorConsumer"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    instance-of v0, v3, Lcom/android/server/biometrics/sensors/HalClientMonitor;

    if-eqz v0, :cond_2

    move-object v0, v3

    check-cast v0, Lcom/android/server/biometrics/sensors/HalClientMonitor;

    iget-object v5, v0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    invoke-interface {v5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "unable to start: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unableToStart()V

    invoke-virtual {p1, v3, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return v1

    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    invoke-virtual {v3, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "started: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public final varargs errorWhenNoneOf(Ljava/lang/String;[I)Z
    .locals 2

    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    if-nez v0, :cond_0

    const-string/jumbo v0, "biometric.value_biometric_scheduler_operation_state_error_count"

    invoke-static {v0}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": mState="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " must be one of "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricSchedulerOperation"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1
.end method

.method public final getWrappedCallback(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;
    .locals 2

    new-instance v0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$1;-><init>(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;)V

    new-instance v1, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    filled-new-array {v0, p1, p0}, [Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-object v1
.end method

.method public final isMatchingRequestId(J)Z
    .locals 4

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    cmp-long p0, v0, p1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final markCanceling()Z
    .locals 1

    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->isInterruptable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public markCancelingForWatchdog()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
