.class public final Lcom/android/server/power/stats/format/BasePowerStatsLayout;
.super Lcom/android/server/power/stats/format/PowerStatsLayout;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mDeviceBatteryDischargeDurationPosition:I

.field public final mDeviceBatteryDischargePercentPosition:I

.field public final mDeviceBatteryDischargePosition:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionUsageDuration()V

    const-string/jumbo v0, "time"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidDurationPosition:I

    const-string/jumbo v0, "discharge"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargePosition:I

    const-string/jumbo v0, "discharge-pct"

    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargePercentPosition:I

    const-string/jumbo v0, "discharge-duration"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargeDurationPosition:I

    return-void
.end method


# virtual methods
.method public final toExtras(Landroid/os/PersistableBundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    const-string/jumbo v0, "d-bd"

    iget v1, p0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "d-bdp"

    iget v1, p0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargePercentPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "d-bdd"

    iget p0, p0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargeDurationPosition:I

    invoke-virtual {p1, v0, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
