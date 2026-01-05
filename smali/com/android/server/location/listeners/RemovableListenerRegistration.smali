.class public abstract Lcom/android/server/location/listeners/RemovableListenerRegistration;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor;


# instance fields
.field public mActive:Z

.field public mActiveMotionControl:Z

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public volatile mKey:Ljava/lang/Object;

.field public volatile mListener:Ljava/lang/Object;

.field public final mRemoved:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActive:Z

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mListener:Ljava/lang/Object;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mRemoved:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    new-instance v2, Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    invoke-interface {p0, v0, v1, p1, v2}, Lcom/android/internal/listeners/ListenerExecutor;->executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;)V

    return-void
.end method

.method public abstract getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "ListenerRegistration"

    return-object p0
.end method

.method public abstract onActive()V
.end method

.method public onInactive()V
    .locals 0

    return-void
.end method

.method public onListenerUnregister()V
    .locals 0

    return-void
.end method

.method public abstract onOperationFailure(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Ljava/lang/Exception;)V
.end method

.method public abstract onRegister()V
.end method

.method public abstract onUnregister()V
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mKey:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mRemoved:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    :cond_0
    return-void
.end method
