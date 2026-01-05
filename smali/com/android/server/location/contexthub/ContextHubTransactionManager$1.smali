.class public final Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;
.super Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;

.field public final synthetic val$contextHubId:I

.field public final synthetic val$nanoAppBinary:Ljava/lang/Object;

.field public final synthetic val$onCompleteCallback:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/String;IILandroid/hardware/contexthub/Message;Landroid/hardware/contexthub/IEndpointCommunication;ILcom/android/server/location/contexthub/ContextHubEndpointBroker$1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->$r8$classId:I

    iput-object p5, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$onCompleteCallback:Ljava/lang/Object;

    iput p7, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$contextHubId:I

    iput-object p8, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->this$0:Ljava/lang/Object;

    move-object p5, p2

    const/4 p2, 0x7

    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;-><init>(IIIILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IJLjava/lang/String;ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->this$0:Ljava/lang/Object;

    iput p6, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$contextHubId:I

    iput-object p7, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Ljava/lang/Object;

    iput-object p8, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$onCompleteCallback:Ljava/lang/Object;

    move p1, p2

    const/4 p2, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;-><init>(IIJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onTransact()I
    .locals 4

    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/contexthub/Message;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mMessageSequenceNumber:I

    iput v1, v0, Landroid/hardware/contexthub/Message;->sequenceNumber:I

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$onCompleteCallback:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/contexthub/IEndpointCommunication;

    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$contextHubId:I

    invoke-interface {v1, p0, v0}, Landroid/hardware/contexthub/IEndpointCommunication;->sendMessageToEndpoint(ILandroid/hardware/contexthub/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ContextHubTransactionManager"

    const-string/jumbo v1, "RemoteException while trying to send a session message"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    :goto_0
    return p0

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iget-object v0, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$contextHubId:I

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/location/NanoAppBinary;

    iget v3, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/contexthub/IContextHubWrapper;->loadNanoapp(ILandroid/hardware/location/NanoAppBinary;I)I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RemoteException while trying to load nanoapp with ID 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/location/NanoAppBinary;

    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ContextHubTransactionManager"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onTransactionComplete(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    :try_start_0
    iget-object v0, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$1;

    invoke-virtual {v0, v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$1;->onTransactionComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ContextHubTransactionManager"

    const-string/jumbo v2, "RemoteException while calling client onTransactionComplete"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/location/NanoAppBinary;

    invoke-virtual {v2}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/location/NanoAppBinary;

    invoke-virtual {v4}, Landroid/hardware/location/NanoAppBinary;->getNanoAppVersion()I

    move-result v4

    iget-object v5, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->this$0:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_0

    packed-switch v1, :pswitch_data_1

    move v7, v6

    goto :goto_1

    :pswitch_1
    const/16 v7, 0x8

    goto :goto_1

    :pswitch_2
    const/4 v7, 0x7

    goto :goto_1

    :pswitch_3
    const/4 v7, 0x6

    goto :goto_1

    :pswitch_4
    const/4 v7, 0x5

    goto :goto_1

    :pswitch_5
    const/4 v7, 0x4

    goto :goto_1

    :pswitch_6
    const/4 v7, 0x3

    goto :goto_1

    :pswitch_7
    const/4 v7, 0x2

    goto :goto_1

    :cond_0
    move v7, v5

    :goto_1
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v8

    const/16 v9, 0x191

    invoke-virtual {v8, v9}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v8, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v8, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v8, v6}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v8, v7}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v8}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    invoke-virtual {v8}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v2

    invoke-static {v2}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    invoke-static {}, Lcom/android/server/location/contexthub/ContextHubEventLogger;->getInstance()Lcom/android/server/location/contexthub/ContextHubEventLogger;

    move-result-object v2

    iget v10, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$contextHubId:I

    iget-object v3, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/location/NanoAppBinary;

    invoke-virtual {v3}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v11

    iget-object v3, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/location/NanoAppBinary;

    invoke-virtual {v3}, Landroid/hardware/location/NanoAppBinary;->getNanoAppVersion()I

    move-result v13

    iget-object v3, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/location/NanoAppBinary;

    invoke-virtual {v3}, Landroid/hardware/location/NanoAppBinary;->getBinary()[B

    move-result-object v3

    array-length v3, v3

    int-to-long v14, v3

    if-nez v1, :cond_1

    move/from16 v16, v6

    goto :goto_2

    :cond_1
    move/from16 v16, v5

    :goto_2
    const-string/jumbo v3, "Unable to add nanoapp load event to queue: "

    monitor-enter v2

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v7, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappLoadEvent;

    invoke-direct/range {v7 .. v16}, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappLoadEvent;-><init>(JIJIJZ)V

    iget-object v4, v2, Lcom/android/server/location/contexthub/ContextHubEventLogger;->mNanoappLoadEventQueue:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-virtual {v4, v7}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "ContextHubEventLogger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_2
    :goto_3
    monitor-exit v2

    if-nez v1, :cond_3

    iget-object v2, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iget-object v2, v2, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    iget v3, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$contextHubId:I

    iget-object v4, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/location/NanoAppBinary;

    invoke-virtual {v4}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v4

    iget-object v6, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/location/NanoAppBinary;

    invoke-virtual {v6}, Landroid/hardware/location/NanoAppBinary;->getNanoAppVersion()I

    move-result v6

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/android/server/location/contexthub/NanoAppStateManager;->addNanoAppInstance(IIJ)V

    :cond_3
    :try_start_2
    iget-object v2, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$onCompleteCallback:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/location/IContextHubTransactionCallback;

    invoke-interface {v2, v1}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iget-object v1, v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    iget v2, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$contextHubId:I

    iget-object v0, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/location/NanoAppBinary;

    invoke-virtual {v0}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda1;

    const/4 v5, 0x1

    invoke-direct {v0, v3, v4, v5}, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda1;-><init>(JI)V

    invoke-virtual {v1, v2, v0}, Lcom/android/server/location/contexthub/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    const-string v1, "ContextHubTransactionManager"

    const-string/jumbo v2, "RemoteException while calling client onTransactionComplete"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_4
    return-void

    :goto_5
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
