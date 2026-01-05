.class public final Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;
.super Landroid/os/RemoteCallbackList;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mLoudnessCodecHelper:Lcom/android/server/audio/LoudnessCodecHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/LoudnessCodecHelper;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;->mLoudnessCodecHelper:Lcom/android/server/audio/LoudnessCodecHelper;

    return-void
.end method


# virtual methods
.method public final onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Landroid/media/ILoudnessCodecUpdatesDispatcher;

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    sget-object v1, Lcom/android/server/audio/LoudnessCodecHelper;->sLogger:Lcom/android/server/utils/EventLogger;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v2}, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;-><init>(III)V

    invoke-virtual {v1, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    iget-object v1, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;->mLoudnessCodecHelper:Lcom/android/server/audio/LoudnessCodecHelper;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, v1, Lcom/android/server/audio/LoudnessCodecHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :goto_1
    :try_start_0
    iget-object v3, v1, Lcom/android/server/audio/LoudnessCodecHelper;->mPiidToPidCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v5, v3, :cond_2

    iget-object v3, v1, Lcom/android/server/audio/LoudnessCodecHelper;->mPiidToPidCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    iget-object v4, v1, Lcom/android/server/audio/LoudnessCodecHelper;->mPiidToPidCache:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    if-ne v4, v0, :cond_1

    iget-object v4, v1, Lcom/android/server/audio/LoudnessCodecHelper;->mPiidToDeviceIdCache:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, v1, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigPiids:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda5;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda5;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v1, v1, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v3, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda5;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda5;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    monitor-exit v2

    goto :goto_4

    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/os/RemoteCallbackList;->onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V

    return-void
.end method
