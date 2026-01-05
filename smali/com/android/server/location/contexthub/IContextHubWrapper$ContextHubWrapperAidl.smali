.class public final Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;
.super Lcom/android/server/location/contexthub/IContextHubWrapper;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mAidlCallbackMap:Ljava/util/Map;

.field public mHandleServiceRestartCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$$ExternalSyntheticLambda0;

.field public final mHandler:Landroid/os/Handler;

.field public mHub:Landroid/hardware/contexthub/IContextHub;

.field public final mIsTestModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/hardware/contexthub/IContextHub;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mAidlCallbackMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandleServiceRestartCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$$ExternalSyntheticLambda0;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Context Hub AIDL callback"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mIsTestModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-direct {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHub:Landroid/hardware/contexthub/IContextHub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-interface {p1}, Landroid/hardware/contexthub/IContextHub;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    const-string p0, "IContextHubWrapper"

    const-string p1, "Context Hub AIDL service death receipt could not be linked"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    const-string v0, "Context Hub AIDL HAL died"

    const-string v1, "IContextHubWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/location/contexthub/IContextHubWrapper;->maybeConnectToAidlGetProxy()Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHub:Landroid/hardware/contexthub/IContextHub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "Could not reconnect to Context Hub AIDL HAL"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/hardware/contexthub/IContextHub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "IContextHubWrapper"

    const-string v3, "Context Hub AIDL service death receipt could not be linked"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandleServiceRestartCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$$ExternalSyntheticLambda0;->run()V

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "mHandleServiceRestartCallback is not set"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mIsTestModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final disableNanoapp(IIJ)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object p0

    const/4 v0, 0x2

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p3, p4, p2}, Landroid/hardware/contexthub/IContextHub;->disableNanoapp(IJI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    return v0

    :catch_1
    const/4 p0, 0x1

    return p0
.end method

.method public final enableNanoapp(IIJ)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object p0

    const/4 v0, 0x2

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p3, p4, p2}, Landroid/hardware/contexthub/IContextHub;->enableNanoapp(IJI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    return v0

    :catch_1
    const/4 p0, 0x1

    return p0
.end method

.method public final getContextHubs()Landroid/util/Pair;
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Landroid/util/Pair;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Landroid/hardware/contexthub/IContextHub;->getContextHubs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contexthub/ContextHubInfo;

    new-instance v3, Landroid/hardware/location/ContextHubInfo;

    invoke-direct {v3, v2}, Landroid/hardware/location/ContextHubInfo;-><init>(Landroid/hardware/contexthub/ContextHubInfo;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v2, Landroid/hardware/contexthub/ContextHubInfo;->supportedPermissions:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/util/Pair;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getEndpoints()Ljava/util/List;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Landroid/hardware/contexthub/IContextHub;->getEndpoints()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contexthub/EndpointInfo;

    new-instance v2, Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-direct {v2, v1}, Landroid/hardware/contexthub/HubEndpointInfo;-><init>(Landroid/hardware/contexthub/EndpointInfo;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final declared-synchronized getHub()Landroid/hardware/contexthub/IContextHub;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHub:Landroid/hardware/contexthub/IContextHub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getHubs()Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Landroid/hardware/contexthub/IContextHub;->getHubs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contexthub/HubInfo;

    iget-object v2, v1, Landroid/hardware/contexthub/HubInfo;->hubDetails:Landroid/hardware/contexthub/HubInfo$HubDetails;

    invoke-virtual {v2}, Landroid/hardware/contexthub/HubInfo$HubDetails;->getTag()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getHubs: invalid hub: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IContextHubWrapper"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/hardware/location/VendorHubInfo;

    iget-object v3, v1, Landroid/hardware/contexthub/HubInfo;->hubDetails:Landroid/hardware/contexthub/HubInfo$HubDetails;

    invoke-virtual {v3}, Landroid/hardware/contexthub/HubInfo$HubDetails;->getVendorHubInfo()Landroid/hardware/contexthub/VendorHubInfo;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/hardware/location/VendorHubInfo;-><init>(Landroid/hardware/contexthub/VendorHubInfo;)V

    new-instance v3, Landroid/hardware/location/HubInfo;

    iget-wide v4, v1, Landroid/hardware/contexthub/HubInfo;->hubId:J

    invoke-direct {v3, v4, v5, v2}, Landroid/hardware/location/HubInfo;-><init>(JLandroid/hardware/location/VendorHubInfo;)V

    goto :goto_1

    :cond_2
    new-instance v2, Landroid/hardware/location/ContextHubInfo;

    iget-object v3, v1, Landroid/hardware/contexthub/HubInfo;->hubDetails:Landroid/hardware/contexthub/HubInfo$HubDetails;

    invoke-virtual {v3}, Landroid/hardware/contexthub/HubInfo$HubDetails;->getContextHubInfo()Landroid/hardware/contexthub/ContextHubInfo;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/hardware/location/ContextHubInfo;-><init>(Landroid/hardware/contexthub/ContextHubInfo;)V

    new-instance v3, Landroid/hardware/location/HubInfo;

    iget-wide v4, v1, Landroid/hardware/contexthub/HubInfo;->hubId:J

    invoke-direct {v3, v4, v5, v2}, Landroid/hardware/location/HubInfo;-><init>(JLandroid/hardware/location/ContextHubInfo;)V

    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final getPreloadedNanoappIds(I)[J
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/hardware/contexthub/IContextHub;->getPreloadedNanoappIds(I)[J

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Exception while getting preloaded nanoapp IDs: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "IContextHubWrapper"

    invoke-static {p0, p1, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v0
.end method

.method public final loadNanoapp(ILandroid/hardware/location/NanoAppBinary;I)I
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->DATE_FORMATTER:Ljava/time/format/DateTimeFormatter;

    const-string v0, "ContextHubServiceUtil"

    new-instance v1, Landroid/hardware/contexthub/NanoappBinary;

    invoke-direct {v1}, Landroid/hardware/contexthub/NanoappBinary;-><init>()V

    invoke-virtual {p2}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/hardware/contexthub/NanoappBinary;->nanoappId:J

    invoke-virtual {p2}, Landroid/hardware/location/NanoAppBinary;->getNanoAppVersion()I

    move-result v2

    iput v2, v1, Landroid/hardware/contexthub/NanoappBinary;->nanoappVersion:I

    invoke-virtual {p2}, Landroid/hardware/location/NanoAppBinary;->getFlags()I

    move-result v2

    iput v2, v1, Landroid/hardware/contexthub/NanoappBinary;->flags:I

    invoke-virtual {p2}, Landroid/hardware/location/NanoAppBinary;->getTargetChreApiMajorVersion()B

    move-result v2

    iput-byte v2, v1, Landroid/hardware/contexthub/NanoappBinary;->targetChreApiMajorVersion:B

    invoke-virtual {p2}, Landroid/hardware/location/NanoAppBinary;->getTargetChreApiMinorVersion()B

    move-result v2

    iput-byte v2, v1, Landroid/hardware/contexthub/NanoappBinary;->targetChreApiMinorVersion:B

    const/4 v2, 0x0

    new-array v3, v2, [B

    iput-object v3, v1, Landroid/hardware/contexthub/NanoappBinary;->customBinary:[B

    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppBinary;->getBinaryNoHeader()[B

    move-result-object p2

    iput-object p2, v1, Landroid/hardware/contexthub/NanoappBinary;->customBinary:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    const-string/jumbo p2, "NanoApp binary was null"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :goto_0
    invoke-virtual {p2}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    :try_start_1
    invoke-interface {p0, p1, v1, p3}, Landroid/hardware/contexthub/IContextHub;->loadNanoapp(ILandroid/hardware/contexthub/NanoappBinary;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    return v2

    :catch_2
    :goto_2
    const/4 p0, 0x2

    return p0

    :catch_3
    const/4 p0, 0x1

    return p0
.end method

.method public final onAirplaneModeSettingChanged(Z)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(ZB)V

    return-void
.end method

.method public final onBtMainSettingChanged(Z)V
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(ZB)V

    return-void
.end method

.method public final onBtScanningSettingChanged(Z)V
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(ZB)V

    return-void
.end method

.method public final onHostEndpointConnected(Landroid/hardware/contexthub/HostEndpointInfo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/hardware/contexthub/IContextHub;->onHostEndpointConnected(Landroid/hardware/contexthub/HostEndpointInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Exception in onHostEndpointConnected"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "IContextHubWrapper"

    invoke-static {p0, p1, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final onHostEndpointDisconnected(S)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    int-to-char p1, p1

    :try_start_0
    invoke-interface {p0, p1}, Landroid/hardware/contexthub/IContextHub;->onHostEndpointDisconnected(C)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Exception in onHostEndpointDisconnected"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "IContextHubWrapper"

    invoke-static {p0, p1, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final onLocationSettingChanged(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(ZB)V

    return-void
.end method

.method public final onMicrophoneSettingChanged(Z)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(ZB)V

    return-void
.end method

.method public final onSettingChanged(ZB)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0, p2, p1}, Landroid/hardware/contexthub/IContextHub;->onSettingChanged(BZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Exception while sending setting update: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "IContextHubWrapper"

    invoke-static {p0, p1, p2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final onWifiMainSettingChanged(Z)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(ZB)V

    return-void
.end method

.method public final onWifiScanningSettingChanged(Z)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(ZB)V

    return-void
.end method

.method public final onWifiSettingChanged(Z)V
    .locals 0

    return-void
.end method

.method public final queryNanoapps(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object p0

    const/4 v0, 0x2

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/hardware/contexthub/IContextHub;->queryNanoapps(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    return v0

    :catch_1
    const/4 p0, 0x1

    return p0
.end method

.method public final registerCallback(ILcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandleServiceRestartCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$$ExternalSyntheticLambda0;

    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mAidlCallbackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;

    invoke-direct {v2, p0, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;-><init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;)V

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->registerExistingCallback(I)V

    return-void
.end method

.method public final registerEndpointHub(Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;Landroid/hardware/contexthub/HubInfo;)Landroid/hardware/contexthub/IEndpointCommunication;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/hardware/contexthub/IContextHub;->registerEndpointHub(Landroid/hardware/contexthub/IEndpointCallback;Landroid/hardware/contexthub/HubInfo;)Landroid/hardware/contexthub/IEndpointCommunication;

    move-result-object p0

    return-object p0
.end method

.method public final registerExistingCallback(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mAidlCallbackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;

    const-string v1, "IContextHubWrapper"

    if-nez p0, :cond_1

    const-string p0, "Could not find existing callback to register for context hub ID = "

    invoke-static {p1, p0, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p0}, Landroid/hardware/contexthub/IContextHub;->registerCallback(ILandroid/hardware/contexthub/IContextHubCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Exception while registering callback: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final sendMessageDeliveryStatusToContextHub(ILandroid/hardware/contexthub/MessageDeliveryStatus;)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/hardware/contexthub/IContextHub;->sendMessageDeliveryStatusToHub(ILandroid/hardware/contexthub/MessageDeliveryStatus;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    :goto_0
    const/4 p0, 0x2

    return p0

    :catch_1
    const/4 p0, 0x1

    return p0
.end method

.method public final sendMessageToContextHub(SILandroid/hardware/location/NanoAppMessage;)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object p0

    const/4 v0, 0x2

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1, p3}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createAidlContextHubMessage(SLandroid/hardware/location/NanoAppMessage;)Landroid/hardware/contexthub/ContextHubMessage;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Landroid/hardware/contexthub/IContextHub;->sendMessageToHub(ILandroid/hardware/contexthub/ContextHubMessage;)V

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :catch_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return p0

    :catch_2
    return v1
.end method

.method public final setTestMode(Z)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mIsTestModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/contexthub/IContextHub;->setTestMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception while setting test mode (enable: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string/jumbo p1, "true"

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "false"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IContextHubWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final supportsAirplaneModeSettingNotifications()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final supportsBtSettingNotifications()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final supportsLocationSettingNotifications()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final supportsMicrophoneSettingNotifications()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final supportsWifiSettingNotifications()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final unloadNanoapp(IIJ)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object p0

    const/4 v0, 0x2

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p3, p4, p2}, Landroid/hardware/contexthub/IContextHub;->unloadNanoapp(IJI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    return v0

    :catch_1
    const/4 p0, 0x1

    return p0
.end method
