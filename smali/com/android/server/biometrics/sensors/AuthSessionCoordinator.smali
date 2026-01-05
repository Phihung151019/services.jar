.class public Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAuthOperations:Ljava/util/Set;

.field public mAuthResultCoordinator:Lcom/android/server/biometrics/sensors/AuthResultCoordinator;

.field public mIsAuthenticating:Z

.field public final mMultiBiometricLockoutState:Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;

.field public final mRingBuffer:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;

.field public mUserId:I


# direct methods
.method public constructor <init>(Ljava/time/Clock;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthOperations:Ljava/util/Set;

    new-instance v0, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthResultCoordinator:Lcom/android/server/biometrics/sensors/AuthResultCoordinator;

    new-instance v0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;-><init>(Ljava/time/Clock;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mMultiBiometricLockoutState:Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;

    new-instance p1, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;

    invoke-direct {p1}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mRingBuffer:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;

    return-void
.end method


# virtual methods
.method public final attemptToFinish(IILjava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthOperations:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "AuthSessionCoordinator"

    const/4 v3, 0x1

    if-nez v0, :cond_0

    const-string v0, "Error unable to find auth operation : "

    invoke-static {v0, p3, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v4, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mUserId:I

    if-eq p1, v4, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error mismatched userId, expected="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mUserId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    :cond_1
    if-eqz v0, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthOperations:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mIsAuthenticating:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthResultCoordinator:Lcom/android/server/biometrics/sensors/AuthResultCoordinator;

    iget-object p1, p1, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;->mAuthenticatorState:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const/16 p2, 0xfff

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {p3, v2, v5}, [Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x4

    and-int/2addr v6, v7

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mMultiBiometricLockoutState:Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;

    if-ne v6, v7, :cond_4

    iget v2, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mUserId:I

    invoke-virtual {v8, v2, v5}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->clearPermanentLockOut(II)V

    iget v2, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mUserId:I

    invoke-virtual {v8, v2, v5}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->clearTimedLockout(II)V

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/2addr v6, v3

    const-string/jumbo v7, "MultiBiometricLockoutState"

    const-string/jumbo v9, "increaseLockoutTime called for invalid strength : "

    if-ne v6, v3, :cond_8

    iget v2, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mUserId:I

    invoke-virtual {v8, v2}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->getAuthMapForUser(I)Ljava/util/Map;

    move-result-object v2

    if-eq v5, v4, :cond_5

    if-eq v5, v0, :cond_6

    if-eq v5, p2, :cond_7

    invoke-static {v5, v9, v7}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    iput-boolean v3, v5, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mPermanentlyLockedOut:Z

    :cond_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    iput-boolean v3, v5, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mPermanentlyLockedOut:Z

    :cond_7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    iput-boolean v3, v2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mPermanentlyLockedOut:Z

    goto :goto_1

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x2

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_3

    iget v2, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mUserId:I

    invoke-virtual {v8, v2}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->getAuthMapForUser(I)Ljava/util/Map;

    move-result-object v2

    if-eq v5, v4, :cond_9

    if-eq v5, v0, :cond_a

    if-eq v5, p2, :cond_b

    invoke-static {v5, v9, v7}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    iput-boolean v3, v5, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mTimedLockout:Z

    :cond_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    iput-boolean v3, v5, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mTimedLockout:Z

    :cond_b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    iput-boolean v3, v2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mTimedLockout:Z

    goto/16 :goto_1

    :cond_c
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthOperations:Ljava/util/Set;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "internal : onAuthSessionEnded("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mUserId:I

    const-string p3, ")"

    invoke-static {p2, p1, p3}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mRingBuffer:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;

    invoke-virtual {p2, p1}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->addApiCall(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mIsAuthenticating:Z

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthOperations:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    :cond_d
    :goto_2
    return-void
.end method

.method public final declared-synchronized authEndedFor(JIIIZ)V
    .locals 2

    const-string/jumbo v0, "authEndedFor(userId="

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,biometricStrength="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sensorId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", requestId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", wasSuccessful="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mRingBuffer:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;

    invoke-virtual {p2, p1}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->addApiCall(Ljava/lang/String;)V

    if-eqz p6, :cond_0

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthResultCoordinator:Lcom/android/server/biometrics/sensors/AuthResultCoordinator;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p6, 0xf

    if-ne p4, p6, :cond_0

    new-instance p6, Lcom/android/server/biometrics/sensors/AuthResultCoordinator$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p6, v0}, Lcom/android/server/biometrics/sensors/AuthResultCoordinator$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p2, p4, p6}, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;->updateState(ILjava/util/function/IntFunction;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0, p3, p5, p1}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->attemptToFinish(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized authStartedFor(IIJ)V
    .locals 5

    const-string v0, "Error authStartedFor("

    const-string v1, "Error, authStartedFor("

    const-string/jumbo v2, "authStartedFor(userId="

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mRingBuffer:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sensorId="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", requestId="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->addApiCall(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mIsAuthenticating:Z

    if-nez p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->onAuthSessionStarted(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthOperations:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    check-cast p3, Ljava/util/HashSet;

    invoke-virtual {p3, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p1, "AuthSessionCoordinator"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") without being finished"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget p3, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mUserId:I

    if-eq p3, p1, :cond_2

    const-string p2, "AuthSessionCoordinator"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") Incorrect userId, expected"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mUserId:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ignoring..."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthOperations:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized lockOutTimed(IIIJJ)V
    .locals 2

    const-string/jumbo v0, "lockOutTimedFor(userId="

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", biometricStrength="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sensorId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", time="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, ", requestId="

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, ")"

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mRingBuffer:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;

    invoke-virtual {p5, p4}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->addApiCall(Ljava/lang/String;)V

    iget-object p5, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthResultCoordinator:Lcom/android/server/biometrics/sensors/AuthResultCoordinator;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p6, Lcom/android/server/biometrics/sensors/AuthResultCoordinator$$ExternalSyntheticLambda0;

    const/4 p7, 0x1

    invoke-direct {p6, p7}, Lcom/android/server/biometrics/sensors/AuthResultCoordinator$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p5, p2, p6}, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;->updateState(ILjava/util/function/IntFunction;)V

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->attemptToFinish(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized lockedOutFor(IIIJ)V
    .locals 2

    const-string/jumbo v0, "lockOutFor(userId="

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", biometricStrength="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sensorId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", requestId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, ")"

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mRingBuffer:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;

    invoke-virtual {p5, p4}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->addApiCall(Ljava/lang/String;)V

    iget-object p5, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthResultCoordinator:Lcom/android/server/biometrics/sensors/AuthResultCoordinator;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/biometrics/sensors/AuthResultCoordinator$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/AuthResultCoordinator$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p5, p2, v0}, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;->updateState(ILjava/util/function/IntFunction;)V

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->attemptToFinish(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onAuthSessionStarted(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthOperations:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iput p1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mUserId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mIsAuthenticating:Z

    new-instance v0, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthResultCoordinator:Lcom/android/server/biometrics/sensors/AuthResultCoordinator;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "internal : onAuthSessionStarted("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mRingBuffer:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->addApiCall(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized resetLockoutFor(IIJ)V
    .locals 2

    const-string/jumbo v0, "resetLockoutFor(userId="

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,biometricStrength="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", requestId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mRingBuffer:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;

    invoke-virtual {p4, p3}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->addApiCall(Ljava/lang/String;)V

    const/16 p3, 0xf

    if-ne p2, p3, :cond_0

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mIsAuthenticating:Z

    iget-object p3, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthOperations:Ljava/util/Set;

    check-cast p3, Ljava/util/HashSet;

    invoke-virtual {p3}, Ljava/util/HashSet;->clear()V

    iget-object p3, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mMultiBiometricLockoutState:Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->clearPermanentLockOut(II)V

    iget-object p3, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mMultiBiometricLockoutState:Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->clearTimedLockout(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mMultiBiometricLockoutState:Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->clearTimedLockout(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mRingBuffer:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mMultiBiometricLockoutState:Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
