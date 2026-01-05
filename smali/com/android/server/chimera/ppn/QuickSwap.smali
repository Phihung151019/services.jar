.class public final Lcom/android/server/chimera/ppn/QuickSwap;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final QUICKSWAP_BLOCKLIST:Ljava/util/List;


# instance fields
.field public isDoingQuickSwap:Z

.field public final isDoingQuickSwapLock:Ljava/lang/Object;

.field public mGenieDump:Ljava/util/ArrayList;

.field public final mIsNandswapOn:Z

.field public mLatestAnonZramDiff:J

.field public mLatestLatency:J

.field public mLatestPageoutCnt:I

.field public mLatestQuickSwapType:I

.field public mLatestResult:Ljava/lang/String;

.field public mLatestTimestampMS:J

.field public mLatestWBTimestampMS:J

.field public mLatestWritebackCnt:I

.field public final mPPN:Lcom/android/server/chimera/ppn/PerProcessNandswap;

.field public mPageoutCnt:I

.field public final mQuickSwapHandler:Lcom/android/server/chimera/ppn/QuickSwap$QuickSwapHandler;

.field public final mQuickSwapThread:Lcom/android/server/ServiceThread;

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;

.field public final mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field public mTriggeredCnt:I

.field public mWritebackCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string/jumbo v4, "com.samsung.android.offline.languagemodel.chn"

    const-string/jumbo v5, "com.android.bluetooth"

    const-string/jumbo v0, "com.google.android.aicore"

    const-string/jumbo v1, "com.samsung.android.aicore"

    const-string/jumbo v2, "com.samsung.android.wallpaper.magician"

    const-string/jumbo v3, "com.samsung.android.offline.languagemodel"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/ppn/QuickSwap;->QUICKSWAP_BLOCKLIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/chimera/ppn/PerProcessNandswap;Lcom/android/server/chimera/SystemRepository;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mTriggeredCnt:I

    iput v0, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mPageoutCnt:I

    iput v0, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mWritebackCnt:I

    iput v0, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestQuickSwapType:I

    const-string/jumbo v1, "N/A"

    iput-object v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestResult:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestTimestampMS:J

    const-wide/32 v3, -0x668a0

    iput-wide v3, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestWBTimestampMS:J

    iput v0, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestPageoutCnt:I

    iput v0, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestWritebackCnt:I

    iput-wide v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestAnonZramDiff:J

    iput-wide v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestLatency:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mGenieDump:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/android/server/chimera/ppn/QuickSwap;->isDoingQuickSwap:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ppn/QuickSwap;->isDoingQuickSwapLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mPPN:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    iput-object p2, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo p1, "ro.sys.kernelmemory.nandswap.quickswap.nandswap"

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mIsNandswapOn:Z

    const/4 p1, 0x4

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object p1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string/jumbo p1, "thread pool created, size is 4"

    const-string/jumbo v0, "QuickSwap"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/server/ServiceThread;

    const-string/jumbo v0, "QuickSwapThread"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1, p2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object p1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mQuickSwapThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->isAlive()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->start()V

    :cond_0
    new-instance p1, Lcom/android/server/chimera/ppn/QuickSwap$QuickSwapHandler;

    invoke-direct {p1, p0}, Lcom/android/server/chimera/ppn/QuickSwap$QuickSwapHandler;-><init>(Lcom/android/server/chimera/ppn/QuickSwap;)V

    iput-object p1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mQuickSwapHandler:Lcom/android/server/chimera/ppn/QuickSwap$QuickSwapHandler;

    return-void
.end method

.method public static native __setRbinRefillModePath()Z
.end method

.method public static native __writeRbinRefillMode(I)Z
.end method

.method public static getTotalAnonDRAMUsedKb(Lcom/android/internal/util/MemInfoReader;)J
    .locals 9

    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    move-result-object v0

    const/16 v1, 0x18

    aget-wide v1, v0, v1

    const/16 v3, 0x19

    aget-wide v3, v0, v3

    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v5

    add-long v7, v1, v3

    add-long/2addr v7, v5

    const-string/jumbo p0, "du: "

    const-string v0, " = aa "

    invoke-static {p0, v7, v8, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " + ia "

    const-string v1, " + zr "

    invoke-static {p0, v0, v3, v4, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    const-string/jumbo v0, "QuickSwap"

    invoke-static {p0, v5, v6, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    return-wide v7
.end method

.method public static getTotalFileUsedKb(Lcom/android/internal/util/MemInfoReader;)J
    .locals 7

    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    move-result-object p0

    const/16 v0, 0x1a

    aget-wide v0, p0, v0

    const/16 v2, 0x1b

    aget-wide v2, p0, v2

    add-long v4, v0, v2

    const-string p0, " af "

    const-string v6, " + if "

    invoke-static {p0, v0, v1, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo v0, "QuickSwap"

    invoke-static {p0, v2, v3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    return-wide v4
.end method


# virtual methods
.method public final doQuickSwap(IJ)V
    .locals 3

    const-string/jumbo v0, "do QuickSwap execute with exception!"

    const/4 v1, 0x0

    const/16 v2, -0x384

    filled-new-array {v1, v2}, [I

    move-result-object v2

    :try_start_0
    invoke-virtual {p0, p2, p3, v2, p1}, Lcom/android/server/chimera/ppn/QuickSwap;->doQuickSwap(J[II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->isDoingQuickSwapLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->isDoingQuickSwap:Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string/jumbo p2, "QuickSwap"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->isDoingQuickSwapLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iput-boolean v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->isDoingQuickSwap:Z

    monitor-exit p1

    return-void

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :goto_0
    iget-object p2, p0, Lcom/android/server/chimera/ppn/QuickSwap;->isDoingQuickSwapLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->isDoingQuickSwap:Z

    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw p1

    :catchall_3
    move-exception p0

    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0
.end method

.method public final doQuickSwap(J[II)V
    .locals 46

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    const-string v4, " threshold: 0.1"

    const-string/jumbo v5, "storageFreeRatio: "

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, v1, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestTimestampMS:J

    sub-long v10, v8, v10

    const-wide/32 v12, 0xea60

    cmp-long v6, v10, v12

    const-string/jumbo v10, "QuickSwap"

    if-gtz v6, :cond_0

    const-string/jumbo v0, "QuickSwap throttled!"

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v6, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v6}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v6}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    :try_start_0
    new-instance v13, Landroid/os/StatFs;

    const-string v14, "/data"

    invoke-direct {v13, v14}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/os/StatFs;->getFreeBytes()J

    move-result-wide v14
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-double v14, v14

    const/16 v16, 0x1

    :try_start_1
    invoke-virtual {v13}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v11

    long-to-double v11, v11

    div-double/2addr v14, v11

    const-wide v11, 0x3fb999999999999aL    # 0.1

    cmpg-double v11, v14, v11

    if-gez v11, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%.2f"

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v5, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    move/from16 v4, v16

    :goto_0
    move v11, v4

    goto :goto_1

    :catch_0
    const/16 v16, 0x1

    :catch_1
    const-string/jumbo v4, "Read StatFs Failed!"

    invoke-static {v10, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v11, v16

    :goto_1
    const-wide/32 v4, 0x200000

    cmp-long v4, v2, v4

    const-string v12, ", "

    if-nez v4, :cond_3

    invoke-virtual {v6}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    move-result-object v4

    const-wide/16 v18, 0x0

    aget-wide v13, v4, v16

    const/16 v5, 0x1d

    move-object v15, v4

    aget-wide v4, v15, v5

    const/16 v20, 0x6

    move-wide/from16 v21, v8

    aget-wide v8, v15, v20

    sub-long v23, v13, v4

    move-object/from16 v20, v6

    sub-long v6, v23, v8

    const/16 v23, 0x1a

    aget-wide v0, v15, v23

    const/16 v23, 0x1b

    move-object/from16 v24, v10

    move/from16 v25, v11

    aget-wide v10, v15, v23

    move-wide/from16 v26, v10

    add-long v10, v0, v26

    add-long v28, v6, v10

    cmp-long v15, v2, v28

    if-lez v15, :cond_2

    sub-long v28, v2, v28

    move-wide/from16 v44, v28

    move-wide/from16 v28, v0

    move-wide/from16 v0, v44

    goto :goto_2

    :cond_2
    move-wide/from16 v28, v0

    move-wide/from16 v0, v18

    :goto_2
    const-string/jumbo v15, "QuickSwap : tr: "

    move-wide/from16 v30, v10

    const-string v10, " = ts "

    invoke-static {v15, v0, v1, v10}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " - "

    const-string v3, " ("

    invoke-static {v10, v2, v6, v7, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {v10, v12, v4, v5, v12}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")  - "

    move-wide/from16 v4, v30

    invoke-static {v10, v2, v4, v5, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    move-wide/from16 v2, v28

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v26

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v7, v24

    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v2, v0, v18

    if-gtz v2, :cond_4

    goto/16 :goto_24

    :cond_3
    move-object/from16 v20, v6

    move-wide/from16 v21, v8

    move-object v7, v10

    move/from16 v25, v11

    const-wide/16 v18, 0x0

    move-wide v0, v2

    :cond_4
    invoke-static/range {v20 .. v20}, Lcom/android/server/chimera/ppn/QuickSwap;->getTotalAnonDRAMUsedKb(Lcom/android/internal/util/MemInfoReader;)J

    move-result-wide v8

    move-object/from16 v2, p0

    iget-boolean v10, v2, Lcom/android/server/chimera/ppn/QuickSwap;->mIsNandswapOn:Z

    if-eqz v25, :cond_5

    if-eqz v10, :cond_5

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->isWritebackQuotaAvailable()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-wide v3, v2, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestWBTimestampMS:J

    sub-long v3, v21, v3

    const-wide/32 v5, 0x927c0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_5

    move/from16 v6, v16

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    invoke-static/range {v20 .. v20}, Lcom/android/server/chimera/ppn/QuickSwap;->getTotalFileUsedKb(Lcom/android/internal/util/MemInfoReader;)J

    move-result-wide v13

    const-string/jumbo v3, "QuickSwap start"

    invoke-static {v7, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v2, Lcom/android/server/chimera/ppn/QuickSwap;->mTriggeredCnt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/chimera/ppn/QuickSwap;->mTriggeredCnt:I

    new-instance v3, Lcom/android/server/chimera/ppn/QuickSwap$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iget-object v3, v2, Lcom/android/server/chimera/ppn/QuickSwap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v3}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v15

    move-wide/from16 p1, v0

    new-instance v0, Lcom/android/server/chimera/ppn/QuickSwap$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {v15, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-virtual {v3, v0}, Lcom/android/server/chimera/SystemRepository;->getNativeProcesses(Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    move-wide/from16 v23, v8

    const/4 v15, 0x0

    :goto_4
    iget-object v8, v2, Lcom/android/server/chimera/ppn/QuickSwap;->mPPN:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    const/16 v27, 0x2

    const-string v9, ") error."

    move-object/from16 v28, v0

    const-string/jumbo v0, "Process.getRss("

    move/from16 v29, v6

    const-string v6, " expected_reclaimed: "

    move/from16 v30, v10

    const-string v10, " swaprss "

    move-wide/from16 v31, v13

    const-string/jumbo v13, "reclaimCadidate: "

    const/16 v33, 0x3

    const-wide/16 v34, 0x6

    if-ge v15, v1, :cond_10

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v14, v36

    check-cast v14, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    move/from16 v36, v1

    sget-object v1, Lcom/android/server/chimera/ppn/QuickSwap;->QUICKSWAP_BLOCKLIST:Ljava/util/List;

    move-object/from16 v37, v5

    iget-object v5, v14, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_5
    move-object/from16 v0, v28

    move/from16 v6, v29

    move/from16 v10, v30

    move-wide/from16 v13, v31

    move/from16 v1, v36

    move-object/from16 v5, v37

    goto :goto_4

    :cond_6
    iget v1, v14, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-virtual {v3, v1}, Lcom/android/server/chimera/SystemRepository;->getProcStateAndOomScoreForPid(I)[I

    move-result-object v1

    aget v1, v1, v16

    const/16 v5, -0x3e8

    if-lt v1, v5, :cond_f

    const/16 v5, 0xfa

    if-le v1, v5, :cond_7

    goto :goto_5

    :cond_7
    move-object/from16 v5, p3

    move-object/from16 v38, v3

    array-length v3, v5

    const/4 v5, 0x0

    const/16 v26, 0x0

    :goto_6
    if-ge v5, v3, :cond_9

    move/from16 v39, v3

    aget v3, p3, v5

    if-ne v1, v3, :cond_8

    move/from16 v26, v16

    :cond_8
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v39

    goto :goto_6

    :cond_9
    if-eqz v26, :cond_a

    move-object/from16 v0, v28

    move/from16 v6, v29

    move/from16 v10, v30

    move-wide/from16 v13, v31

    move/from16 v1, v36

    move-object/from16 v5, v37

    move-object/from16 v3, v38

    goto :goto_4

    :cond_a
    iget v3, v14, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v3}, Landroid/os/Process;->getRss(I)[J

    move-result-object v3

    if-eqz v3, :cond_b

    array-length v5, v3

    move-object/from16 v26, v3

    const/4 v3, 0x4

    if-ge v5, v3, :cond_c

    :cond_b
    move-object/from16 v40, v11

    move-object/from16 v39, v12

    move/from16 v26, v15

    goto/16 :goto_a

    :cond_c
    aget-wide v2, v26, v27

    move-object/from16 v40, v11

    move-object/from16 v39, v12

    aget-wide v11, v26, v33

    div-long v26, v11, v34

    add-long v26, v26, v2

    move-object/from16 v41, v8

    div-long v8, v26, v34

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v14, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    const-string v13, " adj: "

    move/from16 v26, v15

    const-string v15, " anonrss: "

    invoke-static {v5, v1, v13, v15, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {v0, v10, v11, v12, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v0, v8, v9, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    goto :goto_7

    :cond_d
    move/from16 v26, v15

    :goto_7
    new-instance v0, Landroid/util/Pair;

    iget v2, v14, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    cmp-long v3, v8, v18

    if-lez v3, :cond_e

    goto :goto_8

    :cond_e
    const-wide/16 v8, 0x1

    :goto_8
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget-object v0, v14, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget v2, v14, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    move-object/from16 v8, v41

    invoke-virtual {v8, v2, v1, v0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->checkProcessStatusForNandswap(IILjava/lang/String;)V

    :goto_9
    move-object/from16 v2, p0

    move/from16 v15, v26

    move-object/from16 v0, v28

    move/from16 v6, v29

    move/from16 v10, v30

    move-wide/from16 v13, v31

    move/from16 v1, v36

    move-object/from16 v5, v37

    move-object/from16 v3, v38

    move-object/from16 v12, v39

    move-object/from16 v11, v40

    goto/16 :goto_4

    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v14, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v0, v9, v7, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_9

    :cond_f
    move/from16 v26, v15

    move-object/from16 v2, p0

    goto/16 :goto_5

    :cond_10
    move-object/from16 v40, v11

    move-object/from16 v39, v12

    move-object/from16 v1, v28

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_11
    :goto_b
    if-ge v3, v2, :cond_16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "/proc/"

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_12

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_11

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Skipped by dead process pid: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v11, v5, v7}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_b

    :cond_12
    iget v11, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v11}, Landroid/os/Process;->getRss(I)[J

    move-result-object v11

    if-eqz v11, :cond_13

    array-length v12, v11

    const/4 v14, 0x4

    if-ge v12, v14, :cond_14

    :cond_13
    move-object/from16 p3, v1

    move/from16 v28, v2

    move/from16 v36, v3

    move-object/from16 v37, v13

    const/16 v3, -0x3e8

    goto :goto_e

    :cond_14
    aget-wide v14, v11, v27

    aget-wide v11, v11, v33

    div-long v37, v11, v34

    add-long v37, v37, v14

    move-object/from16 p3, v1

    move/from16 v28, v2

    div-long v1, v37, v34

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v36

    if-eqz v36, :cond_15

    move/from16 v36, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v37, v13

    iget v13, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " adj: -1000 anonrss: "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {v3, v10, v11, v12, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v3, v1, v2, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    goto :goto_c

    :cond_15
    move/from16 v36, v3

    move-object/from16 v37, v13

    :goto_c
    new-instance v3, Landroid/util/Pair;

    iget v11, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v3, v11, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget-object v1, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget v2, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/16 v3, -0x3e8

    invoke-virtual {v8, v2, v3, v1}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->checkProcessStatusForNandswap(IILjava/lang/String;)V

    :goto_d
    move-object/from16 v1, p3

    move/from16 v2, v28

    move/from16 v3, v36

    move-object/from16 v13, v37

    goto/16 :goto_b

    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v2, v9, v7, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_d

    :cond_16
    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide/from16 v1, p1

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    move-object/from16 v9, v40

    invoke-virtual {v9, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v1, v4

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_17

    const-string/jumbo v4, "reclaimSet remaining: "

    const-string v5, " expected_reclaimed "

    invoke-static {v4, v1, v2, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    cmp-long v3, v1, v18

    if-gtz v3, :cond_18

    goto :goto_10

    :cond_18
    move-object/from16 v40, v9

    goto :goto_f

    :cond_19
    move-object/from16 v9, v40

    :goto_10
    invoke-virtual {v9}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-nez v0, :cond_1a

    const-string/jumbo v0, "reclaimSet size 0!!"

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1a
    invoke-static/range {v20 .. v20}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getSwapFreePercentage(Lcom/android/internal/util/MemInfoReader;)I

    move-result v0

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getMinSwapFreePercentage()I

    move-result v1

    const-string/jumbo v10, "QuickSwap skip: no nandswap record"

    const-string/jumbo v11, "QuickSwap skip: app launch "

    if-lt v0, v1, :cond_23

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, 0x0

    :goto_11
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isInAppLaunch()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {v2, v11, v7}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1b
    move/from16 v14, v16

    goto :goto_11

    :cond_1c
    iget-object v0, v8, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    if-nez v3, :cond_1e

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {v2, v10, v7}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1d
    move-object/from16 v1, p0

    goto :goto_11

    :cond_1e
    move-object/from16 v1, p0

    :try_start_2
    iget-object v15, v1, Lcom/android/server/chimera/ppn/QuickSwap;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/android/server/chimera/ppn/QuickSwap$$ExternalSyntheticLambda0;
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_3

    move/from16 v6, v29

    :try_start_3
    invoke-direct/range {v0 .. v6}, Lcom/android/server/chimera/ppn/QuickSwap$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/chimera/ppn/QuickSwap;ILcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;JZ)V
    :try_end_3
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_3 .. :try_end_3} :catch_2

    move/from16 v29, v6

    :try_start_4
    invoke-virtual {v15, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_11

    :catch_2
    move/from16 v29, v6

    :catch_3
    const-string/jumbo v0, "QuickSwap Skip: rejected submit "

    invoke-static {v2, v0, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_1f
    move-object/from16 v1, p0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_12
    if-ge v0, v2, :cond_20

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    check-cast v4, Ljava/util/concurrent/Future;

    :try_start_5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_5} :catch_5

    move/from16 p1, v5

    const-wide/16 v5, 0x3

    :try_start_6
    invoke-interface {v4, v5, v6, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_4

    add-int/2addr v3, v0

    goto :goto_14

    :catch_4
    move-exception v0

    goto :goto_13

    :catch_5
    move-exception v0

    move/from16 p1, v5

    :goto_13
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "QuickSwap async task execute with exception! "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v7}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_14
    move/from16 v0, p1

    goto :goto_12

    :cond_20
    invoke-virtual {v9}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-ne v0, v3, :cond_21

    const-string/jumbo v0, "PO=comp"

    goto :goto_15

    :cond_21
    if-eqz v14, :cond_22

    const-string/jumbo v0, "PO=laun"

    goto :goto_15

    :cond_22
    const-string/jumbo v0, "PO=skip"

    :goto_15
    move-object v2, v0

    goto :goto_16

    :cond_23
    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "QuickSwap Skip: swap is full (free is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v20 .. v20}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getSwapFreePercentage(Lcom/android/internal/util/MemInfoReader;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "PO=full"

    const/4 v3, 0x0

    goto :goto_15

    :goto_16
    if-eqz v25, :cond_2e

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->isWritebackQuotaAvailable()Z

    move-result v0

    if-eqz v0, :cond_2e

    if-eqz v30, :cond_2e

    invoke-virtual {v9}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v12, 0x0

    const/16 v17, 0x0

    :cond_24
    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isInAppLaunch()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {v6, v11, v7}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_25
    move/from16 v17, v16

    goto :goto_17

    :cond_26
    iget-object v0, v8, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    if-nez v0, :cond_27

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {v6, v10, v7}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_27
    move-object/from16 p1, v4

    :try_start_7
    iget-object v15, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->procState:I

    iget v5, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->adj:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v40, v9

    :try_start_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 v20, v10

    :try_start_9
    const-string/jumbo v10, "QuickSwap WB : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object/from16 v25, v11

    const-wide/16 v10, 0x40

    :try_start_a
    invoke-static {v10, v11, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v9
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const-string v10, "(pid "

    if-eqz v9, :cond_28

    :try_start_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "QuickSwap WB start for "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") adj:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " pss:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :catchall_0
    move-exception v0

    const-wide/16 v10, 0x40

    goto/16 :goto_21

    :catch_6
    move-exception v0

    :goto_18
    move-object/from16 v4, v39

    goto/16 :goto_1f

    :cond_28
    :goto_19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    move/from16 v9, v27

    move-wide/from16 v26, v13

    invoke-static {v6, v9}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->compactProcessForWriteback(II)J

    move-result-wide v13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v33

    move-object v11, v10

    sub-long v9, v33, v26

    cmp-long v26, v13, v18

    if-lez v26, :cond_29

    move-object/from16 v26, v11

    const/4 v11, 0x2

    invoke-virtual {v8, v0, v11}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->requestChangePPRState(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;I)V

    goto :goto_1a

    :cond_29
    move-object/from16 v26, v11

    const/4 v11, 0x2

    :goto_1a
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "QuickSwap WB end for "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") ret: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", adj:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", state:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object/from16 v4, v39

    :try_start_c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_1b

    :catch_7
    move-exception v0

    goto :goto_1f

    :cond_2a
    move-object/from16 v4, v39

    :goto_1b
    add-int/lit8 v12, v12, 0x1

    const-wide/16 v10, 0x40

    :goto_1c
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_20

    :catch_8
    move-exception v0

    :goto_1d
    move-object/from16 v25, v11

    goto :goto_18

    :catch_9
    move-exception v0

    :goto_1e
    move-object/from16 v20, v10

    goto :goto_1d

    :catch_a
    move-exception v0

    move-object/from16 v40, v9

    goto :goto_1e

    :goto_1f
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    const-wide/16 v10, 0x40

    goto :goto_1c

    :goto_20
    move-object/from16 v39, v4

    move-object/from16 v10, v20

    move-object/from16 v11, v25

    move-object/from16 v9, v40

    const/16 v27, 0x2

    move-object/from16 v4, p1

    goto/16 :goto_17

    :goto_21
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_2b
    move-object/from16 v40, v9

    move-object/from16 v4, v39

    invoke-virtual/range {v40 .. v40}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-ne v0, v12, :cond_2c

    const-string v0, " WB=comp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_2c
    if-eqz v17, :cond_2d

    const-string v0, " WB=laun"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_2d
    const-string v0, " WB=skip"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_22
    move-object v9, v0

    move v0, v12

    goto :goto_23

    :cond_2e
    move-object/from16 v4, v39

    const-string/jumbo v0, "QuickSwap Skip: writeback_limit is over"

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, " WB=over"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    const/4 v0, 0x0

    :goto_23
    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    invoke-static {v2}, Lcom/android/server/chimera/ppn/QuickSwap;->getTotalFileUsedKb(Lcom/android/internal/util/MemInfoReader;)J

    move-result-wide v5

    sub-long v13, v31, v5

    cmp-long v5, v13, v18

    if-gez v5, :cond_2f

    move-wide/from16 v13, v18

    :cond_2f
    invoke-static {v2}, Lcom/android/server/chimera/ppn/QuickSwap;->getTotalAnonDRAMUsedKb(Lcom/android/internal/util/MemInfoReader;)J

    move-result-wide v5

    sub-long v5, v23, v5

    cmp-long v2, v5, v18

    if-gez v2, :cond_30

    move-wide/from16 v5, v18

    :cond_30
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const-string/jumbo v2, "QuickSwap done: "

    const-string v8, ", PO "

    move/from16 v15, p4

    invoke-static {v15, v2, v4, v9, v8}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", WB "

    const-string v8, ", anon"

    invoke-static {v3, v0, v4, v8, v2}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "KB and file "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "KB in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v10, v10, v21

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/server/chimera/ppn/QuickSwap;->mGenieDump:Ljava/util/ArrayList;

    if-eqz v2, :cond_31

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v7, 0x5

    if-ge v2, v7, :cond_31

    iget-object v2, v1, Lcom/android/server/chimera/ppn/QuickSwap;->mGenieDump:Ljava/util/ArrayList;

    const-string/jumbo v7, "QuickSwap Time : "

    const-string v8, " ms Anon : "

    invoke-static {v7, v10, v11, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " kB File : "

    const-string v12, " kB PO="

    invoke-static {v7, v8, v13, v14, v12}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " WB="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    move-wide v12, v7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sub-long v12, v12, v21

    invoke-static {v2, v12, v13, v4}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-wide v12, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-wide v13, v12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-wide/from16 v16, v13

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object v10, v2

    move-wide/from16 v42, v16

    filled-new-array/range {v8 .. v13}, [Ljava/lang/Object;

    move-result-object v2

    const v4, 0x13d6ea

    invoke-static {v4, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget v2, v1, Lcom/android/server/chimera/ppn/QuickSwap;->mPageoutCnt:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/chimera/ppn/QuickSwap;->mPageoutCnt:I

    iget v2, v1, Lcom/android/server/chimera/ppn/QuickSwap;->mWritebackCnt:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/android/server/chimera/ppn/QuickSwap;->mWritebackCnt:I

    iput v15, v1, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestQuickSwapType:I

    iput-object v9, v1, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestResult:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestTimestampMS:J

    if-eqz v29, :cond_32

    iput-wide v7, v1, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestWBTimestampMS:J

    :cond_32
    iput v3, v1, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestPageoutCnt:I

    iput v0, v1, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestWritebackCnt:I

    iput-wide v5, v1, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestAnonZramDiff:J

    move-wide/from16 v12, v42

    iput-wide v12, v1, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestLatency:J

    :goto_24
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    const-string v0, "    configs"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      threadpoolsize: 4"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "      NS: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mIsNandswapOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    stats"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "      triggerd_cnt: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mTriggeredCnt:I

    const-string v2, "      PO_cnt: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mPageoutCnt:I

    const-string v3, "      WB_cnt: "

    invoke-static {v0, v1, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mWritebackCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    latest"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "      type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestQuickSwapType:I

    const-string v4, "      Result: "

    invoke-static {v0, v1, p1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestResult:Ljava/lang/String;

    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestPageoutCnt:I

    invoke-static {v0, v1, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestWritebackCnt:I

    const-string v2, "      anonZramDiff: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestAnonZramDiff:J

    const-string v3, "      latency: "

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestLatency:J

    const-string v3, "      time: "

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestTimestampMS:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
