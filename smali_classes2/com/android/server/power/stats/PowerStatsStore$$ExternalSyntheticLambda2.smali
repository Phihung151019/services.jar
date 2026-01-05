.class public final synthetic Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/PowerStatsStore;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/os/BatteryUsageStats;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/PowerStatsStore;JLandroid/os/BatteryUsageStats;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/power/stats/PowerStatsStore;

    iput-wide p2, p0, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda2;->f$1:J

    iput-object p4, p0, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda2;->f$2:Landroid/os/BatteryUsageStats;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/power/stats/PowerStatsStore;

    iget-wide v1, p0, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda2;->f$1:J

    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda2;->f$2:Landroid/os/BatteryUsageStats;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/power/stats/PowerStatsStore;->storeBatteryUsageStats(JLandroid/os/BatteryUsageStats;)V

    return-void
.end method
