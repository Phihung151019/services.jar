.class public final Lcom/android/server/StorageManagerService$8;
.super Landroid/os/IVoldMountCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/StorageManagerService;

.field public final synthetic val$vol:Lcom/android/server/storage/WatchedVolumeInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;Lcom/android/server/storage/WatchedVolumeInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    iput-object p2, p0, Lcom/android/server/StorageManagerService$8;->val$vol:Lcom/android/server/storage/WatchedVolumeInfo;

    invoke-direct {p0}, Landroid/os/IVoldMountCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVolumeChecking(Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const-string v0, "Failed to close FUSE device fd"

    const-string/jumbo v1, "StorageManagerService"

    const-string/jumbo v2, "SMS.startFuseFileSystem: "

    iget-object v3, p0, Lcom/android/server/StorageManagerService$8;->val$vol:Lcom/android/server/storage/WatchedVolumeInfo;

    iget-object v4, v3, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iput-object p2, v4, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v3, v3}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    iget-object p2, p0, Lcom/android/server/StorageManagerService$8;->val$vol:Lcom/android/server/storage/WatchedVolumeInfo;

    iget-object v3, p2, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iput-object p3, v3, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    invoke-virtual {p2, p2}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    new-instance p2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {p2, p1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    const-wide/32 v3, 0x80000

    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/StorageManagerService$8;->val$vol:Lcom/android/server/storage/WatchedVolumeInfo;

    iget-object p3, p3, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget-object p3, p3, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v4, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    iget-object p1, p1, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    iget-object p3, p0, Lcom/android/server/StorageManagerService$8;->val$vol:Lcom/android/server/storage/WatchedVolumeInfo;

    iget-object p3, p3, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    new-instance v2, Lcom/android/server/storage/ImmutableVolumeInfo;

    invoke-direct {v2, p3}, Lcom/android/server/storage/ImmutableVolumeInfo;-><init>(Landroid/os/storage/VolumeInfo;)V

    invoke-virtual {p1, p2, v2}, Lcom/android/server/storage/StorageSessionController;->onVolumeMount(Landroid/os/ParcelFileDescriptor;Lcom/android/server/storage/ImmutableVolumeInfo;)V
    :try_end_0
    .catch Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x1

    :try_start_1
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    :catch_0
    move-exception p1

    invoke-static {v1, v0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_2
    iget-object p3, p0, Lcom/android/server/StorageManagerService$8;->val$vol:Lcom/android/server/storage/WatchedVolumeInfo;

    iget-object v2, p3, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget v2, v2, Landroid/os/storage/VolumeInfo;->type:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, "Failed to mount volume "

    if-nez v2, :cond_0

    :try_start_3
    iget-object v2, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lcom/android/server/StorageManagerService;->createVolumeInfoStrForPulbicVolume(Lcom/android/server/storage/WatchedVolumeInfo;)Ljava/lang/String;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/StorageManagerService$8;->val$vol:Lcom/android/server/storage/WatchedVolumeInfo;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string/jumbo p1, "Scheduling reset in 10s"

    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    iget-object p1, p1, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    const/16 p3, 0xa

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {p0, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v5, p3

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-virtual {p0, p1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    :try_start_4
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 p0, 0x0

    return p0

    :goto_2
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    :try_start_5
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    invoke-static {v1, v0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    throw p0
.end method
