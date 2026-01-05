.class public final Lcom/android/server/job/JobPackageTracker;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

.field public final mEventCmds:[I

.field public final mEventIndices:Lcom/android/internal/util/jobs/RingBufferIndices;

.field public final mEventJobIds:[I

.field public final mEventReasons:[Ljava/lang/String;

.field public final mEventTags:[Ljava/lang/String;

.field public final mEventTimes:[J

.field public final mEventUids:[I

.field public final mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/util/jobs/RingBufferIndices;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/android/internal/util/jobs/RingBufferIndices;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/jobs/RingBufferIndices;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventTimes:[J

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventUids:[I

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventTags:[Ljava/lang/String;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventJobIds:[I

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventReasons:[Ljava/lang/String;

    new-instance v0, Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-direct {v0}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/job/JobPackageTracker$DataSet;

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    return-void
.end method


# virtual methods
.method public final addEvent(IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/jobs/RingBufferIndices;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/RingBufferIndices;->add()I

    move-result v0

    shl-int/lit8 p6, p6, 0x8

    const v1, 0xff00

    and-int/2addr p6, v1

    or-int/2addr p1, p6

    iget-object p6, p0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    aput p1, p6, v0

    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object p1, p0, Lcom/android/server/job/JobPackageTracker;->mEventTimes:[J

    aput-wide v1, p1, v0

    iget-object p1, p0, Lcom/android/server/job/JobPackageTracker;->mEventUids:[I

    aput p2, p1, v0

    iget-object p1, p0, Lcom/android/server/job/JobPackageTracker;->mEventTags:[Ljava/lang/String;

    aput-object p4, p1, v0

    iget-object p1, p0, Lcom/android/server/job/JobPackageTracker;->mEventJobIds:[I

    aput p3, p1, v0

    iget-object p0, p0, Lcom/android/server/job/JobPackageTracker;->mEventReasons:[Ljava/lang/String;

    aput-object p5, p0, v0

    return-void
.end method

.method public final dump(ILandroid/util/proto/ProtoOutputStream;)V
    .locals 13

    const-wide v0, 0x10b00000008L

    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    if-eqz v4, :cond_0

    new-instance v5, Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-direct {v5, v4}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>(Lcom/android/server/job/JobPackageTracker$DataSet;)V

    aget-object v3, v2, v3

    invoke-virtual {v3, v5, v7, v8}, Lcom/android/server/job/JobPackageTracker$DataSet;->addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V

    :goto_0
    move-object v12, v5

    goto :goto_1

    :cond_0
    new-instance v5, Lcom/android/server/job/JobPackageTracker$DataSet;

    iget-object v3, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-direct {v5, v3}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>(Lcom/android/server/job/JobPackageTracker$DataSet;)V

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {p0, v12, v7, v8}, Lcom/android/server/job/JobPackageTracker$DataSet;->addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V

    const/4 p0, 0x1

    :goto_2
    array-length v3, v2

    if-ge p0, v3, :cond_2

    aget-object v3, v2, p0

    if-eqz v3, :cond_1

    const-wide v5, 0x20b00000001L

    move v11, p1

    move-object v4, p2

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/job/JobPackageTracker$DataSet;->dump(Landroid/util/proto/ProtoOutputStream;JJJI)V

    goto :goto_3

    :cond_1
    move v11, p1

    move-object v4, p2

    :goto_3
    add-int/lit8 p0, p0, 0x1

    move-object p2, v4

    move p1, v11

    goto :goto_2

    :cond_2
    move v11, p1

    move-object v4, p2

    const-wide v5, 0x10b00000002L

    move-object v3, v12

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/job/JobPackageTracker$DataSet;->dump(Landroid/util/proto/ProtoOutputStream;JJJI)V

    invoke-virtual {v4, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;I)V
    .locals 10

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    new-instance v7, Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-direct {v7, v2}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>(Lcom/android/server/job/JobPackageTracker$DataSet;)V

    aget-object v1, v0, v1

    invoke-virtual {v1, v7, v3, v4}, Lcom/android/server/job/JobPackageTracker$DataSet;->addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V

    :goto_0
    move-object v9, v7

    goto :goto_1

    :cond_0
    new-instance v7, Lcom/android/server/job/JobPackageTracker$DataSet;

    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-direct {v7, v1}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>(Lcom/android/server/job/JobPackageTracker$DataSet;)V

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {p0, v9, v3, v4}, Lcom/android/server/job/JobPackageTracker$DataSet;->addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V

    const/4 p0, 0x1

    :goto_2
    array-length v1, v0

    if-ge p0, v1, :cond_2

    aget-object v1, v0, p0

    if-eqz v1, :cond_1

    const-string v8, "Historical stats"

    move-object v7, p1

    move v2, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/job/JobPackageTracker$DataSet;->dump(IJJLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_3

    :cond_1
    move-object v7, p1

    move v2, p2

    :goto_3
    add-int/lit8 p0, p0, 0x1

    move p2, v2

    move-object p1, v7

    goto :goto_2

    :cond_2
    move-object v7, p1

    move v2, p2

    const-string v8, "Current stats"

    move-object v1, v9

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/job/JobPackageTracker$DataSet;->dump(IJJLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public final dumpHistory(ILandroid/util/proto/ProtoOutputStream;)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/jobs/RingBufferIndices;

    invoke-virtual {v3}, Lcom/android/internal/util/jobs/RingBufferIndices;->size()I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    const-wide v5, 0x10b00000007L

    invoke-virtual {v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    sget-object v7, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v4, :cond_5

    invoke-virtual {v3, v9}, Lcom/android/internal/util/jobs/RingBufferIndices;->indexOf(I)I

    move-result v10

    iget-object v11, v0, Lcom/android/server/job/JobPackageTracker;->mEventUids:[I

    aget v11, v11, v10

    const/4 v12, -0x1

    if-eq v1, v12, :cond_1

    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    if-eq v1, v12, :cond_1

    :goto_1
    move-object/from16 v16, v3

    move/from16 v17, v4

    move-wide/from16 v18, v7

    goto :goto_2

    :cond_1
    iget-object v12, v0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    aget v13, v12, v10

    and-int/lit16 v13, v13, 0xff

    if-nez v13, :cond_2

    goto :goto_1

    :cond_2
    const-wide v14, 0x20b00000001L

    invoke-virtual {v2, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    move-object/from16 v16, v3

    move/from16 v17, v4

    const-wide v3, 0x10e00000001L

    invoke-virtual {v2, v3, v4, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v3, v0, Lcom/android/server/job/JobPackageTracker;->mEventTimes:[J

    aget-wide v3, v3, v10

    sub-long v3, v7, v3

    move-wide/from16 v18, v7

    const-wide v7, 0x10300000002L

    invoke-virtual {v2, v7, v8, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10500000003L

    invoke-virtual {v2, v3, v4, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v3, v0, Lcom/android/server/job/JobPackageTracker;->mEventJobIds:[I

    aget v3, v3, v10

    const-wide v7, 0x10500000004L

    invoke-virtual {v2, v7, v8, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v3, v0, Lcom/android/server/job/JobPackageTracker;->mEventTags:[Ljava/lang/String;

    aget-object v3, v3, v10

    const-wide v7, 0x10900000005L

    invoke-virtual {v2, v7, v8, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const/4 v3, 0x2

    if-eq v13, v3, :cond_3

    const/4 v3, 0x4

    if-ne v13, v3, :cond_4

    :cond_3
    aget v3, v12, v10

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x8

    const-wide v7, 0x10e00000006L

    invoke-virtual {v2, v7, v8, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_4
    invoke-virtual {v2, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_2
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v16

    move/from16 v4, v17

    move-wide/from16 v7, v18

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpHistory(Landroid/util/IndentingPrintWriter;I)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/jobs/RingBufferIndices;

    invoke-virtual {v3}, Lcom/android/internal/util/jobs/RingBufferIndices;->size()I

    move-result v4

    const/4 v5, 0x0

    if-gtz v4, :cond_0

    return v5

    :cond_0
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v6, "Job history:"

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    :goto_0
    const/4 v8, 0x1

    if-ge v5, v4, :cond_a

    invoke-virtual {v3, v5}, Lcom/android/internal/util/jobs/RingBufferIndices;->indexOf(I)I

    move-result v9

    iget-object v10, v0, Lcom/android/server/job/JobPackageTracker;->mEventUids:[I

    aget v10, v10, v9

    const/4 v11, -0x1

    if-eq v2, v11, :cond_1

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    if-eq v2, v11, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v11, v0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    aget v12, v11, v9

    and-int/lit16 v12, v12, 0xff

    if-nez v12, :cond_2

    goto/16 :goto_3

    :cond_2
    const/4 v13, 0x4

    const/4 v14, 0x2

    if-eq v12, v8, :cond_6

    if-eq v12, v14, :cond_5

    const/4 v8, 0x3

    if-eq v12, v8, :cond_4

    if-eq v12, v13, :cond_3

    const-string v8, "     ??"

    goto :goto_1

    :cond_3
    const-string v8, " STOP-P"

    goto :goto_1

    :cond_4
    const-string/jumbo v8, "START-P"

    goto :goto_1

    :cond_5
    const-string v8, "   STOP"

    goto :goto_1

    :cond_6
    const-string v8, "  START"

    :goto_1
    iget-object v15, v0, Lcom/android/server/job/JobPackageTracker;->mEventTimes:[J

    aget-wide v15, v15, v9

    sub-long v13, v15, v6

    const/16 v15, 0x13

    invoke-static {v13, v14, v1, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    const-string v13, " "

    invoke-virtual {v1, v13}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v8, ": #"

    invoke-virtual {v1, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v1, v10}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v8, "/"

    invoke-virtual {v1, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/android/server/job/JobPackageTracker;->mEventJobIds:[I

    aget v8, v8, v9

    invoke-virtual {v1, v8}, Landroid/util/IndentingPrintWriter;->print(I)V

    invoke-virtual {v1, v13}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/android/server/job/JobPackageTracker;->mEventTags:[Ljava/lang/String;

    aget-object v8, v8, v9

    invoke-virtual {v1, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 v8, 0x2

    if-eq v12, v8, :cond_7

    const/4 v8, 0x4

    if-ne v12, v8, :cond_9

    :cond_7
    invoke-virtual {v1, v13}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/android/server/job/JobPackageTracker;->mEventReasons:[Ljava/lang/String;

    aget-object v8, v8, v9

    if-eqz v8, :cond_8

    invoke-virtual {v1, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    aget v8, v11, v9

    const v9, 0xff00

    and-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x8

    invoke-static {v8}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_9
    :goto_2
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_a
    return v8
.end method

.method public final noteActive(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 12

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobPackageTracker;->rebatchIfNeeded(J)V

    iget v2, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    const/16 v3, 0x28

    const/4 v4, 0x1

    iget-object v5, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v2, v6, v5}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v2

    iget v3, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-nez v3, :cond_0

    iput-wide v0, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    iget v0, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    add-int/2addr v0, v4

    iput v0, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    :cond_0
    add-int/2addr v3, v4

    iput v3, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v2, v6, v5}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v2

    iget v3, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-nez v3, :cond_2

    iput-wide v0, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    iget v0, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    add-int/2addr v0, v4

    iput v0, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    :cond_2
    add-int/2addr v3, v4

    iput v3, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    :goto_0
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v4, 0x3

    :cond_3
    move v6, v4

    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v8

    iget v7, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object v9, p1, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/job/JobPackageTracker;->addEvent(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 8

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    iget v3, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object p1

    iget v2, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-wide v4, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    iget-wide v6, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    sub-long v6, v0, v6

    add-long/2addr v6, v4

    iput-wide v6, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    :cond_0
    sub-int/2addr v2, v3

    iput v2, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobPackageTracker;->rebatchIfNeeded(J)V

    return-void
.end method

.method public final notePending(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobPackageTracker;->rebatchIfNeeded(J)V

    iget-object p0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    iget v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object p0

    iget p1, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-nez p1, :cond_0

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    iget v0, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    :cond_0
    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    return-void
.end method

.method public final rebatchIfNeeded(J)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v0

    const-wide/32 v2, 0x1b7740

    cmp-long v2, v0, v2

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    iput-wide v0, v2, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    new-instance v0, Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-direct {v0}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    iget-object v1, v2, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_0
    const/4 v4, 0x0

    if-ltz v1, :cond_5

    iget-object v5, v2, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    sub-int/2addr v6, v3

    :goto_1
    if-ltz v6, :cond_4

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    iget v8, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-gtz v8, :cond_0

    iget v8, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-gtz v8, :cond_0

    iget v8, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-lez v8, :cond_3

    :cond_0
    iget-object v8, v2, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v8

    iput-wide p1, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    iget v9, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    iput v9, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    iput-wide p1, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    iget v9, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    iput v9, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    iput-wide p1, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    iget v9, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    iput v9, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    iget v8, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-lez v8, :cond_1

    iget-wide v8, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    iget-wide v10, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    sub-long v10, p1, v10

    add-long/2addr v10, v8

    iput-wide v10, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    iput v4, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    :cond_1
    iget v8, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-lez v8, :cond_2

    iget-wide v8, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    iget-wide v10, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    sub-long v10, p1, v10

    add-long/2addr v10, v8

    iput-wide v10, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    iput v4, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    :cond_2
    iget v8, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-lez v8, :cond_3

    iget-wide v8, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    iget-wide v10, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    sub-long v10, p1, v10

    add-long/2addr v10, v8

    iput-wide v10, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    iput v4, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    array-length p1, p0

    sub-int/2addr p1, v3

    invoke-static {p0, v4, p0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v2, p0, v4

    :cond_6
    return-void
.end method
