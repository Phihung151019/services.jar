.class public final Lcom/android/server/chimera/ppn/PerProcessNandswap;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final FAST_MADVISE_ENABLED:Z

.field public static INSTANCE:Lcom/android/server/chimera/ppn/PerProcessNandswap;

.field public static final IS_DEBUG_LEVEL_LOW:Z

.field public static final NANDSWAP_EXCEPTION_PKGNAMES:[Ljava/lang/String;

.field public static final STATUS_ALREADY_PPN:Ljava/lang/Integer;

.field public static final STATUS_KEY_APP:Ljava/lang/Integer;

.field public static final SWAP_AFTER_BOOT_LOW_SWAP_PERCENT:I

.field public static __DebugEnabled:Ljava/lang/Boolean;

.field public static __DelayWhenLcdOnEnabled:Ljava/lang/Boolean;

.field public static __MinSwapFreePercentage:Ljava/lang/Integer;

.field public static __PolicyVersion:Ljava/lang/Integer;

.field public static __PrefetchActionEnabled:Ljava/lang/Boolean;

.field public static __PrefetchSupported:Ljava/lang/Boolean;

.field public static __SlotCount:I

.field public static __SlotCountMap:Ljava/util/ArrayList;

.field public static __WritebackOnBGEnabled:Ljava/lang/Boolean;

.field public static __WritebackOnFreezeEnabled:Ljava/lang/Boolean;

.field public static mAlwaysRunningQuotaPPNCnt:I

.field public static mAlwaysRunningQuotaPPNTriggerCnt:I


# instance fields
.field public WRITEBACK_ENABLED:Z

.field public __KeyAppEnable:Ljava/lang/Boolean;

.field public __PageoutCachedEmptyEnable:Ljava/lang/Boolean;

.field public __QuickSwapEnable:Ljava/lang/Boolean;

.field public __SwapAfterBootEnable:Ljava/lang/Boolean;

.field public mBootCompleteUptimeMillis:J

.field public mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

.field public final mKeyApps:Ljava/util/Map;

.field public mLastDeviceWakeupTime:J

.field public final mLastNandswapStats:Ljava/util/LinkedHashMap;

.field public mMsgHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;

.field public mMsgThread:Lcom/android/server/ServiceThread;

.field public mNandswapHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

.field public final mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public mNandswapThread:Lcom/android/server/ServiceThread;

.field public final mPendingNandswapActivityApp:Ljava/util/PriorityQueue;

.field public final mPendingNandswapActivityAppDelayed:Ljava/util/ArrayList;

.field public final mPendingNandswapNonActivityApp:Ljava/util/ArrayList;

.field public final mPendingNandswapNonActivityAppDelayed:Ljava/util/ArrayList;

.field public mQuickSwap:Lcom/android/server/chimera/ppn/QuickSwap;

.field public final mSwapAfterBootLog:Lcom/android/internal/util/RingBuffer;

.field public mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public static -$$Nest$mappendLogMessage(Lcom/android/server/chimera/ppn/PerProcessNandswap;Ljava/lang/String;JJIZLjava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", cost "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms, reclaim "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 p1, 0x400

    div-long/2addr p4, p1

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "MB, success count: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    if-eqz p7, :cond_0

    new-instance p4, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {p4}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {p4}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    const-string p5, " After SwapFree: "

    invoke-static {p8, p5}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p4}, Lcom/android/internal/util/MemInfoReader;->getSwapFreeSizeKb()J

    move-result-wide p6

    div-long/2addr p6, p1

    invoke-virtual {p5, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", AvailableMem: "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/android/internal/util/MemInfoReader;->getAvailableSize()J

    move-result-wide p1

    const-wide/32 p6, 0x100000

    div-long/2addr p1, p6

    invoke-virtual {p5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSwapAfterBootLog:Lcom/android/internal/util/RingBuffer;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p4, "HH:mm:ss.SSS"

    invoke-direct {p2, p4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance p4, Ljava/util/Date;

    invoke-direct {p4}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, p4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    return-object p3
.end method

.method public static -$$Nest$misSamsungProtectApps(Lcom/android/server/chimera/ppn/PerProcessNandswap;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "com.sec.android.app.launcher"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string/jumbo p0, "com.samsung.android.honeyboard"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string/jumbo p0, "com.android.systemui"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static -$$Nest$mupdateLastNandswapStats(Lcom/android/server/chimera/ppn/PerProcessNandswap;ILjava/lang/String;[J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mLastNandswapStats:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mLastNandswapStats:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$LastNandswapStats;

    invoke-direct {v0, p2, p3}, Lcom/android/server/chimera/ppn/PerProcessNandswap$LastNandswapStats;-><init>(Ljava/lang/String;[J)V

    invoke-virtual {p0, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static -$$Nest$smgetMemoryInfoIfDebugEnabled(Z)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {p0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " SwapFree: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getSwapFreeSizeKb()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", AvailableMem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getAvailableSize()J

    move-result-wide v1

    const-wide/32 v3, 0x100000

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, " "

    return-object p0
.end method

.method public static -$$Nest$smisAnonPageNotEnough(I)Z
    .locals 8

    const-string/jumbo v0, "Pss_Anon:"

    const-string/jumbo v1, "SwapPss:"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/chimera/ChimeraCommonUtil;->getSmapsRollupParams(I[Ljava/lang/String;)[J

    move-result-object p0

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const-wide/16 v6, 0x1388

    cmp-long p0, v1, v6

    if-ltz p0, :cond_1

    const-wide/16 v6, 0x64

    mul-long/2addr v6, v4

    add-long/2addr v1, v4

    div-long/2addr v6, v1

    sget p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->SWAP_AFTER_BOOT_LOW_SWAP_PERCENT:I

    int-to-long v1, p0

    cmp-long p0, v6, v1

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    return v3
.end method

.method public static bridge synthetic -$$Nest$smprefetchProcess(I)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->prefetchProcess(I)J

    return-void
.end method

.method public static bridge synthetic -$$Nest$smprefetchProcessFast(I)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->prefetchProcessFast(I)J

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FAST_MADVISE_ENABLED:Z

    sput-boolean v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->FAST_MADVISE_ENABLED:Z

    const-string/jumbo v0, "ro.boot.debug_level"

    const-string v1, "0x4f4c"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->IS_DEBUG_LEVEL_LOW:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__DebugEnabled:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PolicyVersion:Ljava/lang/Integer;

    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__MinSwapFreePercentage:Ljava/lang/Integer;

    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PrefetchActionEnabled:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__WritebackOnBGEnabled:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__WritebackOnFreezeEnabled:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__DelayWhenLcdOnEnabled:Ljava/lang/Boolean;

    const-string/jumbo v1, "ro.sys.kernelmemory.nandswap.swap_after_boot_low_swap_percent"

    const/16 v2, 0x3c

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->SWAP_AFTER_BOOT_LOW_SWAP_PERCENT:I

    const/4 v1, 0x0

    sput v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCount:I

    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCountMap:Ljava/util/ArrayList;

    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PrefetchSupported:Ljava/lang/Boolean;

    const-string/jumbo v2, "com.sec.android.gallery3d"

    const-string/jumbo v3, "com.samsung.android.messaging"

    const-string/jumbo v4, "com.sec.android.app.camera"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->NANDSWAP_EXCEPTION_PKGNAMES:[Ljava/lang/String;

    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->INSTANCE:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    sput v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mAlwaysRunningQuotaPPNTriggerCnt:I

    sput v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mAlwaysRunningQuotaPPNCnt:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->STATUS_ALREADY_PPN:Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->STATUS_KEY_APP:Ljava/lang/Integer;

    const-string/jumbo v0, "Static Initialization of PerProcessNandswap"

    const-string/jumbo v1, "PerProcessNandswap"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__KeyAppEnable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__QuickSwapEnable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PageoutCachedEmptyEnable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SwapAfterBootEnable:Ljava/lang/Boolean;

    new-instance v1, Lcom/android/internal/util/RingBuffer;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSwapAfterBootLog:Lcom/android/internal/util/RingBuffer;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mBootCompleteUptimeMillis:J

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapNonActivityApp:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapNonActivityAppDelayed:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapThread:Lcom/android/server/ServiceThread;

    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mMsgThread:Lcom/android/server/ServiceThread;

    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mMsgHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;

    new-instance v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$1;

    invoke-direct {v0, p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap$1;-><init>(Lcom/android/server/chimera/ppn/PerProcessNandswap;)V

    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mLastNandswapStats:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityApp:Ljava/util/PriorityQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityAppDelayed:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$2;

    invoke-direct {v0, p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap$2;-><init>(Lcom/android/server/chimera/ppn/PerProcessNandswap;)V

    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mKeyApps:Ljava/util/Map;

    return-void
.end method

.method private static native __compactProcessForWriteback(II)J
.end method

.method private static native __compactProcessForWritebackFast(II)J
.end method

.method private static native __setWriteBoosterPath()Z
.end method

.method public static compactProcessForWriteback(II)J
    .locals 1

    sget-boolean v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->FAST_MADVISE_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__compactProcessForWritebackFast(II)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__compactProcessForWriteback(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final decideSlotCount()V
    .locals 16

    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    const-wide/16 v2, 0x7f

    add-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43000000    # 128.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit16 v0, v0, 0x80

    sget-object v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCountMap:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const-string/jumbo v3, "PerProcessNandswap"

    if-nez v1, :cond_a

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getPolicyVersion()I

    move-result v1

    const/4 v4, 0x2

    const-string/jumbo v5, "default"

    if-lt v1, v4, :cond_0

    move-object v1, v5

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const-string/jumbo v6, "ro.sys.kernelmemory.nandswap.slot_count_map"

    invoke-static {v6, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "slot_cout_map: "

    const-string v7, "Invalid slot_count_map: "

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getPolicyVersion()I

    move-result v8

    const/4 v9, 0x3

    if-lt v8, v9, :cond_1

    const-string v8, "5,6,8,8,12"

    goto :goto_1

    :cond_1
    const-string v8, "5,6,7,8,9"

    :goto_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_8

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v1, v8

    :cond_3
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v8, v5

    rem-int/2addr v8, v4

    if-eqz v8, :cond_7

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, " in "

    const-string v8, "Invalid slot count: "

    if-ltz v6, :cond_6

    const/16 v10, 0x64

    if-ge v6, v10, :cond_6

    :try_start_1
    new-instance v11, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v11, v2

    move v12, v11

    :goto_2
    array-length v13, v5

    div-int/2addr v13, v4

    if-ge v11, v13, :cond_9

    mul-int/lit8 v13, v11, 0x2

    add-int/lit8 v14, v13, 0x1

    aget-object v14, v5, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v13, v13, 0x2

    aget-object v13, v5, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    if-lez v14, :cond_5

    if-ge v14, v10, :cond_5

    if-ge v12, v14, :cond_5

    if-ltz v13, :cond_4

    if-ge v13, v10, :cond_4

    if-ge v6, v13, :cond_4

    new-instance v6, Landroid/util/Pair;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v6, v12, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move v6, v13

    move v12, v14

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_4

    :cond_4
    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid thresholdGB: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6
    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7
    new-instance v4, Ljava/lang/Exception;

    invoke-virtual {v7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_8
    :goto_3
    const-string v1, "Empty slot_count_map"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_5
    sput-object v9, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCountMap:Ljava/util/ArrayList;

    :cond_a
    sget-object v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCountMap:Ljava/util/ArrayList;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCount:I

    move v4, v2

    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_f

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    if-nez v5, :cond_c

    const-string/jumbo v5, "invalid slotCountMap item: "

    const-string v6, "/"

    invoke-static {v4, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCount:I

    goto :goto_8

    :cond_c
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    mul-int/lit16 v6, v6, 0x400

    if-lt v0, v6, :cond_d

    sput v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCount:I

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_e
    :goto_7
    const-string/jumbo v1, "invalid slotCountMap"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_8
    const-string/jumbo v1, "swap_total: "

    const-string v2, ", slot_count: "

    invoke-static {v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCount:I

    invoke-static {v0, v1, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method public static getDramTier()I
    .locals 5

    const/4 v0, 0x4

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v2

    const/16 v4, 0x1e

    shr-long/2addr v2, v4

    long-to-int v2, v2

    const/4 v3, 0x5

    aget v3, v1, v3

    :goto_0
    if-ltz v0, :cond_1

    aget v4, v1, v0

    if-lt v2, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    move v3, v4

    goto :goto_0

    :cond_1
    :goto_1
    return v3

    :array_0
    .array-data 4
        0x3
        0x4
        0x6
        0x8
        0xc
        0x10
    .end array-data
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/chimera/ppn/PerProcessNandswap;
    .locals 2

    const-class v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->INSTANCE:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;

    invoke-direct {v1}, Lcom/android/server/chimera/ppn/PerProcessNandswap;-><init>()V

    sput-object v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->INSTANCE:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->INSTANCE:Lcom/android/server/chimera/ppn/PerProcessNandswap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static final getMinSwapFreePercentage()I
    .locals 2

    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__MinSwapFreePercentage:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.sys.kernelmemory.nandswap.min_swap_free_percentage"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__MinSwapFreePercentage:Ljava/lang/Integer;

    :cond_0
    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__MinSwapFreePercentage:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static final getPolicyVersion()I
    .locals 4

    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PolicyVersion:Ljava/lang/Integer;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isPrefetchSupported()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string/jumbo v3, "ro.sys.kernelmemory.nandswap.policy_version"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PolicyVersion:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v1, :cond_1

    sget-object v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PolicyVersion:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v2, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid policy_version ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PolicyVersion:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ").Reset it as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "PerProcessNandswap"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PolicyVersion:Ljava/lang/Integer;

    :cond_2
    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PolicyVersion:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static final getSlotCountMapString()Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCountMap:Ljava/util/ArrayList;

    const-string v1, ""

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCountMap:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_0
    sget-object v3, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCountMap:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    sget-object v3, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCountMap:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static getSwapFreePercentage(Lcom/android/internal/util/MemInfoReader;)I
    .locals 8

    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getSwapFreeSizeKb()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    const-wide/16 v6, 0x64

    if-gtz p0, :cond_0

    move-wide v0, v4

    goto :goto_0

    :cond_0
    mul-long/2addr v0, v6

    div-long/2addr v0, v2

    :goto_0
    cmp-long p0, v0, v4

    if-lez p0, :cond_1

    move-wide v4, v0

    :cond_1
    cmp-long p0, v4, v6

    if-gez p0, :cond_2

    move-wide v6, v4

    :cond_2
    long-to-int p0, v6

    return p0
.end method

.method public static getWritebackSizePid(I)[J
    .locals 10

    const/4 v0, 0x0

    if-gtz p0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v1, "Swap:"

    const-string/jumbo v2, "Writeback:"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "/proc/"

    const-string v3, "/smaps_rollup"

    invoke-static {p0, v2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    new-array v3, v2, [J

    const/4 v4, 0x1

    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    aget-object v8, v1, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    const-string/jumbo v8, "\\s+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x3

    if-ne v8, v9, :cond_3

    aget-object v7, v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    aput-wide v7, v3, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    if-ne v6, v2, :cond_1

    :cond_4
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_2
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "failed to read "

    const-string/jumbo v2, "PerProcessNandswap"

    invoke-static {v1, p0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_4
    aget-wide v1, v3, v4

    const-wide/16 v4, 0x0

    cmp-long p0, v1, v4

    if-nez p0, :cond_6

    goto :goto_5

    :cond_6
    move-object v0, v3

    :goto_5
    return-object v0
.end method

.method public static final isDebugEnabled()Z
    .locals 2

    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__DebugEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.sys.kernelmemory.nandswap.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__DebugEnabled:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__DebugEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isDelayWhenLcdOnEnabled()Z
    .locals 2

    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__DelayWhenLcdOnEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.sys.kernelmemory.nandswap.delay_when_lcd_on"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__DelayWhenLcdOnEnabled:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__DelayWhenLcdOnEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static final isPrefetchActionEnabled()Z
    .locals 2

    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PrefetchActionEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getPolicyVersion()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "ro.sys.kernelmemory.nandswap.prefetch_action"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PrefetchActionEnabled:Ljava/lang/Boolean;

    :cond_1
    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PrefetchActionEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static final isPrefetchSupported()Z
    .locals 8

    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PrefetchSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PrefetchSupported:Ljava/lang/Boolean;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    const-string/jumbo v2, "PerProcessNandswap"

    if-ge v0, v1, :cond_2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    sget-boolean v3, Lcom/android/server/chimera/ppn/PerProcessNandswap;->FAST_MADVISE_ENABLED:Z

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->prefetchProcessFast(I)J

    move-result-wide v3

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->prefetchProcess(I)J

    move-result-wide v3

    :goto_1
    const-string/jumbo v5, "prefetch trial: pid="

    const-string v6, " ("

    const-string v7, ") ret="

    invoke-static {v1, v0, v5, v6, v7}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v3, v4, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PrefetchSupported:Ljava/lang/Boolean;

    const-string/jumbo v1, "prefetch supported ("

    const-string v3, ")"

    invoke-static {v0, v1, v3, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PrefetchSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "prefetch not supported"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PrefetchSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static final isWritebackOnBGEnabled()Z
    .locals 2

    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__WritebackOnBGEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getPolicyVersion()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "ro.sys.kernelmemory.nandswap.writeback_on_bg"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__WritebackOnBGEnabled:Ljava/lang/Boolean;

    :cond_1
    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__WritebackOnBGEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static final isWritebackOnFreezeEnabled()Z
    .locals 2

    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__WritebackOnFreezeEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getPolicyVersion()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "ro.sys.kernelmemory.nandswap.writeback_on_bg"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__WritebackOnFreezeEnabled:Ljava/lang/Boolean;

    :cond_1
    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__WritebackOnFreezeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static native prefetchProcess(I)J
.end method

.method private static native prefetchProcessFast(I)J
.end method


# virtual methods
.method public final checkProcessStatusForNandswap(IILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    const/4 v1, -0x1

    invoke-direct {v0, p3, p1, p2, v1}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;-><init>(Ljava/lang/String;III)V

    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iput p2, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->adj:I

    return-void
.end method

.method public final dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    const-string v0, "    delay_when_lcd_on: "

    const-string v1, "    swap_after_boot: "

    const-string v2, "    pageout_cached_empty: "

    const-string v3, "    writeback_on_freeze: "

    const-string v4, "    writeback_on_bg: "

    const-string v5, "    slot_count_map: "

    const-string v6, "  policy_version: "

    const-string v7, "  min_swap_free_percentage: "

    const-string v8, "  debug: "

    :try_start_0
    const-string v9, "== PerProcessNandswap dump start =="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    array-length v9, p2

    const/4 v10, 0x1

    if-le v9, v10, :cond_5

    const-string/jumbo p0, "writeback"

    aget-object v0, p2, v10

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "writeback cmd is not supported with ship build"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_0
    const-string/jumbo p0, "prefetch"

    aget-object v0, p2, v10

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string/jumbo p0, "prefetch cmd is not supported with ship build"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    const-string/jumbo p0, "quotaPPN"

    aget-object v0, p2, v10

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string/jumbo p0, "quickswap"

    aget-object v0, p2, v10

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_3

    :cond_3
    const-string/jumbo p0, "swap_after_boot"

    aget-object v0, p2, v10

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto/16 :goto_3

    :cond_4
    const-string/jumbo p0, "setprop"

    aget-object p2, p2, v10

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const-string/jumbo p0, "setprop cmd is not supported with ship build"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    const-string p2, "Configurations"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  feature enable: true"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getMinSwapFreePercentage()I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getPolicyVersion()I

    move-result v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getSlotCountMapString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isWritebackOnBGEnabled()Z

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isWritebackOnFreezeEnabled()Z

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isPageoutCachedEmptyEnable()Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isSwapAfterBootEnable()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDelayWhenLcdOnEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isSwapAfterBootEnable()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    const-string p2, "      swap_after_boot log: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSwapAfterBootLog:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {p2}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    array-length v1, p2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_6

    aget-object v3, p2, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "      "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    key app enable: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isKeyAppEnable()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    writeback enable: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    if-eqz p2, :cond_7

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      writeback limit enable: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->isWritebackLimitEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      prefetch_action: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isPrefetchActionEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      quota: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->readZramWritebackLimit()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      pending cached apps to be PPR count="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityApp:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      pending & delayed cached apps to be PPR count="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityAppDelayed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  quickswap enable: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isQuickSwapEnable()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isQuickSwapEnable()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mQuickSwap:Lcom/android/server/chimera/ppn/QuickSwap;

    if-eqz p2, :cond_8

    invoke-virtual {p2, p1}, Lcom/android/server/chimera/ppn/QuickSwap;->dump(Ljava/io/PrintWriter;)V

    :cond_8
    iget-boolean p2, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    if-eqz p2, :cond_a

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->dumpProcessList(Ljava/io/PrintWriter;)V

    const-string p0, "\nPPNandswap history"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapLogger;->mHistory:Ljava/util/ArrayList;

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_1
    if-ge v0, p2, :cond_9

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_9
    monitor-exit p0

    goto :goto_3

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const-string/jumbo p0, "failed to dumpInfo"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    :goto_3
    const-string p0, "\n== PerProcessNandswap dump end =="

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final dumpProcessList(Ljava/io/PrintWriter;)V
    .locals 31

    move-object/from16 v0, p1

    const/4 v1, 0x0

    sget-boolean v3, Lcom/android/server/chimera/ppn/PerProcessNandswap;->IS_DEBUG_LEVEL_LOW:Z

    if-eqz v3, :cond_0

    goto/16 :goto_9

    :cond_0
    const-string v3, "\nProcessList state"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v3, p0

    iget-object v3, v3, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v3, v3, Lcom/android/server/chimera/SystemRepository;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v1, v4}, Lcom/android/server/am/ActivityManagerService;->collectProcesses(IZ[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    move/from16 v16, v1

    const/16 v18, 0x1

    const-wide/16 v19, 0x0

    goto/16 :goto_6

    :cond_2
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getInstance()Lcom/android/server/chimera/ppn/PerProcessNandswap;

    move-result-object v8

    sget-object v9, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    array-length v9, v9

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v11, v9, [J

    new-array v12, v9, [Ljava/util/ArrayList;

    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move/from16 v16, v1

    :goto_0
    if-ge v1, v10, :cond_c

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v2, v17

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-wide/16 v19, 0x0

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getSetAdjWithServices()I

    move-result v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move/from16 v17, v1

    iget-object v1, v8, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    if-nez v1, :cond_3

    move-object/from16 v21, v8

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    iget v7, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->ppnState:I

    move-object/from16 v21, v8

    int-to-long v7, v7

    move-wide/from16 v22, v7

    iget-wide v7, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->lastNandswapTime:J

    const/4 v1, 0x2

    new-array v1, v1, [J

    aput-wide v22, v1, v16

    aput-wide v7, v1, v18

    :goto_1
    if-nez v1, :cond_4

    goto/16 :goto_4

    :cond_4
    aget-wide v7, v1, v16

    long-to-int v7, v7

    aget-wide v22, v1, v18

    sub-long v28, v14, v22

    if-nez v6, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {v6}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getWritebackSizePid(I)[J

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    aget-wide v22, v1, v18

    cmp-long v8, v22, v19

    if-nez v8, :cond_7

    if-eqz v7, :cond_b

    :cond_7
    new-instance v22, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (pid "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    aget-wide v24, v1, v16

    aget-wide v26, v1, v18

    move/from16 v23, v7

    invoke-direct/range {v22 .. v30}, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;-><init>(IJJJLjava/lang/String;)V

    move-object/from16 v4, v22

    invoke-virtual {v13, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move/from16 v6, v16

    :goto_2
    if-ge v6, v9, :cond_b

    add-int/lit8 v7, v9, -0x1

    if-eq v6, v7, :cond_9

    sget-object v7, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    aget v8, v7, v6

    if-lt v2, v8, :cond_8

    add-int/lit8 v8, v6, 0x1

    aget v7, v7, v8

    if-ge v2, v7, :cond_8

    goto :goto_3

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    aget-wide v7, v11, v6

    aget-wide v1, v1, v18

    add-long/2addr v7, v1

    aput-wide v7, v11, v6

    aget-object v1, v12, v6

    if-nez v1, :cond_a

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v12, v6

    :cond_a
    aget-object v1, v12, v6

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_4
    add-int/lit8 v1, v17, 0x1

    move-object/from16 v8, v21

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_c
    const/16 v18, 0x1

    const-wide/16 v19, 0x0

    iget-object v1, v3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    new-instance v2, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda44;

    invoke-direct {v2, v13, v11, v12}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda44;-><init>(Landroid/util/SparseArray;[J[Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppProfiler;->forAllCpuStats(Ljava/util/function/Consumer;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move/from16 v2, v16

    :goto_5
    if-ge v2, v9, :cond_e

    aget-wide v25, v11, v2

    cmp-long v3, v25, v19

    if-eqz v3, :cond_d

    sget-object v3, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    aget-object v29, v3, v2

    new-instance v21, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;

    const/16 v22, 0x0

    const-wide/16 v27, -0x1

    const-wide/16 v23, 0x0

    invoke-direct/range {v21 .. v29}, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;-><init>(IJJJLjava/lang/String;)V

    move-object/from16 v3, v21

    aget-object v4, v12, v2

    iput-object v4, v3, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->subitems:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :goto_6
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_e
    move/from16 v2, v16

    :goto_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_10

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;

    iget-wide v4, v3, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->writeback:J

    cmp-long v4, v4, v19

    if-eqz v4, :cond_f

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->label:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v3, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->writeback:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->subitems:Ljava/util/ArrayList;

    if-eqz v4, :cond_f

    new-instance v6, Lcom/android/server/chimera/ppn/PerProcessNandswap$3;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move/from16 v4, v16

    :goto_8
    iget-object v6, v3, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->subitems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_f

    iget-object v6, v3, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->subitems:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;

    const-string v7, "        "

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v6, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->label:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v6, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->writeback:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v6, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->swap:J

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->ppnState:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v6, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->lastNandswapTimeDiff:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    :cond_10
    :goto_9
    return-void
.end method

.method public final init(Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/ChimeraStrategy;)V
    .locals 13

    const-string/jumbo v0, "PerProcessNandswap"

    const-string v1, "  prefetch_action: "

    const-string v2, "  writeback_on_freeze: "

    const-string v3, "  writeback_on_bg: "

    const-string v4, "  slot_count: "

    const-string/jumbo v5, "policy_version: "

    const-string/jumbo v6, "quota: "

    const-string/jumbo v7, "WritebackQuotaAvailable: "

    const-string/jumbo v8, "WritebackLimitEnabled: "

    const-string/jumbo v9, "PrefetchSupported: "

    const-string/jumbo v10, "WritebackEnabled: "

    const/4 v11, 0x0

    :try_start_0
    const-string/jumbo v12, "init start"

    invoke-static {v0, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->isWritebackEnabled()Z

    move-result v12

    if-nez v12, :cond_0

    const-string/jumbo p1, "Writeback is disabled"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v11, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->decideSlotCount()V

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__setWriteBoosterPath()Z

    iput-object p1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iput-object p2, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-virtual {p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->initThreadAndHandler()V

    invoke-virtual {p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isQuickSwapEnable()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lcom/android/server/chimera/ppn/QuickSwap;

    invoke-direct {p2, p0, p1}, Lcom/android/server/chimera/ppn/QuickSwap;-><init>(Lcom/android/server/chimera/ppn/PerProcessNandswap;Lcom/android/server/chimera/SystemRepository;)V

    iput-object p2, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mQuickSwap:Lcom/android/server/chimera/ppn/QuickSwap;

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->isWritebackEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isPrefetchSupported()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->isWritebackLimitEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->isWritebackQuotaAvailable()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->readZramWritebackLimit()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getPolicyVersion()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isWritebackOnBGEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isWritebackOnFreezeEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isPrefetchActionEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "init success"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isSwapAfterBootEnable()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "ro.sys.kernelmemory.nandswap.swap_after_boot_delay_mills"

    const-wide/32 v1, 0x15f90

    invoke-static {p1, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gez v3, :cond_3

    goto :goto_0

    :cond_3
    iget-wide v3, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mBootCompleteUptimeMillis:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    add-long/2addr v3, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget-object v1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo p1, "init failed"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v11, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    :goto_0
    return-void
.end method

.method public final initThreadAndHandler()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapThread:Lcom/android/server/ServiceThread;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/ServiceThread;

    const-string/jumbo v2, "PerProcessNandswapThread"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    new-instance v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    invoke-direct {v0, p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;-><init>(Lcom/android/server/chimera/ppn/PerProcessNandswap;)V

    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getThreadId()I

    move-result v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    :cond_0
    sget v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCount:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mMsgThread:Lcom/android/server/ServiceThread;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/ServiceThread;

    const-string/jumbo v2, "PPNandswapMsgThread"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mMsgThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    new-instance v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;

    invoke-direct {v0, p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;-><init>(Lcom/android/server/chimera/ppn/PerProcessNandswap;)V

    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mMsgHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;

    :cond_1
    return-void
.end method

.method public final isDelayCondition()Z
    .locals 6

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isInAppLaunch()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDelayWhenLcdOnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mLastDeviceWakeupTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mLastDeviceWakeupTime:J

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isKeyAppEnable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__KeyAppEnable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.sys.kernelmemory.nandswap.key_app"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__KeyAppEnable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isPageoutCachedEmptyEnable()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PageoutCachedEmptyEnable:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getPolicyVersion()I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string/jumbo v3, "ro.sys.kernelmemory.nandswap.pageout_cached_empty"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PageoutCachedEmptyEnable:Ljava/lang/Boolean;

    :cond_1
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getDramTier()I

    move-result v0

    const/16 v3, 0xc

    if-ge v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PageoutCachedEmptyEnable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object p0, p0, Lcom/android/server/chimera/SystemRepository;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->useCompaction()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v2
.end method

.method public final isQuickSwapEnable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__QuickSwapEnable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.sys.kernelmemory.nandswap.quickswap"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__QuickSwapEnable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isSwapAfterBootEnable()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SwapAfterBootEnable:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getDramTier()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string/jumbo v1, "ro.sys.kernelmemory.nandswap.swap_after_boot"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ro.factory.factory_binary"

    const-string/jumbo v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "factory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SwapAfterBootEnable:Ljava/lang/Boolean;

    :cond_2
    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SwapAfterBootEnable:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final notifyDiedAppToPPR(I)V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCount:I

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mMsgHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final notifyReentryAppToPPR(I)V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCount:I

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mMsgHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final onProcessFrozen(IILjava/lang/String;IZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCount:I

    if-lez v0, :cond_2

    const/16 v0, 0x64

    if-lt p4, v0, :cond_2

    const/16 v0, 0x3e7

    if-gt p4, v0, :cond_2

    if-eqz p5, :cond_2

    :try_start_0
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isWritebackOnFreezeEnabled()Z

    move-result p5

    if-nez p5, :cond_1

    goto :goto_0

    :cond_1
    new-instance p5, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    invoke-direct {p5, p1, p3, p2, p4}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;-><init>(ILjava/lang/String;II)V

    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mMsgHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;

    const/4 p1, 0x7

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final requestChangePPRState(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;I)V
    .locals 2

    sget v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCount:I

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mMsgHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
