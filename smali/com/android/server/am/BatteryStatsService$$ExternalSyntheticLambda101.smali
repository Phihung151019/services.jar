.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda101;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda101;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda101;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda101;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget p0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda101;->f$1:I

    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mExternalSync:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    if-eqz v0, :cond_0

    new-instance v2, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p0, v3}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;II)V

    iget-object v3, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    const/4 v6, 0x5

    invoke-virtual {v3, v2, v6, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    new-instance v2, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;

    const/4 v4, 0x1

    invoke-direct {v2, v0, p0, v4}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;II)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v2, v6, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
