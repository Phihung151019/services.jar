.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/SparseArray;

.field public final synthetic f$1:[Landroid/os/Debug$MemoryInfo;

.field public final synthetic f$10:[J

.field public final synthetic f$11:[J

.field public final synthetic f$12:[J

.field public final synthetic f$13:[J

.field public final synthetic f$14:[J

.field public final synthetic f$15:[Ljava/util/ArrayList;

.field public final synthetic f$16:[J

.field public final synthetic f$3:Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;

.field public final synthetic f$4:[J

.field public final synthetic f$5:[J

.field public final synthetic f$6:Ljava/util/ArrayList;

.field public final synthetic f$7:[J

.field public final synthetic f$8:[J

.field public final synthetic f$9:[J


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArray;[Landroid/os/Debug$MemoryInfo;Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;[J[JLjava/util/ArrayList;[J[J[J[J[J[J[J[J[Ljava/util/ArrayList;[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;->f$0:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;->f$1:[Landroid/os/Debug$MemoryInfo;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;->f$3:Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;->f$4:[J

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;->f$5:[J

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;->f$6:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;->f$7:[J

    iput-object p8, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;->f$8:[J

    iput-object p9, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;->f$9:[J

    iput-object p10, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;->f$10:[J

    iput-object p11, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;->f$11:[J

    iput-object p12, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;->f$12:[J

    iput-object p13, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;->f$13:[J

    iput-object p14, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;->f$14:[J

    iput-object p15, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;->f$15:[Ljava/util/ArrayList;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;->f$16:[J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 35

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;->f$0:Landroid/util/SparseArray;

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;->f$1:[Landroid/os/Debug$MemoryInfo;

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;->f$3:Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;->f$4:[J

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;->f$5:[J

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;->f$6:Ljava/util/ArrayList;

    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;->f$7:[J

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;->f$8:[J

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;->f$9:[J

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;->f$10:[J

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;->f$11:[J

    iget-object v14, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;->f$12:[J

    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;->f$13:[J

    const/16 v16, 0x1

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;->f$14:[J

    const/16 v17, 0x11

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;->f$15:[Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;->f$16:[J

    move-object/from16 p0, v0

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    sget v18, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    move-object/from16 v19, v1

    move-object/from16 v18, v2

    iget-wide v1, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v20, 0x0

    cmp-long v1, v1, v20

    if-lez v1, :cond_7

    iget v1, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_7

    const/4 v1, 0x0

    aget-object v2, v4, v1

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v2}, Landroid/os/Debug$MemoryInfo;-><init>()V

    aput-object v2, v4, v1

    :cond_0
    aget-object v2, v4, v1

    iget-boolean v3, v5, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->oomOnly:Z

    if-nez v3, :cond_2

    iget v3, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v3, v2}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_3

    :cond_1
    const/16 p1, 0x2

    goto :goto_0

    :cond_2
    iget v3, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/4 v5, 0x0

    const/16 p1, 0x2

    invoke-static {v3, v6, v5}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v4

    cmp-long v3, v4, v20

    if-nez v3, :cond_3

    goto/16 :goto_3

    :cond_3
    long-to-int v3, v4

    iput v3, v2, Landroid/os/Debug$MemoryInfo;->nativePss:I

    aget-wide v3, v6, v1

    long-to-int v3, v3

    iput v3, v2, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    aget-wide v3, v6, p1

    long-to-int v3, v3

    iput v3, v2, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    :goto_0
    invoke-virtual {v2}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v5

    int-to-long v5, v5

    move/from16 v34, v1

    invoke-virtual {v2}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    move-result v1

    move-wide/from16 v23, v3

    int-to-long v3, v1

    const/16 v1, 0xc

    aget-wide v20, v7, v1

    add-long v20, v20, v23

    aput-wide v20, v7, v1

    const/16 v1, 0xd

    aget-wide v20, v7, v1

    add-long v20, v20, v5

    aput-wide v20, v7, v1

    const/16 v1, 0xe

    aget-wide v20, v7, v1

    add-long v20, v20, v3

    aput-wide v20, v7, v1

    const/16 v1, 0x10

    aget-wide v20, v7, v1

    add-long v20, v20, v23

    aput-wide v20, v7, v1

    new-instance v20, Lcom/android/server/am/ActivityManagerService$MemItem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v27, v3

    iget-object v3, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (pid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const-string v4, ")"

    invoke-static {v3, v1, v4}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    iget-object v1, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwapPss()I

    move-result v3

    int-to-long v3, v3

    move-object/from16 v22, v1

    iget v1, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    iget v0, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v32

    const/16 v33, 0x0

    const-wide/16 v29, 0x0

    move/from16 v31, v1

    move-wide/from16 v25, v3

    invoke-direct/range {v20 .. v33}, Lcom/android/server/am/ActivityManagerService$MemItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJIIZ)V

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-wide v3, v7, v34

    iget v1, v2, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move-wide/from16 v20, v3

    int-to-long v3, v1

    add-long v3, v20, v3

    aput-wide v3, v7, v34

    aget-wide v3, v7, v16

    iget v1, v2, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    move-wide/from16 v20, v3

    int-to-long v3, v1

    add-long v3, v20, v3

    aput-wide v3, v7, v16

    aget-wide v3, v7, p1

    iget v1, v2, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    move-wide/from16 v20, v3

    int-to-long v3, v1

    add-long v3, v20, v3

    aput-wide v3, v7, p1

    const/4 v1, 0x4

    aget-wide v3, v7, v1

    iget v8, v2, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v20, v1

    move-object/from16 p1, v2

    int-to-long v1, v8

    add-long/2addr v3, v1

    aput-wide v3, v7, v20

    const/4 v1, 0x5

    aget-wide v2, v7, v1

    move-object/from16 v4, p1

    iget v8, v4, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    move/from16 p1, v1

    move-wide/from16 v20, v2

    int-to-long v1, v8

    add-long v2, v20, v1

    aput-wide v2, v7, p1

    const/4 v1, 0x6

    aget-wide v2, v7, v1

    iget v8, v4, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    move/from16 p1, v1

    move-wide/from16 v20, v2

    int-to-long v1, v8

    add-long v2, v20, v1

    aput-wide v2, v7, p1

    move/from16 v1, v34

    :goto_1
    array-length v2, v9

    if-ge v1, v2, :cond_4

    aget-wide v2, v9, v1

    add-int/lit8 v8, v1, 0x11

    move/from16 v20, v1

    invoke-virtual {v4, v8}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v1

    move-wide/from16 v21, v2

    int-to-long v1, v1

    add-long v2, v21, v1

    aput-wide v2, v9, v20

    aget-wide v1, v10, v20

    invoke-virtual {v4, v8}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v3

    move-wide/from16 v21, v1

    int-to-long v1, v3

    add-long v1, v21, v1

    aput-wide v1, v10, v20

    aget-wide v1, v11, v20

    invoke-virtual {v4, v8}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v3

    move-wide/from16 v21, v1

    int-to-long v1, v3

    add-long v1, v21, v1

    aput-wide v1, v11, v20

    add-int/lit8 v1, v20, 0x1

    goto :goto_1

    :cond_4
    const/16 v1, 0x8

    aget-wide v2, v7, v1

    iget v8, v4, Landroid/os/Debug$MemoryInfo;->otherPss:I

    int-to-long v8, v8

    add-long/2addr v2, v8

    aput-wide v2, v7, v1

    const/16 v2, 0x9

    aget-wide v8, v7, v2

    iget v3, v4, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    int-to-long v10, v3

    add-long/2addr v8, v10

    aput-wide v8, v7, v2

    const/16 v3, 0xa

    aget-wide v8, v7, v3

    iget v10, v4, Landroid/os/Debug$MemoryInfo;->otherRss:I

    int-to-long v10, v10

    add-long/2addr v8, v10

    aput-wide v8, v7, v3

    move/from16 v9, v17

    move/from16 v8, v34

    :goto_2
    if-ge v8, v9, :cond_5

    invoke-virtual {v4, v8}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v10

    int-to-long v10, v10

    aget-wide v20, v12, v8

    add-long v20, v20, v10

    aput-wide v20, v12, v8

    aget-wide v20, v7, v1

    sub-long v20, v20, v10

    aput-wide v20, v7, v1

    invoke-virtual {v4, v8}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v10

    int-to-long v10, v10

    aget-wide v20, v13, v8

    add-long v20, v20, v10

    aput-wide v20, v13, v8

    aget-wide v20, v7, v2

    sub-long v20, v20, v10

    aput-wide v20, v7, v2

    invoke-virtual {v4, v8}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v10

    int-to-long v10, v10

    aget-wide v20, v14, v8

    add-long v20, v20, v10

    aput-wide v20, v14, v8

    aget-wide v20, v7, v3

    sub-long v20, v20, v10

    aput-wide v20, v7, v3

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    aget-wide v1, v15, v34

    add-long v1, v1, v23

    aput-wide v1, v15, v34

    aget-wide v1, v18, v34

    add-long/2addr v1, v5

    aput-wide v1, v18, v34

    aget-object v1, v19, v34

    if-nez v1, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v19, v34

    :cond_6
    aget-object v1, v19, v34

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-wide v0, p0, v34

    add-long v0, v0, v27

    aput-wide v0, p0, v34

    :cond_7
    :goto_3
    return-void
.end method
