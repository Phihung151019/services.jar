.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final mAuthenticationListeners:Ljava/util/List;

.field public final mCaptureEventListeners:Ljava/util/List;

.field public final mChallengeListeners:Ljava/util/List;

.field public final mEnrollListeners:Ljava/util/List;

.field public final mEventListeners:Ljava/util/List;

.field public final mHandler:Landroid/os/Handler;

.field public final mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

.field public final mResetLockoutListeners:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mChallengeListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mEventListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mAuthenticationListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mEnrollListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mCaptureEventListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mResetLockoutListeners:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final dispatchChallengeListener(IIJZ)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mChallengeListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;

    if-eqz p5, :cond_1

    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda6;

    move-object v5, p0

    move v6, p1

    move v7, p2

    move-wide v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;IIJ)V

    iget-object p0, v3, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    monitor-enter p0

    :try_start_0
    iget-object p1, v3, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    new-instance p2, Landroid/util/Pair;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-direct {p2, v4, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v6, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, v3, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, v3, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mDisplayStateMonitor:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    invoke-virtual {p1, v3}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->registerStateCallback(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_0
    :goto_1
    monitor-exit p0

    goto :goto_4

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    move-object v5, p0

    move v6, p1

    move v7, p2

    move-wide v8, p3

    iget-object p0, v3, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    monitor-enter p0

    :try_start_1
    iget-object p1, v3, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->remove(I)V

    iget-object p1, v3, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, v3, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mDisplayStateMonitor:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    iget-object p1, p1, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mDisplayStateCallbacks:Ljava/util/List;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_5

    :cond_2
    :goto_3
    monitor-exit p0

    :goto_4
    move-object p0, v5

    move p1, v6

    move p2, v7

    move-wide p3, v8

    goto :goto_0

    :goto_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_3
    return-void
.end method

.method public final onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 4

    instance-of p2, p1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mAuthenticationListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_0
    if-ge v0, p2, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;

    iget v2, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    iget v3, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;->onAuthenticationFinished(II)V

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lcom/android/server/biometrics/sensors/EnrollClient;

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mEnrollListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_1
    if-ge v0, p2, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollmentListener;

    iget v2, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    iget v3, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollmentListener;->onEnrollFinished(II)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 5

    instance-of v0, p1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mAuthenticationListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;

    iget v3, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    iget v4, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    invoke-interface {v2, v3, v4}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;->onAuthenticationStarted(II)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/android/server/biometrics/sensors/EnrollClient;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mEnrollListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollmentListener;

    iget v3, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    iget v4, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    invoke-interface {v2, v3, v4}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollmentListener;->onEnrollStarted(II)V

    goto :goto_1

    :cond_1
    return-void
.end method
