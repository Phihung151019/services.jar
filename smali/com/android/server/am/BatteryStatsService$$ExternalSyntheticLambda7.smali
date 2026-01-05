.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Landroid/os/WorkSource;

.field public final synthetic f$2:Z

.field public final synthetic f$3:J

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZJJI)V
    .locals 0

    iput p8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;->f$1:Landroid/os/WorkSource;

    iput-boolean p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;->f$2:Z

    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;->f$3:J

    iput-wide p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;->f$4:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;->f$1:Landroid/os/WorkSource;

    iget-boolean v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;->f$2:Z

    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;->f$3:J

    iget-wide v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;->f$4:J

    iget-object v10, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v10

    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/os/WorkSource;->size()I

    move-result p0

    const/4 v0, 0x0

    move v11, v0

    :goto_0
    if-ge v11, p0, :cond_0

    invoke-virtual {v1, v11}, Landroid/os/WorkSource;->getUid(I)I

    move-result v4

    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteBluetoothScanStoppedLocked(Landroid/os/WorkSource$WorkChain;IZJJ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/WorkSource$WorkChain;

    const/4 v4, -0x1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteBluetoothScanStoppedLocked(Landroid/os/WorkSource$WorkChain;IZJJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    monitor-exit v10

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;->f$1:Landroid/os/WorkSource;

    iget-boolean v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;->f$2:Z

    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;->f$3:J

    iget-wide v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;->f$4:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_1
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/os/WorkSource;->size()I

    move-result v0

    const/4 v10, 0x0

    move v11, v10

    :goto_2
    if-ge v11, v0, :cond_2

    invoke-virtual {v1, v11}, Landroid/os/WorkSource;->getUid(I)I

    move-result v4

    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteBluetoothScanStartedLocked(Landroid/os/WorkSource$WorkChain;IZJJ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_3

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/WorkSource$WorkChain;

    const/4 v4, -0x1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteBluetoothScanStartedLocked(Landroid/os/WorkSource$WorkChain;IZJJ)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
