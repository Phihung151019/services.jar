.class public final Lcom/android/server/am/PDSController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEBUG_ENG:Z

.field public static final DEBUG_HIGH:Z

.field public static final DEBUG_MID:Z

.field public static final PDSLock:Lcom/android/server/am/PDSController$Lock;


# instance fields
.field public mAm:Lcom/android/server/am/ActivityManagerService;

.field public mContext:Landroid/content/Context;

.field public mHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

.field public mIsPDSEnable:Z

.field public mPDSRestrictedPackages:Lcom/android/server/am/pds/PDSPkgMap;

.field public mPDSTargetPackages:Lcom/android/server/am/pds/PDSPkgMap;

.field public mPDSTargetlist:Ljava/util/List;

.field public mScreenOn:Z

.field public mpsmPolicy:Lcom/android/server/am/PDSController$Policy;

.field public udsPolicy:Lcom/android/server/am/PDSController$Policy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/server/am/PDSController$Lock;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/PDSController;->PDSLock:Lcom/android/server/am/PDSController$Lock;

    const-string/jumbo v0, "ro.boot.debug_level"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0x494d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/PDSController;->DEBUG_MID:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0x4948"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/PDSController;->DEBUG_HIGH:Z

    const-string/jumbo v1, "ro.build.type"

    const-string/jumbo v2, "user"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "0x4f4c"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/server/am/PDSController;->DEBUG_ENG:Z

    return-void
.end method

.method public static formatDateTimeWithoutYear(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "null"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%18s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MM/dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final dumpPDS(Ljava/io/PrintWriter;)V
    .locals 10

    const-string/jumbo v0, "mPDSTargetPackages --- size "

    const-string/jumbo v1, "UDS = "

    const-string/jumbo v2, "PDSController"

    const-string/jumbo v3, "dumpPDS"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "ACTIVITY MANAGER PDS (dumpsys activity PDS)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/am/PDSController;->PDSLock:Lcom/android/server/am/PDSController$Lock;

    monitor-enter v2

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/PDSController;->udsPolicy:Lcom/android/server/am/PDSController$Policy;

    iget-boolean v1, v1, Lcom/android/server/am/PDSController$Policy;->enabled:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", MP = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/PDSController;->mpsmPolicy:Lcom/android/server/am/PDSController$Policy;

    iget-boolean v1, v1, Lcom/android/server/am/PDSController$Policy;->enabled:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PDSController;->mPDSTargetPackages:Lcom/android/server/am/pds/PDSPkgMap;

    invoke-virtual {v0}, Lcom/android/server/am/pds/PDSPkgMap;->totalSize()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PDSController;->mPDSTargetPackages:Lcom/android/server/am/pds/PDSPkgMap;

    iget-object v0, v0, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "No Policy Trigger !!!"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_0
    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v3, p0, Lcom/android/server/am/PDSController;->mPDSTargetPackages:Lcom/android/server/am/pds/PDSPkgMap;

    iget-object v3, v3, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    iget-object v3, p0, Lcom/android/server/am/PDSController;->mPDSTargetPackages:Lcom/android/server/am/pds/PDSPkgMap;

    iget-object v3, v3, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    move v4, v0

    :goto_2
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/pds/PDSPackageInfo;

    if-eqz v5, :cond_5

    const-string v6, "-RST "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v5, Lcom/android/server/am/pds/PDSPackageInfo;->disableResetTime:J

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_1

    const-string/jumbo v6, "null"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%23s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_1
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyy/MM/dd HH:mm:ss.SSS"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "-Uid "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "%8d"

    iget v7, v5, Lcom/android/server/am/pds/PDSPackageInfo;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v6, Lcom/android/server/am/PDSController;->DEBUG_ENG:Z

    if-eqz v6, :cond_2

    const-string v6, "-curLv "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    iget v6, v5, Lcom/android/server/am/pds/PDSPackageInfo;->curLevel:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, "("

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v5, Lcom/android/server/am/pds/PDSPackageInfo;->fasType:I

    and-int/lit16 v6, v6, 0x81

    if-eqz v6, :cond_3

    const-string v6, "A"

    goto :goto_4

    :cond_3
    const-string v6, "-"

    :goto_4
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, ")"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "-Pkg "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v6, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    iget v5, v5, Lcom/android/server/am/pds/PDSPackageInfo;->uid:I

    invoke-virtual {v6, v5}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidRunning(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "--(R)"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mPDSRestrictedPackages --- size "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/PDSController;->mPDSRestrictedPackages:Lcom/android/server/am/pds/PDSPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/pds/PDSPkgMap;->totalSize()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v0

    :goto_5
    iget-object v3, p0, Lcom/android/server/am/PDSController;->mPDSRestrictedPackages:Lcom/android/server/am/pds/PDSPkgMap;

    iget-object v3, v3, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_a

    iget-object v3, p0, Lcom/android/server/am/PDSController;->mPDSRestrictedPackages:Lcom/android/server/am/pds/PDSPkgMap;

    iget-object v3, v3, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    move v4, v0

    :goto_6
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_9

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/pds/PDSPackageInfo;

    const-string v6, "-Uid "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "%8d"

    iget v7, v5, Lcom/android/server/am/pds/PDSPackageInfo;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "-Pkg "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "-POL "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v5, Lcom/android/server/am/pds/PDSPackageInfo;->appliedPolicy:Lcom/android/server/am/PDSController$Policy;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/android/server/am/PDSController$Policy;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7

    :cond_8
    const-string/jumbo v5, "null"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_7
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, " "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/am/pds/PDSHandler$PDSHandlerHolder;->INSTANCE:Lcom/android/server/am/pds/PDSHandler;

    iget-object p0, p0, Lcom/android/server/am/pds/PDSHandler;->mMainHandler:Lcom/android/server/am/pds/PDSHandler$MainHandler;

    if-eqz p0, :cond_b

    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string/jumbo p1, "PDSHandler"

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    :cond_b
    return-void

    :goto_8
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final dumpPDSHistory(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "ACTIVITY MANAGER PDS HISTORY (dumpsys activity PDS history)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/PDSController;->DEBUG_MID:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/am/PDSController;->DEBUG_HIGH:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PDSController;->mHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/mars/HistoryBuffer;->getBuffer()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/PDSController;->mHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    iget v2, v2, Lcom/android/server/am/mars/HistoryBuffer;->size:I

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ""

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    sget-object p0, Lcom/android/server/am/pds/PDSHistoryBuffer$PDSHistoryBufferHolder;->INSTANCE:Lcom/android/server/am/pds/PDSHistoryBuffer;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/am/pds/PDSHistoryLog$PDSHistoryLogHolder;->INSTANCE:Lcom/android/server/am/pds/PDSHistoryLog;

    invoke-virtual {v0}, Lcom/android/server/am/pds/PDSHistoryLog;->getLog()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v1, p0, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const-string p0, ""

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final forceRunPolicyForSpecificPolicy(I)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x5

    const/16 v6, 0xa

    if-ne v0, v5, :cond_0

    iget-object v7, v1, Lcom/android/server/am/PDSController;->udsPolicy:Lcom/android/server/am/PDSController$Policy;

    goto :goto_0

    :cond_0
    if-ne v0, v6, :cond_1

    iget-object v7, v1, Lcom/android/server/am/PDSController;->mpsmPolicy:Lcom/android/server/am/PDSController$Policy;

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_1b

    iget-boolean v8, v7, Lcom/android/server/am/PDSController$Policy;->enabled:Z

    if-nez v8, :cond_2

    goto/16 :goto_14

    :cond_2
    iget v8, v7, Lcom/android/server/am/PDSController$Policy;->num:I

    if-eq v8, v5, :cond_4

    if-eq v8, v6, :cond_3

    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    const/16 v8, 0x9

    goto :goto_1

    :cond_4
    const/4 v8, 0x6

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    sget-object v10, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    invoke-virtual {v10}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    sget-object v10, Lcom/android/server/am/PDSController;->PDSLock:Lcom/android/server/am/PDSController$Lock;

    monitor-enter v10

    const/4 v11, 0x0

    :goto_2
    :try_start_0
    iget-object v12, v1, Lcom/android/server/am/PDSController;->mPDSTargetPackages:Lcom/android/server/am/pds/PDSPkgMap;

    iget-object v12, v12, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v11, v12, :cond_d

    iget-object v12, v1, Lcom/android/server/am/PDSController;->mPDSTargetPackages:Lcom/android/server/am/pds/PDSPkgMap;

    iget-object v12, v12, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    const/4 v14, 0x0

    :goto_3
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v14, v15, :cond_c

    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/pds/PDSPackageInfo;

    iget-object v4, v15, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    iget v9, v7, Lcom/android/server/am/PDSController$Policy;->num:I

    const-string/jumbo v13, "com.samsung.android.app.routineplus"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-ne v9, v6, :cond_5

    sget-boolean v4, Lcom/android/server/am/PDSController;->DEBUG_ENG:Z

    if-eqz v4, :cond_b

    const-string/jumbo v4, "PDSController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "package "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v15, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " inPolicyAllowList, don\'t execute this policy "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_13

    :cond_5
    sget-object v4, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    iget v9, v7, Lcom/android/server/am/PDSController$Policy;->num:I

    if-eq v9, v5, :cond_7

    if-eq v9, v6, :cond_6

    const/4 v9, -0x1

    goto :goto_4

    :cond_6
    const/16 v9, 0xf

    goto :goto_4

    :cond_7
    const/4 v9, 0x4

    :goto_4
    iget-object v13, v15, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    iget v6, v15, Lcom/android/server/am/pds/PDSPackageInfo;->userId:I

    iget v5, v15, Lcom/android/server/am/pds/PDSPackageInfo;->uid:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v6, v5, v13}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    move-result v4

    if-lez v4, :cond_9

    const-string/jumbo v4, "PDSController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FilterManager package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v15, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " inFilterManager, don\'t execute this policy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x5

    :cond_8
    :goto_5
    const/16 v6, 0xa

    goto :goto_6

    :cond_9
    new-instance v4, Lcom/android/server/am/PDSController$PkgStatusInfo;

    iget-object v5, v15, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    iget v6, v15, Lcom/android/server/am/pds/PDSPackageInfo;->uid:I

    iget v9, v15, Lcom/android/server/am/pds/PDSPackageInfo;->userId:I

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v5, v4, Lcom/android/server/am/PDSController$PkgStatusInfo;->name:Ljava/lang/String;

    iput v6, v4, Lcom/android/server/am/PDSController$PkgStatusInfo;->uid:I

    iput v9, v4, Lcom/android/server/am/PDSController$PkgStatusInfo;->userId:I

    const/4 v5, 0x5

    if-ne v0, v5, :cond_a

    iget v6, v15, Lcom/android/server/am/pds/PDSPackageInfo;->uds:I

    const/4 v9, 0x1

    if-ne v6, v9, :cond_8

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    const/16 v6, 0xa

    if-ne v0, v6, :cond_b

    iget v9, v15, Lcom/android/server/am/pds/PDSPackageInfo;->mpsm:I

    const/4 v13, 0x1

    if-ne v9, v13, :cond_b

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_6
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    :cond_d
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v16, 0x1

    add-int/lit8 v0, v0, -0x1

    move-wide v5, v4

    const/4 v9, 0x0

    move v4, v0

    :goto_7
    if-ltz v4, :cond_f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    const-wide/16 v11, 0x32

    cmp-long v0, v9, v11

    if-ltz v0, :cond_e

    const-wide/16 v5, 0xa

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    :cond_e
    iget-object v10, v1, Lcom/android/server/am/PDSController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v10

    :try_start_2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/PDSController$PkgStatusInfo;

    iget-object v9, v1, Lcom/android/server/am/PDSController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v0, Lcom/android/server/am/PDSController$PkgStatusInfo;->name:Ljava/lang/String;

    iget v12, v0, Lcom/android/server/am/PDSController$PkgStatusInfo;->userId:I

    invoke-virtual {v9, v11, v12}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/am/PDSController$PkgStatusInfo;->uid:I

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    add-int/lit8 v4, v4, -0x1

    move/from16 v9, v16

    goto :goto_7

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_f
    sget-object v4, Lcom/android/server/am/PDSController;->PDSLock:Lcom/android/server/am/PDSController$Lock;

    monitor-enter v4

    const/4 v0, 0x0

    :goto_9
    :try_start_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/PDSController$PkgStatusInfo;

    iget-object v6, v1, Lcom/android/server/am/PDSController;->mPDSTargetPackages:Lcom/android/server/am/pds/PDSPkgMap;

    iget-object v10, v5, Lcom/android/server/am/PDSController$PkgStatusInfo;->name:Ljava/lang/String;

    iget v5, v5, Lcom/android/server/am/PDSController$PkgStatusInfo;->userId:I

    if-eqz v6, :cond_11

    invoke-virtual {v6}, Lcom/android/server/am/pds/PDSPkgMap;->totalSize()I

    move-result v11

    if-eqz v11, :cond_11

    iget-object v6, v6, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    if-nez v6, :cond_10

    const/4 v5, 0x0

    goto :goto_a

    :cond_10
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    :goto_a
    check-cast v5, Lcom/android/server/am/pds/PDSPackageInfo;

    goto :goto_b

    :cond_11
    const/4 v5, 0x0

    :goto_b
    if-eqz v5, :cond_15

    iput-object v7, v5, Lcom/android/server/am/pds/PDSPackageInfo;->appliedPolicy:Lcom/android/server/am/PDSController$Policy;

    iput v8, v5, Lcom/android/server/am/pds/PDSPackageInfo;->curLevel:I

    iget-object v6, v1, Lcom/android/server/am/PDSController;->mPDSRestrictedPackages:Lcom/android/server/am/pds/PDSPkgMap;

    iget-object v10, v5, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    iget v11, v5, Lcom/android/server/am/pds/PDSPackageInfo;->userId:I

    iget-object v6, v6, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    if-nez v6, :cond_12

    const/4 v6, 0x0

    goto :goto_c

    :cond_12
    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    :goto_c
    if-nez v6, :cond_14

    iget-object v6, v1, Lcom/android/server/am/PDSController;->mPDSRestrictedPackages:Lcom/android/server/am/pds/PDSPkgMap;

    iget-object v10, v5, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    iget v11, v5, Lcom/android/server/am/pds/PDSPackageInfo;->userId:I

    iget-object v12, v6, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    if-nez v12, :cond_13

    new-instance v12, Landroid/util/SparseArray;

    const/4 v13, 0x2

    invoke-direct {v12, v13}, Landroid/util/SparseArray;-><init>(I)V

    iget-object v6, v6, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v10, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    invoke-virtual {v12, v11, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_d

    :catchall_2
    move-exception v0

    goto/16 :goto_12

    :cond_14
    :goto_d
    sget-boolean v6, Lcom/android/server/am/PDSController;->DEBUG_ENG:Z

    if-eqz v6, :cond_15

    const-string/jumbo v6, "PDSController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "add mPDSRestrictedPackages "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " policy --"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    :cond_16
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v9, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v7, Lcom/android/server/am/PDSController$Policy;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lcom/android/server/am/PDSController;->DEBUG_MID:Z

    const-string/jumbo v3, "]\n"

    const-string/jumbo v4, "] "

    const-string/jumbo v5, "["

    if-nez v2, :cond_18

    sget-boolean v2, Lcom/android/server/am/PDSController;->DEBUG_HIGH:Z

    if-eqz v2, :cond_17

    goto :goto_e

    :cond_17
    iget-object v2, v1, Lcom/android/server/am/PDSController;->mHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    if-eqz v2, :cond_1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/android/server/am/PDSController;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[EXE] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/am/PDSController;->mHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/HistoryBuffer;->put(Ljava/lang/String;)V

    goto :goto_11

    :cond_18
    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/server/am/PDSController;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[EXE] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/am/pds/PDSHistoryBuffer$PDSHistoryBufferHolder;->INSTANCE:Lcom/android/server/am/pds/PDSHistoryBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-enter v2

    :try_start_5
    iget-object v1, v2, Lcom/android/server/am/pds/PDSHistoryBuffer;->buffer:[Ljava/lang/String;

    iget v3, v2, Lcom/android/server/am/pds/PDSHistoryBuffer;->pointer:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Lcom/android/server/am/pds/PDSHistoryBuffer;->pointer:I

    aput-object v0, v1, v3

    iget v0, v2, Lcom/android/server/am/pds/PDSHistoryBuffer;->size:I

    if-lt v4, v0, :cond_19

    sget-object v0, Lcom/android/server/am/pds/PDSHistoryLog$PDSHistoryLogHolder;->INSTANCE:Lcom/android/server/am/pds/PDSHistoryLog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/pds/PDSHistoryLog;->saveLogToFile(Z)V

    const/4 v0, 0x0

    iput v0, v2, Lcom/android/server/am/pds/PDSHistoryBuffer;->pointer:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_f

    :catchall_3
    move-exception v0

    goto :goto_10

    :cond_19
    :goto_f
    monitor-exit v2

    goto :goto_11

    :goto_10
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :cond_1a
    :goto_11
    return-void

    :goto_12
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :goto_13
    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0

    :cond_1b
    :goto_14
    const-string/jumbo v0, "PDSController"

    const-string/jumbo v1, "policy is not exist or not enabled!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
