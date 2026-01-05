.class public final Lcom/android/server/power/stats/format/GnssPowerStatsLayout;
.super Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mDeviceSignalLevelTimePosition:I

.field public final mUidSignalLevelTimePosition:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;-><init>()V

    const/4 v0, 0x2

    const-string/jumbo v1, "level"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/power/stats/format/GnssPowerStatsLayout;->mDeviceSignalLevelTimePosition:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/GnssPowerStatsLayout;->mUidSignalLevelTimePosition:I

    return-void
.end method


# virtual methods
.method public final toExtras(Landroid/os/PersistableBundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    const-string/jumbo v0, "dt-sig"

    iget v1, p0, Lcom/android/server/power/stats/format/GnssPowerStatsLayout;->mDeviceSignalLevelTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "ut-sig"

    iget p0, p0, Lcom/android/server/power/stats/format/GnssPowerStatsLayout;->mUidSignalLevelTimePosition:I

    invoke-virtual {p1, v0, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
