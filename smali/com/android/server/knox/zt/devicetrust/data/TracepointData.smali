.class public abstract Lcom/android/server/knox/zt/devicetrust/data/TracepointData;
.super Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final comm:Ljava/lang/String;

.field public final pidTgid:J

.field public final uidGid:J


# direct methods
.method public constructor <init>(IJJJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;-><init>(IJ)V

    iput-wide p4, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->pidTgid:J

    iput-wide p6, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->uidGid:J

    if-eqz p8, :cond_0

    goto :goto_0

    :cond_0
    const-string p8, ""

    :goto_0
    iput-object p8, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->comm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getComm()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->comm:Ljava/lang/String;

    return-object p0
.end method

.method public final getPid()I
    .locals 2

    iget-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->pidTgid:J

    const/16 p0, 0x20

    shr-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method public final getUid()I
    .locals 2

    iget-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->uidGid:J

    long-to-int p0, v0

    return p0
.end method
