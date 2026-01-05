.class public final Lcom/android/server/job/JobPackageTracker$DataSet;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mEntries:Landroid/util/SparseArray;

.field public mMaxFgActive:I

.field public mMaxTotalActive:I

.field public final mStartClockTime:J

.field public final mStartElapsedTime:J

.field public final mStartUptimeTime:J

.field public mSummedTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartUptimeTime:J

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobPackageTracker$DataSet;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    iget-wide v0, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartUptimeTime:J

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartUptimeTime:J

    iget-wide v0, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    iget-wide v0, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    return-void
.end method

.method public static printDuration(IJJLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Z
    .locals 0

    long-to-float p3, p3

    long-to-float p1, p1

    div-float/2addr p3, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p3, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p3, p1

    float-to-int p1, p3

    const/4 p2, 0x1

    const-string/jumbo p3, "x "

    if-lez p1, :cond_0

    invoke-virtual {p5, p1}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string p1, "% "

    invoke-virtual {p5, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p5, p0}, Landroid/util/IndentingPrintWriter;->print(I)V

    invoke-virtual {p5, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p5, p6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    return p2

    :cond_0
    if-lez p0, :cond_1

    invoke-virtual {p5, p0}, Landroid/util/IndentingPrintWriter;->print(I)V

    invoke-virtual {p5, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p5, p6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static printPackageEntryState(IJJLandroid/util/proto/ProtoOutputStream;)V
    .locals 2

    invoke-virtual {p5, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p1

    const-wide v0, 0x10300000001L

    invoke-virtual {p5, v0, v1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide p3, 0x10500000002L

    invoke-virtual {p5, p3, p4, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p5, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method


# virtual methods
.method public final addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    iget-wide v4, v1, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    invoke-virtual {v0, v2, v3}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v6

    add-long/2addr v6, v4

    iput-wide v6, v1, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_0
    if-ltz v4, :cond_5

    iget-object v6, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    sub-int/2addr v7, v5

    :goto_1
    if-ltz v7, :cond_4

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    iget-object v9, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v9

    iget-wide v10, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    iget-wide v12, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    add-long/2addr v10, v12

    iput-wide v10, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    iget v12, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    iget v13, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    add-int/2addr v12, v13

    iput v12, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    iget-wide v12, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    iget-wide v14, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    add-long/2addr v12, v14

    iput-wide v12, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    iget v14, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    iget v15, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    add-int/2addr v14, v15

    iput v14, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    iget-wide v14, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    move-object/from16 v16, v6

    iget-wide v5, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    add-long/2addr v14, v5

    iput-wide v14, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    iget v5, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    iget v6, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    add-int/2addr v5, v6

    iput v5, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    iget v5, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-lez v5, :cond_0

    iget-wide v5, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    sub-long v5, v2, v5

    add-long/2addr v5, v10

    iput-wide v5, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    const/4 v5, 0x1

    iput-boolean v5, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActive:Z

    goto :goto_2

    :cond_0
    const/4 v5, 0x1

    :goto_2
    iget v6, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-lez v6, :cond_1

    iget-wide v10, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    sub-long v10, v2, v10

    add-long/2addr v10, v12

    iput-wide v10, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    iput-boolean v5, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActiveTop:Z

    :cond_1
    iget v6, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-lez v6, :cond_2

    iget-wide v10, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    sub-long v10, v2, v10

    add-long/2addr v10, v14

    iput-wide v10, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    iput-boolean v5, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadPending:Z

    :cond_2
    iget-object v6, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    sub-int/2addr v6, v5

    :goto_3
    if-ltz v6, :cond_3

    iget-object v10, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    iget-object v11, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    const/4 v12, 0x0

    invoke-virtual {v11, v10, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    iget-object v13, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v13

    add-int/2addr v13, v12

    invoke-virtual {v11, v10, v13}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v6, v16

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_0

    :cond_5
    iget v2, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    iget v3, v1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    if-le v2, v3, :cond_6

    iput v2, v1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    :cond_6
    iget v0, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    iget v2, v1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    if-le v0, v2, :cond_7

    iput v0, v1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    :cond_7
    return-void
.end method

.method public final dump(IJJLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v9, p6

    invoke-virtual {v0, v2, v3}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v5

    invoke-virtual/range {p6 .. p7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " at "

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "yyyy-MM-dd-HH-mm-ss"

    iget-wide v7, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    invoke-static {v4, v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " ("

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    move-wide/from16 v10, p4

    invoke-static {v7, v8, v10, v11, v9}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v4, ") over "

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v5, v6, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v11, ":"

    invoke-virtual {v9, v11}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v4, "Max concurrency: "

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v4, " total, "

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v4, " foreground"

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v12

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v12, :cond_e

    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v4, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    invoke-static {v15}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-eq v1, v4, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v4, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_d

    invoke-virtual {v4, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    invoke-static {v9, v15}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v13, " / "

    invoke-virtual {v9, v13}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v9, v13}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v13, v7

    move/from16 v16, v8

    invoke-virtual {v10, v2, v3}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getPendingTime(J)J

    move-result-wide v7

    move-object/from16 v17, v4

    iget v4, v10, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    move-object/from16 v18, v10

    const-string/jumbo v10, "pending"

    move-object/from16 v0, v18

    invoke-static/range {v4 .. v10}, Lcom/android/server/job/JobPackageTracker$DataSet;->printDuration(IJJLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Z

    move-result v4

    const-string v7, " "

    if-eqz v4, :cond_1

    invoke-virtual {v9, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    move-object v4, v7

    invoke-virtual {v0, v2, v3}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTime(J)J

    move-result-wide v7

    move-object v10, v4

    iget v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    move-object/from16 v18, v10

    const-string/jumbo v10, "active"

    move-object/from16 v1, v18

    invoke-static/range {v4 .. v10}, Lcom/android/server/job/JobPackageTracker$DataSet;->printDuration(IJJLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v9, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    iget-wide v7, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-lez v1, :cond_3

    iget-wide v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    sub-long v1, p2, v1

    add-long/2addr v7, v1

    :cond_3
    iget v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    const-string/jumbo v10, "active-top"

    invoke-static/range {v4 .. v10}, Lcom/android/server/job/JobPackageTracker$DataSet;->printDuration(IJJLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Z

    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-gtz v1, :cond_4

    iget-boolean v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadPending:Z

    if-eqz v1, :cond_5

    :cond_4
    const-string v1, " (pending)"

    invoke-virtual {v9, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_5
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-gtz v1, :cond_6

    iget-boolean v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActive:Z

    if-eqz v1, :cond_7

    :cond_6
    const-string v1, " (active)"

    invoke-virtual {v9, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_7
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-gtz v1, :cond_8

    iget-boolean v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActiveTop:Z

    if-eqz v1, :cond_9

    :cond_8
    const-string v1, " (active-top)"

    invoke-virtual {v9, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v9}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-lez v1, :cond_c

    const/4 v1, 0x0

    :goto_2
    iget-object v2, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    if-lez v1, :cond_a

    const-string v2, ", "

    invoke-virtual {v9, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_a
    iget-object v2, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string/jumbo v2, "x "

    invoke-virtual {v9, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    invoke-virtual {v9}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_c
    invoke-virtual {v9}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v8, v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move v7, v13

    move-object/from16 v4, v17

    goto/16 :goto_1

    :cond_d
    :goto_3
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v9}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final dump(Landroid/util/proto/ProtoOutputStream;JJJI)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-wide/from16 v7, p4

    move/from16 v9, p8

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    invoke-virtual {v0, v7, v8}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v1

    const-wide v3, 0x10300000001L

    iget-wide v12, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    invoke-virtual {v6, v3, v4, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v3, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    sub-long v3, p6, v3

    const-wide v12, 0x10300000002L

    invoke-virtual {v6, v12, v13, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10300000003L

    invoke-virtual {v6, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v1, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v12

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v12, :cond_a

    iget-object v1, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    const/4 v1, -0x1

    if-eq v9, v1, :cond_1

    invoke-static {v15}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-eq v9, v1, :cond_1

    :cond_0
    move/from16 p3, v14

    goto/16 :goto_8

    :cond_1
    iget-object v1, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    const-wide v4, 0x20b00000004L

    invoke-virtual {v6, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-wide/from16 p6, v4

    const-wide v4, 0x10500000001L

    invoke-virtual {v6, v4, v5, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 p3, v1

    move v5, v2

    const-wide v1, 0x10900000002L

    invoke-virtual {v6, v1, v2, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    move v1, v5

    invoke-virtual {v13, v7, v8}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getPendingTime(J)J

    move-result-wide v4

    move v2, v1

    iget v1, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    move/from16 v16, v2

    move/from16 v17, v3

    const-wide v2, 0x10b00000003L

    move/from16 v18, v17

    move/from16 v17, v16

    move-object/from16 v16, p3

    move/from16 p3, v14

    move-wide/from16 v19, p6

    move/from16 p6, v15

    move-wide/from16 v14, v19

    invoke-static/range {v1 .. v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->printPackageEntryState(IJJLandroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v13, v7, v8}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTime(J)J

    move-result-wide v4

    iget v1, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    const-wide v2, 0x10b00000004L

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->printPackageEntryState(IJJLandroid/util/proto/ProtoOutputStream;)V

    iget-wide v1, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    iget v3, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-lez v3, :cond_2

    iget-wide v3, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    sub-long v3, v7, v3

    add-long/2addr v1, v3

    :cond_2
    move-wide v4, v1

    iget v1, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    const-wide v2, 0x10b00000005L

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->printPackageEntryState(IJJLandroid/util/proto/ProtoOutputStream;)V

    iget v1, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    const/4 v2, 0x1

    if-gtz v1, :cond_4

    iget-boolean v1, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadPending:Z

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    move v1, v2

    :goto_3
    const-wide v3, 0x10800000006L

    invoke-virtual {v6, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v1, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-gtz v1, :cond_6

    iget-boolean v1, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActive:Z

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    move v1, v2

    :goto_5
    const-wide v3, 0x10800000007L

    invoke-virtual {v6, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v1, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-gtz v1, :cond_8

    iget-boolean v1, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActiveTop:Z

    if-eqz v1, :cond_7

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :cond_8
    :goto_6
    const-wide v3, 0x10800000008L

    invoke-virtual {v6, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const/4 v1, 0x0

    :goto_7
    iget-object v2, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    const-wide v2, 0x20b00000009L

    invoke-virtual {v6, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    iget-object v4, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    const-wide v7, 0x10e00000001L

    invoke-virtual {v6, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v4, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    const-wide v7, 0x10500000002L

    invoke-virtual {v6, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v6, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v7, p4

    goto :goto_7

    :cond_9
    invoke-virtual {v6, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v18, 0x1

    move/from16 v14, p3

    move-wide/from16 v7, p4

    move/from16 v15, p6

    move-object/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_1

    :goto_8
    add-int/lit8 v14, p3, 0x1

    move-wide/from16 v7, p4

    goto/16 :goto_0

    :cond_a
    const-wide v1, 0x10500000005L

    iget v3, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    invoke-virtual {v6, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000006L

    iget v0, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    invoke-virtual {v6, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v6, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object p0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    if-nez p0, :cond_1

    new-instance p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    invoke-direct {p0}, Lcom/android/server/job/JobPackageTracker$PackageEntry;-><init>()V

    invoke-virtual {v0, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method public final getTotalTime(J)J
    .locals 4

    iget-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartUptimeTime:J

    sub-long/2addr p1, v0

    return-wide p1
.end method
