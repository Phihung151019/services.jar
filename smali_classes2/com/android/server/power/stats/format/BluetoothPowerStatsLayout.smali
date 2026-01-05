.class public final Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;
.super Lcom/android/server/power/stats/format/PowerStatsLayout;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mDeviceIdleTimePosition:I

.field public mDeviceRxTimePosition:I

.field public mDeviceScanTimePosition:I

.field public mDeviceTxTimePosition:I

.field public mUidRxBytesPosition:I

.field public mUidScanTimePosition:I

.field public mUidTxBytesPosition:I


# virtual methods
.method public final toExtras(Landroid/os/PersistableBundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    const-string/jumbo v0, "dt-rx"

    iget v1, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceRxTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "dt-tx"

    iget v1, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceTxTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "dt-idle"

    iget v1, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceIdleTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "dt-scan"

    iget v1, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceScanTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "ub-rx"

    iget v1, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidRxBytesPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "ub-tx"

    iget v1, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidTxBytesPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "ut-scan"

    iget p0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidScanTimePosition:I

    invoke-virtual {p1, v0, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
