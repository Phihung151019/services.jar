.class public abstract Lcom/android/server/knox/zt/devicetrust/data/SchedClsData;
.super Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final uid:I


# direct methods
.method public constructor <init>(IJI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;-><init>(IJ)V

    iput p4, p0, Lcom/android/server/knox/zt/devicetrust/data/SchedClsData;->uid:I

    return-void
.end method


# virtual methods
.method public final getPid()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getUid()I
    .locals 0

    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/data/SchedClsData;->uid:I

    return p0
.end method
