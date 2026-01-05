.class public final Lcom/android/server/power/stats/processor/FlashlightPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final getBinaryState(Landroid/os/BatteryStats$HistoryItem;)I
    .locals 0

    iget p0, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 p1, 0x8000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
