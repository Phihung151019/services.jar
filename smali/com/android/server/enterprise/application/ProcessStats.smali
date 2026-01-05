.class public final Lcom/android/server/enterprise/application/ProcessStats;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final LOAD_AVERAGE_FORMAT:[I

.field public static final PROCESS_FULL_STATS_FORMAT:[I

.field public static final PROCESS_STATS_FORMAT:[I

.field public static final SYSTEM_CPU_FORMAT:[I

.field public static final sLoadComparator:Lcom/android/server/enterprise/application/ProcessStats$1;


# instance fields
.field public mBaseIdleTime:J

.field public mBaseIrqTime:J

.field public mBaseSystemTime:J

.field public mBaseUserTime:J

.field public final mBuffer:[B

.field public mCurPids:[I

.field public mCurThreadPids:[I

.field public mCurrentSampleTime:J

.field public mFirst:Z

.field public mLoad1:F

.field public mLoad15:F

.field public mLoad5:F

.field public final mLoadAverageData:[F

.field public final mProcStats:Ljava/util/ArrayList;

.field public final mProcessFullStatsData:[J

.field public final mProcessFullStatsStringData:[Ljava/lang/String;

.field public final mProcessStatsData:[J

.field public mRelIdleTime:I

.field public mRelIrqTime:I

.field public mRelSystemTime:I

.field public mRelUserTime:I

.field public final mSystemCpuData:[J

.field public final mWorkingProcs:Ljava/util/ArrayList;

.field public mWorkingProcsSorted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->PROCESS_STATS_FORMAT:[I

    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->PROCESS_FULL_STATS_FORMAT:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->SYSTEM_CPU_FORMAT:[I

    const/16 v0, 0x4020

    filled-new-array {v0, v0, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->LOAD_AVERAGE_FORMAT:[I

    new-instance v0, Lcom/android/server/enterprise/application/ProcessStats$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->sLoadComparator:Lcom/android/server/enterprise/application/ProcessStats$1;

    return-void

    nop

    :array_0
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
    .end array-data

    :array_1
    .array-data 4
        0x20
        0x1220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
    .end array-data

    :array_2
    .array-data 4
        0x120
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcessStatsData:[J

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcessFullStatsStringData:[Ljava/lang/String;

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcessFullStatsData:[J

    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mSystemCpuData:[J

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoadAverageData:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad1:F

    iput v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad5:F

    iput v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad15:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mFirst:Z

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mBuffer:[B

    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-void
.end method


# virtual methods
.method public final collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I
    .locals 22

    move-object/from16 v0, p0

    move/from16 v6, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v7, p5

    invoke-static {v1, v2}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v8

    const/4 v9, 0x0

    if-nez v8, :cond_0

    move v10, v9

    goto :goto_0

    :cond_0
    array-length v1, v8

    move v10, v1

    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v11, v1

    move v1, v9

    move v12, v1

    :goto_1
    const/4 v13, 0x1

    if-ge v12, v10, :cond_10

    aget v2, v8, v12

    if-gez v2, :cond_1

    goto/16 :goto_a

    :cond_1
    const/4 v3, 0x0

    if-ge v1, v11, :cond_2

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    move-object v14, v4

    goto :goto_2

    :cond_2
    move-object v14, v3

    :goto_2
    if-eqz v14, :cond_9

    iget v15, v14, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    if-ne v15, v2, :cond_9

    iput-boolean v9, v14, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    iput-boolean v9, v14, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    add-int/lit8 v15, v1, 0x1

    iget-boolean v1, v14, Lcom/android/server/enterprise/application/ProcessStats$Stats;->interesting:Z

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    iget-object v1, v14, Lcom/android/server/enterprise/application/ProcessStats$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 p1, 0x3

    sget-object v4, Lcom/android/server/enterprise/application/ProcessStats;->PROCESS_STATS_FORMAT:[I

    const/16 p4, 0x2

    iget-object v5, v0, Lcom/android/server/enterprise/application/ProcessStats;->mProcessStatsData:[J

    invoke-static {v1, v4, v3, v5, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    move/from16 v19, v10

    goto :goto_4

    :cond_4
    aget-wide v3, v5, v9

    aget-wide v3, v5, v13

    aget-wide v3, v5, p4

    move-wide/from16 v16, v3

    aget-wide v3, v5, p1

    move/from16 v19, v10

    iget-wide v9, v14, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    cmp-long v1, v16, v9

    if-nez v1, :cond_5

    iget-wide v9, v14, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    cmp-long v1, v3, v9

    if-nez v1, :cond_5

    const/4 v1, 0x0

    iput v1, v14, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    iput v1, v14, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    iget-boolean v2, v14, Lcom/android/server/enterprise/application/ProcessStats$Stats;->active:Z

    if-eqz v2, :cond_8

    iput-boolean v1, v14, Lcom/android/server/enterprise/application/ProcessStats$Stats;->active:Z

    goto :goto_4

    :cond_5
    iget-boolean v1, v14, Lcom/android/server/enterprise/application/ProcessStats$Stats;->active:Z

    if-nez v1, :cond_6

    iput-boolean v13, v14, Lcom/android/server/enterprise/application/ProcessStats$Stats;->active:Z

    :cond_6
    if-gez v6, :cond_7

    iget-object v1, v14, Lcom/android/server/enterprise/application/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    invoke-virtual {v0, v14, v1}, Lcom/android/server/enterprise/application/ProcessStats;->getName(Lcom/android/server/enterprise/application/ProcessStats$Stats;Ljava/lang/String;)V

    iget-object v5, v14, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v5, :cond_7

    move-wide v9, v3

    iget-object v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mCurThreadPids:[I

    iget-object v1, v14, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    const/4 v3, 0x0

    move-wide/from16 v20, v9

    move-wide/from16 v9, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/application/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/enterprise/application/ProcessStats;->mCurThreadPids:[I

    goto :goto_3

    :cond_7
    move-wide/from16 v20, v3

    move-wide/from16 v9, v16

    :goto_3
    iget-wide v1, v14, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    iget-wide v3, v14, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    sub-long v1, v9, v1

    long-to-int v1, v1

    iput v1, v14, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    move-wide/from16 v1, v20

    sub-long v3, v1, v3

    long-to-int v3, v3

    iput v3, v14, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    iput-wide v9, v14, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    iput-wide v1, v14, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    iput-boolean v13, v14, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    :cond_8
    :goto_4
    move v1, v15

    goto/16 :goto_9

    :cond_9
    move/from16 v19, v10

    const/16 p1, 0x3

    const/16 p4, 0x2

    if-eqz v14, :cond_b

    iget v4, v14, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    if-le v4, v2, :cond_a

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    iput v4, v14, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    iput v4, v14, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    iput-boolean v13, v14, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    iput-boolean v13, v14, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_9

    :cond_b
    :goto_5
    new-instance v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    invoke-direct {v9, v2, v6}, Lcom/android/server/enterprise/application/ProcessStats$Stats;-><init>(II)V

    invoke-virtual {v7, v1, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v10, v1, 0x1

    add-int/lit8 v11, v11, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    iget-object v1, v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/android/server/enterprise/application/ProcessStats;->PROCESS_FULL_STATS_FORMAT:[I

    iget-object v5, v0, Lcom/android/server/enterprise/application/ProcessStats;->mProcessFullStatsStringData:[Ljava/lang/String;

    iget-object v14, v0, Lcom/android/server/enterprise/application/ProcessStats;->mProcessFullStatsData:[J

    invoke-static {v1, v4, v5, v14, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    if-eqz v1, :cond_c

    iput-boolean v13, v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;->interesting:Z

    const/16 v18, 0x0

    aget-object v1, v5, v18

    iput-object v1, v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;->baseName:Ljava/lang/String;

    aget-wide v3, v14, v13

    aget-wide v3, v14, p4

    aget-wide v3, v14, p1

    iput-wide v3, v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    const/4 v1, 0x4

    aget-wide v3, v14, v1

    iput-wide v3, v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    goto :goto_6

    :cond_c
    const-string/jumbo v1, "Skipping unknown process pid "

    const-string/jumbo v3, "ProcessStats"

    invoke-static {v2, v1, v3}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "<unknown>"

    iput-object v1, v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;->baseName:Ljava/lang/String;

    const-wide/16 v3, 0x0

    iput-wide v3, v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    iput-wide v3, v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    :goto_6
    if-gez v6, :cond_e

    iget-object v1, v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    invoke-virtual {v0, v9, v1}, Lcom/android/server/enterprise/application/ProcessStats;->getName(Lcom/android/server/enterprise/application/ProcessStats$Stats;Ljava/lang/String;)V

    iget-object v5, v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v5, :cond_d

    iget-object v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mCurThreadPids:[I

    iget-object v1, v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/application/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/enterprise/application/ProcessStats;->mCurThreadPids:[I

    :cond_d
    :goto_7
    const/4 v1, 0x0

    goto :goto_8

    :cond_e
    iget-boolean v1, v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;->interesting:Z

    if-eqz v1, :cond_d

    iget-object v1, v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;->baseName:Ljava/lang/String;

    iput-object v1, v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    goto :goto_7

    :goto_8
    iput v1, v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    iput v1, v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    iput-boolean v13, v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    if-nez p3, :cond_f

    iget-boolean v1, v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;->interesting:Z

    if-eqz v1, :cond_f

    iput-boolean v13, v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    :cond_f
    move v1, v10

    :goto_9
    add-int/2addr v12, v13

    move/from16 v10, v19

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_10
    :goto_a
    if-ge v1, v11, :cond_11

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    const/4 v4, 0x0

    iput v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    iput v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    iput-boolean v13, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    iput-boolean v13, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v11, v11, -0x1

    goto :goto_a

    :cond_11
    return-object v8
.end method

.method public final countWorkingStats()I
    .locals 9

    iget-boolean v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsSorted:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sget-object v3, Lcom/android/server/enterprise/application/ProcessStats;->sLoadComparator:Lcom/android/server/enterprise/application/ProcessStats$1;

    const/4 v4, 0x1

    if-ge v2, v0, :cond_3

    iget-object v5, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    iget-boolean v6, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v4, :cond_2

    iget-object v4, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v1

    :goto_1
    if-ge v6, v4, :cond_1

    iget-object v7, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    iget-boolean v8, v7, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    if-eqz v8, :cond_0

    iget-object v8, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-static {v4, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput-boolean v4, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsSorted:Z

    :cond_4
    iget-object p0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getName(Lcom/android/server/enterprise/application/ProcessStats$Stats;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "app_process"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    const-string v2, "<pre-initialized>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mBuffer:[B

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result p2

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    if-lez p2, :cond_3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, p2, :cond_2

    aget-byte v6, p0, v5

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_3

    :cond_2
    :goto_1
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p0, v4, v5}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v2, p2

    goto :goto_6

    :cond_3
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_4
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_6

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-object v3, v2

    goto :goto_4

    :catch_3
    move-object v3, v2

    goto :goto_5

    :goto_3
    if-eqz v2, :cond_5

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_5
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0

    :catch_5
    :goto_4
    if-eqz v3, :cond_4

    goto :goto_2

    :catch_6
    :goto_5
    if-eqz v3, :cond_4

    goto :goto_2

    :goto_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    const/4 p2, 0x1

    if-le p0, p2, :cond_7

    const-string p0, "/"

    invoke-virtual {v2, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p2

    if-ge p0, v0, :cond_6

    add-int/2addr p0, p2

    invoke-virtual {v2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_6
    move-object v0, v2

    :cond_7
    :goto_7
    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->baseName:Ljava/lang/String;

    :cond_8
    iget-object p0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    if-eqz p0, :cond_9

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    :cond_9
    iput-object v0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    :cond_a
    return-void
.end method

.method public final update()V
    .locals 24

    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    sget-object v1, Lcom/android/server/enterprise/application/ProcessStats;->SYSTEM_CPU_FORMAT:[I

    iget-object v2, v0, Lcom/android/server/enterprise/application/ProcessStats;->mSystemCpuData:[J

    const-string v3, "/proc/stat"

    const/4 v6, 0x0

    invoke-static {v3, v1, v6, v2, v6}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    aget-wide v3, v2, v9

    aget-wide v10, v2, v8

    add-long/2addr v3, v10

    aget-wide v10, v2, v7

    const/4 v1, 0x3

    aget-wide v12, v2, v1

    const/4 v5, 0x4

    aget-wide v14, v2, v5

    const/4 v14, 0x5

    move/from16 v16, v1

    move-object v15, v2

    aget-wide v1, v15, v14

    const/16 v17, 0x6

    aget-wide v18, v15, v17

    move/from16 v18, v7

    move/from16 v19, v8

    iget-wide v7, v0, Lcom/android/server/enterprise/application/ProcessStats;->mBaseUserTime:J

    sub-long v7, v3, v7

    long-to-int v7, v7

    iput v7, v0, Lcom/android/server/enterprise/application/ProcessStats;->mRelUserTime:I

    iget-wide v7, v0, Lcom/android/server/enterprise/application/ProcessStats;->mBaseSystemTime:J

    sub-long v7, v10, v7

    long-to-int v7, v7

    iput v7, v0, Lcom/android/server/enterprise/application/ProcessStats;->mRelSystemTime:I

    iget-wide v7, v0, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIrqTime:J

    sub-long v7, v1, v7

    long-to-int v7, v7

    iput v7, v0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIrqTime:I

    iget-wide v7, v0, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIdleTime:J

    sub-long v7, v12, v7

    long-to-int v7, v7

    iput v7, v0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIdleTime:I

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Total U:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v8, v14

    move-object/from16 v20, v15

    aget-wide v14, v20, v9

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " N:"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v14, v20, v19

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " S:"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v21, v8

    move v15, v9

    aget-wide v8, v20, v18

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " I:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v22, v5

    aget-wide v5, v20, v16

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " W:"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, v20, v22

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " Q:"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v22, v10

    aget-wide v9, v20, v21

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " O:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v9, v20, v17

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "Load"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Rel U:"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v0, Lcom/android/server/enterprise/application/ProcessStats;->mRelUserTime:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/android/server/enterprise/application/ProcessStats;->mRelSystemTime:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIdleTime:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIrqTime:I

    invoke-static {v7, v5, v9}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iput-wide v3, v0, Lcom/android/server/enterprise/application/ProcessStats;->mBaseUserTime:J

    move-wide/from16 v3, v22

    iput-wide v3, v0, Lcom/android/server/enterprise/application/ProcessStats;->mBaseSystemTime:J

    iput-wide v1, v0, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIrqTime:J

    iput-wide v12, v0, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIdleTime:J

    goto :goto_0

    :cond_0
    move/from16 v18, v7

    move/from16 v19, v8

    move v15, v9

    :goto_0
    iget-boolean v3, v0, Lcom/android/server/enterprise/application/ProcessStats;->mFirst:Z

    iget-object v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mCurPids:[I

    iget-object v5, v0, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    const-string v1, "/proc"

    const/4 v2, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/application/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/enterprise/application/ProcessStats;->mCurPids:[I

    sget-object v1, Lcom/android/server/enterprise/application/ProcessStats;->LOAD_AVERAGE_FORMAT:[I

    iget-object v2, v0, Lcom/android/server/enterprise/application/ProcessStats;->mLoadAverageData:[F

    const-string v3, "/proc/loadavg"

    const/4 v6, 0x0

    invoke-static {v3, v1, v6, v6, v2}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    if-eqz v1, :cond_2

    aget v1, v2, v15

    aget v3, v2, v19

    aget v2, v2, v18

    iget v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad1:F

    cmpl-float v4, v1, v4

    if-nez v4, :cond_1

    iget v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad5:F

    cmpl-float v4, v3, v4

    if-nez v4, :cond_1

    iget v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad15:F

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_2

    :cond_1
    iput v1, v0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad1:F

    iput v3, v0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad5:F

    iput v2, v0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad15:F

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "*** TIME TO COLLECT STATS: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ProcessStats"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v15, v0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsSorted:Z

    iput-boolean v15, v0, Lcom/android/server/enterprise/application/ProcessStats;->mFirst:Z

    return-void
.end method
