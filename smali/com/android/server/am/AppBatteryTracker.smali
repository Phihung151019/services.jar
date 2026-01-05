.class public final Lcom/android/server/am/AppBatteryTracker;
.super Lcom/android/server/am/BaseAppStateTracker;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;


# instance fields
.field public final mActiveUserIdStates:Landroid/util/SparseBooleanArray;

.field public final mBatteryUsageStatsPollingIntervalMs:J

.field public final mBatteryUsageStatsPollingMinIntervalMs:J

.field public mBatteryUsageStatsUpdatePending:Z

.field public final mBgBatteryUsageStatsCheck:Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;

.field public final mBgBatteryUsageStatsPolling:Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;

.field public final mDebugUidPercentages:Landroid/util/SparseArray;

.field public mLastBatteryUsageSamplingTs:J

.field public mLastReportTime:J

.field public final mLastUidBatteryUsage:Landroid/util/SparseArray;

.field public mLastUidBatteryUsageStartTs:J

.field public final mTmpUidBatteryUsage:Landroid/util/SparseArray;

.field public final mTmpUidBatteryUsage2:Landroid/util/SparseArray;

.field public final mTmpUidBatteryUsageInWindow:Landroid/util/SparseArray;

.field public final mTmpUserIds:Landroid/util/ArraySet;

.field public final mUidBatteryUsage:Landroid/util/SparseArray;

.field public final mUidBatteryUsageInWindow:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-direct {v0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>()V

    sput-object v0, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BaseAppStateTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    new-instance p1, Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppBatteryTracker;I)V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppBatteryTracker;I)V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsCheck:Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsage:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage2:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsageInWindow:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mTmpUserIds:Landroid/util/ArraySet;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastReportTime:J

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    const-wide/32 p1, 0x1b7740

    iput-wide p1, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingIntervalMs:J

    const-wide/32 p1, 0x493e0

    iput-wide p1, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingMinIntervalMs:J

    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    new-instance p2, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    invoke-direct {p2, p1, p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/AppBatteryTracker;)V

    iput-object p2, p1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    return-void
.end method

.method public static copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 4

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    new-instance v2, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {v2, v3}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;D)V
    .locals 4

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    new-instance v2, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {v2, v3}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    invoke-virtual {v2, p2, p3}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->scaleInternal(D)V

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static dumpProcessStateStats(Landroid/util/proto/ProtoOutputStream;ID)V
    .locals 4

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide v0, 0x20b00000002L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10e00000001L

    invoke-virtual {p0, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10100000003L

    invoke-virtual {p0, v2, v3, p2, p3}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static dumpUidStats(Landroid/util/proto/ProtoOutputStream;ILcom/android/server/am/AppBatteryTracker$BatteryUsage;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->getUsagePowerMah(I)D

    move-result-wide v3

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->getUsagePowerMah(I)D

    move-result-wide v6

    const/4 v8, 0x3

    invoke-virtual {v1, v8}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->getUsagePowerMah(I)D

    move-result-wide v9

    const/4 v11, 0x4

    invoke-virtual {v1, v11}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->getUsagePowerMah(I)D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpl-double v1, v3, v14

    if-nez v1, :cond_1

    cmpl-double v1, v6, v14

    if-nez v1, :cond_1

    cmpl-double v1, v9, v14

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    const-wide v14, 0x20b00000001L

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    move-wide/from16 v16, v12

    const-wide v11, 0x10500000001L

    move/from16 v13, p1

    invoke-virtual {v0, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-static {v0, v2, v3, v4}, Lcom/android/server/am/AppBatteryTracker;->dumpProcessStateStats(Landroid/util/proto/ProtoOutputStream;ID)V

    invoke-static {v0, v5, v6, v7}, Lcom/android/server/am/AppBatteryTracker;->dumpProcessStateStats(Landroid/util/proto/ProtoOutputStream;ID)V

    invoke-static {v0, v8, v9, v10}, Lcom/android/server/am/AppBatteryTracker;->dumpProcessStateStats(Landroid/util/proto/ProtoOutputStream;ID)V

    move-wide/from16 v2, v16

    const/4 v1, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/AppBatteryTracker;->dumpProcessStateStats(Landroid/util/proto/ProtoOutputStream;ID)V

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method


# virtual methods
.method public final checkBatteryUsageStats()V
    .locals 13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    move-object v7, v0

    check-cast v7, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsageInWindow:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-static {v0, v8}, Lcom/android/server/am/AppBatteryTracker;->copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-wide v0, v7, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    sub-long v0, v5, v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v9, :cond_0

    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    iget v2, v7, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainExemptedTypes:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppRestrictionController;->getUidBatteryExemptedUsageSince(IIJJ)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v0

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {v2, v12}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    invoke-virtual {v2, v0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->subtract(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-virtual {v2, v1, v7}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->calcPercentage(ILcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)V

    new-instance v0, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-direct {v0, v2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    invoke-virtual {v7, v1, v0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->handleUidBatteryUsage(ILcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_1
    if-ge v10, v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {v7, v1, v2}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->handleUidBatteryUsage(ILcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingIntervalMs:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppBatteryTracker;->scheduleBatteryUsageStatsUpdateIfNecessary(J)V

    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    iget-wide v1, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingIntervalMs:J

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/AppBatteryTracker;->scheduleBatteryUsageStatsUpdateIfNecessary(J)V

    throw v0
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "    "

    const-string v4, "  "

    const-string v5, "  "

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "APP BATTERY STATE TRACKER:"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v6, v6, Lcom/android/server/am/BaseAppStateTracker$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v6}, Landroid/app/ActivityManagerInternal;->isBooted()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9, v7}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsIfNecessary(JZ)Z

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/AppBatteryTracker;->scheduleBgBatteryUsageStatsCheck()V

    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v6, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v7, v0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v7

    new-instance v8, Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda2;

    invoke-direct {v8, v6}, Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v7, v8}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    :try_start_0
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v6, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1
    iget-object v7, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  Last battery usage start="

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsageStartTs:J

    invoke-static {v1, v8, v9}, Landroid/util/TimeUtils;->dumpTime(Ljava/io/PrintWriter;J)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Battery usage over last "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v3, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v3, v3, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast v3, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    iget-wide v4, v3, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    sub-long v4, v14, v4

    const-wide/16 v9, 0x0

    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    sub-long v4, v14, v12

    invoke-static {v4, v5}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "(none)"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {v9, v10, v3}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->calcPercentage(ILcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)V

    move-object v11, v9

    iget-object v9, v0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    move-object/from16 v16, v11

    iget v11, v3, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainExemptedTypes:I

    move/from16 v18, v4

    move-object/from16 v4, v16

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/am/AppRestrictionController;->getUidBatteryExemptedUsageSince(IIJJ)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v9

    move-wide/from16 v21, v12

    move-wide/from16 v19, v14

    invoke-virtual {v9, v10, v3}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->calcPercentage(ILcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)V

    new-instance v11, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {v11, v4}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    invoke-virtual {v11, v9}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->subtract(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-virtual {v11, v10, v3}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->calcPercentage(ILcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)V

    const-string v12, "%s%s: [%s] %s (%s) | %s (%s) | %s (%s) | %s\n"

    move-object v13, v9

    invoke-static {v10}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v9

    iget-object v14, v3, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    iget-object v14, v14, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {v14, v10}, Lcom/android/server/am/AppRestrictionController;->getBackgroundRestrictionExemptionReason(I)I

    move-result v14

    invoke-static {v14}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v14

    move-object v15, v11

    invoke-virtual {v4}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->percentageToString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v16, v13

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->percentageToString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v15

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->percentageToString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v23, v3

    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    move-object/from16 v24, v4

    sget-object v4, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {v3, v10, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-virtual {v3}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v10, v14

    move-object/from16 v14, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v3

    move-object v3, v12

    move-object/from16 v12, v24

    filled-new-array/range {v8 .. v17}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v18

    move-wide/from16 v14, v19

    move-wide/from16 v12, v21

    move-object/from16 v3, v23

    goto/16 :goto_0

    :cond_2
    :goto_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BaseAppStatePolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    :goto_2
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final dumpAsProto(ILandroid/util/proto/ProtoOutputStream;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isBooted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsIfNecessary(JZ)Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    if-eqz p0, :cond_2

    invoke-static {p2, p1, p0}, Lcom/android/server/am/AppBatteryTracker;->dumpUidStats(Landroid/util/proto/ProtoOutputStream;ILcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-static {p2, v2, v3}, Lcom/android/server/am/AppBatteryTracker;->dumpUidStats(Landroid/util/proto/ProtoOutputStream;ILcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getTrackerInfoForStatsd(I)[B
    .locals 13

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    invoke-virtual {v1, p1, p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->calcPercentage(ILcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)V

    iget-object p0, v1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    const/4 p1, 0x0

    aget-wide v0, p0, p1

    const/4 p1, 0x1

    aget-wide v2, p0, p1

    add-double/2addr v0, v2

    const/4 p1, 0x2

    aget-wide v4, p0, p1

    add-double/2addr v0, v4

    const/4 p1, 0x3

    aget-wide v6, p0, p1

    add-double/2addr v0, v6

    const/4 p1, 0x4

    aget-wide p0, p0, p1

    add-double/2addr v0, p0

    new-instance v8, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v8}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v9, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v0, v9

    const-wide v11, 0x10500000001L

    invoke-virtual {v8, v11, v12, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v0, 0x10500000002L

    mul-double/2addr v4, v9

    invoke-virtual {v8, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v0, 0x10500000003L

    mul-double/2addr v6, v9

    invoke-virtual {v8, v0, v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v0, 0x10500000004L

    mul-double/2addr v2, v9

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v0, 0x10500000005L

    mul-double/2addr p0, v9

    invoke-virtual {v8, v0, v1, p0, p1}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    invoke-virtual {v8}, Landroid/util/proto/ProtoOutputStream;->flush()V

    invoke-virtual {v8}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onBackgroundRestrictionChanged(IZ)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    if-eqz p0, :cond_1

    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, [J

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    aput-wide v0, p1, v2

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    const/4 p1, 0x0

    aput-object p1, p0, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onSystemReady()V
    .locals 8

    invoke-super {p0}, Lcom/android/server/am/BaseAppStateTracker;->onSystemReady()V

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    invoke-virtual {v0, v4}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingIntervalMs:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppBatteryTracker;->scheduleBatteryUsageStatsUpdateIfNecessary(J)V

    return-void
.end method

.method public final onUidRemoved(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onUserInteractionStarted(Ljava/lang/String;I)V
    .locals 4

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, p2, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    iget-object v1, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v1, Lcom/android/server/am/AppBatteryTracker;

    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    iget-object v1, v1, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v1, p2, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionLevel(ILjava/lang/String;)I

    move-result p1

    const/16 v1, 0x32

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeAt(I)V

    move p1, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast p0, Lcom/android/server/am/AppBatteryTracker;

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    const/16 p1, 0x300

    const/4 v0, 0x3

    invoke-virtual {p0, p2, p1, v0, v2}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUid(IIIZ)V

    :cond_2
    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onUserRemoved(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_3

    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_2

    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_3
    if-ltz v1, :cond_5

    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_4

    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_4
    if-ltz v1, :cond_7

    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_6

    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseLongArray;->removeAt(I)V

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_7
    monitor-exit v0

    return-void

    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onUserStarted(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onUserStopped(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastBatteryUsageSamplingTs:J

    iput-wide v1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsageStartTs:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsAndCheck()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final scheduleBatteryUsageStatsUpdateIfNecessary(J)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast v1, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    iget-boolean v1, v1, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;

    move-wide/from16 v4, p1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v4, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v4, v4, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast v4, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    iget-wide v5, v0, Lcom/android/server/am/AppBatteryTracker;->mLastReportTime:J

    sub-long v5, v1, v5

    iget-wide v7, v4, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    cmp-long v4, v5, v7

    if-gez v4, :cond_1

    monitor-exit v3

    return-void

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_1
    iput-wide v1, v0, Lcom/android/server/am/AppBatteryTracker;->mLastReportTime:J

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsIfNecessary(JZ)Z

    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v2, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    iget-object v4, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v6}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :cond_2
    sget-object v4, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    iget-object v5, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v6}, Lcom/android/server/am/AppBatteryTracker;->getTrackerInfoForStatsd(I)[B

    move-result-object v11

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v17

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v5, 0x1b9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-static/range {v5 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIII[B[B[B[BIIIZI)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :goto_4
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :goto_5
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_5
    return-void
.end method

.method public final scheduleBgBatteryUsageStatsCheck()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsCheck:Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final updateBatteryUsageStatsAndCheck()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsIfNecessary(JZ)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker;->checkBatteryUsageStats()V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-wide v3, p0, Lcom/android/server/am/AppBatteryTracker;->mLastBatteryUsageSamplingTs:J

    iget-wide v5, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingMinIntervalMs:J

    add-long/2addr v3, v5

    sub-long/2addr v3, v0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/AppBatteryTracker;->scheduleBatteryUsageStatsUpdateIfNecessary(J)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateBatteryUsageStatsIfNecessary(JZ)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastBatteryUsageSamplingTs:J

    iget-wide v3, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingMinIntervalMs:J

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    const/4 v2, 0x0

    if-ltz v1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_0
    iget-boolean p3, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsUpdatePending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz p3, :cond_2

    :try_start_1
    iget-object p3, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move p3, v2

    goto :goto_1

    :cond_2
    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsUpdatePending:Z

    move p3, v1

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p3, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsOnce(J)V

    iget-object p3, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_3
    iput-wide p1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastBatteryUsageSamplingTs:J

    iput-boolean v2, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsUpdatePending:Z

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p3

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_3
    :goto_2
    return v1

    :goto_3
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final updateBatteryUsageStatsOnce(J)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v2, v1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast v2, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    iget-object v5, v0, Lcom/android/server/am/AppBatteryTracker;->mTmpUserIds:Landroid/util/ArraySet;

    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage:Landroid/util/SparseArray;

    iget-object v6, v1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    iget-wide v7, v2, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {v5}, Landroid/util/ArraySet;->clear()V

    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    :goto_0
    if-ltz v2, :cond_1

    iget-object v4, v0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v1

    const-wide/16 v10, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v4

    const-wide/16 v1, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsOnceInternal(JLandroid/util/SparseArray;Landroid/os/BatteryUsageStatsQuery$Builder;Landroid/util/ArraySet;Landroid/os/BatteryStatsInternal;)Landroid/os/BatteryUsageStats;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/os/BatteryUsageStats;->getStatsStartTimestamp()J

    move-result-wide v1

    move-wide v13, v1

    goto :goto_2

    :cond_2
    move-wide v13, v10

    :goto_2
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Landroid/os/BatteryUsageStats;->getStatsEndTimestamp()J

    move-result-wide v1

    goto :goto_3

    :cond_3
    move-wide/from16 v1, p1

    :goto_3
    sub-long/2addr v1, v13

    cmp-long v4, v1, v7

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    const/16 v17, 0x0

    if-ltz v4, :cond_4

    iget-object v4, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-object v9, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    move-wide/from16 v18, v10

    long-to-double v10, v7

    mul-double/2addr v10, v15

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    long-to-double v5, v1

    div-double/2addr v10, v5

    invoke-static {v3, v9, v10, v11}, Lcom/android/server/am/AppBatteryTracker;->copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;D)V

    monitor-exit v4

    move/from16 v9, v17

    goto :goto_4

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_4
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-wide/from16 v18, v10

    :goto_4
    iget-object v4, v0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage2:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    iget-object v4, v0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage2:Landroid/util/SparseArray;

    invoke-static {v3, v4}, Lcom/android/server/am/AppBatteryTracker;->copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    iget-object v4, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_2
    iget-wide v10, v0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsageStartTs:J

    iput-wide v13, v0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsageStartTs:J

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    cmp-long v4, v13, v10

    if-lez v4, :cond_6

    cmp-long v4, v10, v18

    if-lez v4, :cond_6

    new-instance v4, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v4}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    invoke-virtual {v4}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v4

    invoke-virtual {v4, v10, v11, v13, v14}, Landroid/os/BatteryUsageStatsQuery$Builder;->aggregateSnapshots(JJ)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v4

    move-wide v5, v1

    const-wide/16 v1, 0x0

    move-wide/from16 v18, v5

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsOnceInternal(JLandroid/util/SparseArray;Landroid/os/BatteryUsageStatsQuery$Builder;Landroid/util/ArraySet;Landroid/os/BatteryStatsInternal;)Landroid/os/BatteryUsageStats;

    move-result-object v1

    sub-long/2addr v13, v10

    add-long v13, v13, v18

    if-eqz v1, :cond_5

    :try_start_3
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats;->close()V

    goto :goto_5

    :cond_5
    const-string v1, "ActivityManager"

    const-string/jumbo v2, "Stat was null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    const-string v1, "ActivityManager"

    const-string v2, "Failed to close a stat"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move-wide v1, v13

    goto :goto_6

    :cond_6
    move-wide/from16 v18, v1

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-wide/from16 v1, v18

    :goto_6
    if-eqz v9, :cond_7

    cmp-long v4, v1, v7

    if-ltz v4, :cond_7

    iget-object v4, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_4
    iget-object v9, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    long-to-double v13, v7

    mul-double/2addr v13, v15

    long-to-double v1, v1

    div-double/2addr v13, v1

    invoke-static {v3, v9, v13, v14}, Lcom/android/server/am/AppBatteryTracker;->copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;D)V

    monitor-exit v4

    move/from16 v9, v17

    goto :goto_7

    :catchall_2
    move-exception v0

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_7
    :goto_7
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    move/from16 v4, v17

    :goto_8
    if-ge v4, v2, :cond_9

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    iget-object v14, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v14

    iget-object v15, v0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsage:Landroid/util/SparseArray;

    move/from16 v16, v2

    sget-object v2, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {v15, v13, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    if-ltz v14, :cond_8

    iget-object v13, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-virtual {v13, v2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->subtract(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    goto :goto_9

    :catchall_3
    move-exception v0

    goto :goto_c

    :cond_8
    iget-object v2, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v2, v13, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_9
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v16

    goto :goto_8

    :cond_9
    iget-object v2, v0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage2:Landroid/util/SparseArray;

    iget-object v4, v0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsage:Landroid/util/SparseArray;

    invoke-static {v2, v4}, Lcom/android/server/am/AppBatteryTracker;->copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    iget-object v1, v0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage2:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    if-eqz v9, :cond_a

    sub-long v1, p1, v7

    const-wide/16 v7, 0x1

    sub-long/2addr v10, v7

    new-instance v4, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v4}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    invoke-virtual {v4}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v10, v11}, Landroid/os/BatteryUsageStatsQuery$Builder;->aggregateSnapshots(JJ)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v4

    sub-long v1, v10, v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsOnceInternal(JLandroid/util/SparseArray;Landroid/os/BatteryUsageStatsQuery$Builder;Landroid/util/ArraySet;Landroid/os/BatteryStatsInternal;)Landroid/os/BatteryUsageStats;

    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-object v0, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-static {v3, v0}, Lcom/android/server/am/AppBatteryTracker;->copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    monitor-exit v1

    goto :goto_a

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    :cond_a
    :goto_a
    if-eqz v12, :cond_b

    :try_start_7
    invoke-virtual {v12}, Landroid/os/BatteryUsageStats;->close()V

    goto :goto_b

    :cond_b
    const-string v0, "ActivityManager"

    const-string/jumbo v1, "Stat was null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_b

    :catch_1
    const-string v0, "ActivityManager"

    const-string v1, "Failed to close a stat"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void

    :goto_c
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :catchall_5
    move-exception v0

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v0

    :goto_d
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v0
.end method

.method public final updateBatteryUsageStatsOnceInternal(JLandroid/util/SparseArray;Landroid/os/BatteryUsageStatsQuery$Builder;Landroid/util/ArraySet;Landroid/os/BatteryStatsInternal;)Landroid/os/BatteryUsageStats;
    .locals 26

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    const/4 v6, 0x1

    const-string v7, "ActivityManager"

    invoke-virtual/range {p5 .. p5}, Landroid/util/ArraySet;->size()I

    move-result v8

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v8, :cond_0

    move-object/from16 v11, p5

    invoke-virtual {v11, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/UserHandle;

    move-object/from16 v13, p4

    invoke-virtual {v13, v12}, Landroid/os/BatteryUsageStatsQuery$Builder;->addUser(Landroid/os/UserHandle;)Landroid/os/BatteryUsageStatsQuery$Builder;

    add-int/2addr v10, v6

    goto :goto_0

    :cond_0
    move-object/from16 v13, p4

    new-array v8, v6, [Landroid/os/BatteryUsageStatsQuery;

    invoke-virtual {v13}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    move-object/from16 v10, p6

    invoke-virtual {v10, v8}, Landroid/os/BatteryStatsInternal;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/BatteryUsageStats;

    move v11, v6

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_3

    :try_start_0
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/BatteryUsageStats;

    invoke-virtual {v12}, Landroid/os/BatteryUsageStats;->close()V

    goto :goto_2

    :cond_2
    const-string/jumbo v12, "Stat was null"

    invoke-static {v7, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v12, "Failed to close a stat in BatteryUsageStats List"

    invoke-static {v7, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/2addr v11, v6

    goto :goto_1

    :cond_3
    invoke-virtual {v10}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v10}, Landroid/os/BatteryUsageStats;->getStatsStartTimestamp()J

    move-result-wide v11

    invoke-virtual {v10}, Landroid/os/BatteryUsageStats;->getStatsEndTimestamp()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v8, v0, v15

    const/4 v15, 0x4

    const/16 v16, 0x3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-lez v8, :cond_4

    long-to-double v0, v0

    mul-double/2addr v0, v3

    sub-long/2addr v13, v11

    long-to-double v11, v13

    div-double/2addr v0, v11

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UidBatteryConsumer;

    invoke-virtual {v7}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v8}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v11

    if-lez v11, :cond_6

    invoke-static {v9, v11}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8

    :cond_6
    new-instance v11, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    iget-object v12, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryDimensions:[Landroid/os/BatteryConsumer$Dimensions;

    aget-object v13, v12, v9

    const-wide/16 v17, 0x0

    :try_start_1
    invoke-virtual {v7, v13}, Landroid/os/UidBatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Dimensions;)D

    move-result-wide v13
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    const/16 v19, 0x2

    goto :goto_5

    :catch_1
    move-wide/from16 v13, v17

    goto :goto_4

    :goto_5
    aget-object v5, v12, v6

    :try_start_2
    invoke-virtual {v7, v5}, Landroid/os/UidBatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Dimensions;)D

    move-result-wide v20
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-wide/from16 v20, v17

    :goto_6
    aget-object v5, v12, v19

    :try_start_3
    invoke-virtual {v7, v5}, Landroid/os/UidBatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Dimensions;)D

    move-result-wide v22
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    move-wide/from16 v22, v17

    :goto_7
    aget-object v5, v12, v16

    :try_start_4
    invoke-virtual {v7, v5}, Landroid/os/UidBatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Dimensions;)D

    move-result-wide v24
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_8

    :catch_4
    move-wide/from16 v24, v17

    :goto_8
    aget-object v5, v12, v15

    :try_start_5
    invoke-virtual {v7, v5}, Landroid/os/UidBatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Dimensions;)D

    move-result-wide v17
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v5, 0x5

    new-array v5, v5, [D

    aput-wide v13, v5, v9

    aput-wide v20, v5, v6

    aput-wide v22, v5, v19

    aput-wide v24, v5, v16

    aput-wide v17, v5, v15

    iput-object v5, v11, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    invoke-virtual {v11, v3, v4}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->scaleInternal(D)V

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_7

    invoke-virtual {v2, v8, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-virtual {v5, v11}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    goto :goto_3

    :cond_8
    return-object v10
.end method
