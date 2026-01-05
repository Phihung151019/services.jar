.class public final synthetic Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;

.field public final synthetic f$1:Landroid/hardware/contexthub/ContextHubMessage;

.field public final synthetic f$2:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;Landroid/hardware/contexthub/ContextHubMessage;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;

    iput-object p2, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda3;->f$1:Landroid/hardware/contexthub/ContextHubMessage;

    iput-object p3, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda3;->f$2:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;

    iget-object v1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda3;->f$1:Landroid/hardware/contexthub/ContextHubMessage;

    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda3;->f$2:[Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->mCallback:Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;

    iget-char v2, v1, Landroid/hardware/contexthub/ContextHubMessage;->hostEndPoint:C

    int-to-short v5, v2

    sget-object v3, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->DATE_FORMATTER:Ljava/time/format/DateTimeFormatter;

    iget-wide v6, v1, Landroid/hardware/contexthub/ContextHubMessage;->nanoappId:J

    iget v8, v1, Landroid/hardware/contexthub/ContextHubMessage;->messageType:I

    iget-object v9, v1, Landroid/hardware/contexthub/ContextHubMessage;->messageBody:[B

    const v3, 0xffff

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    move v10, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move v10, v2

    :goto_0
    iget-boolean v11, v1, Landroid/hardware/contexthub/ContextHubMessage;->isReliable:Z

    iget v12, v1, Landroid/hardware/contexthub/ContextHubMessage;->messageSequenceNumber:I

    invoke-static/range {v6 .. v12}, Landroid/hardware/location/NanoAppMessage;->createMessageFromNanoApp(JI[BZZI)Landroid/hardware/location/NanoAppMessage;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    iget-object v1, v1, Landroid/hardware/contexthub/ContextHubMessage;->permissions:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v8, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, v0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget v0, v0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Landroid/hardware/location/NanoAppMessage;->isReliable()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    move v4, v0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/location/contexthub/ContextHubClientManager;->onMessageFromNanoApp(ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)B

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->cleanupReliableMessageRecordQueue()V

    return-void

    :cond_1
    move v13, v4

    move v4, v0

    move v0, v13

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mReliableMessageRecordQueue:Ljava/util/PriorityQueue;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v6}, Landroid/hardware/location/NanoAppMessage;->getMessageSequenceNumber()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mReliableMessageRecordQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;

    iget v10, v9, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mContextHubId:I

    if-ne v10, v4, :cond_2

    iget v10, v9, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mMessageSequenceNumber:I

    if-ne v10, v2, :cond_2

    invoke-static {v9}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;

    iget-byte v3, v3, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mErrorCode:B

    if-ne v3, v0, :cond_4

    const-string v0, "ContextHubService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found duplicate reliable message with message sequence number: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;

    iget v9, v9, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mMessageSequenceNumber:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": retrying"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/location/contexthub/ContextHubClientManager;->onMessageFromNanoApp(ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)B

    move-result v3

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;

    iput-byte v3, v0, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mErrorCode:B

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_4
    const-string v0, "ContextHubService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found duplicate reliable message with message sequence number: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;

    iget v2, v2, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mMessageSequenceNumber:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/location/contexthub/ContextHubClientManager;->onMessageFromNanoApp(ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)B

    move-result v3

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mReliableMessageRecordQueue:Ljava/util/PriorityQueue;

    new-instance v2, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    invoke-virtual {v6}, Landroid/hardware/location/NanoAppMessage;->getMessageSequenceNumber()I

    move-result v5

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput v4, v2, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mContextHubId:I

    iput-wide v7, v2, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mTimestamp:J

    iput v5, v2, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mMessageSequenceNumber:I

    iput-byte v3, v2, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mErrorCode:B

    invoke-virtual {v0, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Landroid/hardware/location/NanoAppMessage;->getMessageSequenceNumber()I

    move-result v0

    new-instance v1, Landroid/hardware/contexthub/MessageDeliveryStatus;

    invoke-direct {v1}, Landroid/hardware/contexthub/MessageDeliveryStatus;-><init>()V

    iput v0, v1, Landroid/hardware/contexthub/MessageDeliveryStatus;->messageSequenceNumber:I

    iput-byte v3, v1, Landroid/hardware/contexthub/MessageDeliveryStatus;->errorCode:B

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v2, v4, v1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->sendMessageDeliveryStatusToContextHub(ILandroid/hardware/contexthub/MessageDeliveryStatus;)I

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to send the reliable message status for message sequence number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " with error code: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextHubService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->cleanupReliableMessageRecordQueue()V

    return-void

    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
