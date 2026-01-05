.class public final Lcom/android/server/display/DisplayManagerService$CallbackRecord;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/os/IBinder$FrozenStateChangeCallback;


# instance fields
.field public mAlive:Z

.field public mCached:Z

.field public final mCallback:Landroid/hardware/display/IDisplayManagerCallback;

.field public mFrozen:Z

.field public final mInternalEventFlagsMask:Ljava/util/concurrent/atomic/AtomicLong;

.field public final mPackageName:Ljava/lang/String;

.field public mPendingDisplayEvents:Ljava/util/ArrayList;

.field public mPendingTopology:Landroid/hardware/display/DisplayTopology;

.field public final mPid:I

.field public final mUid:I

.field public mWifiDisplayScanRequested:Z

.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public static -$$Nest$mdump(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)Ljava/lang/String;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "mPid=%d mUid=%d mWifiDisplayScanRequested=%s cached=%s frozen=%s pendingDisplayEvents=%d pendingTopology=%b"

    iget v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCached:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mFrozen:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    const/4 v8, 0x0

    if-nez v2, :cond_0

    move v2, v8

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingTopology:Landroid/hardware/display/DisplayTopology;

    if-eqz p0, :cond_1

    const/4 v8, 0x1

    :cond_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v8, v2

    filled-new-array/range {v3 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public constructor <init>(IIJLandroid/hardware/display/IDisplayManagerCallback;Lcom/android/server/display/DisplayManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    iput p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    iput p2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    iput-object p5, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1, p3, p4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mInternalEventFlagsMask:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCached:Z

    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mFrozen:Z

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mAlive:Z

    sget-boolean p3, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    :try_start_0
    invoke-interface {p5}, Landroid/hardware/display/IDisplayManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-interface {p3, p0}, Landroid/os/IBinder;->addFrozenStateChangeCallback(Landroid/os/IBinder$FrozenStateChangeCallback;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "FrozenStateChangeCallback not supported for pid "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p4, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "DisplayManagerService"

    invoke-static {p4, p3}, Lcom/android/server/power/Slog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p3, p6, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    aget-object p1, p2, p1

    :goto_1
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final addDisplayEvent(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;

    iget v1, v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->displayId:I

    if-ne v1, p1, :cond_2

    iget v0, v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->event:I

    if-ne v0, p2, :cond_2

    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Ignore redundant display event "

    const-string v1, "/"

    const-string v2, " to "

    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    const-string p2, "DisplayManagerService"

    invoke-static {p1, p0, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;

    invoke-direct {v0, p1, p2}, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;-><init>(II)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final binderDied()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mAlive:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService;->extraLogging(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Display listener for pid "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " died."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-wide/32 v0, 0x20000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "displayManagerBinderDied#mPid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    :try_start_1
    iget-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    iget-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mCallbackRecordByPidByUid:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    if-eqz v2, :cond_3

    iget v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mCallbackRecordByPidByUid:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/server/display/DisplayManagerService;->stopWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final dispatchPending()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mAlive:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->isReadyLocked()Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingTopology:Landroid/hardware/display/DisplayTopology;

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingTopology:Landroid/hardware/display/DisplayTopology;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    :goto_1
    :try_start_1
    array-length v2, v1

    if-ge v0, v2, :cond_5

    aget-object v2, v1, v0

    sget-boolean v4, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "DisplayManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Send pending display event #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->event:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_3
    :goto_2
    iget v4, v2, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->event:I

    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->shouldReceiveRefreshRateWithChangeUpdate(I)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    iget v4, v2, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->displayId:I

    iget v2, v2, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->event:I

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    invoke-interface {v5, v4, v2}, Landroid/hardware/display/IDisplayManagerCallback;->onDisplayEvent(II)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Send pending topology: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    invoke-interface {v0, v3}, Landroid/hardware/display/IDisplayManagerCallback;->onTopologyChanged(Landroid/hardware/display/DisplayTopology;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to notify process "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", assuming it died."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->binderDied()V

    :cond_7
    return-void

    :goto_5
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final hasPendingAndIsReadyLocked()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingTopology:Landroid/hardware/display/DisplayTopology;

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->isReadyLocked()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v0, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mAlive:Z

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public final isReadyLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCached:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mFrozen:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onFrozenStateChanged(Landroid/os/IBinder;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    monitor-enter p2

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mFrozen:Z

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->hasPendingAndIsReadyLocked()Z

    move-result p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object p1, p1, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/16 p2, 0xa

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final shouldReceiveRefreshRateWithChangeUpdate(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v0, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefreshRateEventForForegroundApps:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object p1, p1, Lcom/android/server/display/DisplayManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-virtual {p1, v0}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result p1

    invoke-static {p1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget v0, v0, Lcom/android/server/display/DisplayManagerService;->mMaxImportanceForRRCallbacks:I

    if-le p1, v0, :cond_1

    iget p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    const/16 p1, 0x3e8

    if-gt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method
