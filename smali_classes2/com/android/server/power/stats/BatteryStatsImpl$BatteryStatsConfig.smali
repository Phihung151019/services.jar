.class public final Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mDefaultPowerStatsThrottlePeriod:Ljava/lang/Long;

.field public final mFlags:I

.field public final mMaxHistorySizeBytes:I

.field public final mPowerStatsThrottlePeriods:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mResetOnUnplugHighBatteryLevel:Z

    iget-boolean v1, p1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mResetOnUnplugAfterSignificantCharge:Z

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;->mFlags:I

    iget-wide v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mDefaultPowerStatsThrottlePeriod:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;->mDefaultPowerStatsThrottlePeriod:Ljava/lang/Long;

    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mPowerStatsThrottlePeriods:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;->mPowerStatsThrottlePeriods:Ljava/util/Map;

    iget p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mMaxHistorySizeBytes:I

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;->mMaxHistorySizeBytes:I

    return-void
.end method
