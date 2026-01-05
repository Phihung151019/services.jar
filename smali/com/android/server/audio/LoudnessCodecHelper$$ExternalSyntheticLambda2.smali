.class public final synthetic Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/LoudnessCodecHelper;

.field public final synthetic f$1:Ljava/util/HashSet;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/LoudnessCodecHelper;Ljava/util/HashSet;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/audio/LoudnessCodecHelper;

    iput-object p2, p0, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda2;->f$1:Ljava/util/HashSet;

    iput p3, p0, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/audio/LoudnessCodecHelper;

    iget-object v1, p0, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda2;->f$1:Ljava/util/HashSet;

    iget p0, p0, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda2;->f$2:I

    check-cast p1, Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result p1

    iget-object v2, v0, Lcom/android/server/audio/LoudnessCodecHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/android/server/audio/LoudnessCodecHelper;->mPiidToPidCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/server/audio/LoudnessCodecHelper;->sLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p1, p0}, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
