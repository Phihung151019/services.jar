.class public final Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final destIp:Ljava/lang/String;

.field public final destPort:I

.field public final eventType:I

.field public final family:I

.field public final ifIndex:I

.field public interfaceName:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public final protocol:I

.field public final srcIp:Ljava/lang/String;

.field public final srcPort:I

.field public timestamp:J

.field public final uid:I


# direct methods
.method public constructor <init>(IJIIIILjava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->eventType:I

    iput-wide p2, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->timestamp:J

    iput p4, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->uid:I

    iput p5, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->ifIndex:I

    iput p6, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->family:I

    iput p7, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->protocol:I

    iput-object p8, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->srcIp:Ljava/lang/String;

    iput p9, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->srcPort:I

    iput-object p10, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->destIp:Ljava/lang/String;

    iput p11, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->destPort:I

    return-void
.end method


# virtual methods
.method public final adjustToActualTimeInMillis(J)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->timestamp:J

    add-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->timestamp:J

    return-void
.end method

.method public final getBundle()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "eventType"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->eventType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "timestamp"

    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->timestamp:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "uid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "ifIndex"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->ifIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "family"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->family:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "protocol"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->protocol:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "sourcePort"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->srcPort:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "destPort"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->destPort:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "sourceAddr"

    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->srcIp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "remoteAddr"

    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->destIp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "packageName"

    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "interfaceName"

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->interfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setInterfaceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->interfaceName:Ljava/lang/String;

    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->packageName:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 14

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v0, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->eventType:I

    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->timestamp:J

    iget v3, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->uid:I

    iget v4, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->ifIndex:I

    iget v5, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->family:I

    iget v6, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->protocol:I

    iget-object v7, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->srcIp:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->srcPort:I

    iget-object v9, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->destIp:Ljava/lang/String;

    iget v10, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->destPort:I

    iget-object v11, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->interfaceName:Ljava/lang/String;

    const-string v12, "EventType : "

    const-string v13, " | Time : "

    invoke-static {v0, v12, v1, v2, v13}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | UID : "

    const-string v2, " |Interface Idx : "

    invoke-static {v3, v4, v1, v2, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v1, " | Family : "

    const-string v2, " | Protocol : "

    invoke-static {v5, v6, v1, v2, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v1, " |Source IP : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | Source port : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |Dest IP : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | Dest port : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | Package Name: "

    const-string v2, " | Interface: "

    invoke-static {v0, v1, v11, v2, p0}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
