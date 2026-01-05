.class public final Lcom/android/server/DynamicSystemService;
.super Landroid/os/image/IDynamicSystemService$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDsuSlot:Ljava/lang/String;

.field public volatile mGsiService:Landroid/gsi/IGsiService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/image/IDynamicSystemService$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/DynamicSystemService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final abort()Z
    .locals 0

    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->abort_enforcePermission()V

    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object p0

    invoke-interface {p0}, Landroid/gsi/IGsiService;->cancelGsiInstall()Z

    move-result p0

    return p0
.end method

.method public final closePartition()Z
    .locals 1

    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->closePartition_enforcePermission()V

    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object p0

    invoke-interface {p0}, Landroid/gsi/IGsiService;->closePartition()I

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "DynamicSystemService"

    const-string/jumbo v0, "Partition installation completes with error"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final createPartition(Ljava/lang/String;JZ)I
    .locals 0

    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->createPartition_enforcePermission()V

    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/gsi/IGsiService;->createPartition(Ljava/lang/String;JZ)I

    move-result p0

    if-eqz p0, :cond_0

    const-string p2, "Failed to create partition: "

    const-string p3, "DynamicSystemService"

    invoke-static {p2, p1, p3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return p0
.end method

.method public final finishInstallation()Z
    .locals 1

    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->finishInstallation_enforcePermission()V

    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object p0

    invoke-interface {p0}, Landroid/gsi/IGsiService;->closeInstall()I

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "DynamicSystemService"

    const-string v0, "Failed to finish installation"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getActiveDsuSlot()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->getActiveDsuSlot_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/DynamicSystemService;->mDsuSlot:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    invoke-interface {v0}, Landroid/gsi/IGsiService;->getActiveDsuSlot()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DynamicSystemService;->mDsuSlot:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/android/server/DynamicSystemService;->mDsuSlot:Ljava/lang/String;

    return-object p0
.end method

.method public final getAvbPublicKey(Landroid/gsi/AvbPublicKey;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->getAvbPublicKey_enforcePermission()V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/gsi/IGsiService;->getAvbPublicKey(Landroid/gsi/AvbPublicKey;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getGsiService()Landroid/gsi/IGsiService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DynamicSystemService;->mGsiService:Landroid/gsi/IGsiService;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/DynamicSystemService;->mGsiService:Landroid/gsi/IGsiService;

    return-object p0

    :cond_0
    const-string/jumbo p0, "gsiservice"

    invoke-static {p0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/gsi/IGsiService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gsi/IGsiService;

    move-result-object p0

    return-object p0
.end method

.method public final getInstallationProgress()Landroid/gsi/GsiProgress;
    .locals 0

    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->getInstallationProgress_enforcePermission()V

    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object p0

    invoke-interface {p0}, Landroid/gsi/IGsiService;->getInstallProgress()Landroid/gsi/GsiProgress;

    move-result-object p0

    return-object p0
.end method

.method public final isEnabled()Z
    .locals 0

    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->isEnabled_enforcePermission()V

    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object p0

    invoke-interface {p0}, Landroid/gsi/IGsiService;->isGsiEnabled()Z

    move-result p0

    return p0
.end method

.method public final isInUse()Z
    .locals 1

    const-string/jumbo p0, "ro.gsid.image_running"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final isInstalled()Z
    .locals 2

    const-string/jumbo p0, "gsid.image_installed"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isInstalled(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicSystemService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final remove()Z
    .locals 4

    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->remove_enforcePermission()V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/android/server/DynamicSystemService$GsiServiceCallback;

    invoke-direct {v1}, Lcom/android/server/DynamicSystemService$GsiServiceCallback;-><init>()V

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/gsi/IGsiService;->removeGsiAsync(Landroid/gsi/IGsiServiceCallback;)V

    const-wide/16 v2, 0x2000

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget p0, v1, Lcom/android/server/DynamicSystemService$GsiServiceCallback;->mResult:I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const-string p0, "DynamicSystemService"

    const-string/jumbo v1, "remove() was interrupted"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final setAshmem(Landroid/os/ParcelFileDescriptor;J)Z
    .locals 0

    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->setAshmem_enforcePermission()V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/gsi/IGsiService;->setGsiAshmem(Landroid/os/ParcelFileDescriptor;J)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setEnable(ZZ)Z
    .locals 4

    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->setEnable_enforcePermission()V

    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getActiveDsuSlot()Ljava/lang/String;

    new-instance v1, Lcom/android/server/DynamicSystemService$GsiServiceCallback;

    invoke-direct {v1}, Lcom/android/server/DynamicSystemService$GsiServiceCallback;-><init>()V

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/DynamicSystemService;->mDsuSlot:Ljava/lang/String;

    invoke-interface {v0, p2, p0, v1}, Landroid/gsi/IGsiService;->enableGsiAsync(ZLjava/lang/String;Landroid/gsi/IGsiServiceCallback;)V

    const-wide/16 v2, 0x2000

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget p0, v1, Lcom/android/server/DynamicSystemService$GsiServiceCallback;->mResult:I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return p1

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const-string p0, "DynamicSystemService"

    const-string/jumbo p2, "setEnable() was interrupted"

    invoke-static {p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_1
    invoke-interface {v0}, Landroid/gsi/IGsiService;->disableGsi()Z

    move-result p0

    return p0
.end method

.method public final startInstallation(Ljava/lang/String;)Z
    .locals 10

    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->startInstallation_enforcePermission()V

    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DynamicSystemService;->mGsiService:Landroid/gsi/IGsiService;

    const-string/jumbo v1, "os.aot.path"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, "DynamicSystemService"

    if-eqz v2, :cond_7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iget-object v4, p0, Lcom/android/server/DynamicSystemService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "vfat"

    iget-object v7, v5, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v6

    iget-wide v6, v6, Landroid/os/storage/DiskInfo;->size:J

    const/16 v8, 0x14

    shr-long/2addr v6, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " MB"

    invoke-static {v8, v9, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, 0x7800

    cmp-long v6, v6, v8

    if-gez v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": insufficient storage"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {v5, v2}, Landroid/os/storage/VolumeInfo;->getInternalPathForUser(I)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v1, "/data/gsi/dsu/"

    invoke-static {v1, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_6
    const-string/jumbo v2, "startInstallation -> "

    invoke-static {v2, v1, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iput-object p1, p0, Lcom/android/server/DynamicSystemService;->mDsuSlot:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/gsi/IGsiService;->openInstall(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "Failed to open "

    invoke-static {p0, v1, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method public final submitFromAshmem(J)Z
    .locals 0

    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->submitFromAshmem_enforcePermission()V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/gsi/IGsiService;->commitGsiChunkFromAshmem(J)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final suggestScratchSize()J
    .locals 2

    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->suggestScratchSize_enforcePermission()V

    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object p0

    invoke-interface {p0}, Landroid/gsi/IGsiService;->suggestScratchSize()J

    move-result-wide v0

    return-wide v0
.end method
