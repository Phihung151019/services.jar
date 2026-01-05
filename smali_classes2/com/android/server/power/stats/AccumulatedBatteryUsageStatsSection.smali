.class public final Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;
.super Lcom/android/server/power/stats/PowerStatsSpan$Section;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBatteryUsageStats:Landroid/os/BatteryUsageStats$Builder;


# direct methods
.method public constructor <init>(Landroid/os/BatteryUsageStats$Builder;)V
    .locals 1

    const-string/jumbo v0, "accumulated-battery-usage-stats"

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/PowerStatsSpan$Section;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats$Builder;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual {p0}, Landroid/os/BatteryUsageStats$Builder;->discard()V

    return-void
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual {p0}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Landroid/os/BatteryUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public final write(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual {p0}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/BatteryUsageStats;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    return-void
.end method
