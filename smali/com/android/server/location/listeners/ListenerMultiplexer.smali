.class public abstract Lcom/android/server/location/listeners/ListenerMultiplexer;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mActiveRegistrationsCount:I

.field public mMerged:Ljava/lang/Object;

.field public final mMultiplexerLock:Ljava/lang/Object;

.field public final mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

.field public final mRegistrations:Landroid/util/ArrayMap;

.field public mServiceRegistered:Z

.field public final mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-direct {v0, p0}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;-><init>(Lcom/android/server/location/listeners/ListenerMultiplexer;)V

    iput-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    new-instance v0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-direct {v0, p0}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;-><init>(Lcom/android/server/location/listeners/ListenerMultiplexer;)V

    iput-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mActiveRegistrationsCount:I

    iput-boolean v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    return-void
.end method


# virtual methods
.method public final deliverToListeners(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/listeners/RemovableListenerRegistration;

    iget-boolean v5, v4, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActive:Z

    if-nez v5, :cond_0

    iget-boolean v5, v4, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActiveMotionControl:Z

    if-eqz v5, :cond_1

    :cond_0
    invoke-virtual {v4, p1}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public final deliverToListeners(Ljava/util/function/Function;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/listeners/RemovableListenerRegistration;

    iget-boolean v5, v4, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActive:Z

    if-nez v5, :cond_0

    iget-boolean v5, v4, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActiveMotionControl:Z

    if-eqz v5, :cond_1

    :cond_0
    invoke-interface {p1, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    if-eqz v5, :cond_1

    invoke-virtual {v4, v5}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    goto :goto_4

    :goto_2
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0

    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    iget-object p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    const-string/jumbo p3, "service: "

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->getServiceState()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object p3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    const-string/jumbo p3, "listeners:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/listeners/RemovableListenerRegistration;

    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    iget-boolean v1, v1, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActive:Z

    if-nez v1, :cond_0

    const-string v1, " (inactive)"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final findRegistration(Ljava/util/function/Predicate;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    iget-object v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/listeners/RemovableListenerRegistration;

    invoke-interface {p1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v3

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final getRegistrationCountWith(Ljava/util/function/Predicate;)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/listeners/RemovableListenerRegistration;

    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v0

    return v3

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getServiceState()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo p0, "registered"

    return-object p0

    :cond_1
    const-string/jumbo p0, "unregistered"

    return-object p0
.end method

.method public abstract isActive(Lcom/android/server/location/listeners/RemovableListenerRegistration;)Z
.end method

.method public abstract mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Object;
.end method

.method public onActive()V
    .locals 0

    return-void
.end method

.method public onHalRestarted()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->resetService()V

    return-void
.end method

.method public onInactive()V
    .locals 0

    return-void
.end method

.method public onRegister()V
    .locals 0

    return-void
.end method

.method public final onRegistrationActiveChanged(Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    .locals 3

    iget-object v0, p1, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mListener:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->isActive(Lcom/android/server/location/listeners/RemovableListenerRegistration;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p1, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActive:Z

    if-eq v0, v2, :cond_4

    iput-boolean v0, p1, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActive:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mActiveRegistrationsCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mActiveRegistrationsCount:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onActive()V

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->onActive()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->onInactive()V

    iget p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mActiveRegistrationsCount:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mActiveRegistrationsCount:I

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onInactive()V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateService()V

    :cond_4
    return-void
.end method

.method public abstract onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
.end method

.method public abstract onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
.end method

.method public onRegistrationReplaced(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    invoke-virtual {p0, p3, p4}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    return-void
.end method

.method public onSettingChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateService()V

    return-void
.end method

.method public onTransferUnregisteredRegistration(Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    .locals 0

    return-void
.end method

.method public onUnregister()V
    .locals 0

    return-void
.end method

.method public final putRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    .locals 7

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->isReentrant()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x0

    if-ltz v4, :cond_0

    iget-object v6, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/location/listeners/RemovableListenerRegistration;

    iput-object v5, v6, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mListener:Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->onListenerUnregister()V

    invoke-virtual {p0, v6}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onTransferUnregisteredRegistration(Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    invoke-virtual {p0, v6}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationActiveChanged(Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    invoke-virtual {v6}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->onUnregister()V

    move-object v5, v6

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    if-ltz v4, :cond_1

    iget-object v6, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4, p2}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegister()V

    :cond_2
    iput-object p1, p2, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mKey:Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->onRegister()V

    if-nez v5, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1, v5, p1, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationReplaced(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    :goto_2
    invoke-virtual {p0, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationActiveChanged(Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    goto :goto_7

    :catchall_2
    move-exception p0

    goto :goto_5

    :goto_3
    :try_start_5
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_5
    :try_start_7
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p0

    :goto_7
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p0
.end method

.method public abstract registerWithService(Ljava/util/Collection;Ljava/lang/Object;)Z
.end method

.method public final removeRegistration(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/listeners/RemovableListenerRegistration;

    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()V

    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v3}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    :try_start_1
    iput-object v4, v1, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mListener:Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->onListenerUnregister()V

    invoke-virtual {p0, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onTransferUnregisteredRegistration(Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    invoke-virtual {p0, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationActiveChanged(Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    invoke-virtual {v1}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->onUnregister()V

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onUnregister()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_1
    :try_start_3
    invoke-virtual {v3}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    :try_start_5
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
.end method

.method public final removeRegistration(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->isReentrant()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(I)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/listeners/RemovableListenerRegistration;

    if-eq v2, p2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object p2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {p2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->isReentrant()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    iput-object p2, v2, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mListener:Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->onListenerUnregister()V

    invoke-virtual {p0, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onTransferUnregisteredRegistration(Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    invoke-virtual {p0, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationActiveChanged(Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->markForRemoval(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(I)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeRegistrationIf(Ljava/util/function/Predicate;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->isReentrant()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    iget-object v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/location/listeners/RemovableListenerRegistration;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    goto :goto_6

    :catchall_2
    move-exception p0

    goto :goto_4

    :goto_2
    :try_start_5
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_4
    :try_start_7
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0

    :goto_6
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p0
.end method

.method public reregisterWithService(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z
    .locals 0

    invoke-virtual {p0, p3, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->registerWithService(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final resetService()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->unregisterWithService()V

    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateService()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract unregisterWithService()V
.end method

.method public final updateRegistration(Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-gez p2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    const/4 p0, 0x0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_0
    :try_start_5
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/location/listeners/RemovableListenerRegistration;

    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationActiveChanged(Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_6
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    const/4 p0, 0x1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return p0

    :goto_1
    :try_start_8
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    :try_start_9
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_3
    :try_start_a
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p1

    :try_start_b
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :goto_5
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw p0
.end method

.method public final updateRegistrations(Ljava/util/function/Predicate;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    iget-object v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/listeners/RemovableListenerRegistration;

    invoke-interface {p1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationActiveChanged(Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    goto :goto_6

    :catchall_2
    move-exception p0

    goto :goto_4

    :goto_2
    :try_start_5
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_4
    :try_start_7
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0

    :goto_6
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p0
.end method

.method public final updateService()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget v2, v1, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    :try_start_2
    monitor-exit v1

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_1

    move v3, v4

    :cond_1
    :try_start_5
    monitor-exit p0

    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iput-boolean v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mUpdateServiceRequired:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit p0

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :catchall_1
    move-exception v1

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v1

    :goto_1
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v3

    :goto_2
    if-ge v4, v1, :cond_4

    iget-object v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/listeners/RemovableListenerRegistration;

    iget-boolean v6, v5, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActive:Z

    if-eqz v6, :cond_3

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    if-eqz v1, :cond_9

    iput-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->unregisterWithService()V

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->reregisterWithService(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    if-eqz v2, :cond_6

    move-object v4, v1

    :cond_6
    iput-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v2, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->registerWithService(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    if-eqz v2, :cond_8

    move-object v4, v1

    :cond_8
    iput-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    :cond_9
    :goto_3
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    return-void

    :catchall_3
    move-exception p0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw p0

    :goto_4
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw p0
.end method
