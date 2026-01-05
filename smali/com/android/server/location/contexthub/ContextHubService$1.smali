.class public final Lcom/android/server/location/contexthub/ContextHubService$1;
.super Landroid/hardware/location/IContextHubClientCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubService;

.field public final synthetic val$contextHubId:I


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubService;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->val$contextHubId:I

    invoke-direct {p0}, Landroid/hardware/location/IContextHubClientCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final finishCallback()V
    .locals 4

    const-string v0, "ContextHubService"

    const-string v1, "Default client not found for hub (ID = "

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget-object v2, v2, Lcom/android/server/location/contexthub/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->val$contextHubId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget-object v1, v1, Lcom/android/server/location/contexthub/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    iget v2, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->val$contextHubId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/location/IContextHubClient;

    invoke-interface {v1}, Landroid/hardware/location/IContextHubClient;->callbackFinished()V

    return-void

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->val$contextHubId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget-object v1, v1, Lcom/android/server/location/contexthub/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "map was null"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "map did not contain the hub"

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "RemoteException while finishing callback for hub (ID = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->val$contextHubId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final onClientAuthorizationChanged(JI)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService$1;->finishCallback()V

    return-void
.end method

.method public final onHubReset()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget v2, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->val$contextHubId:I

    const/4 v3, 0x7

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v2, v4, v0}, Lcom/android/server/location/contexthub/ContextHubService;->onMessageReceiptOldApi(III[B)I

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService$1;->finishCallback()V

    return-void
.end method

.method public final onMessageFromNanoApp(Landroid/hardware/location/NanoAppMessage;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget-object v0, v0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->val$contextHubId:I

    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/contexthub/NanoAppStateManager;->getNanoAppHandle(IJ)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageType()I

    move-result v2

    iget v3, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->val$contextHubId:I

    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageBody()[B

    move-result-object p1

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->onMessageReceiptOldApi(III[B)I

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService$1;->finishCallback()V

    return-void
.end method

.method public final onNanoAppAborted(JI)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService$1;->finishCallback()V

    return-void
.end method

.method public final onNanoAppDisabled(J)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService$1;->finishCallback()V

    return-void
.end method

.method public final onNanoAppEnabled(J)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService$1;->finishCallback()V

    return-void
.end method

.method public final onNanoAppLoaded(J)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService$1;->finishCallback()V

    return-void
.end method

.method public final onNanoAppUnloaded(J)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService$1;->finishCallback()V

    return-void
.end method
