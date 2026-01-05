.class public abstract Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;
.super Lcom/android/server/location/contexthub/IContextHubWrapper;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mHidlCallbackMap:Ljava/util/Map;

.field public final mHub:Landroid/hardware/contexthub/V1_0/IContexthub;


# direct methods
.method public constructor <init>(Landroid/hardware/contexthub/V1_0/IContexthub;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHidlCallbackMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    return-void
.end method


# virtual methods
.method public final disableNanoapp(IIJ)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    invoke-interface {p0, p1, p3, p4, p2}, Landroid/hardware/contexthub/V1_0/IContexthub;->disableNanoApp(IJI)I

    move-result p0

    invoke-static {p0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toTransactionResult(I)I

    move-result p0

    return p0
.end method

.method public final enableNanoapp(IIJ)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    invoke-interface {p0, p1, p3, p4, p2}, Landroid/hardware/contexthub/V1_0/IContexthub;->enableNanoApp(IJI)I

    move-result p0

    invoke-static {p0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toTransactionResult(I)I

    move-result p0

    return p0
.end method

.method public final getPreloadedNanoappIds(I)[J
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [J

    return-object p0
.end method

.method public final loadNanoapp(ILandroid/hardware/location/NanoAppBinary;I)I
    .locals 6

    sget-object v0, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->DATE_FORMATTER:Ljava/time/format/DateTimeFormatter;

    const-string v0, "ContextHubServiceUtil"

    new-instance v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;

    invoke-direct {v1}, Landroid/hardware/contexthub/V1_0/NanoAppBinary;-><init>()V

    invoke-virtual {p2}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->appId:J

    invoke-virtual {p2}, Landroid/hardware/location/NanoAppBinary;->getNanoAppVersion()I

    move-result v2

    iput v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->appVersion:I

    invoke-virtual {p2}, Landroid/hardware/location/NanoAppBinary;->getFlags()I

    move-result v2

    iput v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->flags:I

    invoke-virtual {p2}, Landroid/hardware/location/NanoAppBinary;->getTargetChreApiMajorVersion()B

    move-result v2

    iput-byte v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->targetChreApiMajorVersion:B

    invoke-virtual {p2}, Landroid/hardware/location/NanoAppBinary;->getTargetChreApiMinorVersion()B

    move-result v2

    iput-byte v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->targetChreApiMinorVersion:B

    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppBinary;->getBinaryNoHeader()[B

    move-result-object p2

    iget-object v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->customBinary:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    array-length v3, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, p2, v4

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    const-string/jumbo p2, "NanoApp binary was null"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_1
    invoke-virtual {p2}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    invoke-interface {p0, p1, v1, p3}, Landroid/hardware/contexthub/V1_0/IContexthub;->loadNanoApp(ILandroid/hardware/contexthub/V1_0/NanoAppBinary;I)I

    move-result p0

    invoke-static {p0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toTransactionResult(I)I

    move-result p0

    return p0
.end method

.method public final onBtMainSettingChanged(Z)V
    .locals 0

    return-void
.end method

.method public final onBtScanningSettingChanged(Z)V
    .locals 0

    return-void
.end method

.method public final onWifiMainSettingChanged(Z)V
    .locals 0

    return-void
.end method

.method public final onWifiScanningSettingChanged(Z)V
    .locals 0

    return-void
.end method

.method public final queryNanoapps(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    invoke-interface {p0, p1}, Landroid/hardware/contexthub/V1_0/IContexthub;->queryApps(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toTransactionResult(I)I

    move-result p0

    return p0
.end method

.method public registerCallback(ILcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHidlCallbackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;

    invoke-direct {v2, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;-><init>(Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;)V

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHidlCallbackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/contexthub/V1_0/IContexthubCallback;

    invoke-interface {p2, p1, p0}, Landroid/hardware/contexthub/V1_0/IContexthub;->registerCallback(ILandroid/hardware/contexthub/V1_0/IContexthubCallback;)I

    return-void
.end method

.method public final registerExistingCallback(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHidlCallbackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;

    if-nez v0, :cond_0

    const-string p0, "Could not find existing callback for context hub with ID = "

    const-string v0, "IContextHubWrapper"

    invoke-static {p1, p0, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    invoke-interface {p0, p1, v0}, Landroid/hardware/contexthub/V1_0/IContexthub;->registerCallback(ILandroid/hardware/contexthub/V1_0/IContexthubCallback;)I

    return-void
.end method

.method public final sendMessageDeliveryStatusToContextHub(ILandroid/hardware/contexthub/MessageDeliveryStatus;)I
    .locals 0

    const/16 p0, 0x9

    return p0
.end method

.method public final sendMessageToContextHub(SILandroid/hardware/location/NanoAppMessage;)I
    .locals 4

    invoke-virtual {p3}, Landroid/hardware/location/NanoAppMessage;->isReliable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "IContextHubWrapper"

    const-string/jumbo p1, "Reliable messages are only supported with the AIDL HAL"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    :cond_0
    sget-object v0, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->DATE_FORMATTER:Ljava/time/format/DateTimeFormatter;

    new-instance v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    invoke-direct {v0}, Landroid/hardware/contexthub/V1_0/ContextHubMsg;-><init>()V

    invoke-virtual {p3}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->appName:J

    iput-short p1, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->hostEndPoint:S

    invoke-virtual {p3}, Landroid/hardware/location/NanoAppMessage;->getMessageType()I

    move-result p1

    iput p1, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->msgType:I

    invoke-virtual {p3}, Landroid/hardware/location/NanoAppMessage;->getMessageBody()[B

    move-result-object p1

    iget-object p3, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->msg:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    array-length v1, p1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p1, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    invoke-interface {p0, p2, v0}, Landroid/hardware/contexthub/V1_0/IContexthub;->sendMessageToHub(ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)I

    move-result p0

    invoke-static {p0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toTransactionResult(I)I

    move-result p0

    return p0
.end method

.method public final setTestMode(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final supportsBtSettingNotifications()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final unloadNanoapp(IIJ)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    invoke-interface {p0, p1, p3, p4, p2}, Landroid/hardware/contexthub/V1_0/IContexthub;->unloadNanoApp(IJI)I

    move-result p0

    invoke-static {p0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toTransactionResult(I)I

    move-result p0

    return p0
.end method
