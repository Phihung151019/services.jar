.class public final Lcom/android/server/inputmethod/ImeTrackerService;
.super Lcom/android/internal/inputmethod/IImeTracker$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/inputmethod/IImeTracker$Stub;-><init>()V

    new-instance v0, Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-direct {v0}, Lcom/android/server/inputmethod/ImeTrackerService$History;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final finishTrackingPendingImeVisibilityRequests(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->finishTrackingPendingImeVisibilityRequests_enforcePermission()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mLiveEntries:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->clear()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p0, 0x0

    :try_start_2
    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final hasPendingImeVisibilityRequests()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->hasPendingImeVisibilityRequests_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mLiveEntries:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    const/4 v1, 0x2

    invoke-static {p0, p1, v1, p2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$msetFinished(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/view/inputmethod/ImeTracker$Token;II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onDispatched(Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$msetFinished(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/view/inputmethod/ImeTracker$Token;II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    const/4 v1, 0x3

    invoke-static {p0, p1, v1, p2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$msetFinished(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/view/inputmethod/ImeTracker$Token;II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onHidden(Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$msetFinished(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/view/inputmethod/ImeTracker$Token;II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onProgress(Landroid/os/IBinder;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mLiveEntries:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;

    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mPhase:I

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onShown(Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$msetFinished(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/view/inputmethod/ImeTracker$Token;II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onStart(Ljava/lang/String;IIIIZ)Landroid/view/inputmethod/ImeTracker$Token;
    .locals 9

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    new-instance v1, Landroid/view/inputmethod/ImeTracker$Token;

    invoke-direct {v1, v0, p1}, Landroid/view/inputmethod/ImeTracker$Token;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;

    move-object v5, p1

    move v3, p2

    move v4, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;-><init>(IILjava/lang/String;IIZ)V

    iget-object p1, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    iget-object p2, p2, Lcom/android/server/inputmethod/ImeTrackerService$History;->mLiveEntries:Ljava/util/WeakHashMap;

    invoke-virtual {p2, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/inputmethod/ImeTrackerService$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, v1}, Lcom/android/server/inputmethod/ImeTrackerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/ImeTrackerService;Landroid/view/inputmethod/ImeTracker$Token;)V

    const-wide/16 p4, 0x2710

    invoke-virtual {p2, p3, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit p1

    return-object v1

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
