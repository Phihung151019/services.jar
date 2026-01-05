.class public final Lcom/android/server/display/topology/Topology;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public display:Lcom/android/server/display/topology/Display;

.field public id:Ljava/lang/String;

.field public immutable:Ljava/lang/Boolean;

.field public order:Ljava/lang/Integer;


# virtual methods
.method public final getOrder()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/topology/Topology;->order:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
