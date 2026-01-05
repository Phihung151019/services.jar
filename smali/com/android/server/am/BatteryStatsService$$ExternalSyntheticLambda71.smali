.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Landroid/os/WorkSource;

.field public final synthetic f$2:I

.field public final synthetic f$3:J

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;IJJI)V
    .locals 0

    iput p8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;->f$1:Landroid/os/WorkSource;

    iput p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;->f$2:I

    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;->f$3:J

    iput-wide p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;->f$4:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;->f$1:Landroid/os/WorkSource;

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;->f$2:I

    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;->f$3:J

    iget-wide v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;->f$4:J

    iget-object v9, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v9

    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/os/WorkSource;->size()I

    move-result p0

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    if-ge v10, p0, :cond_0

    invoke-virtual {v1, v10}, Landroid/os/WorkSource;->getUid(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    move-result v4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->noteWifiBatchedScanStartedLocked(IJ)V

    add-int/lit8 v10, v10, 0x1

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

    check-cast v1, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v1}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    move-result v4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    move-result-object v1

    invoke-virtual {v1, v2, v5, v6}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->noteWifiBatchedScanStartedLocked(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    monitor-exit v9

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;->f$1:Landroid/os/WorkSource;

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;->f$2:I

    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;->f$3:J

    iget-wide v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;->f$4:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_1
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/os/WorkSource;->size()I

    move-result v0

    const/4 v9, 0x0

    move v10, v9

    :goto_2
    if-ge v10, v0, :cond_4

    invoke-virtual {v1, v10}, Landroid/os/WorkSource;->getUid(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    move-result v4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    move-result-object v4

    iget-object v11, v4, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    if-nez v11, :cond_2

    new-instance v11, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    iget-object v12, v4, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v12, v12, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v11, v12}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v11, v4, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    :cond_2
    iget-object v11, v4, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-virtual {v11, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->addAtomic(I)V

    iget-object v11, v4, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    if-nez v11, :cond_3

    new-instance v11, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    iget-object v12, v4, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v11, v12}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v11, v4, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    :cond_3
    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-virtual {v4, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->addAtomic(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_7

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v1}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    move-result v4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    move-result-object v1

    iget-object v4, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    if-nez v4, :cond_5

    new-instance v4, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    iget-object v10, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v10, v10, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v4, v10}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v4, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    :cond_5
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-virtual {v4, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->addAtomic(I)V

    iget-object v4, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    if-nez v4, :cond_6

    new-instance v4, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    iget-object v10, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v4, v10}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v4, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    :cond_6
    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->addAtomic(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
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
