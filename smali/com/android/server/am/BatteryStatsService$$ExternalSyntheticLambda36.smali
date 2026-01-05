.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda36;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Landroid/os/WorkSource;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:I

.field public final synthetic f$6:J

.field public final synthetic f$7:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda36;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda36;->f$1:Landroid/os/WorkSource;

    iput p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda36;->f$2:I

    iput-object p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda36;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda36;->f$4:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda36;->f$5:I

    iput-wide p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda36;->f$6:J

    iput-wide p9, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda36;->f$7:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda36;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda36;->f$1:Landroid/os/WorkSource;

    iget v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda36;->f$2:I

    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda36;->f$3:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda36;->f$4:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda36;->f$5:I

    iget-wide v9, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda36;->f$6:J

    iget-wide v11, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda36;->f$7:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/os/WorkSource;->size()I

    move-result v0

    const/4 v13, 0x0

    move v14, v13

    :goto_0
    if-ge v14, v0, :cond_0

    invoke-virtual {v1, v14}, Landroid/os/WorkSource;->getUid(I)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteStopWakeLocked(IILandroid/os/WorkSource$WorkChain;Ljava/lang/String;Ljava/lang/String;IJJ)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v13, v1, :cond_1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v5}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v3

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteStopWakeLocked(IILandroid/os/WorkSource$WorkChain;Ljava/lang/String;Ljava/lang/String;IJJ)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
