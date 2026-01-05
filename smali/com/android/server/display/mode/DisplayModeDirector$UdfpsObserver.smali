.class public final Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;
.super Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAuthenticationPossible:Landroid/util/SparseBooleanArray;

.field public final mUdfpsRefreshRateEnabled:Landroid/util/SparseBooleanArray;

.field public final synthetic this$0:Lcom/android/server/display/mode/DisplayModeDirector;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback$Stub;-><init>()V

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->mUdfpsRefreshRateEnabled:Landroid/util/SparseBooleanArray;

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->mAuthenticationPossible:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 7

    const-string v0, "  UdfpsObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    mUdfpsRefreshRateEnabled: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->mUdfpsRefreshRateEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    const-string v3, ": "

    const-string v4, "      Display "

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->mUdfpsRefreshRateEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    iget-object v5, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->mUdfpsRefreshRateEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "enabled"

    goto :goto_1

    :cond_0
    const-string/jumbo v5, "disabled"

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "    mAuthenticationPossible: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->mAuthenticationPossible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->mAuthenticationPossible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->mAuthenticationPossible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "possible"

    goto :goto_3

    :cond_2
    const-string/jumbo v2, "impossible"

    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final onAuthenticationPossible(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->mAuthenticationPossible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/16 v1, 0x12

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->updateVoteLocked(IIZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onRequestDisabled(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->mUdfpsRefreshRateEnabled:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/16 v1, 0x1b

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->updateVoteLocked(IIZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onRequestEnabled(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->mUdfpsRefreshRateEnabled:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/16 v1, 0x1b

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->updateVoteLocked(IIZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateVoteLocked(IIZ)V
    .locals 0

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p3, p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$mgetMaxRefreshRateLocked(Lcom/android/server/display/mode/DisplayModeDirector;I)F

    move-result p3

    invoke-static {p3, p3}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/CombinedVote;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    return-void
.end method
