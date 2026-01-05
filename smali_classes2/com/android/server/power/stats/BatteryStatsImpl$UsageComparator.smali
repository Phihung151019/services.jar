.class public final Lcom/android/server/power/stats/BatteryStatsImpl$UsageComparator;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Landroid/os/SemSimpleNetworkStats;

    check-cast p2, Landroid/os/SemSimpleNetworkStats;

    invoke-virtual {p1}, Landroid/os/SemSimpleNetworkStats;->getTxRxBytes()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/SemSimpleNetworkStats;->getTxRxBytes()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/os/SemSimpleNetworkStats;->getTxRxBytes()J

    move-result-wide p0

    invoke-virtual {p2}, Landroid/os/SemSimpleNetworkStats;->getTxRxBytes()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
