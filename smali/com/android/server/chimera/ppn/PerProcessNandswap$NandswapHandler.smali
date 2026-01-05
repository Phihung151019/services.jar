.class public final Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final nativePackageNameFilter:[Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/ppn/PerProcessNandswap;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    iget-object p1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string/jumbo p1, "vendor.samsung.hardware.camera.provider"

    const-string/jumbo v0, "vendor.samsung.hardware.camera.provider-service_64"

    const-string/jumbo v1, "cameraserver"

    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->nativePackageNameFilter:[Ljava/lang/String;

    const-class p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static quitNandSwapAlwaysRunningProcessWithWriteEventLog(ILjava/lang/String;JIJLjava/util/List;)V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    move-object v2, p7

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x1e

    if-le v3, v4, :cond_0

    const/4 p7, 0x0

    invoke-virtual {v2, p7, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p7

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sub-long/2addr v0, p2

    const-string/jumbo p2, "ms"

    invoke-static {v2, v0, v1, p2}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-interface {p7}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object p5

    filled-new-array/range {p0 .. p5}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x13d6e9

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method


# virtual methods
.method public final canDoNandswapProcess(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    iget-object v0, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemRepository;->getProcStateAndOomScoreForPid(I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    iput v2, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->procState:I

    const/4 v2, 0x1

    aget v0, v0, v2

    iput v0, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->adj:I

    iget v3, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->ppnState:I

    if-ne v3, v2, :cond_3

    const/16 v3, 0x352

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    iget v4, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->uid:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x10

    if-eq p2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/16 p2, 0x64

    if-lt v0, p2, :cond_3

    sget-boolean p2, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object p2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p2, v4}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p2, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean p2, p2, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    if-eqz p2, :cond_1

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    monitor-exit v0

    goto :goto_1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    return v2

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "canDoNandswapProcess fail: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " pid:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " state:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->ppnState:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " adj:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->adj:I

    invoke-static {p2, p1, p0}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return v1
.end method

.method public final doNandswapApp(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;IIZ)J
    .locals 45

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p2

    move/from16 v5, p3

    const-string v2, " adj:"

    const-string v12, ") action:"

    const-string v3, " "

    const-string v13, "(pid "

    iget-object v14, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    const-string v15, ", "

    const-string/jumbo v6, "nandswap "

    const-string/jumbo v7, "nandswap end for "

    const-string/jumbo v8, "nandswap start for "

    const-string/jumbo v9, "nandswap"

    iget v10, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    iget-object v11, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    move-object/from16 v16, v6

    iget v6, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->procState:I

    move/from16 v17, v6

    iget v6, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->adj:I

    if-eqz p4, :cond_0

    const-string/jumbo v18, "activity"

    :goto_0
    move-object/from16 v1, v18

    goto :goto_1

    :cond_0
    const-string/jumbo v18, "non-activity"

    goto :goto_0

    :goto_1
    const/4 v0, 0x1

    if-ne v5, v0, :cond_1

    const-string/jumbo v19, "swaponly"

    move/from16 v20, v0

    :goto_2
    move-object/from16 v0, v19

    move/from16 v19, v6

    goto :goto_3

    :cond_1
    move/from16 v20, v0

    const/4 v0, 0x2

    if-ne v5, v0, :cond_2

    const-string/jumbo v19, "writebackonly"

    goto :goto_2

    :cond_2
    const-string/jumbo v19, "all"

    goto :goto_2

    :goto_3
    const-wide/16 v21, -0x1

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-wide/16 v5, 0x40

    :try_start_1
    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->-$$Nest$smreadZramBdstat()[J

    move-result-object v0

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->readZramWritebackLimit()J

    move-result-wide v23

    invoke-static {v10}, Landroid/os/Process;->getRss(I)[J

    move-result-object v25

    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v26

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, v19

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    const-string v5, " type:"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p3

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    move-object/from16 v19, v14

    move-object/from16 v32, v15

    invoke-static {v10, v5}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->compactProcessForWriteback(II)J

    move-result-wide v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") ret:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v19

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-long v6, v4, v30

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->-$$Nest$smreadZramBdstat()[J

    move-result-object v19

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->readZramWritebackLimit()J

    move-result-wide v21

    invoke-static {v10}, Landroid/os/Process;->getRss(I)[J

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-wide/from16 v30, v14

    :try_start_4
    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v14
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move/from16 v33, v8

    sub-long v8, v14, v26

    sub-long v34, v21, v23

    const-wide/16 v36, 0x4

    mul-long v34, v34, v36

    const-wide/16 v36, 0x0

    cmp-long v36, v30, v36

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    if-lez v36, :cond_4

    move-object/from16 v41, v2

    move-object/from16 v38, v3

    move-wide/from16 v39, v4

    move v3, v10

    move-object v2, v11

    move/from16 v28, v17

    move-wide/from16 v10, v34

    move/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v43, v14

    move-object/from16 v14, v16

    move-wide/from16 v16, v43

    move/from16 v15, v33

    const-wide/16 v33, 0x40

    :try_start_5
    invoke-static/range {v2 .. v11}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapLogger;->saveSwapOutLog(Ljava/lang/String;IIIJJJ)V

    invoke-virtual {v0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isKeyAppEnable()Z

    move-result v29

    if-eqz v29, :cond_3

    move-wide/from16 v35, v10

    iget-object v10, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mKeyApps:Ljava/util/Map;

    sget-object v11, Lcom/android/server/chimera/ppn/PerProcessNandswap;->STATUS_ALREADY_PPN:Ljava/lang/Integer;

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :catchall_0
    :goto_4
    move-wide/from16 v21, v30

    goto/16 :goto_b

    :catch_0
    :goto_5
    move-wide/from16 v21, v30

    goto/16 :goto_c

    :cond_3
    move-wide/from16 v35, v10

    goto :goto_6

    :cond_4
    move-object/from16 v41, v2

    move-object/from16 v38, v3

    move-wide/from16 v39, v4

    move v3, v10

    move-object v2, v11

    move/from16 v28, v17

    move-wide/from16 v35, v34

    move/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v43, v14

    move-object/from16 v14, v16

    move-wide/from16 v16, v43

    move/from16 v15, v33

    const-wide/16 v33, 0x40

    :goto_6
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", adj:"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state:"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v28

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v11, v32

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v41

    aget-wide v13, v12, v20

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v18, 0x2

    aget-wide v13, v12, v18

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3

    aget-wide v13, v12, p0

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, v16

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move/from16 v17, v1

    const-string v1, " ms, "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v28, v12, v20

    aget-wide v41, v25, v20

    move-object/from16 v16, v2

    sub-long v1, v28, v41

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v18, 0x2

    aget-wide v1, v12, v18

    aget-wide v28, v25, v18

    sub-long v1, v1, v28

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v1, v12, p0

    aget-wide v28, v25, p0

    sub-long v1, v1, v28

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v35

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v38

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_5
    move-wide/from16 v13, v16

    move/from16 v17, v28

    move-object/from16 v12, v41

    move-object/from16 v16, v2

    :goto_7
    if-eqz v37, :cond_6

    if-eqz v19, :cond_6

    move-object/from16 v2, v16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v1, v19

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v37 .. v37}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v17, v2

    move-object/from16 v23, v5

    move-object/from16 v22, v6

    move-object/from16 v24, v7

    move-object/from16 v21, v8

    filled-new-array/range {v16 .. v29}, [Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v2, v17

    const v5, 0x13d6e8

    invoke-static {v5, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_8

    :cond_6
    move-object/from16 v2, v16

    :goto_8
    const/16 v1, 0xf

    if-eq v4, v1, :cond_7

    move-object/from16 v1, p1

    move-wide/from16 v4, v39

    iput-wide v4, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->lastNandswapTime:J

    :cond_7
    if-nez p4, :cond_8

    invoke-static {v0, v3, v2, v12}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$mupdateLastNandswapStats(Lcom/android/server/chimera/ppn/PerProcessNandswap;ILjava/lang/String;[J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_8
    invoke-static/range {v33 .. v34}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v30

    :catchall_1
    :goto_9
    const-wide/16 v33, 0x40

    goto/16 :goto_4

    :catch_1
    :goto_a
    const-wide/16 v33, 0x40

    goto/16 :goto_5

    :catchall_2
    move-wide/from16 v30, v14

    goto :goto_9

    :catch_2
    move-wide/from16 v30, v14

    goto :goto_a

    :catchall_3
    const-wide/16 v33, 0x40

    goto :goto_b

    :catch_3
    const-wide/16 v33, 0x40

    goto :goto_c

    :catchall_4
    move-wide/from16 v33, v5

    goto :goto_b

    :catch_4
    move-wide/from16 v33, v5

    goto :goto_c

    :goto_b
    invoke-static/range {v33 .. v34}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v21

    :goto_c
    invoke-static/range {v33 .. v34}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v21
.end method

.method public final doSwapAfterBootFull()J
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    new-instance v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler$$ExternalSyntheticLambda0;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->getReclaimSetForNandswap(Ljava/util/function/Function;Z)Ljava/util/Set;

    move-result-object v1

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v7

    invoke-static {v7}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$smgetMemoryInfoIfDebugEnabled(Z)Ljava/lang/String;

    move-result-object v8

    check-cast v1, Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v5, 0x0

    move-wide v9, v5

    move-wide v11, v9

    move v6, v4

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    iget-object v13, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget-object v15, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    invoke-virtual {v15}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDelayCondition()Z

    move-result v16

    if-eqz v16, :cond_2

    if-eqz v7, :cond_1

    const-string/jumbo v1, "Swap After boot(Full) skip: app launch or lcd on "

    invoke-static {v14, v1, v13}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v1, "Swap After boot(Full) skip by AppLaunch or LCD On"

    goto :goto_1

    :cond_2
    iget-object v15, v15, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v15, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    if-nez v5, :cond_3

    if-eqz v7, :cond_0

    const-string/jumbo v5, "Swap After boot(Full) skip: no nandswap record "

    invoke-static {v14, v5, v13}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {v14}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAnonSizeAndZramSize(I)[J

    move-result-object v13

    const/16 v15, 0xf

    move-wide/from16 v16, v9

    const/4 v9, 0x1

    invoke-virtual {v0, v5, v15, v9, v4}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->doNandswapApp(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;IIZ)J

    move-result-wide v9

    cmp-long v5, v9, v16

    if-lez v5, :cond_4

    add-int/lit8 v6, v6, 0x1

    invoke-static {v14}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAnonSizeAndZramSize(I)[J

    move-result-object v5

    aget-wide v9, v13, v4

    aget-wide v13, v5, v4

    sub-long/2addr v9, v13

    add-long/2addr v9, v11

    move-wide v11, v9

    :cond_4
    move-wide/from16 v9, v16

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "Swap After boot(Full) successfully"

    :goto_1
    iget-object v0, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    move-wide v4, v11

    invoke-static/range {v0 .. v8}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$mappendLogMessage(Lcom/android/server/chimera/ppn/PerProcessNandswap;Ljava/lang/String;JJIZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4
.end method

.method public final doSwapAfterBootSome()J
    .locals 24

    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iget-object v5, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    iget-object v6, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v6}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v10, 0x0

    :cond_0
    :goto_0
    const-string/jumbo v12, "Swap After boot(Some) skip: not enough anonPages "

    iget-object v13, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    if-ge v10, v8, :cond_5

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v10, v10, 0x1

    check-cast v14, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    iget v15, v14, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v15, v14, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v5, v15}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$misSamsungProtectApps(Lcom/android/server/chimera/ppn/PerProcessNandswap;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string/jumbo v15, "system"

    iget-object v9, v14, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    :cond_1
    iget-object v9, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v15, v14, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    if-eqz v9, :cond_2

    iget v11, v14, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v11}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$smisAnonPageNotEnough(I)Z

    move-result v11

    if-eqz v11, :cond_4

    if-eqz v7, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v14, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v9, v11, v13}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-wide v11, v14, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastActivityTime:J

    sub-long v11, v2, v11

    const-wide/16 v17, 0xbb8

    cmp-long v11, v11, v17

    if-gez v11, :cond_3

    if-eqz v7, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Swap After boot(Some) skip: newly start "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v14, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v9, v11, v13}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v11, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    iget-object v12, v14, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget v13, v14, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    const/16 v14, -0x2710

    const/4 v9, -0x1

    invoke-direct {v11, v12, v13, v14, v9}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;-><init>(Ljava/lang/String;III)V

    move-object v9, v11

    :cond_4
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v8, Lcom/android/server/chimera/ppn/PerProcessNandswap$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-interface {v6, v8}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v6

    iget-object v8, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v8, v6}, Lcom/android/server/chimera/SystemRepository;->getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_7

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_7

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    iget-object v11, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, [I

    aget v11, v11, v8

    iput v11, v10, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->procState:I

    iget-object v11, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, [I

    aget v11, v11, v8

    iput v11, v10, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->adj:I

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    iget-object v6, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v6, v4}, Lcom/android/server/chimera/SystemRepository;->getNativeProcesses(Ljava/util/Set;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x0

    :cond_8
    :goto_3
    if-ge v8, v6, :cond_b

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v8, v8, 0x1

    check-cast v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget-object v11, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v14, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    if-eqz v11, :cond_a

    iget v14, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v14}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$smisAnonPageNotEnough(I)Z

    move-result v14

    if-eqz v14, :cond_9

    if-eqz v7, :cond_8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v11, v10, v13}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_3

    :cond_9
    const/4 v9, -0x1

    goto :goto_4

    :cond_a
    new-instance v11, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    iget-object v14, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget v10, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/16 v15, -0x3e8

    const/4 v9, -0x1

    invoke-direct {v11, v14, v10, v15, v9}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;-><init>(Ljava/lang/String;III)V

    :goto_4
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const-wide/16 v8, 0x0

    if-eqz v4, :cond_c

    iget-object v0, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSwapAfterBootLog:Lcom/android/internal/util/RingBuffer;

    const-string/jumbo v1, "Swap After boot(Some) no reclaim target!"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    invoke-static {v13, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v8

    :cond_c
    move-wide v9, v8

    invoke-static {v7}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$smgetMemoryInfoIfDebugEnabled(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-wide v11, v9

    const/4 v6, 0x0

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v4, :cond_11

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v14, v14, 0x1

    check-cast v15, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    invoke-virtual {v5}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDelayCondition()Z

    move-result v17

    if-eqz v17, :cond_e

    if-eqz v7, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Swap After boot(Some) skip: app launch or lcd on "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v15, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    invoke-static {v1, v4, v13}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_d
    const-string/jumbo v1, "Swap After boot(Some) skip by AppLaunch or Lcd on"

    move-wide/from16 v20, v2

    goto :goto_7

    :cond_e
    move-wide/from16 v17, v9

    iget-object v9, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v10, v15, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    if-nez v9, :cond_f

    iget-object v9, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v10, v15, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v15}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_f
    iget v10, v15, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->adj:I

    iput v10, v9, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->adj:I

    iget v10, v15, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->procState:I

    iput v10, v9, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->procState:I

    move-object v15, v9

    :goto_6
    iget v9, v15, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    invoke-static {v9}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAnonSizeAndZramSize(I)[J

    move-result-object v9

    const/16 v10, 0xf

    move-object/from16 v19, v1

    const/4 v1, 0x1

    move-wide/from16 v20, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v15, v10, v1, v2}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->doNandswapApp(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;IIZ)J

    move-result-wide v22

    cmp-long v1, v22, v17

    if-lez v1, :cond_10

    add-int/lit8 v6, v6, 0x1

    iget v1, v15, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    invoke-static {v1}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAnonSizeAndZramSize(I)[J

    move-result-object v1

    aget-wide v9, v9, v2

    aget-wide v15, v1, v2

    sub-long/2addr v9, v15

    add-long/2addr v11, v9

    :cond_10
    move-wide/from16 v9, v17

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    goto :goto_5

    :cond_11
    move-wide/from16 v20, v2

    const-string/jumbo v1, "Swap After boot(Some) successfully"

    :goto_7
    iget-object v0, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    move-wide v4, v11

    move-wide/from16 v2, v20

    invoke-static/range {v0 .. v8}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$mappendLogMessage(Lcom/android/server/chimera/ppn/PerProcessNandswap;Ljava/lang/String;JJIZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4
.end method

.method public final getNandswapNonActivityAppType(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;II)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget v3, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    iget-object v1, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    move/from16 p1, v4

    goto/16 :goto_7

    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    iget-object v6, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    if-ne v5, v3, :cond_2

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Skipping nandswap as process "

    const-string v2, " is system_server."

    invoke-static {v0, v1, v2, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_2
    iget-object v0, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    invoke-static {v0, v1}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$misSamsungProtectApps(Lcom/android/server/chimera/ppn/PerProcessNandswap;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    iget-object v5, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v5, v3}, Lcom/android/server/chimera/SystemRepository;->getProcStateAndOomScoreForPid(I)[I

    move-result-object v5

    const/4 v7, 0x1

    aget v5, v5, v7

    move/from16 v8, p3

    if-eq v5, v8, :cond_4

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Skipping nandswap for process"

    const-string v2, " adj is changed"

    invoke-static {v0, v1, v2, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_4
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->isWritebackQuotaAvailable()Z

    move-result v5

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-lt v2, v8, :cond_6

    const/4 v10, 0x6

    if-gt v2, v10, :cond_6

    if-eqz v5, :cond_5

    move v2, v9

    goto :goto_1

    :cond_5
    move v2, v4

    :goto_1
    if-nez v2, :cond_9

    move v2, v4

    goto :goto_2

    :cond_6
    const/16 v10, 0xe

    if-ne v2, v10, :cond_8

    :cond_7
    move v2, v7

    goto :goto_2

    :cond_8
    if-eqz v5, :cond_7

    move v2, v8

    :cond_9
    :goto_2
    if-ne v2, v9, :cond_a

    move v5, v7

    goto :goto_3

    :cond_a
    move v5, v4

    :goto_3
    invoke-static {v3}, Landroid/os/Process;->getRss(I)[J

    move-result-object v10

    aget-wide v11, v10, v4

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    const-string/jumbo v12, "Skipping nandswap for process "

    if-nez v11, :cond_b

    aget-wide v15, v10, v7

    cmp-long v11, v15, v13

    if-nez v11, :cond_b

    aget-wide v15, v10, v9

    cmp-long v11, v15, v13

    if-nez v11, :cond_b

    aget-wide v15, v10, v8

    cmp-long v11, v15, v13

    if-nez v11, :cond_b

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " with no memory usage. Dead?"

    invoke-static {v12, v1, v0, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_b
    if-eqz v5, :cond_c

    aget-wide v13, v10, v8

    goto :goto_4

    :cond_c
    aget-wide v13, v10, v9

    :goto_4
    const-wide/16 v15, 0x1388

    if-eqz v5, :cond_d

    const-wide/16 v17, 0x2710

    goto :goto_5

    :cond_d
    move-wide/from16 v17, v15

    :goto_5
    cmp-long v5, v13, v17

    const-string v11, "KB."

    if-gez v5, :cond_e

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "; anon RSS is too small: "

    invoke-static {v12, v1, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v1, v10, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_e
    iget-object v0, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mLastNandswapStats:Ljava/util/LinkedHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$LastNandswapStats;

    if-eqz v0, :cond_10

    iget-object v3, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$LastNandswapStats;->mName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "ignore lastNandswapStats because it is old stats for name: "

    const-string v5, " stats.name: "

    invoke-static {v0, v1, v5, v3, v6}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const/4 v0, 0x0

    :cond_10
    if-eqz v0, :cond_14

    aget-wide v13, v10, v9

    iget-object v0, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$LastNandswapStats;->mRssAfterNandswap:[J

    aget-wide v17, v0, v9

    sub-long v13, v13, v17

    aget-wide v17, v10, v8

    aget-wide v19, v0, v8

    move/from16 p1, v4

    sub-long v4, v17, v19

    if-ne v2, v7, :cond_11

    move-wide v7, v13

    goto :goto_6

    :cond_11
    if-ne v2, v9, :cond_12

    move-wide v7, v4

    goto :goto_6

    :cond_12
    add-long v7, v13, v4

    :goto_6
    cmp-long v0, v7, v15

    if-gtz v0, :cond_14

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ","

    const-string v2, " diff is too small: "

    invoke-static {v0, v1, v4, v5, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_7
    return p1

    :cond_14
    return v2
.end method

.method public final getReclaimSetForNandswap(Ljava/util/function/Function;Z)Ljava/util/Set;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iget-object v2, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    iget-object v4, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v4}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v6, v5, [I

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_0

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    iget v10, v10, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    aput v10, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    iget-object v9, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v9, v6}, Lcom/android/server/chimera/SystemRepository;->getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;

    move-result-object v6

    iget-object v9, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, [I

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, [I

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v5, :cond_4

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    aget v12, v6, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v1, v13}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_3

    iget-object v13, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v2, v13}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$misSamsungProtectApps(Lcom/android/server/chimera/ppn/PerProcessNandswap;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_2

    :cond_1
    new-instance v13, Landroid/util/Pair;

    iget v14, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v13}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget-object v13, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget v11, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    aget v14, v9, v10

    iget-object v15, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    if-nez v8, :cond_2

    new-instance v8, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    invoke-direct {v8, v13, v11, v12, v14}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;-><init>(Ljava/lang/String;III)V

    iget-object v12, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v12, v11, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iput v12, v8, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->adj:I

    iput v14, v8, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->procState:I

    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    const/16 v4, -0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v1, v7}, Lcom/android/server/chimera/SystemRepository;->getNativeProcesses(Ljava/util/Set;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_b

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    if-eqz p2, :cond_9

    iget-object v8, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v9, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iget-object v8, v8, Lcom/android/server/chimera/SystemRepository;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    move-object v9, v8

    const/4 v8, 0x0

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/String;

    :goto_4
    array-length v10, v9

    const/4 v11, 0x1

    if-ge v10, v11, :cond_6

    new-array v9, v11, [Ljava/lang/String;

    iget-object v10, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    aput-object v10, v9, v8

    :cond_6
    iget-object v10, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->nativePackageNameFilter:[Ljava/lang/String;

    array-length v11, v10

    move v12, v8

    :goto_5
    if-ge v12, v11, :cond_8

    aget-object v13, v10, v12

    aget-object v14, v9, v8

    invoke-virtual {v14, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_8
    iget-object v9, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-static {v2, v9}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$misSamsungProtectApps(Lcom/android/server/chimera/ppn/PerProcessNandswap;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_3

    :cond_9
    const/4 v8, 0x0

    :cond_a
    new-instance v9, Landroid/util/Pair;

    iget v10, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v9}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget-object v9, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget v7, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v2, v7, v4, v9}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->checkProcessStatusForNandswap(IILjava/lang/String;)V

    goto :goto_3

    :cond_b
    return-object v3
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v0, "default: "

    const-string/jumbo v3, "non_activity_app_msg: delayed:"

    const-string/jumbo v4, "activity_app_msg: delayed:"

    const-string/jumbo v5, "activity_app_msg: delayed:"

    :try_start_0
    iget-object v6, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    iget-boolean v7, v6, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    if-nez v7, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v7, v2, Landroid/os/Message;->what:I

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x1388

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v7, :cond_11

    if-eq v7, v14, :cond_11

    const/4 v3, 0x3

    if-eq v7, v12, :cond_5

    if-eq v7, v3, :cond_5

    const/4 v3, 0x4

    if-eq v7, v3, :cond_4

    const/4 v3, 0x5

    if-eq v7, v3, :cond_1

    iget-object v3, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v2, Landroid/os/Message;->what:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v0, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v6}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDelayCondition()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    iput v0, v3, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->doSwapAfterBootFull()J

    move-result-wide v4

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->doSwapAfterBootSome()J

    move-result-wide v4

    :goto_0
    add-int/2addr v0, v14

    if-ge v0, v3, :cond_17

    const-wide/16 v6, 0x2800

    cmp-long v4, v4, v6

    if-lez v4, :cond_17

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    iput v0, v3, Landroid/os/Message;->arg1:I

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_4
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->nandSwapAlwaysRunningProcess(J)V

    return-void

    :cond_5
    invoke-virtual {v6}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDelayCondition()Z

    move-result v0

    iget v6, v2, Landroid/os/Message;->what:I

    if-ne v6, v3, :cond_6

    move v6, v14

    goto :goto_1

    :cond_6
    move v6, v13

    :goto_1
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " delay Condition:"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v6, :cond_8

    iget-object v5, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    iget-object v5, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityAppDelayed:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v7, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    iget-object v7, v7, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityAppDelayed:Ljava/util/ArrayList;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_8
    iget-object v5, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    iget-object v5, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityApp:Ljava/util/PriorityQueue;

    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v7, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    iget-object v7, v7, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityApp:Ljava/util/PriorityQueue;

    invoke-virtual {v7}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    if-eqz v0, :cond_9

    :goto_3
    move v0, v14

    move v14, v13

    goto/16 :goto_5

    :cond_9
    :try_start_4
    iget v0, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v7, v0}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->canDoNandswapProcess(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;I)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    move v0, v13

    move v14, v0

    goto :goto_5

    :cond_b
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->isWritebackQuotaAvailable()Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v3

    goto :goto_4

    :cond_c
    move v0, v14

    :goto_4
    iget v5, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v7, v5, v0, v14}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->doNandswapApp(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;IIZ)J

    move-result-wide v10

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " iter: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " pid:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ret:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " pending apps:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    iget-object v4, v4, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityApp:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->size()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " delayed apps:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    iget-object v4, v4, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityAppDelayed:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    cmp-long v0, v10, v8

    if-lez v0, :cond_e

    move v0, v13

    goto :goto_5

    :cond_e
    if-gez v0, :cond_a

    goto :goto_3

    :goto_5
    if-eqz v14, :cond_f

    iget-object v0, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    invoke-virtual {v0, v7, v12}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->requestChangePPRState(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;I)V

    return-void

    :cond_f
    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    iget v4, v2, Landroid/os/Message;->arg1:I

    iget-object v5, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityAppDelayed:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput v4, v3, Landroid/os/Message;->arg1:I

    iget-object v0, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_10
    iget-object v0, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    invoke-virtual {v0, v7, v13}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->requestChangePPRState(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    :cond_11
    iget v0, v2, Landroid/os/Message;->arg1:I

    iget v4, v2, Landroid/os/Message;->arg2:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v7, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    invoke-virtual {v7}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDelayCondition()Z

    move-result v7

    iget v15, v2, Landroid/os/Message;->what:I

    if-ne v15, v14, :cond_12

    move v15, v14

    goto :goto_6

    :cond_12
    move v15, v13

    :goto_6
    if-eqz v15, :cond_13

    move-wide/from16 v16, v8

    iget-object v8, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    iget-object v8, v8, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapNonActivityAppDelayed:Ljava/util/ArrayList;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    goto :goto_7

    :cond_13
    move-wide/from16 v16, v8

    iget-object v8, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    iget-object v8, v8, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapNonActivityApp:Ljava/util/ArrayList;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    :goto_7
    iput-wide v5, v8, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->lastNandswapTime:J

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v5, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(pid "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") action:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " delay Condition:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    if-eqz v7, :cond_16

    if-nez v15, :cond_17

    iget-object v3, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    iget-object v5, v3, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapNonActivityAppDelayed:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v12, 0x14

    cmp-long v5, v5, v12

    if-gez v5, :cond_15

    iget-object v5, v3, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapNonActivityAppDelayed:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v3, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    invoke-virtual {v3, v14, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_15
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Skipping send NANDSWAP_NON_ACTIVITY_APP_DELAYED_MSG"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    invoke-virtual {v1, v8, v4, v0}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->getNandswapNonActivityAppType(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;II)I

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v1, v8, v4, v0, v13}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->doNandswapApp(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;IIZ)J

    move-result-wide v3

    cmp-long v0, v3, v16

    if-lez v0, :cond_17

    iget-object v0, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    invoke-virtual {v0, v8, v12}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->requestChangePPRState(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return-void

    :catch_0
    iget-object v0, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "failed to handleMessage "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-static {v1, v2, v0}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_17
    :goto_8
    return-void
.end method

.method public final nandSwapAlwaysRunningProcess(J)V
    .locals 39

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sget v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mAlwaysRunningQuotaPPNTriggerCnt:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    sput v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mAlwaysRunningQuotaPPNTriggerCnt:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v8, 0x0

    cmp-long v5, v1, v8

    if-lez v5, :cond_24

    const-wide/32 v10, 0x7d000

    cmp-long v5, v1, v10

    iget-object v12, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "sizeToReclaim is too big: "

    if-lez v5, :cond_1

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",reset to max value: 512000"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-wide v1, v10

    :cond_1
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->readZramWritebackLimit()J

    move-result-wide v10

    const-wide/16 v14, 0x4

    mul-long/2addr v10, v14

    cmp-long v5, v1, v10

    if-lez v5, :cond_2

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, ",reset to zramWriteBacklimitKb: "

    invoke-static {v13, v1, v2, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v10, v11, v12}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    goto :goto_0

    :cond_2
    move-wide v10, v1

    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->isWritebackQuotaAvailable()Z

    move-result v1

    new-instance v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v2, v6}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->getReclaimSetForNandswap(Ljava/util/function/Function;Z)Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    move-object v13, v2

    move-wide v2, v3

    move v4, v5

    move v15, v4

    move v14, v6

    move-wide v5, v8

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    move-wide/from16 v17, v8

    const-string v8, " KB"

    const-string v9, " process, reclaim "

    if-eqz v16, :cond_22

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move/from16 p1, v15

    move-object/from16 v15, v16

    check-cast v15, Landroid/util/Pair;

    move/from16 p2, v14

    iget-object v14, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    move-wide/from16 v19, v2

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v16, 0x3

    const/16 v15, 0xc8

    move/from16 v21, v4

    const/16 v22, 0x2

    if-lt v3, v15, :cond_5

    const/16 v4, 0x12c

    if-gt v3, v4, :cond_5

    if-eqz v1, :cond_4

    move/from16 v4, v16

    goto :goto_2

    :cond_4
    move/from16 v4, p2

    :goto_2
    const/16 v15, 0xa

    :goto_3
    move-wide/from16 v23, v5

    goto :goto_6

    :cond_5
    if-eqz v1, :cond_a

    const/16 v4, 0x64

    if-lt v3, v4, :cond_6

    if-ge v3, v15, :cond_6

    const/16 v15, 0xb

    :goto_4
    move-wide/from16 v23, v5

    move/from16 v4, v22

    goto :goto_6

    :cond_6
    const/16 v4, -0x2bc

    if-eq v3, v4, :cond_9

    const/16 v4, -0x320

    if-ne v3, v4, :cond_7

    goto :goto_5

    :cond_7
    const/16 v4, -0x3e8

    if-ne v3, v4, :cond_8

    const/16 v15, 0xd

    goto :goto_4

    :cond_8
    move/from16 v15, p1

    goto :goto_4

    :cond_9
    :goto_5
    const/16 v15, 0xc

    goto :goto_4

    :cond_a
    move/from16 v4, p1

    move v15, v4

    goto :goto_3

    :goto_6
    const-string v5, " "

    if-nez v4, :cond_c

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "Quota PPN skip: none_type "

    invoke-static {v2, v3, v0, v5, v5}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v12, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_b
    const/4 v0, -0x1

    const-string/jumbo v1, "NANDSWAP_TYPE_NONE"

    move-wide/from16 v2, v19

    move/from16 v4, v21

    move-wide/from16 v5, v23

    invoke-static/range {v0 .. v7}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->quitNandSwapAlwaysRunningProcessWithWriteEventLog(ILjava/lang/String;JIJLjava/util/List;)V

    return-void

    :cond_c
    iget-object v3, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    invoke-virtual {v3}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDelayCondition()Z

    move-result v6

    move/from16 v25, v1

    const-wide/16 v0, 0x1388

    if-eqz v6, :cond_f

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string/jumbo v4, "Quota PPN skip: app launch or lcd on "

    invoke-static {v2, v4, v12}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_d
    move-wide v1, v0

    const/4 v0, -0x1

    move-wide v4, v1

    const-string/jumbo v1, "app launched"

    move-object v12, v3

    move-wide v8, v4

    move-wide/from16 v2, v19

    move/from16 v4, v21

    move-wide/from16 v5, v23

    invoke-static/range {v0 .. v7}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->quitNandSwapAlwaysRunningProcessWithWriteEventLog(ILjava/lang/String;JIJLjava/util/List;)V

    move-wide v0, v5

    sub-long/2addr v10, v0

    const-wide/32 v0, 0xc800

    cmp-long v0, v10, v0

    if-lez v0, :cond_e

    iget-object v0, v12, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, v12, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    invoke-virtual {v1, v0, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_e
    return-void

    :cond_f
    move-wide/from16 v37, v23

    move-wide/from16 v23, v0

    move-wide/from16 v0, v37

    move-object v6, v3

    move/from16 v3, v21

    invoke-static {v2}, Landroid/os/Process;->getRss(I)[J

    move-result-object v21

    aget-wide v26, v21, p1

    cmp-long v26, v26, v17

    move-wide/from16 v27, v10

    const-string/jumbo v10, "Quota PPN skip: reclaim throttle quick "

    if-nez v26, :cond_10

    aget-wide v29, v21, p2

    cmp-long v11, v29, v17

    if-nez v11, :cond_10

    aget-wide v29, v21, v22

    cmp-long v11, v29, v17

    if-nez v11, :cond_10

    aget-wide v29, v21, v16

    cmp-long v11, v29, v17

    if-nez v11, :cond_10

    move/from16 v6, p2

    move-wide/from16 v31, v0

    :goto_7
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v24, v13

    goto/16 :goto_11

    :cond_10
    move/from16 v11, v16

    if-ne v4, v11, :cond_11

    aget-wide v29, v21, v22

    aget-wide v31, v21, v11

    add-long v29, v29, v31

    :goto_8
    move-wide/from16 v31, v0

    move-wide/from16 v0, v29

    goto :goto_9

    :cond_11
    move/from16 v16, v11

    move/from16 v11, p2

    if-ne v4, v11, :cond_12

    aget-wide v29, v21, v22

    goto :goto_8

    :cond_12
    aget-wide v29, v21, v16

    goto :goto_8

    :goto_9
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_13

    cmp-long v11, v0, v23

    if-gtz v11, :cond_13

    invoke-static {v2, v10, v0, v1, v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v29, v0

    const-string v0, " 5000"

    invoke-static {v11, v0, v12}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_13
    move-wide/from16 v29, v0

    :goto_a
    cmp-long v0, v29, v23

    if-lez v0, :cond_20

    iget-object v0, v6, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v14}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    if-nez v0, :cond_15

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string/jumbo v0, "Quota PPN skip: no nandswap record"

    invoke-static {v2, v0, v12}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_14
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v24, v13

    const/4 v6, 0x1

    goto/16 :goto_12

    :cond_15
    invoke-static {v2}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAnonSizeAndZramSize(I)[J

    move-result-object v1

    int-to-long v10, v4

    aget-wide v29, v1, p1

    const/16 v16, 0x1

    aget-wide v33, v1, v16

    cmp-long v16, v29, v17

    move-object/from16 v21, v1

    const-string/jumbo v1, "Quota PPN skip: reclaim throttle slow "

    if-nez v16, :cond_17

    cmp-long v16, v33, v17

    if-nez v16, :cond_17

    move-object/from16 v24, v13

    :cond_16
    move-object/from16 v8, p0

    move/from16 v9, p1

    const/4 v6, 0x1

    goto/16 :goto_10

    :cond_17
    const-wide/16 v35, 0x3

    cmp-long v16, v10, v35

    if-nez v16, :cond_18

    add-long v29, v29, v33

    :goto_b
    move-object/from16 v16, v8

    move-wide/from16 v10, v23

    move-object/from16 v23, v9

    move-wide/from16 v8, v29

    goto :goto_c

    :cond_18
    const-wide/16 v35, 0x1

    cmp-long v10, v10, v35

    if-nez v10, :cond_19

    goto :goto_b

    :cond_19
    const-wide/16 v10, 0x672

    move-object/from16 v16, v8

    move-object/from16 v23, v9

    move-wide/from16 v8, v33

    :goto_c
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v24

    if-eqz v24, :cond_1a

    cmp-long v24, v8, v10

    if-gtz v24, :cond_1a

    move-object/from16 v24, v13

    invoke-static {v2, v1, v8, v9, v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_1a
    move-object/from16 v24, v13

    :goto_d
    cmp-long v8, v8, v10

    if-lez v8, :cond_16

    move-object/from16 v8, p0

    move/from16 v9, p1

    invoke-virtual {v8, v0, v15, v4, v9}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->doNandswapApp(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;IIZ)J

    move-result-wide v10

    cmp-long v1, v10, v17

    if-lez v1, :cond_1e

    add-int/lit8 v4, v3, 0x1

    sget v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mAlwaysRunningQuotaPPNCnt:I

    const/4 v11, 0x1

    add-int/2addr v1, v11

    sput v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mAlwaysRunningQuotaPPNCnt:I

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->requestChangePPRState(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;I)V

    invoke-static {v2}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAnonSizeAndZramSize(I)[J

    move-result-object v0

    aget-wide v13, v21, v9

    aget-wide v29, v21, v11

    add-long v13, v13, v29

    aget-wide v10, v0, v9

    sub-long/2addr v13, v10

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string/jumbo v1, "Quota PPN reclaimed: "

    invoke-static {v2, v1, v13, v14, v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v2, v21, v9

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    aget-wide v2, v21, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v2, v0, v9

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v2, v0, v6

    invoke-static {v1, v2, v3, v12}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    goto :goto_e

    :cond_1b
    const/4 v6, 0x1

    :goto_e
    cmp-long v0, v13, v17

    if-lez v0, :cond_1f

    add-long v0, v31, v13

    cmp-long v2, v0, v27

    if-ltz v2, :cond_1d

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string/jumbo v2, "Quota PPN complete: nandswap "

    move-object/from16 v5, v23

    invoke-static {v4, v2, v0, v1, v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v10, v16

    invoke-static {v2, v10, v12}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    move-wide v5, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "complete"

    move-wide/from16 v2, v19

    invoke-static/range {v0 .. v7}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->quitNandSwapAlwaysRunningProcessWithWriteEventLog(ILjava/lang/String;JIJLjava/util/List;)V

    return-void

    :cond_1d
    move-wide/from16 v31, v0

    goto :goto_f

    :cond_1e
    const/4 v6, 0x1

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    const-string/jumbo v0, "Quota PPN failed: ret "

    const-string/jumbo v1, "pid "

    invoke-static {v2, v0, v10, v11, v1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " nandswapAction "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " nandswapType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_1f
    :goto_f
    move v14, v6

    move-object v0, v8

    move v15, v9

    move-wide/from16 v8, v17

    move-wide/from16 v2, v19

    move-object/from16 v13, v24

    move/from16 v1, v25

    move-wide/from16 v10, v27

    move-wide/from16 v5, v31

    goto/16 :goto_1

    :goto_10
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {v2, v1, v12}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_20
    const/4 v6, 0x1

    goto/16 :goto_7

    :goto_11
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {v2, v10, v12}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_21
    :goto_12
    move v4, v3

    goto :goto_f

    :cond_22
    move-wide/from16 v19, v2

    move v3, v4

    move-wide/from16 v31, v5

    move-object v10, v8

    move-object v5, v9

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    const-string/jumbo v0, "Quota PPN reclaim not enough: nandswap "

    move-wide/from16 v8, v31

    invoke-static {v3, v0, v8, v9, v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v10, v12}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_23
    move-wide/from16 v8, v31

    :goto_13
    const/4 v0, 0x0

    const-string/jumbo v1, "not enough"

    move v4, v3

    move-wide v5, v8

    move-wide/from16 v2, v19

    invoke-static/range {v0 .. v7}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->quitNandSwapAlwaysRunningProcessWithWriteEventLog(ILjava/lang/String;JIJLjava/util/List;)V

    return-void

    :cond_24
    move-wide v2, v3

    const/4 v0, -0x1

    const-string/jumbo v1, "Target < 0"

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-static/range {v0 .. v7}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->quitNandSwapAlwaysRunningProcessWithWriteEventLog(ILjava/lang/String;JIJLjava/util/List;)V

    return-void
.end method
