.class public final Lcom/android/server/appop/LegacyHistoricalRegistry;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/appop/HistoricalRegistryInterface;


# static fields
.field public static final DEFAULT_SNAPSHOT_INTERVAL_MILLIS:J

.field public static final KEEP_WTF_LOG:Z

.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field public mBaseSnapshotInterval:J

.field public final mContext:Landroid/content/Context;

.field public mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

.field public volatile mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsXmlRegistry;

.field public final mInMemoryLock:Lcom/android/server/appop/AppOpsService;

.field public mIntervalCompressionMultiplier:J

.field public mMode:I

.field public mNextPersistDueTimeMillis:J

.field public final mOnDiskLock:Ljava/lang/Object;

.field public mPendingHistoryOffsetMillis:J

.field public final mPendingWrites:Ljava/util/LinkedList;

.field public mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;


# direct methods
.method public static -$$Nest$smwtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V
    .locals 6

    const-string v0, "\nfiles: "

    const-string/jumbo v1, "wtf"

    sget-object v2, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-boolean p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->KEEP_WTF_LOG:Z

    if-eqz p0, :cond_1

    :try_start_0
    new-instance p0, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "appops"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p0, 0xa

    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    if-eqz p2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string p0, "\nfiles: none"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->KEEP_WTF_LOG:Z

    const-string/jumbo v0, "LegacyHistoricalRegistry"

    sput-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->DEFAULT_SNAPSHOT_INTERVAL_MILLIS:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/appop/AppOpsService;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    sget-wide v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->DEFAULT_SNAPSHOT_INTERVAL_MILLIS:J

    iput-wide v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mIntervalCompressionMultiplier:J

    iput-object p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Lcom/android/server/appop/AppOpsService;

    iput-object p2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/android/server/appop/DiscreteOpsXmlRegistry;

    invoke-direct {p2, p1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;-><init>(Lcom/android/server/appop/AppOpsService;)V

    iput-object p2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsXmlRegistry;

    return-void
.end method


# virtual methods
.method public final clearHistoricalRegistry()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Interaction before persistence initialized"

    invoke-static {p0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->clearHistoryOnDiskDLocked()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mNextPersistDueTimeMillis:J

    iput-wide v2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingHistoryOffsetMillis:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :goto_0
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    :goto_1
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public final clearHistory(ILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Interaction before persistence initialized"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_0
    :try_start_3
    iget v2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :cond_1
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    :try_start_5
    iget-object v4, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v4, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->clearHistory(ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/server/appop/LegacyHistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->clearHistory(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    invoke-virtual {v3}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->readHistoryDLocked()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v5, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->clearHistory(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->clearHistoryDLocked$1()V

    invoke-virtual {v3, v4}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->persistHistoricalOpsDLocked(Ljava/util/List;)V

    :goto_2
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object p0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsXmlRegistry;

    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mInMemoryLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->getAllDiscreteOps()Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->clearHistory()V

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    invoke-static {v2, p1, p2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->-$$Nest$mclearHistory(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;ILjava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->persistDiscreteOpsLocked(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    return-void

    :catchall_2
    move-exception p0

    goto :goto_3

    :catchall_3
    move-exception p0

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw p0

    :goto_3
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw p0

    :goto_4
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw p0

    :goto_5
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    throw p0
.end method

.method public final clearHistoryOnDiskDLocked()V
    .locals 3

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mNextPersistDueTimeMillis:J

    iget-object p0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->clearHistoryDLocked$1()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final dump(IIILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    move-object/from16 v4, p4

    const-string v0, "  "

    iget-object v7, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v8, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "History:"

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mode="

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->historicalModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;

    const-string v5, "    "

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;-><init>(IIILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/appop/LegacyHistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v5

    sub-long v5, v1, v5

    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v9

    sub-long v9, v1, v9

    invoke-virtual {v3, v5, v6, v9, v10}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    invoke-virtual {v3, v0}, Landroid/app/AppOpsManager$HistoricalOps;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    invoke-virtual {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Interaction before persistence initialized"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    invoke-virtual {v3}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->readHistoryDLocked()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-wide v4, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mNextPersistDueTimeMillis:J

    sub-long/2addr v4, v1

    iget-wide v9, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    sub-long/2addr v4, v9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, p0, :cond_2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v9, v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    invoke-virtual {v9}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v10

    sub-long v10, v1, v10

    invoke-virtual {v9}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v12

    sub-long v12, v1, v12

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    invoke-virtual {v9, v0}, Landroid/app/AppOpsManager$HistoricalOps;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "  Empty"

    invoke-virtual {v4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :goto_1
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    :goto_2
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public final dumpDiscreteData(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;IILjava/text/SimpleDateFormat;Ljava/util/Date;I)V
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v2, p9

    iget-object v1, v1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsXmlRegistry;

    invoke-virtual {v1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->getAllDiscreteOps()Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    move-result-object v3

    const/4 v15, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    move/from16 v6, p6

    if-ne v6, v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    move-object v11, v4

    goto :goto_1

    :cond_0
    new-array v4, v15, [Ljava/lang/String;

    invoke-static {v6}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_0

    :goto_1
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    new-instance v14, Landroid/util/ArrayMap;

    invoke-direct {v14}, Landroid/util/ArrayMap;-><init>()V

    move v8, v5

    const-wide/16 v4, 0x0

    const/16 v13, 0x1f

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p4

    move/from16 v8, p5

    invoke-static/range {v3 .. v14}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->-$$Nest$mfilter(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/util/ArrayMap;)V

    const-string v4, "  "

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "Largest chain id: "

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    iget v1, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mLargestChainId:I

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    iget-object v1, v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_9

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "Uid: "

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    iget-object v6, v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;

    iget-object v7, v6, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_8

    const-string v9, "    "

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v9, "Package: "

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v6, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    iget-object v9, v6, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    iget-object v10, v9, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v10, :cond_7

    const-string v12, "      "

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v12, v9, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    iget-object v12, v9, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;

    iget-object v13, v12, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v13, :cond_6

    const-string v15, "        "

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v15, "Device: "

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v15, v12, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    iget-object v15, v12, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    move/from16 p2, v1

    iget-object v1, v15, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move-object/from16 p3, v3

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v1, :cond_5

    move/from16 p4, v1

    const-string v1, "          "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Attribution: "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v15, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    iget-object v1, v15, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    move/from16 p5, v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 p6, v4

    const/4 v4, 0x1

    if-ge v2, v4, :cond_1

    const/4 v2, 0x0

    const/16 v16, 0x0

    goto :goto_7

    :cond_1
    sub-int v4, v3, v2

    const/4 v2, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v16, v4

    :goto_7
    move/from16 v4, v16

    :goto_8
    if-ge v4, v3, :cond_4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v1

    const-string v1, "            "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Access ["

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mUidState:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mOpFlag:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "] at "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v1, v3

    move/from16 v17, v4

    iget-wide v3, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    move/from16 v18, v1

    move-object/from16 v1, p8

    invoke-virtual {v1, v3, v4}, Ljava/util/Date;->setTime(J)V

    invoke-virtual/range {p7 .. p8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteDuration:J

    const-wide/16 v19, -0x1

    cmp-long v19, v3, v19

    if-eqz v19, :cond_2

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    const-string v1, " milliseconds "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    iget v1, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    if-eqz v1, :cond_3

    const-string v3, " attribution flags="

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " with chainId="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    :cond_3
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v4, v17, 0x1

    move-object/from16 v1, v16

    move/from16 v3, v18

    const/4 v2, 0x0

    goto :goto_8

    :cond_4
    add-int/lit8 v3, p5, 0x1

    move/from16 v1, p4

    move-object/from16 v4, p6

    move/from16 v2, p9

    goto/16 :goto_6

    :cond_5
    move-object/from16 p6, v4

    add-int/lit8 v14, v14, 0x1

    move/from16 v1, p2

    move-object/from16 v3, p3

    move/from16 v2, p9

    const/4 v15, 0x1

    goto/16 :goto_5

    :cond_6
    move/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p6, v4

    add-int/lit8 v11, v11, 0x1

    move/from16 v2, p9

    const/4 v15, 0x1

    goto/16 :goto_4

    :cond_7
    move/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p6, v4

    add-int/lit8 v8, v8, 0x1

    move/from16 v2, p9

    const/4 v15, 0x1

    goto/16 :goto_3

    :cond_8
    move/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p6, v4

    add-int/lit8 v5, v5, 0x1

    move/from16 v2, p9

    const/4 v15, 0x1

    goto/16 :goto_2

    :cond_9
    return-void
.end method

.method public final getHistoricalOps(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIJJI[Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v14, p13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, p9, v3

    if-nez v3, :cond_0

    move-wide v5, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v5, p9

    :goto_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    sub-long v7, v1, v5

    const-wide/16 v9, 0x0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    sub-long v11, v1, p7

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    move-wide/from16 v16, v1

    new-instance v2, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v2, v7, v8, v11, v12}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsXmlRegistry;

    new-instance v13, Landroid/util/ArraySet;

    move-object/from16 v4, p12

    invoke-direct {v13, v4}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move-object v15, v3

    move-wide/from16 v23, v7

    move-wide/from16 v25, v11

    move-wide/from16 v27, v16

    const/16 v29, 0x1

    move/from16 v8, p1

    move-object/from16 v11, p3

    move/from16 v7, p6

    move-wide/from16 v3, p7

    move/from16 v12, p11

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->addFilteredDiscreteOpsToHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V

    goto :goto_1

    :cond_1
    move-object v15, v3

    move-wide/from16 v23, v7

    move-wide/from16 v25, v11

    move-wide/from16 v27, v16

    const/16 v29, 0x1

    move-wide/from16 v3, p7

    :goto_1
    and-int/lit8 v1, p5, 0x1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v7, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v8

    if-nez v8, :cond_2

    sget-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Interaction before persistence initialized"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v14, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    goto/16 :goto_4

    :cond_2
    move-wide/from16 v8, v27

    :try_start_3
    invoke-virtual {v0, v8, v9}, Lcom/android/server/appop/LegacyHistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v11

    cmp-long v11, v23, v11

    if-gez v11, :cond_3

    invoke-virtual {v10}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v11

    cmp-long v11, v25, v11

    if-lez v11, :cond_3

    new-instance v11, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v11, v10}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(Landroid/app/AppOpsManager$HistoricalOps;)V

    move/from16 v17, p1

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    move-object/from16 v20, p4

    move/from16 v21, p5

    move/from16 v22, p6

    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v26}, Landroid/app/AppOpsManager$HistoricalOps;->filter(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIJJ)V

    move-object/from16 v11, v16

    invoke-virtual {v2, v11}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    :cond_3
    new-instance v11, Ljava/util/ArrayList;

    iget-object v12, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v12, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->clear()V

    invoke-virtual {v10}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v12

    cmp-long v10, v25, v12

    if-lez v10, :cond_4

    move/from16 v10, v29

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    :goto_2
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v10, :cond_5

    :try_start_4
    invoke-virtual {v0, v11}, Lcom/android/server/appop/LegacyHistoricalRegistry;->persistPendingHistory(Ljava/util/List;)V

    iget-wide v10, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mNextPersistDueTimeMillis:J

    sub-long v7, v8, v10

    iget-wide v9, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    add-long/2addr v7, v9

    sub-long v9, v23, v7

    const-wide/16 v12, 0x0

    invoke-static {v9, v10, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v36

    sub-long v7, v25, v7

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v38

    iget-object v0, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    sget-object v7, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    move/from16 v31, p1

    move-object/from16 v32, p2

    move-object/from16 v33, p3

    move-object/from16 v34, p4

    move/from16 v35, p6

    move/from16 v40, p11

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v40}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->collectHistoricalOpsBaseDLocked(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v7, :cond_5

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v2, v8}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_5
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :goto_4
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    :goto_5
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :cond_6
    :goto_6
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    const-string/jumbo v0, "historical_ops"

    invoke-virtual {v15, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v14, v15}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public final getHistoricalOpsFromDiskRaw(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIJJI[Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 14

    move-object/from16 v0, p13

    new-instance v2, Landroid/app/AppOpsManager$HistoricalOps;

    move-wide/from16 v3, p7

    move-wide/from16 v5, p9

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    and-int/lit8 v1, p5, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v7, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v8

    if-nez v8, :cond_0

    sget-object p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Interaction before persistence initialized"

    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    sget-object v4, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    move v4, p1

    move-object/from16 v7, p4

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move/from16 v13, p11

    move-wide v11, v5

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->collectHistoricalOpsBaseDLocked(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)Ljava/util/LinkedList;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v2, v6}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :goto_1
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    :goto_2
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0

    :cond_2
    :goto_3
    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsXmlRegistry;

    new-instance v13, Landroid/util/ArraySet;

    move-object/from16 p0, p12

    invoke-direct {v13, p0}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    move v8, p1

    move-object/from16 v9, p2

    move-object/from16 v11, p3

    move-object/from16 v10, p4

    move/from16 v7, p6

    move-wide/from16 v3, p7

    move-wide/from16 v5, p9

    move/from16 v12, p11

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->addFilteredDiscreteOpsToHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V

    :cond_3
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "historical_ops"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public final getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;
    .locals 9

    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_3

    iget-wide v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mNextPersistDueTimeMillis:J

    sub-long/2addr v3, p1

    iget-wide v5, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    sub-long v7, v3, v5

    iput-wide v7, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingHistoryOffsetMillis:J

    :cond_0
    sub-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->setEndTime(J)V

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    iget-wide v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mNextPersistDueTimeMillis:J

    iget-object p0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    iget-wide v5, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    invoke-virtual {v0, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    sub-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginTime(J)V

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0, v3, v4}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    new-instance v3, Lcom/android/server/appop/LegacyHistoricalRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {v3, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x1

    iput v4, v3, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->offerFirst(Ljava/lang/Object;)Z

    :cond_3
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v0, v1, v2, v1, v2}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    iget-wide v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mNextPersistDueTimeMillis:J

    return-object v0
.end method

.method public final incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIII)V
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v1

    :try_start_0
    iget v2, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Interaction before persistence initialized"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/appop/LegacyHistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v4

    move/from16 v2, p12

    int-to-long v11, v2

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v4 .. v12}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessCount(IILjava/lang/String;Ljava/lang/String;IIJ)V

    iget-object v13, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsXmlRegistry;

    const-wide/16 v22, -0x1

    move/from16 v15, p1

    move/from16 v14, p2

    move-object/from16 v24, p3

    move-object/from16 v25, p4

    move-object/from16 v26, p5

    move/from16 v17, p6

    move/from16 v16, p7

    move-wide/from16 v20, p8

    move/from16 v18, p10

    move/from16 v19, p11

    invoke-virtual/range {v13 .. v26}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->recordDiscreteAccess(IIIIIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isPersistenceInitializedMLocked()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final offsetHistory(J)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Interaction before persistence initialized"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    invoke-virtual {v1}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->readHistoryDLocked()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->clearHistoricalRegistry()V

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v4, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-gez p1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_4

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {p2}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    invoke-virtual {p2}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    invoke-virtual {p2}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    sget-object v4, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {p2, v2, v3}, Landroid/app/AppOpsManager$HistoricalOps;->spliceFromBeginning(D)Landroid/app/AppOpsManager$HistoricalOps;

    :cond_3
    :goto_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    invoke-virtual {p0, v1}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->persistHistoricalOpsDLocked(Ljava/util/List;)V

    :cond_5
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :goto_3
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    :goto_4
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public final persistPendingHistory()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    iget-wide v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingHistoryOffsetMillis:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    new-instance v7, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    iget-wide v8, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    iget-wide v10, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mIntervalCompressionMultiplier:J

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;-><init>(JJ)V

    iput-object v7, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/appop/LegacyHistoricalRegistry;->offsetHistory(J)V

    iput-wide v5, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingHistoryOffsetMillis:J

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0, v2}, Lcom/android/server/appop/LegacyHistoricalRegistry;->persistPendingHistory(Ljava/util/List;)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsXmlRegistry;

    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->writeAndClearOldAccessHistory()V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public final persistPendingHistory(Ljava/util/List;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$HistoricalOps;

    if-lez v3, :cond_1

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v5}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    invoke-virtual {p0, p1}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->persistHistoricalOpsDLocked(Ljava/util/List;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setHistoryParameters(IJJ)V
    .locals 6

    const-string/jumbo v0, "New history parameters: mode:"

    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v3, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/app/AppOpsManager;->historicalModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " baseSnapshotInterval:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " intervalCompressionMultiplier:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    const/4 v3, 0x1

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->clearHistoryOnDiskDLocked()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    iget p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsXmlRegistry;

    iput-boolean v3, p1, Lcom/android/server/appop/DiscreteOpsRegistry;->mDebugMode:Z

    :cond_1
    iget-wide v4, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    cmp-long p1, v4, p2

    if-eqz p1, :cond_2

    iput-wide p2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    move p1, v3

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iget-wide p2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mIntervalCompressionMultiplier:J

    cmp-long p2, p2, p4

    if-eqz p2, :cond_3

    iput-wide p4, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mIntervalCompressionMultiplier:J

    goto :goto_2

    :cond_3
    move v3, p1

    :goto_2
    if-eqz v3, :cond_4

    new-instance p1, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    iget-wide p2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    iget-wide p4, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mIntervalCompressionMultiplier:J

    invoke-direct {p1, p2, p3, p4, p5}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;-><init>(JJ)V

    iput-object p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/LegacyHistoricalRegistry;->offsetHistory(J)V

    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    goto :goto_4

    :goto_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :goto_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public final shutdown()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->persistPendingHistory()V

    iget-object p0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsXmlRegistry;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final systemReady(Landroid/content/ContentResolver;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsXmlRegistry;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/server/appop/DiscreteOpsRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/android/server/appop/DiscreteOpsRegistry$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appop/DiscreteOpsXmlRegistry;)V

    const-string/jumbo v5, "privacy"

    invoke-static {v5, v3, v4}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/appop/DiscreteOpsRegistry;->setDiscreteHistoryParameters(Landroid/provider/DeviceConfig$Properties;)V

    const-string/jumbo v2, "appop_history_parameters"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v4, Lcom/android/server/appop/LegacyHistoricalRegistry$1;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v4, v0, v5, v1}, Lcom/android/server/appop/LegacyHistoricalRegistry$1;-><init>(Lcom/android/server/appop/LegacyHistoricalRegistry;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appop/LegacyHistoricalRegistry;->updateParametersFromSetting(Landroid/content/ContentResolver;)V

    iget-object v1, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    iget v4, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    iget-wide v5, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    iget-wide v7, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mIntervalCompressionMultiplier:J

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;-><init>(JJ)V

    iput-object v4, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_0
    :goto_0
    iget-object v4, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->getLastPersistTimeMillisDLocked()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    iput-wide v6, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingHistoryOffsetMillis:J

    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    invoke-static {}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getDatabaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    iget-object v2, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;-><init>(Landroid/content/Context;)V

    iget-object v0, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsXmlRegistry;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpCache:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    iget-object v4, v4, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string/jumbo v4, "SELECT DISTINCT uid,package_name,device_id,op_code,attribution_tag,access_time,access_duration,uid_state,op_flags,attribution_flags,chain_id FROM app_op_accesses"

    iget-object v5, v1, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionReadOnly()V

    :try_start_3
    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->createRawStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteRawStatement;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :goto_1
    :try_start_4
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteRawStatement;->step()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v9

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnText(I)Ljava/lang/String;

    move-result-object v10

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnText(I)Ljava/lang/String;

    move-result-object v12

    const/4 v7, 0x3

    invoke-virtual {v4, v7}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v13

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnText(I)Ljava/lang/String;

    move-result-object v11

    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnLong(I)J

    move-result-wide v19

    const/4 v7, 0x6

    invoke-virtual {v4, v7}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnLong(I)J

    move-result-wide v21

    const/4 v7, 0x7

    invoke-virtual {v4, v7}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v16

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v14

    const/16 v7, 0x9

    invoke-virtual {v4, v7}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v15

    const/16 v7, 0xa

    invoke-virtual {v4, v7}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnLong(I)J

    move-result-wide v17

    new-instance v8, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    invoke-direct/range {v8 .. v22}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIJJJ)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto/16 :goto_7

    :cond_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v3

    :cond_3
    :goto_2
    if-ge v6, v5, :cond_4

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    iget v8, v7, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpCode:I

    iget v9, v7, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpFlags:I

    invoke-static {v8, v9}, Lcom/android/server/appop/DiscreteOpsRegistry;->isDiscreteOp(II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v9, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    invoke-direct {v9, v3}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    if-ge v3, v2, :cond_6

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    iget v10, v5, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpCode:I

    iget-wide v6, v5, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mChainId:J

    long-to-int v15, v6

    iget v11, v5, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUid:I

    iget-object v6, v5, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mPackageName:Ljava/lang/String;

    iget-object v7, v5, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDeviceId:Ljava/lang/String;

    iget-object v8, v5, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionTag:Ljava/lang/String;

    iget v12, v5, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpFlags:I

    iget v13, v5, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUidState:I

    move/from16 p0, v2

    move/from16 p1, v3

    iget-wide v2, v5, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAccessTime:J

    move-wide/from16 v16, v2

    iget-wide v2, v5, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDuration:J

    iget v14, v5, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionFlags:I

    move-wide/from16 v18, v2

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    invoke-virtual/range {v9 .. v22}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->addDiscreteAccess(IIIIIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v2, p0

    move/from16 v3, p1

    goto :goto_3

    :cond_6
    :goto_4
    iget-object v2, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    iget-object v3, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    if-nez v3, :cond_7

    const-string v0, "DiscreteOpsXmlRegistry"

    const-string/jumbo v3, "State not saved - persistence not initialized."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_6

    :cond_7
    iget-object v3, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mInMemoryLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    iget-object v4, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    iget v5, v9, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mLargestChainId:I

    iput v5, v4, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mLargestChainId:I

    iget v5, v9, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mChainIdOffset:I

    iput v5, v4, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mChainIdOffset:I

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    iget-object v3, v9, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v0, v9}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->persistDiscreteOpsLocked(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V

    :cond_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_5
    iget-object v0, v1, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    iget-object v0, v1, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mContext:Landroid/content/Context;

    iget-object v1, v1, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDatabaseFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    return-void

    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v0

    :goto_6
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_9

    :goto_7
    if-eqz v4, :cond_9

    :try_start_b
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_8

    :catchall_5
    move-exception v0

    :try_start_c
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_8
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :goto_9
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_a
    return-void

    :catchall_6
    move-exception v0

    goto :goto_b

    :goto_a
    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    throw v0

    :goto_b
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw v0
.end method

.method public final updateParametersFromSetting(Landroid/content/ContentResolver;)V
    .locals 17

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string/jumbo v3, "appop_history_parameters"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v9, v1

    move-object v7, v6

    move-object v8, v7

    :goto_0
    sget-object v10, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    if-ge v9, v5, :cond_5

    aget-object v11, v4, v9

    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v13, v12

    if-ne v13, v0, :cond_4

    aget-object v13, v12, v1

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v14, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string/jumbo v15, "baseIntervalMillis"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    goto :goto_1

    :cond_1
    move v14, v0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v15, "mode"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    goto :goto_1

    :cond_2
    move v14, v2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v15, "intervalMultiplier"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    goto :goto_1

    :cond_3
    move v14, v1

    :goto_1
    packed-switch v14, :pswitch_data_0

    const-string/jumbo v12, "Unknown parameter: "

    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_0
    aget-object v7, v12, v2

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :pswitch_1
    aget-object v6, v12, v2

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :pswitch_2
    aget-object v8, v12, v2

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    :cond_4
    :goto_2
    add-int/2addr v9, v2

    goto :goto_0

    :cond_5
    if-eqz v6, :cond_6

    if-eqz v7, :cond_6

    if-eqz v8, :cond_6

    :try_start_0
    invoke-static {v6}, Landroid/app/AppOpsManager;->parseHistoricalMode(Ljava/lang/String;)I

    move-result v12

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    move-object/from16 v11, p0

    move-wide v15, v0

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/appop/LegacyHistoricalRegistry;->setHistoryParameters(IJJ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_6
    const-string v0, "Bad value forappop_history_parameters="

    const-string v1, " resetting!"

    invoke-static {v0, v3, v1, v10}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0xb56339a -> :sswitch_2
        0x3339a3 -> :sswitch_1
        0xea4149c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
