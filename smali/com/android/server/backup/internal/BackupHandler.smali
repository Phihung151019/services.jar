.class public final Lcom/android/server/backup/internal/BackupHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field public final mBackupThread:Landroid/os/HandlerThread;

.field volatile mIsStopping:Z

.field public final mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/internal/LifecycleOperationStorage;Landroid/os/HandlerThread;)V
    .locals 1

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/internal/BackupHandler;->mIsStopping:Z

    iput-object p3, p0, Lcom/android/server/backup/internal/BackupHandler;->mBackupThread:Landroid/os/HandlerThread;

    iput-object p1, p0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iput-object p2, p0, Lcom/android/server/backup/internal/BackupHandler;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    iget-object p1, p1, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    const-string/jumbo p2, "Timeout parameters cannot be null"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/backup/internal/BackupHandler;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/internal/BackupHandler;->dispatchMessageInternal(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-boolean p0, p0, Lcom/android/server/backup/internal/BackupHandler;->mIsStopping:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    throw p1
.end method

.method public dispatchMessageInternal(Landroid/os/Message;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string/jumbo v2, "couldn\'t find params for token "

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x16

    if-ne v3, v4, :cond_0

    const-string v3, "BackupManagerService"

    const-string/jumbo v4, "Stopping backup handler"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/BackupWakeLock;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupWakeLock;->quit()V

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupHandler;->mBackupThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    iget-boolean v3, v1, Lcom/android/server/backup/internal/BackupHandler;->mIsStopping:Z

    if-eqz v3, :cond_1

    goto/16 :goto_16

    :cond_1
    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v3, v5, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget v4, v0, Landroid/os/Message;->what:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eq v4, v6, :cond_14

    const/4 v3, 0x2

    if-eq v4, v3, :cond_13

    const/4 v3, 0x3

    const/16 v9, 0x14

    if-eq v4, v3, :cond_11

    const/4 v3, 0x4

    if-eq v4, v3, :cond_10

    const/4 v3, 0x6

    if-eq v4, v3, :cond_b

    const/16 v3, 0xc

    if-eq v4, v3, :cond_a

    const/16 v3, 0x65

    if-eq v4, v3, :cond_7

    if-eq v4, v9, :cond_6

    const/16 v3, 0x15

    if-eq v4, v3, :cond_5

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_16

    :pswitch_0
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Timeout for token="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v8}, Lcom/android/server/backup/UserBackupManagerService;->handleCancel(II)V

    return-void

    :pswitch_1
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/BackupParams;

    iput-boolean v6, v5, Lcom/android/server/backup/UserBackupManagerService;->mBackupRunning:Z

    iget-object v2, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/BackupWakeLock;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupWakeLock;->acquire()V

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    iget-object v5, v0, Lcom/android/server/backup/params/BackupParams;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    iget-object v6, v0, Lcom/android/server/backup/params/BackupParams;->dirName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/backup/params/BackupParams;->kvPackages:Ljava/util/ArrayList;

    iget-object v9, v0, Lcom/android/server/backup/params/BackupParams;->observer:Landroid/app/backup/IBackupObserver;

    iget-object v10, v0, Lcom/android/server/backup/params/BackupParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v11, v0, Lcom/android/server/backup/params/BackupParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    iget-object v12, v0, Lcom/android/server/backup/params/BackupParams;->fullPackages:Ljava/util/ArrayList;

    iget-boolean v14, v0, Lcom/android/server/backup/params/BackupParams;->nonIncrementalBackup:Z

    iget-object v15, v0, Lcom/android/server/backup/params/BackupParams;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    const/4 v8, 0x0

    const/4 v13, 0x1

    invoke-static/range {v3 .. v15}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->start(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/internal/LifecycleOperationStorage;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;Ljava/util/List;Lcom/android/server/backup/DataChangedJournal;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZLcom/android/server/backup/utils/BackupEligibilityRules;)V

    return-void

    :pswitch_3
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/AdbRestoreParams;

    new-instance v4, Lcom/android/server/backup/restore/PerformAdbRestoreTask;

    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    iget-object v7, v0, Lcom/android/server/backup/params/AdbParams;->fd:Landroid/os/ParcelFileDescriptor;

    iget-object v8, v0, Lcom/android/server/backup/params/AdbParams;->curPassword:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/server/backup/params/AdbParams;->encryptPassword:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    iget-object v11, v0, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v12, v0, Lcom/android/server/backup/params/AdbParams;->privilegeApp:Z

    iget-boolean v13, v0, Lcom/android/server/backup/params/AdbParams;->typeMigration:Z

    invoke-direct/range {v4 .. v13}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/internal/LifecycleOperationStorage;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;ZZ)V

    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v1, "adb-restore"

    invoke-direct {v0, v4, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :pswitch_4
    iget-object v3, v5, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_0
    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/backup/params/AdbParams;

    if-eqz v4, :cond_2

    const-string v2, "BackupManagerService"

    const-string v5, "Full backup/restore timed out waiting for user confirmation"

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/android/server/backup/UserBackupManagerService;->signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V

    iget-object v1, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->delete(I)V

    iget-object v0, v4, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Landroid/app/backup/IFullBackupRestoreObserver;->onTimeout()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    :try_start_2
    const-string v1, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :catch_0
    :cond_3
    :goto_0
    monitor-exit v3

    goto/16 :goto_16

    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :pswitch_5
    monitor-enter v5

    :try_start_3
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    if-eqz v0, :cond_4

    const-string v0, "BackupManagerService"

    const-string/jumbo v2, "Restore session timed out; aborting"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    iput-boolean v6, v2, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    new-instance v3, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;

    invoke-direct {v3, v0, v2}, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/restore/ActiveRestoreSession;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_4
    :goto_2
    monitor-exit v5

    return-void

    :goto_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_5
    :try_start_4
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/backup/BackupRestoreTask;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/android/server/backup/BackupRestoreTask;->operationComplete(J)V
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_1

    return-void

    :catch_1
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid completion in flight, obj="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    :cond_6
    :try_start_5
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/backup/BackupRestoreTask;

    invoke-interface {v1}, Lcom/android/server/backup/BackupRestoreTask;->execute()V
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_2

    return-void

    :catch_2
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid backup/restore task in flight, obj="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    :cond_7
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/AdbParams;

    if-eqz v0, :cond_9

    const-string v2, "BackupManagerService"

    const-string/jumbo v3, "sep backup/restore timed out waiting for success"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V

    iget-object v2, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/BackupWakeLock;

    monitor-enter v2

    :try_start_6
    iget-object v3, v2, Lcom/android/server/backup/BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit v2

    if-eqz v3, :cond_8

    iget-object v2, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-boolean v3, v2, Lcom/android/server/backup/UserBackupManagerService;->mSepWakeLock:Z

    if-eqz v3, :cond_8

    iget-object v2, v2, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/BackupWakeLock;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupWakeLock;->release()V

    iget-object v1, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iput-boolean v8, v1, Lcom/android/server/backup/UserBackupManagerService;->mSepWakeLock:Z

    :cond_8
    iget-object v0, v0, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v0, :cond_1c

    :try_start_7
    invoke-interface {v0}, Landroid/app/backup/IFullBackupRestoreObserver;->onTimeout()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_c

    return-void

    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    :cond_9
    const-string v0, "BackupManagerService"

    const-string/jumbo v1, "params is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/ClearRetryParams;

    iget-object v1, v0, Lcom/android/server/backup/params/ClearRetryParams;->transportName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/backup/params/ClearRetryParams;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/server/backup/params/RestoreGetSetsParams;

    const-string v3, "BH/MSG_RUN_GET_RESTORE_SETS"

    const/16 v4, 0x8

    :try_start_9
    iget-object v0, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    invoke-virtual {v0, v3}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0

    iget-object v5, v0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    invoke-virtual {v5}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->newFuture()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v6, v5}, Lcom/android/internal/backup/IBackupTransport;->getAvailableRestoreSets(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v0, v5}, Lcom/android/server/backup/transport/BackupTransportClient;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/List;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :try_start_a
    iget-object v6, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->session:Lcom/android/server/backup/restore/ActiveRestoreSession;

    monitor-enter v6
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    iget-object v0, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->session:Lcom/android/server/backup/restore/ActiveRestoreSession;

    iput-object v5, v0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:Ljava/util/List;

    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-nez v5, :cond_c

    :try_start_c
    new-array v0, v8, [Ljava/lang/Object;

    const/16 v6, 0xb0f

    invoke-static {v6, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v26, v5

    move-object v5, v0

    move-object/from16 v0, v26

    goto/16 :goto_c

    :catch_3
    move-exception v0

    goto :goto_a

    :cond_c
    :goto_4
    iget-object v0, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-nez v5, :cond_d

    :try_start_d
    invoke-interface {v0, v7}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_5

    :cond_d
    new-array v6, v8, [Landroid/app/backup/RestoreSet;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/app/backup/RestoreSet;

    invoke-interface {v0, v5}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    goto :goto_7

    :goto_5
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Restore observer threw: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-static {v0, v6, v5}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_7

    :catch_5
    const-string v0, "BackupManagerService"

    const-string/jumbo v5, "Unable to report listing to observer"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreSessionTimeoutMillis()J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->listener:Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v3}, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;->onFinished(Ljava/lang/String;)V

    goto/16 :goto_16

    :catchall_4
    move-exception v0

    :try_start_e
    monitor-exit v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :goto_8
    move-object v5, v0

    move-object v0, v7

    goto :goto_c

    :goto_9
    move-object v5, v7

    goto :goto_a

    :catchall_5
    move-exception v0

    goto :goto_8

    :catch_6
    move-exception v0

    goto :goto_9

    :goto_a
    :try_start_10
    const-string v6, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error from transport getting set list: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    iget-object v0, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-nez v5, :cond_e

    :try_start_11
    invoke-interface {v0, v7}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V

    goto :goto_7

    :catch_7
    move-exception v0

    goto :goto_b

    :cond_e
    new-array v6, v8, [Landroid/app/backup/RestoreSet;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/app/backup/RestoreSet;

    invoke-interface {v0, v5}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    goto :goto_7

    :goto_b
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Restore observer threw: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_c
    iget-object v6, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-nez v0, :cond_f

    :try_start_12
    invoke-interface {v6, v7}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V

    goto :goto_e

    :catch_8
    move-exception v0

    goto :goto_d

    :cond_f
    new-array v7, v8, [Landroid/app/backup/RestoreSet;

    invoke-interface {v0, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/backup/RestoreSet;

    invoke-interface {v6, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    goto :goto_e

    :goto_d
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Restore observer threw: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v7, v6}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_e

    :catch_9
    const-string v0, "BackupManagerService"

    const-string/jumbo v6, "Unable to report listing to observer"

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreSessionTimeoutMillis()J

    move-result-wide v6

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->listener:Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v3}, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;->onFinished(Ljava/lang/String;)V

    throw v5

    :cond_10
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/ClearParams;

    new-instance v1, Lcom/android/server/backup/internal/PerformClearTask;

    iget-object v2, v0, Lcom/android/server/backup/params/ClearParams;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    iget-object v3, v0, Lcom/android/server/backup/params/ClearParams;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Lcom/android/server/backup/params/ClearParams;->listener:Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, v5, v2, v3, v0}, Lcom/android/server/backup/internal/PerformClearTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportConnection;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda0;)V

    invoke-virtual {v1}, Lcom/android/server/backup/internal/PerformClearTask;->run()V

    return-void

    :cond_11
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/RestoreParams;

    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "MSG_RUN_RESTORE observer="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/backup/params/RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v11, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v12, v1, Lcom/android/server/backup/internal/BackupHandler;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    iget-object v13, v0, Lcom/android/server/backup/params/RestoreParams;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    iget-object v14, v0, Lcom/android/server/backup/params/RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    iget-object v15, v0, Lcom/android/server/backup/params/RestoreParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-wide v2, v0, Lcom/android/server/backup/params/RestoreParams;->token:J

    iget-object v4, v0, Lcom/android/server/backup/params/RestoreParams;->packageInfo:Landroid/content/pm/PackageInfo;

    iget v5, v0, Lcom/android/server/backup/params/RestoreParams;->pmToken:I

    iget-boolean v7, v0, Lcom/android/server/backup/params/RestoreParams;->isSystemRestore:Z

    iget-object v8, v0, Lcom/android/server/backup/params/RestoreParams;->filterSet:[Ljava/lang/String;

    iget-object v9, v0, Lcom/android/server/backup/params/RestoreParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    iget-object v0, v0, Lcom/android/server/backup/params/RestoreParams;->backupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-object/from16 v23, v0

    move-wide/from16 v16, v2

    move-object/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    invoke-direct/range {v10 .. v23}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/internal/LifecycleOperationStorage;Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;Lcom/android/server/backup/utils/BackupEligibilityRules;)V

    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mPendingRestores:Ljava/util/Queue;

    monitor-enter v2

    :try_start_13
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-boolean v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mIsRestoreInProgress:Z

    if-eqz v0, :cond_12

    const-string v0, "BackupManagerService"

    const-string/jumbo v3, "Restore in progress, queueing."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mPendingRestores:Ljava/util/Queue;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0, v10}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :catchall_6
    move-exception v0

    goto :goto_10

    :cond_12
    const-string v0, "BackupManagerService"

    const-string/jumbo v3, "Starting restore."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iput-boolean v6, v0, Lcom/android/server/backup/UserBackupManagerService;->mIsRestoreInProgress:Z

    const/16 v0, 0x14

    invoke-virtual {v1, v0, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_f
    monitor-exit v2

    return-void

    :goto_10
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    throw v0

    :cond_13
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/AdbBackupParams;

    new-instance v4, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;

    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    iget-object v7, v0, Lcom/android/server/backup/params/AdbParams;->fd:Landroid/os/ParcelFileDescriptor;

    iget-object v8, v0, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    iget-boolean v9, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeApks:Z

    iget-boolean v10, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeObbs:Z

    iget-boolean v11, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeShared:Z

    iget-boolean v12, v0, Lcom/android/server/backup/params/AdbBackupParams;->doWidgets:Z

    iget-object v13, v0, Lcom/android/server/backup/params/AdbParams;->curPassword:Ljava/lang/String;

    iget-object v14, v0, Lcom/android/server/backup/params/AdbParams;->encryptPassword:Ljava/lang/String;

    iget-boolean v15, v0, Lcom/android/server/backup/params/AdbBackupParams;->allApps:Z

    iget-boolean v1, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeSystem:Z

    iget-boolean v2, v0, Lcom/android/server/backup/params/AdbBackupParams;->doCompress:Z

    iget-boolean v3, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeKeyValue:Z

    move/from16 v16, v1

    iget-object v1, v0, Lcom/android/server/backup/params/AdbBackupParams;->packages:[Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/server/backup/params/AdbBackupParams;->backupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-object/from16 v21, v1

    iget-boolean v1, v0, Lcom/android/server/backup/params/AdbParams;->privilegeApp:Z

    move/from16 v22, v1

    iget v1, v0, Lcom/android/server/backup/params/AdbBackupParams;->extraFlag:I

    move/from16 v23, v1

    iget-object v1, v0, Lcom/android/server/backup/params/AdbBackupParams;->smartswitchBackupPath:[Ljava/lang/String;

    iget v0, v0, Lcom/android/server/backup/params/AdbBackupParams;->transportFlags:I

    move/from16 v25, v0

    move-object/from16 v24, v1

    move/from16 v17, v2

    move/from16 v18, v3

    invoke-direct/range {v4 .. v25}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/internal/LifecycleOperationStorage;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/server/backup/utils/BackupEligibilityRules;ZI[Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v1, "adb-backup"

    invoke-direct {v0, v4, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v5, Lcom/android/server/backup/UserBackupManagerService;->mLastBackupPass:J

    const-string v2, "BH/MSG_RUN_BACKUP"

    invoke-virtual {v3, v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v11

    if-eqz v11, :cond_15

    invoke-virtual {v11, v2}, Lcom/android/server/backup/transport/TransportConnection;->connect(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0

    goto :goto_11

    :cond_15
    move-object v0, v7

    :goto_11
    if-nez v0, :cond_17

    if-eqz v11, :cond_16

    iget-object v0, v3, Lcom/android/server/backup/TransportManager;->mTransportConnectionManager:Lcom/android/server/backup/transport/TransportConnectionManager;

    invoke-virtual {v0, v11, v2}, Lcom/android/server/backup/transport/TransportConnectionManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    :cond_16
    const-string v0, "BackupManagerService"

    const-string v1, "Backup requested but no transport available"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_17
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v14, v4, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    iget-object v4, v4, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_14
    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-boolean v5, v5, Lcom/android/server/backup/UserBackupManagerService;->mBackupRunning:Z

    if-eqz v5, :cond_18

    const-string v0, "BackupManagerService"

    const-string v1, "Backup time but one already running"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    return-void

    :catchall_7
    move-exception v0

    goto/16 :goto_17

    :cond_18
    const-string v5, "BackupManagerService"

    const-string/jumbo v9, "Running a backup pass"

    invoke-static {v5, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iput-boolean v6, v5, Lcom/android/server/backup/UserBackupManagerService;->mBackupRunning:Z

    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/BackupWakeLock;

    invoke-virtual {v5}, Lcom/android/server/backup/BackupWakeLock;->acquire()V

    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_1a

    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/backup/keyvalue/BackupRequest;

    iget-object v6, v6, Lcom/android/server/backup/keyvalue/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_19
    const-string v5, "BackupManagerService"

    const-string/jumbo v6, "clearing pending backups"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iput-object v7, v5, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    :cond_1a
    monitor-exit v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    :try_start_15
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->getBackupManagerMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v7
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_a

    :goto_13
    move-object/from16 v16, v7

    goto :goto_14

    :catch_a
    const-string v4, "BackupManagerService"

    const-string v5, "Failed to retrieve monitor from transport"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :goto_14
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1b

    :try_start_16
    new-instance v4, Lcom/android/server/backup/internal/BackupHandler$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, v11}, Lcom/android/server/backup/internal/BackupHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;)V

    iget-object v9, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v10, v1, Lcom/android/server/backup/internal/BackupHandler;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    iget-object v5, v0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    invoke-virtual {v5}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->newFuture()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v6, v5}, Lcom/android/internal/backup/IBackupTransport;->transportDirName(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v0, v5}, Lcom/android/server/backup/transport/BackupTransportClient;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    sget-object v18, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRulesForOperation(I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v21

    const/4 v15, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v4

    invoke-static/range {v9 .. v21}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->start(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/internal/LifecycleOperationStorage;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;Ljava/util/List;Lcom/android/server/backup/DataChangedJournal;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZLcom/android/server/backup/utils/BackupEligibilityRules;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_b

    goto :goto_16

    :catch_b
    move-exception v0

    const-string v4, "BackupManagerService"

    const-string/jumbo v5, "Transport became unavailable attempting backup or error initializing backup task"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    :cond_1b
    const-string v0, "BackupManagerService"

    const-string v4, "Backup requested but nothing pending"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    invoke-virtual {v3, v11, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_17
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iput-boolean v8, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupRunning:Z

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/BackupWakeLock;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupWakeLock;->release()V

    :catch_c
    :cond_1c
    :goto_16
    return-void

    :catchall_8
    move-exception v0

    :try_start_18
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    throw v0

    :goto_17
    :try_start_19
    monitor-exit v4
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    throw v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/internal/BackupHandler;->mIsStopping:Z

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
