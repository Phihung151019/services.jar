.class public final Lcom/android/server/audio/ServiceHolder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCastFunction:Lcom/android/server/audio/DefaultAudioPolicyFacade$$ExternalSyntheticLambda0;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mOnDeathTasks:Ljava/util/Set;

.field public final mOnStartTasks:Ljava/util/Set;

.field public final mService:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mServiceListener:Lcom/android/server/audio/ServiceHolder$1;

.field public final mServiceName:Ljava/lang/String;

.field public final mServiceProvider:Lcom/android/server/audio/ServiceHolder$2;

.field public final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/DefaultAudioPolicyFacade$$ExternalSyntheticLambda0;Ljava/util/concurrent/Executor;)V
    .locals 3

    new-instance v0, Lcom/android/server/audio/ServiceHolder$2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/ServiceHolder;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/ServiceHolder;->mOnStartTasks:Ljava/util/Set;

    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/ServiceHolder;->mOnDeathTasks:Ljava/util/Set;

    new-instance v1, Lcom/android/server/audio/ServiceHolder$1;

    invoke-direct {v1, p0}, Lcom/android/server/audio/ServiceHolder$1;-><init>(Lcom/android/server/audio/ServiceHolder;)V

    iput-object v1, p0, Lcom/android/server/audio/ServiceHolder;->mServiceListener:Lcom/android/server/audio/ServiceHolder$1;

    const-string/jumbo v2, "media.audio_policy"

    iput-object v2, p0, Lcom/android/server/audio/ServiceHolder;->mServiceName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/audio/ServiceHolder;->mCastFunction:Lcom/android/server/audio/DefaultAudioPolicyFacade$$ExternalSyntheticLambda0;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/audio/ServiceHolder;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/android/server/audio/ServiceHolder;->mServiceProvider:Lcom/android/server/audio/ServiceHolder$2;

    const-string/jumbo p1, "ServiceHolder: "

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/audio/ServiceHolder;->mTag:Ljava/lang/String;

    :try_start_0
    invoke-static {v2, v1}, Landroid/os/ServiceManager;->registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "ServiceManager died!!"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final attemptClear(Landroid/os/IBinder;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/audio/ServiceHolder;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/ServiceHolder;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object p1, p0, Lcom/android/server/audio/ServiceHolder;->mOnDeathTasks:Ljava/util/Set;

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    iget-object v2, p0, Lcom/android/server/audio/ServiceHolder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/server/audio/ServiceHolder$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4}, Lcom/android/server/audio/ServiceHolder$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Landroid/os/IInterface;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final binderDied()V
    .locals 1

    new-instance p0, Ljava/lang/AssertionError;

    const-string/jumbo v0, "Wrong binderDied called, this should never happen"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public final binderDied(Landroid/os/IBinder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/audio/ServiceHolder;->attemptClear(Landroid/os/IBinder;)V

    return-void
.end method

.method public final onServiceInited(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 6

    iget-object v0, p0, Lcom/android/server/audio/ServiceHolder;->mCastFunction:Lcom/android/server/audio/DefaultAudioPolicyFacade$$ExternalSyntheticLambda0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/media/IAudioPolicyService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioPolicyService;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/audio/ServiceHolder;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/ServiceHolder;->mOnStartTasks:Ljava/util/Set;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Consumer;

    iget-object v3, p0, Lcom/android/server/audio/ServiceHolder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/server/audio/ServiceHolder$$ExternalSyntheticLambda0;

    const/4 v5, 0x2

    invoke-direct {v4, v2, v0, v5}, Lcom/android/server/audio/ServiceHolder$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Landroid/os/IInterface;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    iget-object v1, p0, Lcom/android/server/audio/ServiceHolder;->mTag:Ljava/lang/String;

    const-string v2, "Immediate service death. Service crash-looping"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/audio/ServiceHolder;->attemptClear(Landroid/os/IBinder;)V

    :goto_1
    return-object v0
.end method
