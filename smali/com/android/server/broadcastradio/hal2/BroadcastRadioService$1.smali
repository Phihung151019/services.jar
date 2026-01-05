.class public final Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;
.super Landroid/hidl/manager/V1_0/IServiceNotification$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-direct {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const-string/jumbo v0, "loaded broadcast radio module "

    const-string v1, "BcRadio2Srv"

    const-string/jumbo v2, "onRegistration("

    const-string v3, ", "

    const-string v4, ", "

    invoke-static {v2, p1, v3, p2, v4}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    iget-object p1, p1, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p3, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    iget-object p3, p3, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mServiceNameToModuleIdMap:Ljava/util/Map;

    check-cast p3, Landroid/util/ArrayMap;

    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    iget p3, p3, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mNextModuleId:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    move v2, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    iget-object v4, v4, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-static {v3, p2, v4}, Lcom/android/server/broadcastradio/hal2/RadioModule;->tryLoadingModule(ILjava/lang/String;Lcom/android/server/broadcastradio/RadioServiceUserController;)Lcom/android/server/broadcastradio/hal2/RadioModule;

    move-result-object v3

    if-nez v3, :cond_1

    monitor-exit p1

    return-void

    :cond_1
    const-string v4, "BcRadio2Srv"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (HAL 2.0)"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    iget-object v0, v0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p3, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/broadcastradio/hal2/RadioModule;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->closeSessions()V

    :cond_2
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    iget-object v0, v0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mServiceNameToModuleIdMap:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    iget v0, p2, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mNextModuleId:I

    add-int/2addr v0, v1

    iput v0, p2, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mNextModuleId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :try_start_1
    iget-object p2, v3, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    iget-object v0, v0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mDeathRecipient:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$2;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    check-cast p2, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Proxy;

    invoke-virtual {p2, v0, v1, v2}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Proxy;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
