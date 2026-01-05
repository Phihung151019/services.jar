.class public abstract Lcom/android/server/location/contexthub/ContextHubServiceUtil;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DATE_FORMATTER:Ljava/time/format/DateTimeFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "MM/dd HH:mm:ss.SSS"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->DATE_FORMATTER:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public static createAidlContextHubMessage(SLandroid/hardware/location/NanoAppMessage;)Landroid/hardware/contexthub/ContextHubMessage;
    .locals 3

    new-instance v0, Landroid/hardware/contexthub/ContextHubMessage;

    invoke-direct {v0}, Landroid/hardware/contexthub/ContextHubMessage;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/contexthub/ContextHubMessage;->nanoappId:J

    int-to-char p0, p0

    iput-char p0, v0, Landroid/hardware/contexthub/ContextHubMessage;->hostEndPoint:C

    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageType()I

    move-result p0

    iput p0, v0, Landroid/hardware/contexthub/ContextHubMessage;->messageType:I

    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageBody()[B

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/contexthub/ContextHubMessage;->messageBody:[B

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    iput-object p0, v0, Landroid/hardware/contexthub/ContextHubMessage;->permissions:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->isReliable()Z

    move-result p0

    iput-boolean p0, v0, Landroid/hardware/contexthub/ContextHubMessage;->isReliable:Z

    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageSequenceNumber()I

    move-result p0

    iput p0, v0, Landroid/hardware/contexthub/ContextHubMessage;->messageSequenceNumber:I

    return-object v0
.end method

.method public static createHalEndpointInfo(Landroid/hardware/contexthub/HubEndpointInfo;JJ)Landroid/hardware/contexthub/EndpointInfo;
    .locals 2

    new-instance v0, Landroid/hardware/contexthub/EndpointInfo;

    invoke-direct {v0}, Landroid/hardware/contexthub/EndpointInfo;-><init>()V

    new-instance v1, Landroid/hardware/contexthub/EndpointId;

    invoke-direct {v1}, Landroid/hardware/contexthub/EndpointId;-><init>()V

    iput-object v1, v0, Landroid/hardware/contexthub/EndpointInfo;->id:Landroid/hardware/contexthub/EndpointId;

    iput-wide p1, v1, Landroid/hardware/contexthub/EndpointId;->id:J

    iput-wide p3, v1, Landroid/hardware/contexthub/EndpointId;->hubId:J

    invoke-virtual {p0}, Landroid/hardware/contexthub/HubEndpointInfo;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/hardware/contexthub/EndpointInfo;->name:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/hardware/contexthub/HubEndpointInfo;->getVersion()I

    move-result p1

    iput p1, v0, Landroid/hardware/contexthub/EndpointInfo;->version:I

    invoke-virtual {p0}, Landroid/hardware/contexthub/HubEndpointInfo;->getTag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/hardware/contexthub/EndpointInfo;->tag:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/hardware/contexthub/HubEndpointInfo;->getRequiredPermissions()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, v0, Landroid/hardware/contexthub/EndpointInfo;->requiredPermissions:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/hardware/contexthub/HubEndpointInfo;->getServiceInfoCollection()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p1

    new-array p1, p1, [Landroid/hardware/contexthub/Service;

    iput-object p1, v0, Landroid/hardware/contexthub/EndpointInfo;->services:[Landroid/hardware/contexthub/Service;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/contexthub/HubServiceInfo;

    iget-object p3, v0, Landroid/hardware/contexthub/EndpointInfo;->services:[Landroid/hardware/contexthub/Service;

    new-instance p4, Landroid/hardware/contexthub/Service;

    invoke-direct {p4}, Landroid/hardware/contexthub/Service;-><init>()V

    aput-object p4, p3, p1

    iget-object p3, v0, Landroid/hardware/contexthub/EndpointInfo;->services:[Landroid/hardware/contexthub/Service;

    aget-object p3, p3, p1

    invoke-virtual {p2}, Landroid/hardware/contexthub/HubServiceInfo;->getFormat()I

    move-result p4

    iput p4, p3, Landroid/hardware/contexthub/Service;->format:I

    iget-object p3, v0, Landroid/hardware/contexthub/EndpointInfo;->services:[Landroid/hardware/contexthub/Service;

    aget-object p3, p3, p1

    invoke-virtual {p2}, Landroid/hardware/contexthub/HubServiceInfo;->getServiceDescriptor()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p3, Landroid/hardware/contexthub/Service;->serviceDescriptor:Ljava/lang/String;

    iget-object p3, v0, Landroid/hardware/contexthub/EndpointInfo;->services:[Landroid/hardware/contexthub/Service;

    aget-object p3, p3, p1

    invoke-virtual {p2}, Landroid/hardware/contexthub/HubServiceInfo;->getMajorVersion()I

    move-result p4

    iput p4, p3, Landroid/hardware/contexthub/Service;->majorVersion:I

    iget-object p3, v0, Landroid/hardware/contexthub/EndpointInfo;->services:[Landroid/hardware/contexthub/Service;

    aget-object p3, p3, p1

    invoke-virtual {p2}, Landroid/hardware/contexthub/HubServiceInfo;->getMinorVersion()I

    move-result p2

    iput p2, p3, Landroid/hardware/contexthub/Service;->minorVersion:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static createNanoAppMessage(Landroid/hardware/contexthub/V1_0/ContextHubMsg;)Landroid/hardware/location/NanoAppMessage;
    .locals 6

    iget-object v0, p0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->msg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->appName:J

    iget v0, p0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->msgType:I

    iget-short p0, p0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->hostEndPoint:S

    const/4 v5, -0x1

    if-ne p0, v5, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v3, v4, v0, v1, v2}, Landroid/hardware/location/NanoAppMessage;->createMessageFromNanoApp(JI[BZ)Landroid/hardware/location/NanoAppMessage;

    move-result-object p0

    return-object p0
.end method

.method public static formatDateFromTimestamp(J)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->DATE_FORMATTER:Ljava/time/format/DateTimeFormatter;

    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hasPermissions(Landroid/content/Context;IILjava/util/Collection;)Z
    .locals 2

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo p0, "no permission for "

    const-string p1, "ContextHubServiceUtil"

    invoke-static {p0, v0, p1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static notePermissions(Landroid/app/AppOpsManager;ILjava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 8

    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v2

    const/4 v0, -0x1

    if-eq v2, v0, :cond_0

    const/4 v7, 0x0

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return v7

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string/jumbo p1, "SecurityException: noteOp for pkg "

    const-string p2, " opcode "

    const-string p3, ": "

    invoke-static {v2, p1, v4, p2, p3}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContextHubServiceUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_0
    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    :cond_1
    move-object p0, v1

    move p1, v3

    move-object p2, v4

    move-object p3, v5

    move-object p5, v6

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static toAppHubEndpointReason(B)I
    .locals 3

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v1, "toAppHubEndpointReason: invalid reason: "

    const-string v2, "ContextHubServiceUtil"

    invoke-static {p0, v1, v2}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_0
    const/16 p0, 0x9

    return p0

    :pswitch_1
    const/4 p0, 0x6

    return p0

    :pswitch_2
    const/4 p0, 0x5

    return p0

    :pswitch_3
    const/4 p0, 0x4

    return p0

    :pswitch_4
    const/4 p0, 0x3

    return p0

    :pswitch_5
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toTransactionResult(I)I
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x4

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
