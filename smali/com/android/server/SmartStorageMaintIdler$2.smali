.class public final Lcom/android/server/SmartStorageMaintIdler$2;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/SmartStorageMaintIdler;

.field public final synthetic val$ms:Lcom/android/server/StorageManagerService;

.field public final synthetic val$params:Landroid/app/job/JobParameters;


# direct methods
.method public constructor <init>(Lcom/android/server/SmartStorageMaintIdler;Landroid/app/job/JobParameters;Lcom/android/server/StorageManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/SmartStorageMaintIdler$2;->this$0:Lcom/android/server/SmartStorageMaintIdler;

    iput-object p2, p0, Lcom/android/server/SmartStorageMaintIdler$2;->val$params:Landroid/app/job/JobParameters;

    iput-object p3, p0, Lcom/android/server/SmartStorageMaintIdler$2;->val$ms:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v0, p0, Lcom/android/server/SmartStorageMaintIdler$2;->this$0:Lcom/android/server/SmartStorageMaintIdler;

    iget-object v1, p0, Lcom/android/server/SmartStorageMaintIdler$2;->val$params:Landroid/app/job/JobParameters;

    iput-object v1, v0, Lcom/android/server/SmartStorageMaintIdler;->mJobParams:Landroid/app/job/JobParameters;

    iget-object p0, p0, Lcom/android/server/SmartStorageMaintIdler$2;->val$ms:Lcom/android/server/StorageManagerService;

    const/4 v1, 0x0

    if-eqz p0, :cond_8

    iget-object v2, v0, Lcom/android/server/SmartStorageMaintIdler;->mFinishCallback:Lcom/android/server/SmartStorageMaintIdler$1;

    const-string v0, ", min gc sleep time(ms): 0, target dirty ratio: "

    const-string v3, ", min segment threshold: 0, dirty reclaim rate: 0.0, segment reclaim weight: 0.0, period(min): "

    const-string/jumbo v4, "Set smart idle maintenance: latest write amount: "

    monitor-enter p0

    :try_start_0
    const-string/jumbo v5, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-virtual {p0, v5}, Lcom/android/server/StorageManagerService;->enforcePermission$1(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v5}, Landroid/os/IVold;->getWriteAmount()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    const-string/jumbo v0, "StorageManagerService"

    const-string v1, "Failed to get storage write record"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/SmartStorageMaintIdler$1;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    :try_start_3
    invoke-virtual {p0, v5}, Lcom/android/server/StorageManagerService;->updateStorageWriteRecords(I)V

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->needsCheckpoint()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-virtual {p0, v6}, Lcom/android/server/StorageManagerService;->enforcePermission$1(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v6}, Landroid/os/IVold;->supportsBlockCheckpoint()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "StorageManagerService"

    const-string/jumbo v1, "Skipping smart idle maintenance - block based checkpoint in progress"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->refreshLifetimeConstraint()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->checkChargeStatus()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mStorageWriteRecords:[I

    invoke-static {v6}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/stream/IntStream;->sum()I

    move-result v6

    iget v7, p0, Lcom/android/server/StorageManagerService;->mMaxWriteRecords:I

    div-int/2addr v6, v7

    move v14, v1

    move v8, v6

    goto :goto_2

    :cond_5
    :goto_1
    const-string/jumbo v6, "StorageManagerService"

    const-string/jumbo v7, "Turn off gc_urgent based on checking lifetime and charge status"

    invoke-static {v6, v7}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x64

    move v8, v1

    move v14, v6

    :goto_2
    const-string/jumbo v1, "StorageManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", average write amount: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    sget v12, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-interface/range {v7 .. v14}, Landroid/os/IVold;->setGCUrgentPace(IIFFIII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    if-eqz v2, :cond_6

    :goto_4
    :try_start_4
    invoke-virtual {v2}, Lcom/android/server/SmartStorageMaintIdler$1;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :goto_5
    :try_start_5
    const-string/jumbo v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    :goto_6
    monitor-exit p0

    return-void

    :goto_7
    if-eqz v2, :cond_7

    :try_start_6
    invoke-virtual {v2}, Lcom/android/server/SmartStorageMaintIdler$1;->run()V

    :cond_7
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :cond_8
    iget-object p0, v0, Lcom/android/server/SmartStorageMaintIdler;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
