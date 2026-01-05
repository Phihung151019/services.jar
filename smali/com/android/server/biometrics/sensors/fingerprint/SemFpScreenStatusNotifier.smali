.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;
.implements Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;


# instance fields
.field public final mGetProviderPair:Ljava/util/function/Supplier;

.field public mIsInProgressSensor:Z

.field public mScreenStatus:I

.field public final mUseAlwaysOn:Z


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;",
            ">;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mGetProviderPair:Ljava/util/function/Supplier;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mScreenStatus:I

    iput-boolean p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mUseAlwaysOn:Z

    return-void
.end method


# virtual methods
.method public getDisplayStateMonitor()Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;
    .locals 0

    sget-object p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    return-object p0
.end method

.method public final notifyScreenStatus(I)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mIsInProgressSensor:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "notifyScreenStatus: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mScreenStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SemFpScreenStatusNotifier"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mScreenStatus:I

    if-ne v0, p1, :cond_1

    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mScreenStatus:I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mGetProviderPair:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    if-nez p0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v3, 0x24

    move v4, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semRequest(III[B[B)I

    return-void
.end method

.method public final onAuthenticationFinished(II)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mIsInProgressSensor:Z

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->getDisplayStateMonitor()Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mDisplayStateCallbacks:Ljava/util/List;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onAuthenticationStarted(II)V
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mIsInProgressSensor:Z

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->getDisplayStateMonitor()Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->registerStateCallback(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->getDisplayStateMonitor()Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    move-result-object p2

    iget p2, p2, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mLogicalDisplayState:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    move p1, v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->notifyScreenStatus(I)V

    return-void
.end method

.method public final onDisplayOff()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->notifyScreenStatus(I)V

    return-void
.end method

.method public final onDisplayOn()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->notifyScreenStatus(I)V

    return-void
.end method
