.class public final Lcom/android/server/StorageManagerService$Callbacks;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic $r8$classId:I

.field public final mCallbacks:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/StorageManagerService$Callbacks;->$r8$classId:I

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/StorageManagerService$Callbacks;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private final handleMessage$com$android$server$StorageManagerService$ObbActionHandler(Landroid/os/Message;)V
    .locals 8

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/StorageManagerService;

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/StorageManagerService;

    iget-object v3, v3, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/StorageManagerService$ObbState;

    iget-object v5, v4, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p1, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/StorageManagerService$ObbState;

    iget-object v5, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/StorageManagerService;

    invoke-static {v5, v4}, Lcom/android/server/StorageManagerService;->-$$Nest$mremoveObbStateLocked(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, v4, Lcom/android/server/StorageManagerService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    iget-object v6, v4, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    iget v7, v4, Lcom/android/server/StorageManagerService$ObbState;->nonce:I

    invoke-interface {v5, v6, v7, v1}, Landroid/os/storage/IObbActionListener;->onObbResult(Ljava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string/jumbo v5, "StorageManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t send unmount notification for  OBB: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_4
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/StorageManagerService$ObbAction;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$ObbAction;->handleExecute()V
    :try_end_3
    .catch Lcom/android/server/StorageManagerService$ObbException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    const-string/jumbo v0, "StorageManagerService"

    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    iget p1, p1, Lcom/android/server/StorageManagerService$ObbException;->status:I

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService$ObbAction;->notifyObbStateChange(I)V

    :goto_3
    return-void
.end method

.method public static invokeCallback(Landroid/os/storage/IStorageEventListener;ILcom/android/internal/os/SomeArgs;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Landroid/os/storage/DiskInfo;

    invoke-interface {p0, p1}, Landroid/os/storage/IStorageEventListener;->onDiskDestroyed(Landroid/os/storage/DiskInfo;)V

    return-void

    :pswitch_1
    iget-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Landroid/os/storage/DiskInfo;

    iget p2, p2, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-interface {p0, p1, p2}, Landroid/os/storage/IStorageEventListener;->onDiskScanned(Landroid/os/storage/DiskInfo;I)V

    return-void

    :pswitch_2
    iget-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Landroid/os/storage/IStorageEventListener;->onVolumeForgotten(Ljava/lang/String;)V

    return-void

    :pswitch_3
    iget-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Landroid/os/storage/VolumeRecord;

    invoke-interface {p0, p1}, Landroid/os/storage/IStorageEventListener;->onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V

    return-void

    :pswitch_4
    iget-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/storage/WatchedVolumeInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/storage/VolumeInfo;

    iget-object p1, p1, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-direct {v0, p1}, Landroid/os/storage/VolumeInfo;-><init>(Landroid/os/storage/VolumeInfo;)V

    iget p1, p2, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget p2, p2, Lcom/android/internal/os/SomeArgs;->argi3:I

    invoke-interface {p0, v0, p1, p2}, Landroid/os/storage/IStorageEventListener;->onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V

    return-void

    :pswitch_5
    iget-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p2, p2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-interface {p0, p1, v0, p2}, Landroid/os/storage/IStorageEventListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    iget v5, v0, Lcom/android/server/StorageManagerService$Callbacks;->$r8$classId:I

    packed-switch v5, :pswitch_data_0

    iget v5, v1, Landroid/os/Message;->what:I

    const/4 v6, 0x0

    const/high16 v7, 0x5000000

    packed-switch v5, :pswitch_data_1

    goto/16 :goto_1f

    :pswitch_0
    const-string/jumbo v1, "StorageManagerService"

    const-string/jumbo v3, "handleMessage -> H_REMOUNT_VOLUMES_ON_MOVE"

    invoke-static {v1, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/server/StorageManagerService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v1, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    array-length v6, v0

    move v7, v2

    :goto_0
    if-ge v7, v6, :cond_1

    aget v8, v0, v7

    iget v9, v1, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    if-ne v8, v9, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/2addr v7, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "#onUserStopped might be slow"

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->extendWatchdogTimeout(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v2

    :goto_2
    if-ge v0, v5, :cond_2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v0, 0x1

    check-cast v6, Ljava/lang/Integer;

    :try_start_1
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v0, v8}, Landroid/os/IVold;->onUserStopped(I)V

    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v0, v6}, Landroid/os/IStoraged;->onUserStopped(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string/jumbo v6, "StorageManagerService"

    invoke-static {v6, v0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    move v0, v7

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_4
    if-ge v2, v5, :cond_20

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/2addr v2, v4

    check-cast v0, Ljava/lang/Integer;

    :try_start_2
    iget-object v6, v1, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Landroid/os/IVold;->onUserStarted(I)V

    iget-object v6, v1, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/os/IStoraged;->onUserStarted(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    const-string/jumbo v6, "StorageManagerService"

    invoke-static {v6, v0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :goto_5
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :pswitch_1
    const-string/jumbo v2, "StorageManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "handleMessage -> H_SECURE_KEYGUARD_STATE_CHANGED isShowing="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_4
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/StorageManagerService;

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IVold;->onSecureKeyguardStateChanged(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1f

    :catch_2
    move-exception v0

    const-string/jumbo v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f

    :pswitch_2
    const-string/jumbo v2, "StorageManagerService"

    const-string/jumbo v5, "handleMessage -> H_CLOUD_MEDIA_PROVIDER_CHANGED"

    invoke-static {v2, v5}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v2, Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;

    if-eqz v5, :cond_4

    check-cast v2, Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;

    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/StorageManagerService;

    iget-object v5, v0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    monitor-enter v5

    :try_start_5
    iget-object v1, v0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v4

    :goto_6
    if-ltz v1, :cond_3

    iget-object v4, v0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v6, v0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2, v4, v6}, Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;->onCloudProviderChanged(ILjava/lang/String;)V

    add-int/2addr v1, v3

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_3
    monitor-exit v5

    goto/16 :goto_1f

    :goto_7
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_4
    iget v1, v1, Landroid/os/Message;->arg1:I

    check-cast v2, Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/StorageManagerService;

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mCloudProviderChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;

    invoke-interface {v3, v1, v2}, Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;->onCloudProviderChanged(ILjava/lang/String;)V

    goto :goto_8

    :pswitch_3
    const-string/jumbo v3, "StorageManagerService"

    const-string/jumbo v5, "handleMessage -> H_VOLUME_STATE_CHANGED"

    invoke-static {v3, v5}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/StorageManagerService;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/server/storage/WatchedVolumeInfo;

    iget v6, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v8, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    :try_start_6
    invoke-virtual {v3, v5}, Lcom/android/server/StorageManagerService;->prepareUserStorageIfNeeded(Lcom/android/server/storage/WatchedVolumeInfo;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_9

    :catch_3
    :try_start_7
    iget-object v0, v3, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v2, v5, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget-object v2, v2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/os/IVold;->unmount(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_10

    :catch_4
    move-exception v0

    const-string/jumbo v2, "StorageManagerService"

    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_10

    :cond_5
    :goto_9
    iget-object v10, v3, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_8
    iget-object v0, v5, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v3, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v11, v5, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget-object v11, v11, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeRecord;

    if-nez v0, :cond_7

    new-instance v0, Landroid/os/storage/VolumeRecord;

    iget-object v11, v5, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget v12, v11, Landroid/os/storage/VolumeInfo;->type:I

    iget-object v11, v11, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-direct {v0, v12, v11}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    iget-object v11, v5, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget-object v11, v11, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    iput-object v11, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    iget-object v11, v5, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget v12, v11, Landroid/os/storage/VolumeInfo;->type:I

    if-ne v12, v4, :cond_6

    invoke-virtual {v11}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    goto :goto_a

    :catchall_2
    move-exception v0

    goto/16 :goto_12

    :cond_6
    :goto_a
    iget-object v11, v3, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v12, v0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v11, v12, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_7
    iget-object v11, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, v5, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget-object v11, v11, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    iput-object v11, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    :cond_8
    :goto_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v0, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    invoke-virtual {v3}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    :cond_9
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    iget-object v0, v3, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    iget-object v10, v5, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    new-instance v11, Lcom/android/server/storage/ImmutableVolumeInfo;

    invoke-direct {v11, v10}, Lcom/android/server/storage/ImmutableVolumeInfo;-><init>(Landroid/os/storage/VolumeInfo;)V

    invoke-virtual {v0, v11}, Lcom/android/server/storage/StorageSessionController;->notifyVolumeStateChanged(Lcom/android/server/storage/ImmutableVolumeInfo;)V
    :try_end_9
    .catch Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_c

    :catch_5
    move-exception v0

    const-string/jumbo v10, "StorageManagerService"

    const-string v11, "Failed to notify volume state changed to the Storage Service"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    iget-object v11, v3, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_a
    iget-object v0, v3, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v10

    iget-object v12, v5, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v12}, Landroid/os/storage/VolumeInfo;->clone()Landroid/os/storage/VolumeInfo;

    move-result-object v12

    new-instance v13, Lcom/android/server/storage/WatchedVolumeInfo;

    invoke-direct {v13, v12}, Lcom/android/server/storage/WatchedVolumeInfo;-><init>(Landroid/os/storage/VolumeInfo;)V

    iput-object v13, v10, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput v6, v10, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput v8, v10, Lcom/android/internal/os/SomeArgs;->argi3:I

    invoke-virtual {v0, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-boolean v0, v3, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    const/4 v10, 0x6

    const/4 v12, 0x5

    if-eqz v0, :cond_d

    iget-object v0, v5, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget v13, v0, Landroid/os/storage/VolumeInfo;->type:I

    if-eqz v13, :cond_a

    if-eq v13, v4, :cond_a

    if-eq v13, v9, :cond_a

    if-eq v13, v12, :cond_a

    goto :goto_d

    :cond_a
    iget v13, v0, Landroid/os/storage/VolumeInfo;->state:I

    const/4 v14, 0x7

    if-eqz v13, :cond_c

    if-eq v13, v9, :cond_c

    const/4 v15, 0x3

    if-eq v13, v15, :cond_c

    if-eq v13, v12, :cond_c

    if-eq v13, v10, :cond_c

    if-eq v13, v14, :cond_b

    const/16 v0, 0x8

    if-eq v13, v0, :cond_c

    goto :goto_d

    :cond_b
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v13, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-direct {v0, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v13, "android.os.storage.extra.VOLUME_ID"

    iget-object v15, v5, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget-object v15, v15, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v13, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v13, "android.os.storage.extra.VOLUME_STATE"

    invoke-virtual {v0, v13, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v13, "android.os.storage.extra.FS_UUID"

    iget-object v15, v5, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget-object v15, v15, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v0, v13, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v7, v3, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v7, v14, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_d

    :catchall_3
    move-exception v0

    goto/16 :goto_11

    :cond_d
    :goto_d
    invoke-static {v6}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    iget-object v7, v3, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    array-length v13, v7

    move v14, v2

    :goto_e
    if-ge v14, v13, :cond_f

    aget v15, v7, v14

    iget-object v9, v5, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v9, v15}, Landroid/os/storage/VolumeInfo;->isVisibleForUser(I)Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, v3, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    iget-object v12, v5, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v12, v9, v15, v2}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v9

    iget-object v12, v3, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v12, v10, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    iget-object v12, v3, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v15

    iput-object v9, v15, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object v0, v15, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object v6, v15, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-virtual {v12, v4, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    :cond_e
    add-int/2addr v14, v4

    const/4 v9, 0x2

    const/4 v12, 0x5

    goto :goto_e

    :cond_f
    iget-object v0, v5, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget v2, v0, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v2, :cond_13

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v2

    if-eqz v2, :cond_11

    const-string/jumbo v0, "mounted"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v5, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    const-string/jumbo v2, "StorageManagerService"

    const-string/jumbo v4, "Set Ext SD Card FsType Property by Ext SD Card Info"

    invoke-static {v2, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "sys.ext_sdcard.fstype"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_10
    const-string/jumbo v0, "StorageManagerService"

    const-string/jumbo v2, "Set Ext SD Card FsType Property to default"

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "sys.ext_sdcard.fstype"

    const-string/jumbo v2, "none"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_11
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string/jumbo v0, "mounted"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v5, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    const-string/jumbo v2, "StorageManagerService"

    const-string/jumbo v4, "Set USB Storage FsType Property by USB Storage Info"

    invoke-static {v2, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "sys.usb_storage.fstype"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_12
    const-string/jumbo v0, "StorageManagerService"

    const-string/jumbo v2, "Set USB Storage FsType Property to default"

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "sys.usb_storage.fstype"

    const-string/jumbo v2, "none"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    :goto_f
    iget-object v0, v5, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget v2, v0, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v4, 0x5

    if-eqz v2, :cond_14

    if-ne v2, v4, :cond_15

    :cond_14
    iget v2, v0, Landroid/os/storage/VolumeInfo;->state:I

    if-ne v2, v4, :cond_15

    iget-object v2, v3, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$Callbacks;

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_15
    invoke-static {v5, v8}, Lcom/android/server/StorageManagerService;->maybeLogMediaMount(Lcom/android/server/storage/WatchedVolumeInfo;I)V

    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :goto_10
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_1f

    :goto_11
    :try_start_b
    monitor-exit v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v0

    :goto_12
    :try_start_c
    monitor-exit v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v0

    :pswitch_4
    const-string/jumbo v2, "StorageManagerService"

    const-string/jumbo v3, "handleMessage -> H_COMPLETE_UNLOCK_USER"

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/StorageManagerService;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/StorageManagerService;->-$$Nest$mcompleteUnlockUser(Lcom/android/server/StorageManagerService;I)V

    goto/16 :goto_1f

    :pswitch_5
    const-string/jumbo v1, "StorageManagerService"

    const-string/jumbo v2, "handleMessage -> H_BOOT_COMPLETED"

    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/StorageManagerService;

    invoke-virtual {v0}, Lcom/android/server/StorageManagerService;->resetIfBootedAndConnected()V

    goto/16 :goto_1f

    :pswitch_6
    const-string/jumbo v2, "StorageManagerService"

    const-string/jumbo v3, "handleMessage -> H_ABORT_IDLE_MAINT"

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "StorageManagerService"

    const-string v3, "Aborting idle maintenance"

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/StorageManagerService;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/StorageManagerService;->abortIdleMaint(Ljava/lang/Runnable;)V

    goto/16 :goto_1f

    :pswitch_7
    const-string/jumbo v2, "StorageManagerService"

    const-string/jumbo v3, "handleMessage -> H_RUN_IDLE_MAINT"

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "StorageManagerService"

    const-string/jumbo v3, "Running idle maintenance"

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/StorageManagerService;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/StorageManagerService;->runIdleMaint(Ljava/lang/Runnable;)V

    goto/16 :goto_1f

    :pswitch_8
    const-string/jumbo v1, "StorageManagerService"

    const-string/jumbo v2, "handleMessage -> H_RESET"

    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/StorageManagerService;

    invoke-virtual {v0}, Lcom/android/server/StorageManagerService;->resetIfBootedAndConnected()V

    goto/16 :goto_1f

    :pswitch_9
    const-string/jumbo v2, "StorageManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "handleMessage -> H_PARTITION_FORGET rec="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/storage/VolumeRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/storage/VolumeRecord;

    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/StorageManagerService;

    iget-object v2, v1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    iget-object v1, v1, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_d
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, v2, v1}, Landroid/os/IVold;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_1f

    :catch_6
    move-exception v0

    const-string/jumbo v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f

    :pswitch_a
    const-string/jumbo v2, "StorageManagerService"

    const-string/jumbo v3, "handleMessage -> H_VOLUME_UNMOUNT"

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/storage/ImmutableVolumeInfo;

    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/StorageManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/StorageManagerService;->unmount(Lcom/android/server/storage/ImmutableVolumeInfo;)V

    goto/16 :goto_1f

    :pswitch_b
    const-string/jumbo v2, "StorageManagerService"

    const-string/jumbo v4, "handleMessage -> H_INTERNAL_BROADCAST"

    invoke-static {v2, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.os.storage.extra.VOLUME_STATE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "StorageManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "broadcasting ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ") state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fsUuid="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/StorageManagerService;

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v3, "android.permission.WRITE_MEDIA_STORAGE"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_1f

    :pswitch_c
    const-string/jumbo v2, "StorageManagerService"

    const-string/jumbo v3, "handleMessage -> H_VOLUME_BROADCAST"

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "StorageManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Volume "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " broadcasting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Landroid/os/storage/VolumeInfo;->getBroadcastForEnvironment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_20

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v2, "android.os.storage.extra.STORAGE_VOLUME"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/StorageManagerService;

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1f

    :pswitch_d
    const-string/jumbo v2, "StorageManagerService"

    const-string/jumbo v3, "handleMessage -> H_VOLUME_MOUNT"

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/storage/WatchedVolumeInfo;

    iget-object v2, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/StorageManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/StorageManagerService;->isMountDisallowed(Lcom/android/server/storage/WatchedVolumeInfo;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string/jumbo v0, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring mount "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget-object v1, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " due to policy"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    :cond_16
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/StorageManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/StorageManagerService;->mount(Lcom/android/server/storage/WatchedVolumeInfo;)V

    goto/16 :goto_1f

    :pswitch_e
    const-string/jumbo v3, "StorageManagerService"

    const-string/jumbo v4, "handleMessage -> H_FSTRIM"

    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "StorageManagerService"

    const-string/jumbo v4, "Running fstrim idle maintenance"

    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_e
    iget-object v3, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/StorageManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    iget-object v3, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/StorageManagerService;

    iget-object v4, v3, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    iget-wide v7, v3, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    invoke-virtual {v4, v7, v8}, Ljava/io/File;->setLastModified(J)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    goto :goto_13

    :catch_7
    const-string/jumbo v3, "StorageManagerService"

    const-string/jumbo v4, "Unable to record last fstrim!"

    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/StorageManagerService;

    invoke-virtual {v0, v2, v6}, Lcom/android/server/StorageManagerService;->fstrim(ILandroid/os/IVoldTaskListener;)V

    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_20

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_1f

    :pswitch_f
    const-string/jumbo v5, "StorageManagerService"

    const-string/jumbo v6, "handleMessage -> H_SHUTDOWN"

    invoke-static {v5, v6}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/storage/IStorageShutdownObserver;

    :try_start_f
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/StorageManagerService;

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->shutdown()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    goto :goto_14

    :catch_8
    move-exception v0

    const-string/jumbo v4, "StorageManagerService"

    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v2

    :goto_14
    if-eqz v1, :cond_20

    if-eqz v4, :cond_17

    goto :goto_15

    :cond_17
    move v2, v3

    :goto_15
    :try_start_10
    invoke-interface {v1, v2}, Landroid/os/storage/IStorageShutdownObserver;->onShutDownComplete(I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    goto/16 :goto_1f

    :pswitch_10
    const-string/jumbo v1, "StorageManagerService"

    const-string/jumbo v2, "handleMessage -> H_DAEMON_CONNECTED"

    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/StorageManagerService;

    invoke-virtual {v0}, Lcom/android/server/StorageManagerService;->resetIfBootedAndConnected()V

    goto/16 :goto_1f

    :pswitch_11
    const-string/jumbo v1, "StorageManagerService"

    const-string/jumbo v3, "handleMessage -> H_SYSTEM_READY"

    invoke-static {v1, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/server/StorageManagerService;

    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/MountServiceIdler;->scheduleIdlePass(Landroid/content/Context;)V

    iget-object v3, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/NandswapManager;->sNandswapManager:Landroid/content/ComponentName;

    const-string/jumbo v5, "NandswapManager"

    :try_start_11
    const-string v0, "Initialize NandswapManager..."

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a

    :try_start_12
    new-instance v0, Lcom/android/server/NandswapManager$NandswapClient;

    invoke-direct {v0}, Lcom/android/server/NandswapManager$NandswapClient;-><init>()V

    sput-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    :try_start_13
    invoke-static {v4}, Lcom/android/server/NandswapManager;->setDailyQuota(Z)Z

    move-result v0

    goto :goto_16

    :catch_9
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Unexpected error while create mClient: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v6, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    move v0, v2

    :goto_16
    if-nez v0, :cond_18

    goto :goto_19

    :cond_18
    invoke-static {v3}, Lcom/android/server/NandswapManager;->makeNandswapBigdataManager(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "Bigdata is not supported"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :catch_a
    move-exception v0

    goto :goto_18

    :cond_19
    :goto_17
    sput-object v3, Lcom/android/server/NandswapManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v6, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v6, "android.intent.action.REBOOT"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v6, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v6, Lcom/android/server/NandswapManager;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/server/NandswapManager;->intentReceiver:Lcom/android/server/NandswapManager$1;

    invoke-virtual {v6, v7, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {v3}, Lcom/android/server/NandswapManager;->testRestoreExpandSizeAndList(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/server/NandswapManager;->schedNextLimitReset()V

    invoke-static {}, Lcom/android/server/NandswapManager;->schedNextUpdateAverage()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_a

    goto :goto_19

    :goto_18
    const-string/jumbo v3, "Unexpected error while scheduleNandswapManager"

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_19
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "zram_enabled"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v5, Lcom/android/server/StorageManagerService$2;

    invoke-direct {v5, v1}, Lcom/android/server/StorageManagerService$2;-><init>(Lcom/android/server/StorageManagerService;)V

    invoke-virtual {v0, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {v1}, Lcom/android/server/StorageManagerService;->refreshZramSettings()V

    const-string/jumbo v0, "persist.sys.zram_enabled"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x11102c6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/ZramWriteback;->scheduleZramWriteback(Landroid/content/Context;)V

    :cond_1a
    new-instance v0, Landroid/media/MediaCodecList;

    invoke-direct {v0, v2}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    array-length v3, v0

    move v5, v2

    :goto_1a
    if-ge v5, v3, :cond_1e

    aget-object v6, v0, v5

    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v7

    if-eqz v7, :cond_1b

    goto :goto_1c

    :cond_1b
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, v2

    :goto_1b
    if-ge v8, v7, :cond_1d

    aget-object v9, v6, v8

    const-string/jumbo v10, "video/hevc"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1c

    goto :goto_1d

    :cond_1c
    add-int/2addr v8, v4

    goto :goto_1b

    :cond_1d
    :goto_1c
    add-int/2addr v5, v4

    goto :goto_1a

    :cond_1e
    move v4, v2

    :goto_1d
    const-string/jumbo v0, "persist.sys.fuse.transcode_user_control"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "persist.sys.fuse.transcode_enabled"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_1e

    :cond_1f
    const-string/jumbo v0, "storage_native_boot"

    const-string/jumbo v2, "transcode_enabled"

    invoke-static {v0, v2, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    :goto_1e
    const-string/jumbo v2, "sys.fuse.transcode_enabled"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_20

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    new-instance v2, Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController;

    invoke-direct {v2, v1}, Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController;-><init>(Lcom/android/server/StorageManagerService;)V

    invoke-virtual {v0, v2}, Landroid/app/ActivityManagerInternal;->registerAnrController(Landroid/app/AnrController;)V

    :catch_b
    :cond_20
    :goto_1f
    return-void

    :pswitch_12
    invoke-direct/range {p0 .. p1}, Lcom/android/server/StorageManagerService$Callbacks;->handleMessage$com$android$server$StorageManagerService$ObbActionHandler(Landroid/os/Message;)V

    return-void

    :pswitch_13
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    iget-object v5, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    check-cast v5, Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    :goto_20
    if-ge v2, v5, :cond_21

    iget-object v6, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    check-cast v6, Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/os/storage/IStorageEventListener;

    :try_start_14
    iget v7, v1, Landroid/os/Message;->what:I

    invoke-static {v6, v7, v3}, Lcom/android/server/StorageManagerService$Callbacks;->invokeCallback(Landroid/os/storage/IStorageEventListener;ILcom/android/internal/os/SomeArgs;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_c

    :catch_c
    add-int/2addr v2, v4

    goto :goto_20

    :cond_21
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
