.class public Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final TAG:Ljava/lang/String; = "EndpointMonitorNative"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeAttachSocketListenerProbe()I
.end method

.method private native nativeReadAbnormalPktData()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeReadExecveData()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeReadFsData()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/knox/zt/devicetrust/data/FsData;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeReadInsecurePortsData()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeReadLocalNwPktData()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeReadPktData()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/knox/zt/devicetrust/data/PktData;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeReadPrivEscalData()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeReadProcData()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeReadScData()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/knox/zt/devicetrust/data/ScData;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeReadSkData()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/knox/zt/devicetrust/data/SkData;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeReadSockData()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/knox/zt/devicetrust/data/SockEventData;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeReadSocketListenerEventData()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeReadbypassVpnPktData()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeSetBpfHelper(Lcom/android/server/knox/zt/devicetrust/OemNetdAdapter;)I
.end method

.method private native nativeSetOffsets()I
.end method

.method private native nativeSetTargetFiles(Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method private native nativeSetTracer(I)I
.end method

.method private native nativeStartAbnormalPktLogging()I
.end method

.method private native nativeStartDpTracing()I
.end method

.method private native nativeStartInsecurePortsLogging()I
.end method

.method private native nativeStartLocalNwPktLogging()I
.end method

.method private native nativeStartTracing(I)I
.end method

.method private native nativeStartTracingSockListener()I
.end method

.method private native nativeStartbypassVpnPktLogging()I
.end method

.method private native nativeStopTracing(I)I
.end method

.method private native nativeUpdateNetworkInterfaceData(II)I
.end method


# virtual methods
.method public final attachSocketListenerProbe()I
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->nativeAttachSocketListenerProbe()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "attachSocketListenerProbe: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public final readExecveData()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->nativeReadExecveData()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "readExecveData: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final readNetworkEventData(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;",
            ">;"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->nativeReadbypassVpnPktData()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->nativeReadLocalNwPktData()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->nativeReadAbnormalPktData()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->nativeReadInsecurePortsData()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "readNetworkEventData: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final readPktData()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/knox/zt/devicetrust/data/PktData;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->nativeReadPktData()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "readPktData: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final readPrivEscalData()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->nativeReadPrivEscalData()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "readPrivEscalData: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final readProcData()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->nativeReadProcData()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "readProcData: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final readScData()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/knox/zt/devicetrust/data/ScData;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->nativeReadScData()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "readScData: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final readSkData()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/knox/zt/devicetrust/data/SkData;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->nativeReadSkData()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "readSkData: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final readSockData()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/knox/zt/devicetrust/data/SockEventData;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->nativeReadSockData()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "readSockData: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final readSocketListenerEventData()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->nativeReadSocketListenerEventData()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "readSocketListenerEventData: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setOffsets()I
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->nativeSetOffsets()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setOffsets: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public final startNetworkEventLogging(I)I
    .locals 2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->nativeStartTracingSockListener()I

    move-result p0

    return p0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->nativeStartbypassVpnPktLogging()I

    move-result p0

    return p0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->nativeStartLocalNwPktLogging()I

    move-result p0

    return p0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->nativeStartAbnormalPktLogging()I

    move-result p0

    return p0

    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->nativeStartInsecurePortsLogging()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startNetworkEventLogging: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, -0x1

    return p0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final startTracing(I)I
    .locals 2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->nativeStartTracing(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startTracing: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public final stopTracing(I)I
    .locals 2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->nativeStopTracing(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stopTracing: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public final updateNetworkInterfaceData(II)I
    .locals 1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->nativeUpdateNetworkInterfaceData(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "nativeUpdateNetworkInterfaceData: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method
