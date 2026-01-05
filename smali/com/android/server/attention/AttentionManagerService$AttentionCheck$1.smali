.class public final Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;
.super Landroid/service/attention/IAttentionCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

.field public final synthetic val$callbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

.field public final synthetic val$service:Lcom/android/server/attention/AttentionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;Lcom/android/server/attention/AttentionManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->this$0:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    iput-object p2, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->val$callbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    iput-object p3, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->val$service:Lcom/android/server/attention/AttentionManagerService;

    invoke-direct {p0}, Landroid/service/attention/IAttentionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->this$0:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    iget-boolean v1, v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsFulfilled:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsFulfilled:Z

    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->val$callbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    invoke-virtual {p0, p1}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;->onFailure(I)V

    const/16 p0, 0x8f

    invoke-static {p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void
.end method

.method public final onSuccess(IJ)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->this$0:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    iget-boolean v1, v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsFulfilled:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsFulfilled:Z

    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->val$callbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;->onSuccess(IJ)V

    const/16 v0, 0x8f

    invoke-static {v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->val$service:Lcom/android/server/attention/AttentionManagerService;

    new-instance v2, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;-><init>(JIJ)V

    iget-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionCheckCacheBuffer:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;

    if-nez p2, :cond_1

    new-instance p2, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;

    invoke-direct {p2}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;-><init>()V

    iput-object p2, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionCheckCacheBuffer:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionCheckCacheBuffer:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;

    iget p2, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mStartIndex:I

    iget p3, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mSize:I

    add-int v0, p2, p3

    const/4 v3, 0x5

    rem-int/2addr v0, v3

    iget-object v4, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mQueue:[Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    aput-object v2, v4, v0

    if-ne p3, v3, :cond_2

    add-int/2addr p2, v1

    iput p2, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mStartIndex:I

    goto :goto_1

    :cond_2
    add-int/2addr p3, v1

    iput p3, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mSize:I

    :goto_1
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
