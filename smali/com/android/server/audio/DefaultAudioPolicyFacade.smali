.class public final Lcom/android/server/audio/DefaultAudioPolicyFacade;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mServiceHolder:Lcom/android/server/audio/ServiceHolder;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/audio/ServiceHolder;

    new-instance v1, Lcom/android/server/audio/DefaultAudioPolicyFacade$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1, p1}, Lcom/android/server/audio/ServiceHolder;-><init>(Lcom/android/server/audio/DefaultAudioPolicyFacade$$ExternalSyntheticLambda0;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/server/audio/DefaultAudioPolicyFacade;->mServiceHolder:Lcom/android/server/audio/ServiceHolder;

    new-instance p0, Lcom/android/server/audio/DefaultAudioPolicyFacade$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, v0, Lcom/android/server/audio/ServiceHolder;->mOnStartTasks:Ljava/util/Set;

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->add(Ljava/lang/Object;)Z

    iget-object p1, v0, Lcom/android/server/audio/ServiceHolder;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IInterface;

    if-eqz p1, :cond_0

    iget-object v0, v0, Lcom/android/server/audio/ServiceHolder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/audio/ServiceHolder$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/audio/ServiceHolder$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Landroid/os/IInterface;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
