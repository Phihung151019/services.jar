.class public final synthetic Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

.field public final synthetic f$1:Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;

.field public final synthetic f$2:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryUsageStatsProvider;Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;

    iput-object p3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->accumulateBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;)V

    return-void
.end method
