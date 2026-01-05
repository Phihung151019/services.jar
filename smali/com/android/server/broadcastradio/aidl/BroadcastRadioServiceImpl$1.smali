.class public final Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;
.super Landroid/os/IServiceCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    invoke-direct {p0}, Landroid/os/IServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRegistration(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 7

    const-string v0, "BcRadioAidlSrv"

    const-string/jumbo v1, "onRegistration for %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    iget-object v0, v0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    iget-object v1, v1, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mServiceNameToModuleIdMap:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    iget v1, v1, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mNextModuleId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move v3, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    iget-object v5, v5, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;

    invoke-static {v4, p1, p2, v5}, Lcom/android/server/broadcastradio/aidl/RadioModule;->tryLoadingModule(ILjava/lang/String;Landroid/os/IBinder;Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;)Lcom/android/server/broadcastradio/aidl/RadioModule;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p0, "BcRadioAidlSrv"

    const-string/jumbo p2, "No module %s with id %d (HAL AIDL)"

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_1
    sget-boolean v4, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "BcRadioAidlSrv"

    const-string/jumbo v5, "Loaded broadcast radio module %s with id %d (HAL AIDL)"

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v4, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    iget-object v4, v4, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/broadcastradio/aidl/RadioModule;

    iget-object v5, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    iget-object v5, v5, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/server/broadcastradio/aidl/RadioModule;->closeSessions()V

    :cond_3
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    iget-object v3, v3, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mServiceNameToModuleIdMap:Ljava/util/Map;

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    iget v3, p1, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mNextModuleId:I

    add-int/2addr v3, v2

    iput v3, p1, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mNextModuleId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :try_start_1
    new-instance p1, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$BroadcastRadioDeathRecipient;

    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p1, v2, v3}, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$BroadcastRadioDeathRecipient;-><init>(Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;I)V

    iget-object p2, p2, Lcom/android/server/broadcastradio/aidl/RadioModule;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    check-cast p2, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    iget-object p2, p2, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p2, p1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string p1, "BcRadioAidlSrv"

    const-string/jumbo p2, "Service has already died, so remove its entry from mModules."

    invoke-static {p1, p2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
