.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;
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

.field public final synthetic f$6:Z

.field public final synthetic f$7:J

.field public final synthetic f$8:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;->f$1:Landroid/os/WorkSource;

    iput p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;->f$2:I

    iput-object p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;->f$4:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;->f$5:I

    iput-boolean p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;->f$6:Z

    iput-wide p8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;->f$7:J

    iput-wide p10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;->f$8:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;->f$1:Landroid/os/WorkSource;

    iget v5, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;->f$2:I

    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;->f$3:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;->f$4:Ljava/lang/String;

    iget v9, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;->f$5:I

    iget-boolean v10, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;->f$6:Z

    iget-wide v11, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;->f$7:J

    iget-wide v13, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;->f$8:J

    iget-object v15, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v15

    :try_start_0
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v0

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_0

    move v6, v4

    invoke-virtual {v2, v6}, Landroid/os/WorkSource;->getUid(I)I

    move-result v4

    move/from16 v16, v6

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteStartWakeLocked(IILandroid/os/WorkSource$WorkChain;Ljava/lang/String;Ljava/lang/String;IZJJ)V

    add-int/lit8 v4, v16, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v6}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v4

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteStartWakeLocked(IILandroid/os/WorkSource$WorkChain;Ljava/lang/String;Ljava/lang/String;IZJJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    monitor-exit v15

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
