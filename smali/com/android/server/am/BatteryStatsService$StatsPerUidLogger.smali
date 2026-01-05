.class public final Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final UID_PROCESS_STATES:[I


# instance fields
.field public final mFrameworkStatsLogger:Lcom/android/server/am/BatteryStatsService$FrameworkStatsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->UID_PROCESS_STATES:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BatteryStatsService$FrameworkStatsLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->mFrameworkStatsLogger:Lcom/android/server/am/BatteryStatsService$FrameworkStatsLogger;

    return-void
.end method

.method public static clampPowerMah(Ljava/lang/String;D)F
    .locals 2

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " reported powerMah float overflow : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryStatsService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method public final addStatsForPowerComponent(Ljava/util/List;Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;IIFJLandroid/os/BatteryConsumer;I)Z
    .locals 20

    move-object/from16 v0, p2

    move-object/from16 v1, p8

    move/from16 v12, p4

    move/from16 v2, p9

    invoke-virtual {v1, v2, v12}, Landroid/os/BatteryConsumer;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p8 .. p9}, Landroid/os/BatteryConsumer;->getPowerComponentName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v3}, Landroid/os/BatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Key;)D

    move-result-wide v4

    const-string/jumbo v2, "uid-"

    const-string v6, "-"

    move/from16 v11, p3

    invoke-static {v11, v2, v6, v15}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4, v5}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->clampPowerMah(Ljava/lang/String;D)F

    move-result v17

    invoke-virtual {v1, v3}, Landroid/os/BatteryConsumer;->getUsageDurationMillis(Landroid/os/BatteryConsumer$Key;)J

    move-result-wide v18

    const/4 v1, 0x0

    cmpl-float v1, v17, v1

    if-nez v1, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v1, v18, v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v2, v0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->startTs:J

    iget-wide v4, v0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->endTs:J

    iget-wide v6, v0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->duration:J

    iget v8, v0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->dischargePercentage:I

    iget-wide v9, v0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->dischargeDuration:J

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->mFrameworkStatsLogger:Lcom/android/server/am/BatteryStatsService$FrameworkStatsLogger;

    move/from16 v16, p5

    move-wide/from16 v13, p6

    invoke-virtual/range {v1 .. v19}, Lcom/android/server/am/BatteryStatsService$FrameworkStatsLogger;->buildStatsEvent(JJJIJIIJLjava/lang/String;FFJ)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xbb8

    if-ne v0, v1, :cond_2

    const-string v0, "BatteryStatsService"

    const-string v1, "BATTERY_USAGE_STATS_PER_UID is complete reaching dimension guardrail"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public logStats(Landroid/os/BatteryUsageStats;Ljava/util/List;)I
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/BatteryUsageStats;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    new-instance v2, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;

    move-object v0, v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats;->getStatsStartTimestamp()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats;->getStatsEndTimestamp()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats;->getStatsDuration()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats;->getDischargePercentage()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats;->getDischargeDurationMs()J

    move-result-wide v8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;-><init>(IJJJJ)V

    const/4 v10, 0x0

    move-object/from16 v11, p1

    invoke-virtual {v11, v10}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/AggregateBatteryConsumer;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/BatteryConsumer;->getConsumedPower()D

    move-result-wide v1

    const-string v3, "AggregateBatteryConsumer"

    invoke-static {v3, v1, v2}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->clampPowerMah(Ljava/lang/String;D)F

    move-result v5

    invoke-virtual {v8}, Landroid/os/BatteryConsumer;->getPowerComponentIds()[I

    move-result-object v12

    array-length v13, v12

    move v14, v10

    :goto_0
    sget-object v15, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->UID_PROCESS_STATES:[I

    const/4 v1, 0x5

    const/16 v2, 0x12

    if-ge v14, v13, :cond_3

    aget v9, v12, v14

    if-ne v9, v2, :cond_1

    :cond_0
    move/from16 v16, v10

    goto :goto_2

    :cond_1
    move v2, v10

    :goto_1
    if-ge v2, v1, :cond_0

    aget v4, v15, v2

    const/4 v3, -0x1

    const-wide/16 v6, 0x0

    move/from16 v17, v2

    move/from16 v16, v10

    move-object v2, v0

    move v10, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->addStatsForPowerComponent(Ljava/util/List;Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;IIFJLandroid/os/BatteryConsumer;I)Z

    move-result v3

    move-object v0, v2

    if-nez v3, :cond_2

    goto/16 :goto_6

    :cond_2
    add-int/lit8 v2, v17, 0x1

    move v1, v10

    move/from16 v10, v16

    goto :goto_1

    :goto_2
    add-int/lit8 v14, v14, 0x1

    move/from16 v10, v16

    goto :goto_0

    :cond_3
    move/from16 v16, v10

    move v10, v1

    invoke-virtual {v11}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {v3}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/os/UidBatteryConsumer;

    invoke-virtual {v8}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v3

    invoke-virtual {v8}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "uidConsumer-"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4, v5}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->clampPowerMah(Ljava/lang/String;D)F

    move-result v5

    invoke-virtual {v8}, Landroid/os/UidBatteryConsumer;->getPowerComponentIds()[I

    move-result-object v12

    array-length v13, v12

    move/from16 v14, v16

    :goto_3
    if-ge v14, v13, :cond_4

    aget v9, v12, v14

    if-ne v9, v2, :cond_6

    :cond_5
    move/from16 v17, v2

    goto :goto_5

    :cond_6
    move/from16 v1, v16

    :goto_4
    if-ge v1, v10, :cond_5

    aget v4, v15, v1

    invoke-virtual {v8, v4}, Landroid/os/UidBatteryConsumer;->getTimeInProcessStateMs(I)J

    move-result-wide v6

    move/from16 v18, v1

    move/from16 v17, v2

    move-object/from16 v1, p2

    move-object v2, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->addStatsForPowerComponent(Ljava/util/List;Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;IIFJLandroid/os/BatteryConsumer;I)Z

    move-result v4

    move-object v0, v2

    if-nez v4, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v1, v18, 0x1

    move/from16 v2, v17

    goto :goto_4

    :goto_5
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v17

    goto :goto_3

    :cond_8
    :goto_6
    return v16
.end method
