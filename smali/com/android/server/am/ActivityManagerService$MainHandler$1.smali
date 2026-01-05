.class public final Lcom/android/server/am/ActivityManagerService$MainHandler$1;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$1:Lcom/android/server/am/ActivityManagerService$UiHandler;

.field public final synthetic val$memInfos:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService$UiHandler;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->this$1:Lcom/android/server/am/ActivityManagerService$UiHandler;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->val$memInfos:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 39

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->this$1:Lcom/android/server/am/ActivityManagerService$UiHandler;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->val$memInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessMemInfo;

    iget v7, v6, Lcom/android/server/am/ProcessMemInfo;->pid:I

    invoke-virtual {v2, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler;->updateCpuStatsNow()V

    const/4 v3, 0x4

    new-array v3, v3, [J

    const/4 v5, 0x2

    new-array v6, v5, [J

    new-instance v7, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iget-object v8, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v8

    :try_start_0
    iget-object v9, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    new-instance v10, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda6;

    invoke-direct {v10, v7}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;)V

    invoke-virtual {v9, v10}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;

    move-result-object v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    move/from16 p0, v5

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    :goto_1
    if-ge v11, v8, :cond_2

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    const-wide/16 v17, 0x0

    move-object/from16 v9, v16

    check-cast v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v10, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/16 v16, 0x0

    const/16 v19, 0x1

    invoke-static {v10, v6, v3}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v4

    cmp-long v10, v4, v17

    if-lez v10, :cond_1

    iget v10, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v10

    if-gez v10, :cond_1

    new-instance v20, Lcom/android/server/am/ProcessMemInfo;

    iget-object v10, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget v9, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const-string/jumbo v24, "native"

    const/16 v26, -0x1

    const/16 v25, 0x0

    const/16 v22, -0x3e8

    move/from16 v21, v9

    move-object/from16 v23, v10

    invoke-direct/range {v20 .. v26}, Lcom/android/server/am/ProcessMemInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v9, v20

    iput-wide v4, v9, Lcom/android/server/am/ProcessMemInfo;->pss:J

    aget-wide v4, v6, v19

    iput-wide v4, v9, Lcom/android/server/am/ProcessMemInfo;->swapPss:J

    aget-wide v4, v3, v16

    iput-wide v4, v9, Lcom/android/server/am/ProcessMemInfo;->memtrack:J

    aget-wide v4, v3, v19

    add-long/2addr v12, v4

    aget-wide v4, v3, p0

    add-long/2addr v14, v4

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v4, v16

    move-wide/from16 v7, v17

    move-wide v9, v7

    move-wide/from16 v20, v9

    :goto_2
    if-ge v4, v2, :cond_4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessMemInfo;

    move-wide/from16 v22, v9

    iget-wide v9, v5, Lcom/android/server/am/ProcessMemInfo;->pss:J

    cmp-long v9, v9, v17

    if-nez v9, :cond_3

    iget v9, v5, Lcom/android/server/am/ProcessMemInfo;->pid:I

    invoke-static {v9, v6, v3}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v9

    iput-wide v9, v5, Lcom/android/server/am/ProcessMemInfo;->pss:J

    aget-wide v9, v6, v19

    iput-wide v9, v5, Lcom/android/server/am/ProcessMemInfo;->swapPss:J

    aget-wide v9, v3, v16

    iput-wide v9, v5, Lcom/android/server/am/ProcessMemInfo;->memtrack:J

    aget-wide v9, v3, v19

    add-long/2addr v12, v9

    aget-wide v9, v3, p0

    add-long/2addr v14, v9

    :cond_3
    iget-wide v9, v5, Lcom/android/server/am/ProcessMemInfo;->pss:J

    add-long/2addr v7, v9

    iget-wide v9, v5, Lcom/android/server/am/ProcessMemInfo;->swapPss:J

    add-long v9, v22, v9

    move/from16 v24, v2

    move-object v11, v3

    iget-wide v2, v5, Lcom/android/server/am/ProcessMemInfo;->memtrack:J

    add-long v20, v20, v2

    add-int/lit8 v4, v4, 0x1

    move-object v3, v11

    move/from16 v2, v24

    goto :goto_2

    :cond_4
    move-wide/from16 v22, v9

    new-instance v2, Lcom/android/server/am/AppProfiler$2;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Low on memory -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "total"

    move/from16 v5, v16

    invoke-static {v2, v7, v8, v3, v5}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    const-string/jumbo v3, "total"

    move/from16 v5, v19

    invoke-static {v4, v7, v8, v3, v5}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x400

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/high16 v11, -0x80000000

    move-wide/from16 v32, v12

    move-wide/from16 v25, v17

    move-wide/from16 v27, v25

    move-wide/from16 v29, v27

    const/4 v5, 0x0

    const/16 v24, 0x1

    :goto_3
    if-ge v5, v10, :cond_14

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessMemInfo;

    iget v12, v13, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    move/from16 v34, v5

    const/16 v5, 0x384

    move-wide/from16 v35, v14

    if-lt v12, v5, :cond_5

    iget-wide v14, v13, Lcom/android/server/am/ProcessMemInfo;->pss:J

    add-long v25, v25, v14

    :cond_5
    move-wide/from16 v14, v25

    const/16 v5, -0x3e8

    if-eq v12, v5, :cond_6

    const/16 v5, 0x1f4

    if-lt v12, v5, :cond_7

    const/16 v5, 0x258

    if-eq v12, v5, :cond_7

    const/16 v5, 0x2bc

    if-ne v12, v5, :cond_6

    goto :goto_4

    :cond_6
    move-wide/from16 v37, v14

    goto/16 :goto_8

    :cond_7
    :goto_4
    if-eq v11, v12, :cond_b

    if-gtz v12, :cond_8

    const-string v5, " / "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget v5, v13, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ltz v5, :cond_a

    if-eqz v24, :cond_9

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v24, 0x0

    :cond_9
    const-string v5, "\n\t at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    move v11, v12

    goto :goto_6

    :cond_a
    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_b
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    iget v5, v13, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    move-wide/from16 v37, v14

    if-gtz v5, :cond_c

    iget-wide v14, v13, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-object v5, v13, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v2, v14, v15, v5, v12}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    :cond_c
    iget-wide v14, v13, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-object v5, v13, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-static {v4, v14, v15, v5, v12}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    iget v5, v13, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ltz v5, :cond_10

    add-int/lit8 v5, v34, 0x1

    if-ge v5, v10, :cond_d

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessMemInfo;

    iget v5, v5, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-eq v5, v11, :cond_10

    :cond_d
    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    :goto_7
    sget-object v12, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    array-length v14, v12

    if-ge v5, v14, :cond_f

    aget v14, v12, v5

    iget v15, v13, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ne v14, v15, :cond_e

    sget-object v14, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    aget-object v14, v14, v5

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ":"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v12, v12, v5

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_f
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    :goto_8
    move/from16 v5, v24

    invoke-static {v3, v13}, Lcom/android/server/am/ActivityManagerService;->appendMemInfo(Ljava/lang/StringBuilder;Lcom/android/server/am/ProcessMemInfo;)V

    iget v12, v13, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/16 v14, -0x3e8

    if-ne v12, v14, :cond_12

    iget-wide v14, v13, Lcom/android/server/am/ProcessMemInfo;->pss:J

    const-wide/16 v24, 0x200

    cmp-long v12, v14, v24

    if-ltz v12, :cond_11

    invoke-static {v6, v13}, Lcom/android/server/am/ActivityManagerService;->appendMemInfo(Ljava/lang/StringBuilder;Lcom/android/server/am/ProcessMemInfo;)V

    goto :goto_9

    :cond_11
    add-long v27, v27, v14

    iget-wide v12, v13, Lcom/android/server/am/ProcessMemInfo;->memtrack:J

    add-long v29, v29, v12

    goto :goto_9

    :cond_12
    cmp-long v12, v27, v17

    if-lez v12, :cond_13

    const-string v31, "(Other native)"

    const/16 v25, -0x3e8

    const/16 v26, -0x1

    move-object/from16 v24, v6

    invoke-static/range {v24 .. v31}, Lcom/android/server/am/ActivityManagerService;->appendBasicMemEntry(Ljava/lang/StringBuilder;IIJJLjava/lang/String;)V

    const/16 v12, 0xa

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-wide/from16 v27, v17

    :cond_13
    invoke-static {v9, v13}, Lcom/android/server/am/ActivityManagerService;->appendMemInfo(Ljava/lang/StringBuilder;Lcom/android/server/am/ProcessMemInfo;)V

    :goto_9
    add-int/lit8 v12, v34, 0x1

    move/from16 v24, v5

    move v5, v12

    move-wide/from16 v14, v35

    move-wide/from16 v25, v37

    goto/16 :goto_3

    :cond_14
    move-wide/from16 v35, v14

    const-string v0, "           "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v7, v8}, Lcom/android/server/am/ProcessList;->appendRamKb(Ljava/lang/StringBuilder;J)V

    const-string v0, ": TOTAL"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v0, v20, v17

    if-lez v0, :cond_15

    const-string v0, " ("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v21}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " memtrack)"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    const-string v0, "\n"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v11, 0x400

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v5}, Landroid/os/Debug;->getMemInfo([J)V

    const-string v11, "  MemInfo: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x9

    aget-wide v11, v5, v11

    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " slab, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x8

    aget-wide v11, v5, v11

    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " shmem, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x10

    aget-wide v11, v5, v11

    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " vm alloc, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x11

    aget-wide v11, v5, v11

    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " page tables "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x12

    aget-wide v11, v5, v11

    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " kernel stack\n           "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v11, v5, p0

    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " buffers, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x3

    aget-wide v12, v5, v11

    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " cached, "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0xf

    aget-wide v12, v5, v12

    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " mapped, "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v19, 0x1

    aget-wide v12, v5, v19

    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " free\n"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0xe

    aget-wide v13, v5, v12

    cmp-long v13, v13, v17

    if-eqz v13, :cond_16

    const-string v13, "  ZRAM: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v12, v5, v12

    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " RAM, "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0xc

    aget-wide v12, v5, v12

    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " swap total, "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0xd

    aget-wide v12, v5, v12

    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " swap free\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->getKsmInfo()[J

    move-result-object v5

    const/16 v19, 0x1

    aget-wide v12, v5, v19

    cmp-long v12, v12, v17

    if-nez v12, :cond_17

    const/16 v16, 0x0

    aget-wide v12, v5, v16

    cmp-long v12, v12, v17

    if-nez v12, :cond_17

    aget-wide v12, v5, p0

    cmp-long v12, v12, v17

    if-nez v12, :cond_17

    aget-wide v12, v5, v11

    cmp-long v12, v12, v17

    if-eqz v12, :cond_18

    :cond_17
    const-string v12, "  KSM: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v19, 0x1

    aget-wide v12, v5, v19

    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " saved from shared "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v16, 0x0

    aget-wide v12, v5, v16

    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\n       "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v12, v5, p0

    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " unshared; "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v11, v5, v11

    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " volatile\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    const-string v5, "  Free RAM: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v11

    add-long v11, v11, v25

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v13

    add-long/2addr v13, v11

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v11

    invoke-static {}, Landroid/os/Debug;->getIonHeapsSizeKb()J

    move-result-wide v13

    invoke-static {}, Landroid/os/Debug;->getIonPoolsSizeKb()J

    move-result-wide v19

    invoke-static {}, Landroid/os/Debug;->getDmabufMappedSizeKb()J

    move-result-wide v27

    cmp-long v5, v13, v17

    if-ltz v5, :cond_19

    cmp-long v5, v19, v17

    if-ltz v5, :cond_19

    sub-long v29, v13, v27

    const-string v5, "       ION: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v13, v13, v19

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v11, v11, v29

    sub-long v7, v7, v32

    add-long v7, v7, v27

    goto :goto_a

    :cond_19
    invoke-static {}, Landroid/os/Debug;->getDmabufTotalExportedKb()J

    move-result-wide v13

    cmp-long v5, v13, v17

    if-ltz v5, :cond_1a

    sub-long v19, v13, v27

    const-string v5, "DMA-BUF: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v11, v11, v19

    sub-long v7, v7, v32

    add-long v7, v7, v27

    :cond_1a
    invoke-static {}, Landroid/os/Debug;->getDmabufHeapTotalExportedKb()J

    move-result-wide v13

    cmp-long v5, v13, v17

    if-ltz v5, :cond_1b

    const-string v5, "DMA-BUF Heap: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    invoke-static {}, Landroid/os/Debug;->getDmabufHeapPoolsSizeKb()J

    move-result-wide v13

    cmp-long v5, v13, v17

    if-ltz v5, :cond_1c

    const-string v5, "DMA-BUF Heaps pool: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    :goto_a
    invoke-static {}, Landroid/os/Debug;->getGpuTotalUsageKb()J

    move-result-wide v13

    cmp-long v5, v13, v17

    if-ltz v5, :cond_1e

    invoke-static {}, Landroid/os/Debug;->getGpuPrivateMemoryKb()J

    move-result-wide v19

    cmp-long v5, v19, v17

    if-ltz v5, :cond_1d

    sub-long v17, v13, v19

    const-string v5, "      GPU: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v18}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " dmabuf + "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v20}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " private)\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v7, v7, v35

    add-long v11, v11, v19

    goto :goto_b

    :cond_1d
    const-string v5, "       GPU: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    :goto_b
    const-string v5, "  Used RAM: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v13, v7, v25

    add-long/2addr v13, v11

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n  Lost RAM: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v13

    sub-long v7, v7, v22

    sub-long/2addr v13, v7

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v7

    sub-long/2addr v13, v7

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v7

    sub-long/2addr v13, v7

    sub-long/2addr v13, v11

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v7

    sub-long/2addr v13, v7

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ActivityManager"

    const-string/jumbo v5, "Low on memory:"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ActivityManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ActivityManager"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ActivityManager"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v11, 0x400

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "Low on memory:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v12, 0xa

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    iget-object v4, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4

    :try_start_1
    new-instance v8, Lcom/android/internal/util/FastPrintWriter;

    const/16 v5, 0x100

    const/4 v12, 0x0

    invoke-direct {v8, v3, v12, v5}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    new-array v11, v12, [Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/PrintWriter;->println()V

    iget-object v12, v1, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v5, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v10, -0x1

    const/4 v6, 0x0

    move-object v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ProcessList;->dumpProcessesLSP(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/lang/String;I)V

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    iget-object v5, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v5, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/server/am/ActiveServices$ServiceDumper;

    move-object v8, v7

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v9, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/android/server/am/ActiveServices$ServiceDumper;-><init>(Lcom/android/server/am/ActiveServices;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V

    move-object v7, v8

    invoke-virtual {v5}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpLocked()V

    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    iget-object v5, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string/jumbo v6, "activities"

    move-object v8, v7

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    invoke-virtual/range {v5 .. v14}, Lcom/android/server/wm/ActivityTaskManagerInternal;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;I)V

    move-object v7, v8

    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x51

    invoke-static {v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(I)V

    iget-object v4, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v5, "lowmem"

    const-string/jumbo v7, "system_server"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v4 .. v18}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/Float;Landroid/os/incremental/IncrementalMetrics;Ljava/util/UUID;Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;)V

    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, v1, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    cmp-long v0, v5, v3

    if-gez v0, :cond_1f

    iput-wide v3, v1, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    goto :goto_c

    :catchall_0
    move-exception v0

    goto :goto_d

    :cond_1f
    :goto_c
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_d
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_e

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :goto_e
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0
.end method
