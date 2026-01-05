.class public final Lcom/android/server/audio/AudioService$AudioServiceInternal;
.super Landroid/media/AudioManagerInternal;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/media/AudioManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public final addAssistantServiceUid(II)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mPermissionProvider:Lcom/android/server/audio/AudioServerPermissionProvider;

    iget-object v1, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mHdsUid:I

    if-ne v2, p1, :cond_0

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_3

    :cond_0
    iget-object v2, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/server/audio/AudioServerPermissionProvider;->onModifyPackageState(ILjava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string p2, "AudioServerPermissionProvider"

    const-string/jumbo v3, "setIsolatedService owning uid not found"

    invoke-static {p2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput p1, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mHdsUid:I

    iget-object p2, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    const/4 v3, 0x1

    if-nez p2, :cond_2

    iput-boolean v3, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_2
    :try_start_1
    sget-object p2, Lcom/android/server/audio/AudioServerPermissionProvider;->HDS_PERMS:[B

    move v4, v2

    :goto_1
    const/4 v5, 0x3

    if-ge v4, v5, :cond_3

    aget-byte v5, p2, v4

    iget-object v6, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aget-object v6, v6, v5

    array-length v7, v6

    add-int/lit8 v8, v7, 0x1

    new-array v8, v8, [I

    array-length v9, v6

    invoke-static {v6, v2, v8, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mHdsUid:I

    aput v6, v8, v7

    invoke-static {v8}, Ljava/util/Arrays;->sort([I)V

    iget-object v6, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aput-object v8, v6, v5

    iget-object v6, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    invoke-interface {v6, v5, v8}, Lcom/android/media/permission/INativePermissionController;->populatePermissionState(B[I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    const/4 p2, 0x0

    :try_start_2
    iput-object p2, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    iput-boolean v3, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z

    :cond_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x2c

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void

    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final getRingerModeInternal()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result p0

    return p0
.end method

.method public final removeAssistantServiceUid(I)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mPermissionProvider:Lcom/android/server/audio/AudioServerPermissionProvider;

    const-string/jumbo v1, "Unexpected isolated service uid cleared: "

    iget-object v2, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    iget v4, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mHdsUid:I

    if-eq v4, p1, :cond_0

    const-string v4, "AudioServerPermissionProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expected "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mHdsUid:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, p1, v3, v1}, Lcom/android/server/audio/AudioServerPermissionProvider;->onModifyPackageState(ILjava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string v3, "AudioServerPermissionProvider"

    const-string/jumbo v4, "clearIsolatedService uid not found"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v3, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    if-nez v3, :cond_2

    iput-boolean v1, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_2
    :try_start_1
    sget-object v3, Lcom/android/server/audio/AudioServerPermissionProvider;->HDS_PERMS:[B

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    const/4 v6, 0x3

    if-ge v5, v6, :cond_4

    aget-byte v6, v3, v5

    iget-object v7, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aget-object v7, v7, v6

    array-length v8, v7

    sub-int/2addr v8, v1

    new-array v8, v8, [I

    invoke-static {v7, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v7

    if-gez v7, :cond_3

    goto :goto_2

    :cond_3
    iget-object v9, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aget-object v9, v9, v6

    invoke-static {v9, v4, v8, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aget-object v9, v9, v6

    add-int/lit8 v10, v7, 0x1

    array-length v11, v9

    sub-int/2addr v11, v7

    sub-int/2addr v11, v1

    invoke-static {v9, v10, v8, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aput-object v8, v7, v6

    iget-object v7, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    invoke-interface {v7, v6, v8}, Lcom/android/media/permission/INativePermissionController;->populatePermissionState(B[I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    iput-boolean v1, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z

    :cond_4
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mHdsUid:I

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x2d

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void

    :goto_4
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final setAccessibilityServiceUids(Landroid/util/IntArray;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->isPlatformAutomotive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    array-length v0, v0

    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v4

    if-eq v0, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v3

    :goto_1
    if-nez v0, :cond_5

    :goto_2
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v4, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    array-length v4, v4

    if-ge v2, v4, :cond_5

    invoke-virtual {p1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v5, v5, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    aget v5, v5, v2

    if-eq v4, v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v3, v0

    :goto_3
    if-eqz v3, :cond_6

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Landroid/util/IntArray;->toArray()[I

    move-result-object p1

    iput-object p1, v0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    :cond_6
    :goto_4
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0x23

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    monitor-exit v1

    return-void

    :goto_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setActiveAssistantServicesUids(Landroid/util/IntArray;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    sget-object v0, Lcom/android/server/audio/AudioService;->NO_ACTIVE_ASSISTANT_SERVICE_UIDS:[I

    iput-object v0, p1, Lcom/android/server/audio/AudioService;->mActiveAssistantServiceUids:[I

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mActiveAssistantServiceUids:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    array-length v0, v0

    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v4

    if-eq v0, v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    :goto_1
    if-nez v0, :cond_4

    :goto_2
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v4, Lcom/android/server/audio/AudioService;->mActiveAssistantServiceUids:[I

    array-length v4, v4

    if-ge v2, v4, :cond_4

    invoke-virtual {p1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v5, v5, Lcom/android/server/audio/AudioService;->mActiveAssistantServiceUids:[I

    aget v5, v5, v2

    if-eq v4, v5, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move v3, v0

    :goto_3
    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Landroid/util/IntArray;->toArray()[I

    move-result-object p1

    iput-object p1, v0, Lcom/android/server/audio/AudioService;->mActiveAssistantServiceUids:[I

    :cond_5
    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x2e

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void

    :goto_5
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setInputMethodServiceUid(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mInputMethodServiceUidLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    iget v2, v1, Lcom/android/server/audio/AudioService;->mInputMethodServiceUid:I

    if-eq v2, p1, :cond_0

    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/media/AudioSystem;->setCurrentImeUid(I)I

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    iput p1, p0, Lcom/android/server/audio/AudioService;->mInputMethodServiceUid:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setRingerModeDelegate(Landroid/media/AudioManagerInternal$RingerModeDelegate;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    iput-object p1, v0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz p1, :cond_0

    iget-object p1, v0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->updateRingerAndZenModeAffectedStreams()Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result p1

    const-string v0, "AS.AudioService.setRingerModeDelegate"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService$AudioServiceInternal;->setRingerModeInternal(ILjava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public final setRingerModeInternal(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setRingerModeInternal(ILjava/lang/String;)V

    return-void
.end method

.method public final silenceRingerModeInternal(Ljava/lang/String;)V
    .locals 10

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11102b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "volume_hush_gesture"

    const/4 v3, -0x2

    invoke-static {v2, v0, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v0, 0x0

    move-object v7, v0

    move v2, v1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-static {v2}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    const v2, 0x104108e

    move-object v7, v0

    move v3, v2

    move v2, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    const v3, 0x104108f

    move-object v7, v0

    :goto_1
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_3

    :goto_2
    move-object v8, p1

    goto :goto_3

    :cond_3
    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/Vibrator;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/android/server/audio/AudioService;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    move-object v8, p1

    invoke-virtual/range {v4 .. v9}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    :goto_3
    invoke-virtual {p0, v2, v8}, Lcom/android/server/audio/AudioService;->setRingerModeInternal(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {p0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final updateRingerModeAffectedStreamsInternal()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->updateRingerAndZenModeAffectedStreams()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
