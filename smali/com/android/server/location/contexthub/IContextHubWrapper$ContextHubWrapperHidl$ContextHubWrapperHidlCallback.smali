.class public final Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;
.super Landroid/hardware/contexthub/V1_2/IContexthubCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCallback:Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/contexthub/V1_2/IContexthubCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;

    return-void
.end method


# virtual methods
.method public final handleAppAbort(JI)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget-object v0, v0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda3;-><init>(JI)V

    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    invoke-virtual {v0, p0, v1}, Lcom/android/server/location/contexthub/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public final handleAppsInfo(Ljava/util/ArrayList;)V
    .locals 8

    sget-object v0, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->DATE_FORMATTER:Ljava/time/format/DateTimeFormatter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/hardware/contexthub/V1_0/HubAppInfo;

    new-instance v4, Landroid/hardware/contexthub/V1_2/HubAppInfo;

    invoke-direct {v4}, Landroid/hardware/contexthub/V1_2/HubAppInfo;-><init>()V

    iget-object v5, v4, Landroid/hardware/contexthub/V1_2/HubAppInfo;->info_1_0:Landroid/hardware/contexthub/V1_0/HubAppInfo;

    iget-wide v6, v3, Landroid/hardware/contexthub/V1_0/HubAppInfo;->appId:J

    iput-wide v6, v5, Landroid/hardware/contexthub/V1_0/HubAppInfo;->appId:J

    iget v6, v3, Landroid/hardware/contexthub/V1_0/HubAppInfo;->version:I

    iput v6, v5, Landroid/hardware/contexthub/V1_0/HubAppInfo;->version:I

    iget-object v6, v3, Landroid/hardware/contexthub/V1_0/HubAppInfo;->memUsage:Ljava/util/ArrayList;

    iput-object v6, v5, Landroid/hardware/contexthub/V1_0/HubAppInfo;->memUsage:Ljava/util/ArrayList;

    iget-boolean v3, v3, Landroid/hardware/contexthub/V1_0/HubAppInfo;->enabled:Z

    iput-boolean v3, v5, Landroid/hardware/contexthub/V1_0/HubAppInfo;->enabled:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v4, Landroid/hardware/contexthub/V1_2/HubAppInfo;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->handleAppsInfo_1_2(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final handleAppsInfo_1_2(Ljava/util/ArrayList;)V
    .locals 10

    sget-object v0, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->DATE_FORMATTER:Ljava/time/format/DateTimeFormatter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/hardware/contexthub/V1_2/HubAppInfo;

    new-instance v4, Landroid/hardware/location/NanoAppState;

    iget-object v5, v3, Landroid/hardware/contexthub/V1_2/HubAppInfo;->info_1_0:Landroid/hardware/contexthub/V1_0/HubAppInfo;

    move-object v7, v5

    iget-wide v5, v7, Landroid/hardware/contexthub/V1_0/HubAppInfo;->appId:J

    move-object v8, v7

    iget v7, v8, Landroid/hardware/contexthub/V1_0/HubAppInfo;->version:I

    iget-boolean v8, v8, Landroid/hardware/contexthub/V1_0/HubAppInfo;->enabled:Z

    iget-object v9, v3, Landroid/hardware/contexthub/V1_2/HubAppInfo;->permissions:Ljava/util/ArrayList;

    invoke-direct/range {v4 .. v9}, Landroid/hardware/location/NanoAppState;-><init>(JIZLjava/util/List;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->handleNanoappInfo(Ljava/util/List;)V

    return-void
.end method

.method public final handleClientMsg(Landroid/hardware/contexthub/V1_0/ContextHubMsg;)V
    .locals 8

    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;

    iget-short v2, p1, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->hostEndPoint:S

    invoke-static {p1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createNanoAppMessage(Landroid/hardware/contexthub/V1_0/ContextHubMsg;)Landroid/hardware/location/NanoAppMessage;

    move-result-object v3

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroid/hardware/location/NanoAppMessage;->isReliable()Z

    move-result p0

    if-nez p0, :cond_0

    iget-object v0, p1, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubClientManager;->onMessageFromNanoApp(ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)B

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubService;->cleanupReliableMessageRecordQueue()V

    return-void

    :cond_0
    iget-object p0, p1, Lcom/android/server/location/contexthub/ContextHubService;->mReliableMessageRecordQueue:Ljava/util/PriorityQueue;

    monitor-enter p0

    :try_start_0
    invoke-virtual {v3}, Landroid/hardware/location/NanoAppMessage;->getMessageSequenceNumber()I

    move-result v0

    iget-object v5, p1, Lcom/android/server/location/contexthub/ContextHubService;->mReliableMessageRecordQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;

    iget v7, v6, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mContextHubId:I

    if-ne v7, v1, :cond_1

    iget v7, v6, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mMessageSequenceNumber:I

    if-ne v7, v0, :cond_1

    invoke-static {v6}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-virtual {v6}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;

    iget-byte v0, v0, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mErrorCode:B

    const/4 v5, 0x1

    if-ne v0, v5, :cond_3

    const-string v0, "ContextHubService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found duplicate reliable message with message sequence number: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;

    iget v7, v7, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mMessageSequenceNumber:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": retrying"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubClientManager;->onMessageFromNanoApp(ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)B

    move-result v0

    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;

    iput-byte v0, v2, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mErrorCode:B

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_3
    const-string v2, "ContextHubService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found duplicate reliable message with message sequence number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;

    iget v5, v5, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mMessageSequenceNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    iget-object v0, p1, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubClientManager;->onMessageFromNanoApp(ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)B

    move-result v0

    iget-object v2, p1, Lcom/android/server/location/contexthub/ContextHubService;->mReliableMessageRecordQueue:Ljava/util/PriorityQueue;

    new-instance v4, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    invoke-virtual {v3}, Landroid/hardware/location/NanoAppMessage;->getMessageSequenceNumber()I

    move-result v7

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput v1, v4, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mContextHubId:I

    iput-wide v5, v4, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mTimestamp:J

    iput v7, v4, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mMessageSequenceNumber:I

    iput-byte v0, v4, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mErrorCode:B

    invoke-virtual {v2, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Landroid/hardware/location/NanoAppMessage;->getMessageSequenceNumber()I

    move-result p0

    new-instance v2, Landroid/hardware/contexthub/MessageDeliveryStatus;

    invoke-direct {v2}, Landroid/hardware/contexthub/MessageDeliveryStatus;-><init>()V

    iput p0, v2, Landroid/hardware/contexthub/MessageDeliveryStatus;->messageSequenceNumber:I

    iput-byte v0, v2, Landroid/hardware/contexthub/MessageDeliveryStatus;->errorCode:B

    iget-object v3, p1, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/location/contexthub/IContextHubWrapper;->sendMessageDeliveryStatusToContextHub(ILandroid/hardware/contexthub/MessageDeliveryStatus;)I

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to send the reliable message status for message sequence number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " with error code: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ContextHubService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubService;->cleanupReliableMessageRecordQueue()V

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final handleClientMsg_1_2(Landroid/hardware/contexthub/V1_2/ContextHubMsg;Ljava/util/ArrayList;)V
    .locals 8

    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;

    iget-object v0, p1, Landroid/hardware/contexthub/V1_2/ContextHubMsg;->msg_1_0:Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    iget-short v3, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->hostEndPoint:S

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createNanoAppMessage(Landroid/hardware/contexthub/V1_0/ContextHubMsg;)Landroid/hardware/location/NanoAppMessage;

    move-result-object v4

    iget-object v5, p1, Landroid/hardware/contexthub/V1_2/ContextHubMsg;->permissions:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget v2, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/hardware/location/NanoAppMessage;->isReliable()Z

    move-result p0

    if-nez p0, :cond_0

    iget-object v1, p1, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/contexthub/ContextHubClientManager;->onMessageFromNanoApp(ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)B

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubService;->cleanupReliableMessageRecordQueue()V

    return-void

    :cond_0
    move-object v6, p2

    iget-object p0, p1, Lcom/android/server/location/contexthub/ContextHubService;->mReliableMessageRecordQueue:Ljava/util/PriorityQueue;

    monitor-enter p0

    :try_start_0
    invoke-virtual {v4}, Landroid/hardware/location/NanoAppMessage;->getMessageSequenceNumber()I

    move-result p2

    iget-object v0, p1, Lcom/android/server/location/contexthub/ContextHubService;->mReliableMessageRecordQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;

    iget v7, v1, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mContextHubId:I

    if-ne v7, v2, :cond_1

    iget v7, v1, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mMessageSequenceNumber:I

    if-ne v7, p2, :cond_1

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p2

    :goto_0
    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;

    iget-byte v0, v0, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mErrorCode:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const-string v0, "ContextHubService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found duplicate reliable message with message sequence number: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;

    iget v7, v7, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mMessageSequenceNumber:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": retrying"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/contexthub/ContextHubClientManager;->onMessageFromNanoApp(ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)B

    move-result v0

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;

    iput-byte v0, p2, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mErrorCode:B

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_3
    const-string v1, "ContextHubService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found duplicate reliable message with message sequence number: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;

    iget p2, p2, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mMessageSequenceNumber:I

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v1, p1, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/contexthub/ContextHubClientManager;->onMessageFromNanoApp(ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)B

    move-result v0

    iget-object p2, p1, Lcom/android/server/location/contexthub/ContextHubService;->mReliableMessageRecordQueue:Ljava/util/PriorityQueue;

    new-instance v1, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/hardware/location/NanoAppMessage;->getMessageSequenceNumber()I

    move-result v3

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput v2, v1, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mContextHubId:I

    iput-wide v5, v1, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mTimestamp:J

    iput v3, v1, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mMessageSequenceNumber:I

    iput-byte v0, v1, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mErrorCode:B

    invoke-virtual {p2, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Landroid/hardware/location/NanoAppMessage;->getMessageSequenceNumber()I

    move-result p0

    new-instance p2, Landroid/hardware/contexthub/MessageDeliveryStatus;

    invoke-direct {p2}, Landroid/hardware/contexthub/MessageDeliveryStatus;-><init>()V

    iput p0, p2, Landroid/hardware/contexthub/MessageDeliveryStatus;->messageSequenceNumber:I

    iput-byte v0, p2, Landroid/hardware/contexthub/MessageDeliveryStatus;->errorCode:B

    iget-object v1, p1, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v1, v2, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper;->sendMessageDeliveryStatusToContextHub(ILandroid/hardware/contexthub/MessageDeliveryStatus;)I

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Failed to send the reliable message status for message sequence number: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " with error code: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ContextHubService"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubService;->cleanupReliableMessageRecordQueue()V

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final handleHubEvent(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;

    sget-object v0, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->DATE_FORMATTER:Ljava/time/format/DateTimeFormatter;

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string/jumbo v0, "toContextHubEvent: Unknown event type: "

    const-string v1, "ContextHubServiceUtil"

    invoke-static {p1, v0, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->handleContextHubEvent(I)V

    return-void
.end method

.method public final handleTxnResult(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->handleTransactionResult(IZ)V

    return-void
.end method
