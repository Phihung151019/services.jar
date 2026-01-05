.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;
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

.field public final synthetic f$15:[J

.field public final synthetic f$16:[J

.field public final synthetic f$17:[J

.field public final synthetic f$18:[Ljava/util/ArrayList;

.field public final synthetic f$19:[J

.field public final synthetic f$20:[J

.field public final synthetic f$3:Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;

.field public final synthetic f$4:[J

.field public final synthetic f$5:[J

.field public final synthetic f$6:[J

.field public final synthetic f$7:Ljava/util/ArrayList;

.field public final synthetic f$8:[J

.field public final synthetic f$9:[J


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArray;[Landroid/os/Debug$MemoryInfo;Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;[J[J[JLjava/util/ArrayList;[J[J[J[J[J[J[J[J[J[J[Ljava/util/ArrayList;[J[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$0:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$1:[Landroid/os/Debug$MemoryInfo;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$3:Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$4:[J

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$5:[J

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$6:[J

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$7:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$8:[J

    iput-object p9, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$9:[J

    iput-object p10, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$10:[J

    iput-object p11, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$11:[J

    iput-object p12, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$12:[J

    iput-object p13, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$13:[J

    iput-object p14, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$14:[J

    iput-object p15, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$15:[J

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$16:[J

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$17:[J

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$18:[Ljava/util/ArrayList;

    move-object/from16 p1, p19

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$19:[J

    move-object/from16 p1, p20

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$20:[J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 45

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$0:Landroid/util/SparseArray;

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$1:[Landroid/os/Debug$MemoryInfo;

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$3:Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$4:[J

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$5:[J

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$6:[J

    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$7:Ljava/util/ArrayList;

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$8:[J

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$9:[J

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$10:[J

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$11:[J

    iget-object v14, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$12:[J

    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$13:[J

    const/16 v16, 0x1

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$14:[J

    const/16 v17, 0x11

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$15:[J

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$16:[J

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$17:[J

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$18:[Ljava/util/ArrayList;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$19:[J

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$20:[J

    move-object/from16 p0, v0

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    sget v22, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    move-object/from16 v23, v1

    move-object/from16 v22, v2

    iget-wide v1, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v24, 0x0

    cmp-long v1, v1, v24

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

    const/16 v4, 0xe

    if-nez v3, :cond_2

    iget v3, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v3, v2}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v2, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v3

    int-to-long v6, v3

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v3

    move/from16 p1, v4

    const/16 v26, 0x2

    int-to-long v4, v3

    goto :goto_0

    :cond_2
    move/from16 p1, v4

    const/16 v26, 0x2

    iget v3, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v3, v6, v7}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v3

    cmp-long v5, v3, v24

    if-nez v5, :cond_3

    goto/16 :goto_3

    :cond_3
    long-to-int v3, v3

    iput v3, v2, Landroid/os/Debug$MemoryInfo;->nativePss:I

    aget-wide v3, v6, v1

    long-to-int v3, v3

    iput v3, v2, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    aget-wide v3, v6, v26

    long-to-int v3, v3

    iput v3, v2, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    aget-wide v3, v7, v16

    aget-wide v5, v7, v26

    move-wide/from16 v43, v5

    move-wide v6, v3

    move-wide/from16 v4, v43

    :goto_0
    invoke-virtual {v2}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v3

    move/from16 v24, v1

    move-object/from16 v25, v2

    int-to-long v1, v3

    invoke-virtual/range {v25 .. v25}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v3

    move-wide/from16 v30, v1

    int-to-long v1, v3

    invoke-virtual/range {v25 .. v25}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    move-result v3

    move-wide/from16 v41, v1

    int-to-long v1, v3

    invoke-virtual/range {v25 .. v25}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v3

    move-wide/from16 v34, v1

    int-to-long v1, v3

    const/16 v3, 0xc

    aget-wide v27, v8, v3

    add-long v27, v27, v30

    aput-wide v27, v8, v3

    const/16 v3, 0xd

    aget-wide v27, v8, v3

    add-long v27, v27, v41

    aput-wide v27, v8, v3

    aget-wide v27, v8, p1

    add-long v27, v27, v34

    aput-wide v27, v8, p1

    const/16 v3, 0x10

    aget-wide v27, v8, v3

    add-long v27, v27, v30

    aput-wide v27, v8, v3

    aget-wide v27, v8, v17

    add-long v27, v27, v6

    aput-wide v27, v8, v17

    const/16 v3, 0x12

    aget-wide v6, v8, v3

    add-long/2addr v6, v4

    aput-wide v6, v8, v3

    new-instance v27, Lcom/android/server/am/ActivityManagerService$MemItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const-string v5, ")"

    invoke-static {v4, v3, v5}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    iget-object v3, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwapPss()I

    move-result v4

    int-to-long v4, v4

    iget v6, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    iget v0, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v39

    const/16 v40, 0x0

    move-wide/from16 v36, v1

    move-object/from16 v29, v3

    move-wide/from16 v32, v4

    move/from16 v38, v6

    invoke-direct/range {v27 .. v40}, Lcom/android/server/am/ActivityManagerService$MemItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJIIZ)V

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-wide v1, v8, v24

    move-object/from16 v3, v25

    iget v4, v3, Landroid/os/Debug$MemoryInfo;->nativePss:I

    int-to-long v4, v4

    add-long/2addr v1, v4

    aput-wide v1, v8, v24

    aget-wide v1, v8, v16

    iget v4, v3, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    int-to-long v4, v4

    add-long/2addr v1, v4

    aput-wide v1, v8, v16

    aget-wide v1, v8, v26

    iget v4, v3, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    int-to-long v4, v4

    add-long/2addr v1, v4

    aput-wide v1, v8, v26

    const/4 v1, 0x3

    aget-wide v4, v8, v1

    iget v2, v3, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    int-to-long v6, v2

    add-long/2addr v4, v6

    aput-wide v4, v8, v1

    const/4 v1, 0x4

    aget-wide v4, v8, v1

    iget v2, v3, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    int-to-long v6, v2

    add-long/2addr v4, v6

    aput-wide v4, v8, v1

    const/4 v1, 0x5

    aget-wide v4, v8, v1

    iget v2, v3, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    int-to-long v6, v2

    add-long/2addr v4, v6

    aput-wide v4, v8, v1

    const/4 v1, 0x6

    aget-wide v4, v8, v1

    iget v2, v3, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    int-to-long v6, v2

    add-long/2addr v4, v6

    aput-wide v4, v8, v1

    const/4 v1, 0x7

    aget-wide v4, v8, v1

    iget v2, v3, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    int-to-long v6, v2

    add-long/2addr v4, v6

    aput-wide v4, v8, v1

    move/from16 v1, v24

    :goto_1
    array-length v2, v10

    if-ge v1, v2, :cond_4

    aget-wide v4, v10, v1

    add-int/lit8 v2, v1, 0x11

    invoke-virtual {v3, v2}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    aput-wide v4, v10, v1

    aget-wide v4, v11, v1

    invoke-virtual {v3, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    aput-wide v4, v11, v1

    aget-wide v4, v12, v1

    invoke-virtual {v3, v2}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    aput-wide v4, v12, v1

    aget-wide v4, v13, v1

    invoke-virtual {v3, v2}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v2

    int-to-long v6, v2

    add-long/2addr v4, v6

    aput-wide v4, v13, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/16 v1, 0x8

    aget-wide v4, v8, v1

    iget v2, v3, Landroid/os/Debug$MemoryInfo;->otherPss:I

    int-to-long v6, v2

    add-long/2addr v4, v6

    aput-wide v4, v8, v1

    const/16 v2, 0x9

    aget-wide v4, v8, v2

    iget v6, v3, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    aput-wide v4, v8, v2

    const/16 v4, 0xa

    aget-wide v5, v8, v4

    iget v7, v3, Landroid/os/Debug$MemoryInfo;->otherRss:I

    int-to-long v9, v7

    add-long/2addr v5, v9

    aput-wide v5, v8, v4

    const/16 v5, 0xb

    aget-wide v6, v8, v5

    iget v9, v3, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    int-to-long v9, v9

    add-long/2addr v6, v9

    aput-wide v6, v8, v5

    move/from16 v7, v17

    move/from16 v6, v24

    :goto_2
    if-ge v6, v7, :cond_5

    invoke-virtual {v3, v6}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v9

    int-to-long v9, v9

    aget-wide v11, v14, v6

    add-long/2addr v11, v9

    aput-wide v11, v14, v6

    aget-wide v11, v8, v1

    sub-long/2addr v11, v9

    aput-wide v11, v8, v1

    invoke-virtual {v3, v6}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v9

    int-to-long v9, v9

    aget-wide v11, v15, v6

    add-long/2addr v11, v9

    aput-wide v11, v15, v6

    aget-wide v11, v8, v2

    sub-long/2addr v11, v9

    aput-wide v11, v8, v2

    invoke-virtual {v3, v6}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v9

    int-to-long v9, v9

    aget-wide v11, v22, v6

    add-long/2addr v11, v9

    aput-wide v11, v22, v6

    aget-wide v11, v8, v4

    sub-long/2addr v11, v9

    aput-wide v11, v8, v4

    invoke-virtual {v3, v6}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v9

    int-to-long v9, v9

    aget-wide v11, v18, v6

    add-long/2addr v11, v9

    aput-wide v11, v18, v6

    aget-wide v11, v8, v5

    sub-long/2addr v11, v9

    aput-wide v11, v8, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    aget-wide v1, v19, v24

    add-long v1, v1, v30

    aput-wide v1, v19, v24

    aget-wide v1, v20, v24

    add-long v1, v1, v41

    aput-wide v1, v20, v24

    aget-object v1, v21, v24

    if-nez v1, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v21, v24

    :cond_6
    aget-object v1, v21, v24

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-wide v0, v23, v24

    add-long v0, v0, v34

    aput-wide v0, v23, v24

    aget-wide v0, p0, v24

    add-long v0, v0, v36

    aput-wide v0, p0, v24

    :cond_7
    :goto_3
    return-void
.end method
