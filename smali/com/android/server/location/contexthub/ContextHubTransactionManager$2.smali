.class public final Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;
.super Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

.field public final synthetic val$contextHubId:I

.field public final synthetic val$nanoAppId:J

.field public final synthetic val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IJLjava/lang/String;IJLandroid/hardware/location/IContextHubTransactionCallback;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iput p6, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$contextHubId:I

    iput-wide p7, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    iput-object p9, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    move p1, p2

    const/4 p2, 0x1

    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;-><init>(IIJLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;ILjava/lang/String;IJLandroid/hardware/location/IContextHubTransactionCallback;I)V
    .locals 0

    iput p8, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->$r8$classId:I

    packed-switch p8, :pswitch_data_0

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iput p4, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$contextHubId:I

    iput-wide p5, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    iput-object p7, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p2, p1, p3}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;-><init>(IILjava/lang/String;)V

    return-void

    :pswitch_0
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iput p4, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$contextHubId:I

    iput-wide p5, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    iput-object p7, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    const/4 p1, 0x3

    invoke-direct {p0, p2, p1, p3}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;-><init>(IILjava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final onTransact()I
    .locals 4

    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-wide v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iget-object v2, v2, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    iget v3, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$contextHubId:I

    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionId:I

    invoke-virtual {v2, v3, p0, v0, v1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->disableNanoapp(IIJ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "RemoteException while trying to disable nanoapp with ID 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextHubTransactionManager"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    :goto_0
    return p0

    :pswitch_0
    iget-wide v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iget-object v2, v2, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    iget v3, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$contextHubId:I

    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionId:I

    invoke-virtual {v2, v3, p0, v0, v1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->enableNanoapp(IIJ)I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "RemoteException while trying to enable nanoapp with ID 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextHubTransactionManager"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    :goto_1
    return p0

    :pswitch_1
    iget-wide v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    :try_start_2
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iget-object v2, v2, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    iget v3, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$contextHubId:I

    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionId:I

    invoke-virtual {v2, v3, p0, v0, v1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->unloadNanoapp(IIJ)I

    move-result p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "RemoteException while trying to unload nanoapp with ID 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextHubTransactionManager"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    :goto_2
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onTransactionComplete(I)V
    .locals 12

    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    invoke-interface {p0, p1}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p1, "ContextHubTransactionManager"

    const-string/jumbo v0, "RemoteException while calling client onTransactionComplete"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :pswitch_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    invoke-interface {p0, p1}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object p0, v0

    const-string p1, "ContextHubTransactionManager"

    const-string/jumbo v0, "RemoteException while calling client onTransactionComplete"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void

    :pswitch_1
    iget-wide v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_1

    move v5, v3

    goto :goto_2

    :pswitch_2
    const/16 v5, 0x8

    goto :goto_2

    :pswitch_3
    const/4 v5, 0x7

    goto :goto_2

    :pswitch_4
    const/4 v5, 0x6

    goto :goto_2

    :pswitch_5
    const/4 v5, 0x5

    goto :goto_2

    :pswitch_6
    const/4 v5, 0x4

    goto :goto_2

    :pswitch_7
    const/4 v5, 0x3

    goto :goto_2

    :pswitch_8
    move v5, v2

    goto :goto_2

    :cond_0
    move v5, v4

    :goto_2
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v6

    const/16 v7, 0x191

    invoke-virtual {v6, v7}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v6, v0, v1}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v6, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v6, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v6, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v6}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    invoke-virtual {v6}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v0

    invoke-static {v0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    invoke-static {}, Lcom/android/server/location/contexthub/ContextHubEventLogger;->getInstance()Lcom/android/server/location/contexthub/ContextHubEventLogger;

    move-result-object v1

    iget v6, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$contextHubId:I

    iget-wide v9, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    if-nez p1, :cond_1

    move v11, v3

    goto :goto_3

    :cond_1
    move v11, v4

    :goto_3
    const-string/jumbo v0, "Unable to add nanoapp unload event to queue: "

    monitor-enter v1

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    new-instance v5, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappUnloadEvent;

    invoke-direct/range {v5 .. v11}, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappEventBase;-><init>(IJJZ)V

    iget-object v2, v1, Lcom/android/server/location/contexthub/ContextHubEventLogger;->mNanoappUnloadEventQueue:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-virtual {v2, v5}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ContextHubEventLogger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_7

    :cond_2
    :goto_4
    monitor-exit v1

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iget-object v1, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$contextHubId:I

    iget-wide v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    monitor-enter v1

    :try_start_3
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/location/contexthub/NanoAppStateManager;->getNanoAppHandle(IJ)I

    move-result v0

    iget-object v2, v1, Lcom/android/server/location/contexthub/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_3
    :goto_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    invoke-interface {v0, p1}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iget-object p1, p1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$contextHubId:I

    iget-wide v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda1;-><init>(JI)V

    invoke-virtual {p1, v0, p0}, Lcom/android/server/location/contexthub/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object p0, v0

    const-string p1, "ContextHubTransactionManager"

    const-string/jumbo v0, "RemoteException while calling client onTransactionComplete"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_6
    return-void

    :goto_7
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
