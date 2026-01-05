.class public final Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public mCurStepCpuSystemTimeMs:J

.field public mCurStepCpuUserTimeMs:J

.field public mCurStepStatIOWaitTimeMs:J

.field public mCurStepStatIdleTimeMs:J

.field public mCurStepStatIrqTimeMs:J

.field public mCurStepStatSoftIrqTimeMs:J

.field public mCurStepStatSystemTimeMs:J

.field public mCurStepStatUserTimeMs:J

.field public final mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field public final mEntityNames:Ljava/util/Map;

.field public mHasHistoryStepDetails:Z

.field public mLastStepCpuSystemTimeMs:J

.field public mLastStepCpuUserTimeMs:J

.field public mLastStepStatIOWaitTimeMs:J

.field public mLastStepStatIdleTimeMs:J

.field public mLastStepStatIrqTimeMs:J

.field public mLastStepStatSoftIrqTimeMs:J

.field public mLastStepStatSystemTimeMs:J

.field public mLastStepStatUserTimeMs:J

.field public mPowerStatsInternal:Landroid/power/PowerStatsInternal;

.field public final mStateNames:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mEntityNames:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mStateNames:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    return-void
.end method
