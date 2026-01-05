.class public final Lcom/android/server/display/DisplayManagerService$UidImportanceListener;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/app/ActivityManager$OnUidImportanceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    return-void
.end method


# virtual methods
.method public final onUidImportance(II)V
    .locals 6

    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    const/16 v1, 0x190

    const/4 v2, 0x0

    if-lt p2, v1, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mCallbackRecordByPidByUid:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-nez p0, :cond_1

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_1
    const/4 p1, 0x0

    if-eqz p2, :cond_3

    move p2, v2

    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge p2, v3, :cond_6

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    if-eqz v3, :cond_2

    iget-object v4, v3, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-boolean v0, v3, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCached:Z

    invoke-virtual {v3}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->hasPendingAndIsReadyLocked()Z

    monitor-exit v4

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw p0

    :cond_2
    :goto_2
    add-int/2addr p2, v0

    goto :goto_1

    :cond_3
    move p2, v2

    :goto_3
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge p2, v3, :cond_6

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    if-eqz v3, :cond_5

    iget-object v4, v3, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iput-boolean v2, v3, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCached:Z

    invoke-virtual {v3}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->hasPendingAndIsReadyLocked()Z

    move-result v5

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v5, :cond_5

    if-nez p1, :cond_4

    :try_start_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p0

    :cond_5
    :goto_4
    add-int/2addr p2, v0

    goto :goto_3

    :cond_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz p1, :cond_7

    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_7

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->dispatchPending()V

    add-int/2addr v2, v0

    goto :goto_5

    :cond_7
    return-void

    :goto_6
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0
.end method
