.class public final Lcom/android/server/cpu/CpuInfoReader;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final MILLIS_PER_CLOCK_TICK:J

.field public static final PROC_STAT_PATTERN:Ljava/util/regex/Pattern;

.field public static final TIME_IN_STATE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public mCpuFreqDir:Ljava/io/File;

.field public final mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

.field public final mCpusetCategoriesByCpus:Landroid/util/SparseIntArray;

.field public mCpusetDir:Ljava/io/File;

.field public mCumulativeCpuUsageStats:Landroid/util/SparseArray;

.field public mHasTimeInStateFile:Z

.field public mIsEnabled:Z

.field public mLastReadCpuInfos:Landroid/util/SparseArray;

.field public mLastReadUptimeMillis:J

.field public final mMinReadIntervalMillis:J

.field public mProcStatFile:Ljava/io/File;

.field public final mShouldReadCpusetCategories:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mStaticPolicyInfoById:Landroid/util/SparseArray;

.field public final mTimeInStateByPolicyId:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "cpu(?<core>[0-9]+)\\s(?<userClockTicks>[0-9]+)\\s(?<niceClockTicks>[0-9]+)\\s(?<sysClockTicks>[0-9]+)\\s(?<idleClockTicks>[0-9]+)\\s(?<iowaitClockTicks>[0-9]+)\\s(?<irqClockTicks>[0-9]+)\\s(?<softirqClockTicks>[0-9]+)\\s(?<stealClockTicks>[0-9]+)\\s(?<guestClockTicks>[0-9]+)\\s(?<guestNiceClockTicks>[0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/cpu/CpuInfoReader;->PROC_STAT_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(?<freqKHz>[0-9]+)\\s(?<time>[0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/cpu/CpuInfoReader;->TIME_IN_STATE_PATTERN:Ljava/util/regex/Pattern;

    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v2, v0

    sput-wide v2, Lcom/android/server/cpu/CpuInfoReader;->MILLIS_PER_CLOCK_TICK:J

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetCategoriesByCpus:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mTimeInStateByPolicyId:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mCumulativeCpuUsageStats:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetDir:Ljava/io/File;

    iput-object p2, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqDir:Ljava/io/File;

    iput-object p3, p0, Lcom/android/server/cpu/CpuInfoReader;->mProcStatFile:Ljava/io/File;

    iput-wide p4, p0, Lcom/android/server/cpu/CpuInfoReader;->mMinReadIntervalMillis:J

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/server/cpu/CpuInfoReader;->mShouldReadCpusetCategories:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static calculateAvgCpuFreq(Landroid/util/LongSparseLongArray;)J
    .locals 10

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v4, v0

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    invoke-virtual {p0, v3}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v6

    long-to-double v6, v6

    add-double/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    cmpl-double v3, v4, v0

    if-nez v3, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v6

    invoke-virtual {p0, v2}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v8

    mul-long/2addr v8, v6

    long-to-double v6, v8

    div-double/2addr v6, v4

    add-double/2addr v0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    double-to-long v0, v0

    return-wide v0
.end method

.method public static clockTickStrToMillis(Ljava/lang/String;)J
    .locals 4

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/cpu/CpuInfoReader;->MILLIS_PER_CLOCK_TICK:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static readCpuCores(Ljava/io/File;)Landroid/util/IntArray;
    .locals 13

    const/4 v0, 0x1

    const-string v1, ","

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "CpuMonitorService"

    if-nez v2, :cond_0

    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Failed to read CPU cores as the file \'%s\' doesn\'t exist"

    invoke-static {v4, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object v2

    new-instance v5, Landroid/util/IntArray;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/util/IntArray;-><init>(I)V

    move v7, v6

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_8

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_5

    :cond_1
    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_7

    :cond_2
    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    :goto_1
    move v9, v6

    :goto_2
    array-length v10, v8

    if-ge v9, v10, :cond_7

    aget-object v10, v8, v9

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x2

    if-lt v11, v12, :cond_4

    aget-object v11, v10, v6

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aget-object v10, v10, v0

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-le v11, v10, :cond_3

    goto :goto_4

    :cond_3
    :goto_3
    if-gt v11, v10, :cond_6

    invoke-virtual {v5, v11}, Landroid/util/IntArray;->add(I)V

    add-int/2addr v11, v0

    goto :goto_3

    :cond_4
    array-length v11, v10

    if-ne v11, v0, :cond_5

    aget-object v10, v10, v6

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/util/IntArray;->add(I)V

    goto :goto_4

    :cond_5
    sget-boolean v10, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    const-string v10, "Invalid CPU core range format %s"

    aget-object v11, v8, v9

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v4, v10, v11}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_4
    add-int/2addr v9, v0

    goto :goto_2

    :cond_7
    :goto_5
    add-int/2addr v7, v0

    goto :goto_0

    :cond_8
    return-object v5

    :goto_6
    sget-boolean v1, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Failed to read CPU cores from %s"

    invoke-static {v4, v0, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    :goto_7
    sget-boolean v1, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Failed to read CPU cores from %s due to incorrect file format"

    invoke-static {v4, v0, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_8
    return-object v3
.end method

.method public static readCpuFreqKHz(Ljava/io/File;)J
    .locals 5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "CpuMonitorService"

    const-wide/16 v2, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "CPU frequency file %s doesn\'t exist"

    invoke-static {v1, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v2

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    return-wide v0

    :catch_0
    move-exception v0

    sget-boolean v4, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v4, "Failed to read integer content from file: %s"

    invoke-static {v1, v0, v4, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-wide v2
.end method

.method public static toCpusetCategoriesStr(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string v1, "FLAG_CPUSET_CATEGORY_TOP_APP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_1

    const/16 p0, 0x7c

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const-string p0, "FLAG_CPUSET_CATEGORY_BACKGROUND"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final populateCpuFreqPolicyDirsById([Ljava/io/File;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-boolean v3, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    if-eqz v3, :cond_1

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "CpuMonitorService"

    const-string v3, "Cached policy directory %s for policy id %s"

    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final readCpuInfos()Landroid/util/SparseArray;
    .locals 36

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mIsEnabled:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, v1, Lcom/android/server/cpu/CpuInfoReader;->mLastReadUptimeMillis:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    const-string v9, "CpuMonitorService"

    if-lez v0, :cond_1

    sub-long v5, v3, v5

    iget-wide v10, v1, Lcom/android/server/cpu/CpuInfoReader;->mMinReadIntervalMillis:J

    cmp-long v0, v5, v10

    if-gez v0, :cond_1

    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "Skipping reading from device and returning the last read CpuInfos. Last read was %d ms ago, min read interval is %d ms"

    invoke-static {v9, v2, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mLastReadCpuInfos:Landroid/util/SparseArray;

    return-object v0

    :cond_1
    iput-wide v3, v1, Lcom/android/server/cpu/CpuInfoReader;->mLastReadUptimeMillis:J

    iput-object v2, v1, Lcom/android/server/cpu/CpuInfoReader;->mLastReadCpuInfos:Landroid/util/SparseArray;

    iget-object v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mShouldReadCpusetCategories:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/android/server/cpu/CpuInfoReader;->readCpusetCategories()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    iget-object v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mCpusetDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "Failed to read cpuset information from %s"

    invoke-static {v9, v4, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v3, v1, Lcom/android/server/cpu/CpuInfoReader;->mIsEnabled:Z

    return-object v2

    :cond_2
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    :try_start_0
    iget-object v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mProcStatFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object v0

    move v5, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    sget-object v6, Lcom/android/server/cpu/CpuInfoReader;->PROC_STAT_PATTERN:Ljava/util/regex/Pattern;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-nez v10, :cond_3

    move-object/from16 v32, v2

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v10, "core"

    invoke-virtual {v6, v10}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    new-instance v11, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    const-string/jumbo v12, "userClockTicks"

    invoke-virtual {v6, v12}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    move-result-wide v12

    const-string/jumbo v14, "niceClockTicks"

    invoke-virtual {v6, v14}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    move-result-wide v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v32, v2

    :try_start_1
    const-string/jumbo v2, "sysClockTicks"

    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    move-result-wide v16

    const-string/jumbo v2, "idleClockTicks"

    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    move-result-wide v18

    const-string/jumbo v2, "iowaitClockTicks"

    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    move-result-wide v20

    const-string/jumbo v2, "irqClockTicks"

    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    move-result-wide v22

    const-string/jumbo v2, "softirqClockTicks"

    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    move-result-wide v24

    const-string/jumbo v2, "stealClockTicks"

    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    move-result-wide v26

    const-string/jumbo v2, "guestClockTicks"

    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    move-result-wide v28

    const-string/jumbo v2, "guestNiceClockTicks"

    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    move-result-wide v30

    invoke-direct/range {v11 .. v31}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;-><init>(JJJJJJJJJJ)V

    invoke-virtual {v4, v10, v11}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v32

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v32, v2

    goto :goto_2

    :cond_4
    move-object/from16 v32, v2

    goto :goto_3

    :goto_2
    sget-boolean v2, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    iget-object v2, v1, Lcom/android/server/cpu/CpuInfoReader;->mProcStatFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "Failed to read cpu usage stats from %s"

    invoke-static {v9, v0, v5, v2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    const-string v0, "Failed to read cumulative CPU usage stats"

    invoke-static {v9, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v33, v7

    move-object/from16 v2, v32

    goto/16 :goto_6

    :cond_5
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move v2, v3

    :goto_4
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_7

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    iget-object v10, v1, Lcom/android/server/cpu/CpuInfoReader;->mCumulativeCpuUsageStats:Landroid/util/SparseArray;

    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    if-nez v10, :cond_6

    move-object/from16 v35, v4

    move-wide/from16 v33, v7

    goto :goto_5

    :cond_6
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    iget-wide v12, v10, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->userTimeMillis:J

    iget-wide v14, v6, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->userTimeMillis:J

    invoke-static {v14, v15, v12, v13}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    move-result-wide v12

    iget-wide v14, v6, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->niceTimeMillis:J

    move-wide/from16 v33, v7

    iget-wide v7, v10, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->niceTimeMillis:J

    invoke-static {v14, v15, v7, v8}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    move-result-wide v14

    iget-wide v7, v6, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->systemTimeMillis:J

    move-object/from16 v35, v4

    iget-wide v3, v10, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->systemTimeMillis:J

    invoke-static {v7, v8, v3, v4}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    move-result-wide v16

    iget-wide v3, v6, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->idleTimeMillis:J

    iget-wide v7, v10, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->idleTimeMillis:J

    invoke-static {v3, v4, v7, v8}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    move-result-wide v18

    iget-wide v3, v6, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->iowaitTimeMillis:J

    iget-wide v7, v10, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->iowaitTimeMillis:J

    invoke-static {v3, v4, v7, v8}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    move-result-wide v20

    iget-wide v3, v6, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->irqTimeMillis:J

    iget-wide v7, v10, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->irqTimeMillis:J

    invoke-static {v3, v4, v7, v8}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    move-result-wide v22

    iget-wide v3, v6, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->softirqTimeMillis:J

    iget-wide v7, v10, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->softirqTimeMillis:J

    invoke-static {v3, v4, v7, v8}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    move-result-wide v24

    iget-wide v3, v6, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->stealTimeMillis:J

    iget-wide v7, v10, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->stealTimeMillis:J

    invoke-static {v3, v4, v7, v8}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    move-result-wide v26

    iget-wide v3, v6, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestTimeMillis:J

    iget-wide v7, v10, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestTimeMillis:J

    invoke-static {v3, v4, v7, v8}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    move-result-wide v28

    iget-wide v3, v6, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestNiceTimeMillis:J

    iget-wide v6, v10, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestNiceTimeMillis:J

    invoke-static {v3, v4, v6, v7}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    move-result-wide v30

    invoke-direct/range {v11 .. v31}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;-><init>(JJJJJJJJJJ)V

    move-object v6, v11

    :goto_5
    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v7, v33

    move-object/from16 v4, v35

    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_7
    move-object v2, v4

    move-wide/from16 v33, v7

    iput-object v2, v1, Lcom/android/server/cpu/CpuInfoReader;->mCumulativeCpuUsageStats:Landroid/util/SparseArray;

    move-object v2, v0

    :goto_6
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    move-object v10, v9

    goto/16 :goto_1b

    :cond_9
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    const/4 v4, 0x0

    :goto_7
    iget-object v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v4, v0, :cond_1a

    iget-object v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    iget-object v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v7, "scaling_cur_freq"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/cpu/CpuInfoReader;->readCpuFreqKHz(Ljava/io/File;)J

    move-result-wide v11

    cmp-long v0, v11, v33

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v5, "Missing current frequency information at %s"

    invoke-static {v9, v5, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_13

    :cond_a
    iget-boolean v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mHasTimeInStateFile:Z

    if-nez v0, :cond_b

    :goto_8
    move-wide/from16 v17, v11

    :goto_9
    move-object/from16 v8, v32

    goto/16 :goto_d

    :cond_b
    new-instance v7, Ljava/io/File;

    const-string/jumbo v0, "stats/time_in_state"

    invoke-direct {v7, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_2
    invoke-virtual {v7}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_c

    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    const-string v0, "Empty time in state file at %s"

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v0, v8}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    :catch_2
    move-exception v0

    move-wide/from16 v17, v11

    goto :goto_c

    :cond_c
    new-instance v8, Landroid/util/LongSparseLongArray;

    invoke-direct {v8}, Landroid/util/LongSparseLongArray;-><init>()V

    const/4 v10, 0x0

    :goto_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v13

    if-ge v10, v13, :cond_e

    sget-object v13, Lcom/android/server/cpu/CpuInfoReader;->TIME_IN_STATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-nez v14, :cond_d

    move-object/from16 v16, v0

    move-wide/from16 v17, v11

    move v12, v10

    goto :goto_b

    :cond_d
    const-string/jumbo v14, "freqKHz"

    invoke-virtual {v13, v14}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v16, v0

    const-string/jumbo v0, "time"

    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-wide/from16 v17, v11

    move v12, v10

    :try_start_3
    invoke-static {v0}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v8, v14, v15, v10, v11}, Landroid/util/LongSparseLongArray;->put(JJ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_b
    add-int/lit8 v10, v12, 0x1

    move-object/from16 v0, v16

    move-wide/from16 v11, v17

    goto :goto_a

    :catch_3
    move-exception v0

    goto :goto_c

    :cond_e
    move-wide/from16 v17, v11

    goto :goto_d

    :goto_c
    sget-boolean v8, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "Failed to read CPU time in state from file: %s"

    invoke-static {v9, v0, v8, v7}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    :goto_d
    if-eqz v8, :cond_15

    invoke-virtual {v8}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_10

    :cond_f
    iget-object v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mTimeInStateByPolicyId:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseLongArray;

    if-nez v0, :cond_11

    iget-object v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mTimeInStateByPolicyId:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    if-eqz v0, :cond_10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v7, "Added aggregated time in state info for policy id %d"

    invoke-static {v9, v7, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    invoke-static {v8}, Lcom/android/server/cpu/CpuInfoReader;->calculateAvgCpuFreq(Landroid/util/LongSparseLongArray;)J

    move-result-wide v7

    :goto_e
    move-wide v15, v7

    goto :goto_11

    :cond_11
    invoke-virtual {v8}, Landroid/util/LongSparseLongArray;->size()I

    move-result v7

    new-instance v10, Landroid/util/LongSparseLongArray;

    invoke-direct {v10, v7}, Landroid/util/LongSparseLongArray;-><init>(I)V

    const/4 v11, 0x0

    :goto_f
    if-ge v11, v7, :cond_13

    invoke-virtual {v8, v11}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v12

    invoke-virtual {v8, v11}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v14

    invoke-virtual {v0, v12, v13}, Landroid/util/LongSparseLongArray;->get(J)J

    move-result-wide v19

    cmp-long v16, v14, v19

    if-lez v16, :cond_12

    sub-long v14, v14, v19

    :cond_12
    invoke-virtual {v10, v12, v13, v14, v15}, Landroid/util/LongSparseLongArray;->put(JJ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    :cond_13
    iget-object v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mTimeInStateByPolicyId:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    if-eqz v0, :cond_14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v7, "Added latest delta time in state info for policy id %d"

    invoke-static {v9, v7, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_14
    invoke-static {v10}, Lcom/android/server/cpu/CpuInfoReader;->calculateAvgCpuFreq(Landroid/util/LongSparseLongArray;)J

    move-result-wide v7

    goto :goto_e

    :cond_15
    :goto_10
    move-wide/from16 v15, v33

    :goto_11
    new-instance v0, Ljava/io/File;

    const-string/jumbo v7, "affected_cpus"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-wide/from16 v11, v17

    invoke-static {v0}, Lcom/android/server/cpu/CpuInfoReader;->readCpuCores(Ljava/io/File;)Landroid/util/IntArray;

    move-result-object v17

    if-eqz v17, :cond_18

    invoke-virtual/range {v17 .. v17}, Landroid/util/IntArray;->size()I

    move-result v7

    if-nez v7, :cond_16

    goto :goto_12

    :cond_16
    new-instance v0, Ljava/io/File;

    const-string/jumbo v7, "scaling_max_freq"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/cpu/CpuInfoReader;->readCpuFreqKHz(Ljava/io/File;)J

    move-result-wide v13

    cmp-long v0, v13, v33

    if-nez v0, :cond_17

    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v5, "Missing max CPU frequency information at %s"

    invoke-static {v9, v5, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_13

    :cond_17
    new-instance v10, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;

    invoke-direct/range {v10 .. v17}, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;-><init>(JJJLandroid/util/IntArray;)V

    invoke-virtual {v3, v5, v10}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    if-eqz v0, :cond_19

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v10, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v5, "Read dynamic policy info %s for policy id %d"

    invoke-static {v9, v5, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_13

    :cond_18
    :goto_12
    sget-boolean v5, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v5, "Failed to read CPU cores from %s"

    invoke-static {v9, v5, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_19
    :goto_13
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    :cond_1a
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1b

    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    const-string v0, "Failed to read dynamic policy infos"

    invoke-static {v9, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v32

    :cond_1b
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v4, 0x0

    :goto_14
    iget-object v5, v1, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_26

    iget-object v5, v1, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    iget-object v6, v1, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/cpu/CpuInfoReader$StaticPolicyInfo;

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;

    if-nez v7, :cond_1d

    sget-boolean v6, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v6, "Missing dynamic policy info for policy ID %d"

    invoke-static {v9, v6, v5}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    :goto_15
    move-object v10, v9

    goto/16 :goto_1a

    :cond_1d
    iget-wide v10, v7, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->curCpuFreqKHz:J

    cmp-long v8, v10, v33

    if-eqz v8, :cond_1e

    iget-wide v12, v7, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->maxCpuFreqKHz:J

    cmp-long v8, v12, v33

    if-nez v8, :cond_1f

    :cond_1e
    move-object v10, v9

    goto/16 :goto_19

    :cond_1f
    cmp-long v8, v10, v12

    if-lez v8, :cond_20

    sget-boolean v6, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v6, v7, v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Current CPU frequency (%d) is greater than maximum CPU frequency (%d) for policy ID (%d). Skipping CPU frequency policy"

    invoke-static {v9, v6, v5}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15

    :cond_20
    const/4 v5, 0x0

    :goto_16
    iget-object v8, v6, Lcom/android/server/cpu/CpuInfoReader$StaticPolicyInfo;->relatedCpuCores:Landroid/util/IntArray;

    invoke-virtual {v8}, Landroid/util/IntArray;->size()I

    move-result v8

    if-ge v5, v8, :cond_1c

    iget-object v8, v6, Lcom/android/server/cpu/CpuInfoReader$StaticPolicyInfo;->relatedCpuCores:Landroid/util/IntArray;

    invoke-virtual {v8, v5}, Landroid/util/IntArray;->get(I)I

    move-result v11

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;

    if-eqz v8, :cond_21

    sget-boolean v10, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const-string v12, "CPU info already available for the CPU core %d"

    invoke-static {v9, v12, v10}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v8, v8, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->isOnline:Z

    if-eqz v8, :cond_21

    :goto_17
    move-object v10, v9

    goto/16 :goto_18

    :cond_21
    iget-object v8, v1, Lcom/android/server/cpu/CpuInfoReader;->mCpusetCategoriesByCpus:Landroid/util/SparseIntArray;

    const/4 v10, -0x1

    invoke-virtual {v8, v11, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    if-gez v12, :cond_22

    sget-boolean v8, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string/jumbo v10, "Missing cpuset information for the CPU core %d"

    invoke-static {v9, v10, v8}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17

    :cond_22
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v20, v8

    check-cast v20, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    iget-object v8, v7, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->affectedCpuCores:Landroid/util/IntArray;

    invoke-virtual {v8, v11}, Landroid/util/IntArray;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_23

    new-instance v10, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;

    iget-wide v13, v7, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->maxCpuFreqKHz:J

    const-wide/16 v18, 0x0

    move-wide/from16 v16, v13

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    invoke-direct/range {v10 .. v20}, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;-><init>(IIZJJJLcom/android/server/cpu/CpuInfoReader$CpuUsageStats;)V

    invoke-virtual {v0, v11, v10}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_17

    :cond_23
    if-nez v20, :cond_24

    sget-boolean v8, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string/jumbo v10, "Missing CPU usage information for online CPU core %d"

    invoke-static {v9, v10, v8}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17

    :cond_24
    new-instance v10, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;

    iget-wide v14, v7, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->curCpuFreqKHz:J

    move-wide/from16 v16, v14

    iget-wide v13, v7, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->maxCpuFreqKHz:J

    move-object/from16 v21, v9

    iget-wide v8, v7, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->avgTimeInStateCpuFreqKHz:J

    move-wide/from16 v18, v16

    move-wide/from16 v16, v13

    move-wide/from16 v14, v18

    move-wide/from16 v18, v8

    const/4 v13, 0x1

    invoke-direct/range {v10 .. v20}, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;-><init>(IIZJJJLcom/android/server/cpu/CpuInfoReader$CpuUsageStats;)V

    invoke-virtual {v0, v11, v10}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-boolean v8, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    if-eqz v8, :cond_25

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v10, v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Added %s for CPU core %d"

    move-object/from16 v10, v21

    invoke-static {v10, v9, v8}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_18

    :cond_25
    move-object/from16 v10, v21

    :goto_18
    add-int/lit8 v5, v5, 0x1

    move-object v9, v10

    goto/16 :goto_16

    :goto_19
    sget-boolean v6, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Current and maximum CPU frequency information mismatch/missing for policy ID %d"

    invoke-static {v10, v6, v5}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1a
    add-int/lit8 v4, v4, 0x1

    move-object v9, v10

    goto/16 :goto_14

    :cond_26
    iput-object v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mLastReadCpuInfos:Landroid/util/SparseArray;

    return-object v0

    :goto_1b
    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    const-string v0, "Failed to read latest CPU usage stats"

    invoke-static {v10, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v32
.end method

.method public final readCpusetCategories()Z
    .locals 12

    const/4 v0, 0x2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetDir:Ljava/io/File;

    new-instance v3, Lcom/android/server/cpu/CpuInfoReader$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/android/server/cpu/CpuInfoReader$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    const-string v3, "CpuMonitorService"

    const/4 v4, 0x0

    if-nez v2, :cond_0

    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    iget-object p0, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "Missing cpuset directories at %s"

    invoke-static {v3, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_0
    iget-object v5, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetCategoriesByCpus:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->clear()V

    move v5, v4

    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_7

    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v8, "background"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "top-app"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_4

    :cond_1
    move v7, v1

    goto :goto_1

    :cond_2
    move v7, v0

    :goto_1
    new-instance v8, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "cpus"

    invoke-direct {v8, v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/android/server/cpu/CpuInfoReader;->readCpuCores(Ljava/io/File;)Landroid/util/IntArray;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/util/IntArray;->size()I

    move-result v9

    if-nez v9, :cond_3

    goto :goto_3

    :cond_3
    move v8, v4

    :goto_2
    invoke-virtual {v6}, Landroid/util/IntArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    iget-object v9, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetCategoriesByCpus:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v8}, Landroid/util/IntArray;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    or-int/2addr v9, v7

    iget-object v10, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetCategoriesByCpus:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v8}, Landroid/util/IntArray;->get(I)I

    move-result v11

    invoke-virtual {v10, v11, v9}, Landroid/util/SparseIntArray;->append(II)V

    sget-boolean v10, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    if-eqz v10, :cond_4

    invoke-virtual {v6, v8}, Landroid/util/IntArray;->get(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9}, Lcom/android/server/cpu/CpuInfoReader;->toCpusetCategoriesStr(I)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v10, v9}, [Ljava/lang/Object;

    move-result-object v9

    const-string/jumbo v10, "Mapping CPU core id %d with cpuset categories [%s]"

    invoke-static {v3, v10, v9}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    add-int/2addr v8, v1

    goto :goto_2

    :cond_5
    :goto_3
    sget-boolean v6, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Failed to read CPU cores from %s"

    invoke-static {v3, v7, v6}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_4
    add-int/2addr v5, v1

    goto/16 :goto_0

    :cond_7
    iget-object p0, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetCategoriesByCpus:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    if-lez p0, :cond_8

    return v1

    :cond_8
    return v4
.end method

.method public setCpuFreqDir(Ljava/io/File;)Z
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Lcom/android/server/cpu/CpuInfoReader$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/cpu/CpuInfoReader$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    const-string v2, "CpuMonitorService"

    if-eqz v1, :cond_3

    array-length v3, v1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/cpu/CpuInfoReader;->populateCpuFreqPolicyDirsById([Ljava/io/File;)V

    iget-object v1, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqDir:Ljava/io/File;

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    sget-boolean v4, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p1, v1, v3}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Failed to set CPU frequency directory to %s. Total CPU frequency policies (%d) under new path is either 0 or not equal to initial total CPU frequency policies. Clearing CPU frequency policy directories"

    invoke-static {v2, v1, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return v0

    :cond_3
    :goto_1
    sget-boolean p0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Failed to set CPU frequency directory. Missing policy directories at %s"

    invoke-static {v2, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public setCpusetDir(Ljava/io/File;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean p0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "CpuMonitorService"

    const-string/jumbo v0, "Missing or invalid cpuset directory at %s"

    invoke-static {p1, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-object p1, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetDir:Ljava/io/File;

    const/4 p0, 0x1

    return p0
.end method

.method public setProcStatFile(Ljava/io/File;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean p0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "CpuMonitorService"

    const-string/jumbo v0, "Missing proc stat file at %s"

    invoke-static {p1, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-object p1, p0, Lcom/android/server/cpu/CpuInfoReader;->mProcStatFile:Ljava/io/File;

    const/4 p0, 0x1

    return p0
.end method
