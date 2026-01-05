.class public final Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final destIp:Ljava/lang/String;

.field public final destPort:I

.field public final family:I

.field public final interfaceIdx:I

.field public interfaceName:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public final srcIp:Ljava/lang/String;

.field public final srcPort:I

.field public timestamp:J

.field public final uid:I


# direct methods
.method public constructor <init>(JIIILjava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->timestamp:J

    iput p3, p0, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->uid:I

    iput-object p6, p0, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->srcIp:Ljava/lang/String;

    iput p7, p0, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->srcPort:I

    iput-object p8, p0, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->destIp:Ljava/lang/String;

    iput p9, p0, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->destPort:I

    iput p4, p0, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->family:I

    iput p5, p0, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->interfaceIdx:I

    return-void
.end method


# virtual methods
.method public final adjustToActualTimeInMillis(J)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->timestamp:J

    add-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->timestamp:J

    return-void
.end method

.method public final getBundle()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "timestamp"

    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->timestamp:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "uid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "family"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->family:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "sourcePort"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->srcPort:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "destPort"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->destPort:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "sourceAddr"

    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->srcIp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "remoteAddr"

    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->destIp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "packageName"

    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "interfaceName"

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->interfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setInterfaceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->interfaceName:Ljava/lang/String;

    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->packageName:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->timestamp:J

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->uid:I

    iget v3, p0, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->family:I

    iget-object v4, p0, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->srcIp:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->srcPort:I

    iget-object v6, p0, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->destIp:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->destPort:I

    iget-object v8, p0, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->interfaceName:Ljava/lang/String;

    const-string/jumbo v9, "Time : "

    const-string v10, " | Uid : "

    invoke-static {v2, v9, v0, v1, v10}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | Family : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |Source IP : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | Source port : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |Dest IP : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | Dest port : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | Package Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | Interface Name : "

    invoke-static {v0, v1, p0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
