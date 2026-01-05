.class public final Lcom/android/server/display/mode/SystemRequestObserver;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mDeathRecipient:Lcom/android/server/display/mode/SystemRequestObserver$1;

.field public final mDisplaysRestrictions:Ljava/util/Map;

.field public final mLock:Ljava/lang/Object;

.field public final mVotesStorage:Lcom/android/server/display/mode/VotesStorage;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/VotesStorage;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/display/mode/SystemRequestObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/mode/SystemRequestObserver$1;-><init>(Lcom/android/server/display/mode/SystemRequestObserver;)V

    iput-object v0, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mDeathRecipient:Lcom/android/server/display/mode/SystemRequestObserver$1;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mDisplaysRestrictions:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    return-void
.end method


# virtual methods
.method public final removeSystemRequestedVotes(Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mDisplaysRestrictions:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/display/mode/SystemRequestObserver;->updateStorageLocked(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateStorageLocked(I)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Z

    iget-object v2, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mDisplaysRestrictions:Ljava/util/Map;

    new-instance v3, Lcom/android/server/display/mode/SystemRequestObserver$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, v1, v0}, Lcom/android/server/display/mode/SystemRequestObserver$$ExternalSyntheticLambda0;-><init>(I[ZLjava/util/List;)V

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/server/display/mode/SupportedModesVote;

    invoke-direct {v1, v0}, Lcom/android/server/display/mode/SupportedModesVote;-><init>(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v0, 0x15

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    return-void
.end method
