.class public final Lcom/android/server/am/ProcessStatsService;
.super Lcom/android/internal/app/procstats/IProcessStats$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAm:Lcom/android/server/am/ActivityManagerService;

.field public final mBaseDir:Ljava/io/File;

.field public mCommitPending:Z

.field public mFile:Landroid/util/AtomicFile;

.field public final mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public mInjectedScreenState:Ljava/lang/Boolean;

.field public mLastMemOnlyState:I

.field public mLastWriteTime:J

.field public final mLock:Ljava/lang/Object;

.field public mPendingWrite:Landroid/os/Parcel;

.field public mPendingWriteCommitted:Z

.field public mPendingWriteFile:Landroid/util/AtomicFile;

.field public final mPendingWriteLock:Ljava/lang/Object;

.field public final mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

.field public mShuttingDown:Z


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    monitor-enter v0

    :try_start_0
    new-instance p1, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->updateFileLocked()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Lcom/android/server/am/ProcessStatsService$1;

    invoke-direct {p1, p0}, Lcom/android/server/am/ProcessStatsService$1;-><init>(Lcom/android/server/am/ProcessStatsService;)V

    invoke-static {p1}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 4

    const-string/jumbo v0, "Process stats (procstats) dump options:"

    const-string v1, "    [--checkin|-c|--csv] [--csv-screen] [--csv-proc] [--csv-mem]"

    const-string v2, "    [--details] [--full-details] [--current] [--hours N] [--last N]"

    const-string v3, "    [--max N] --active] [--commit] [--reset] [--clear] [--write] [-h]"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    [--start-testing] [--stop-testing] "

    const-string v1, "    [--pretend-screen-on] [--pretend-screen-off] [--stop-pretend-screen]"

    const-string v2, "    [<package.name>]"

    const-string v3, "  --checkin: perform a checkin: print and delete old committed states."

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  -c: print only state in checkin format."

    const-string v1, "  --csv: output data suitable for putting in a spreadsheet."

    const-string v2, "  --csv-screen: on, off."

    const-string v3, "  --csv-mem: norm, mod, low, crit."

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  --csv-proc: pers, top, fore, vis, precept, backup,"

    const-string v1, "    service, home, prev, cached"

    const-string v2, "  --details: dump per-package details, not just summary."

    const-string v3, "  --full-details: dump all timing and active state details."

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  --current: only dump current state."

    const-string v1, "  --hours: aggregate over about N last hours."

    const-string v2, "  --last: only show the last committed stats at index N (starting at 1)."

    const-string v3, "  --max: for -a, max num of historical batches to print."

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  --active: only show currently active processes/services."

    const-string v1, "  --commit: commit current stats to disk and reset to start new stats."

    const-string v2, "  --section: proc|pkg-proc|pkg-svc|pkg-asc|pkg-all|all "

    const-string v3, "    options can be combined to select desired stats"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  --reset: reset current stats, without committing."

    const-string v1, "  --clear: clear all stats; does both --reset and deletes old stats."

    const-string v2, "  --write: write current in-memory stats to disk."

    const-string v3, "  --read: replace current stats with last-written stats."

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  --start-testing: clear all stats and starting high frequency pss sampling."

    const-string v1, "  --stop-testing: stop high frequency pss sampling."

    const-string v2, "  --pretend-screen-on: pretend screen is on."

    const-string v3, "  --pretend-screen-off: pretend screen is off."

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  --stop-pretend-screen: forget \"pretend screen\" and use the real state."

    const-string v1, "  -a: print everything."

    const-string v2, "  -h: print this help text."

    const-string v3, "  <package.name>: optional name of package to filter output by."

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v2, v4, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    const/16 v5, 0x2c

    if-eq v4, v5, :cond_1

    const/16 v6, 0x2b

    if-eq v4, v6, :cond_1

    const/16 v6, 0x20

    if-eq v4, v6, :cond_1

    if-eqz v4, :cond_1

    goto :goto_6

    :cond_1
    if-ne v4, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    const/4 v6, 0x0

    if-nez v3, :cond_3

    aput-boolean v5, p3, v1

    goto :goto_3

    :cond_3
    if-eqz v4, :cond_4

    aget-boolean v4, p3, v1

    if-eq v4, v5, :cond_4

    const-string/jumbo p0, "inconsistent separators (can\'t mix \',\' with \'+\')"

    aput-object p0, p4, v1

    return-object v6

    :cond_4
    :goto_3
    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_7

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move v4, v1

    :goto_4
    array-length v5, p0

    if-ge v4, v5, :cond_6

    aget-object v5, p0, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v6

    goto :goto_5

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    if-eqz v3, :cond_7

    const-string/jumbo p0, "invalid word \""

    const-string p1, "\""

    invoke-static {p0, v3, p1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p4, v1

    return-object v6

    :cond_7
    add-int/lit8 v3, v2, 0x1

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [I

    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v1, p2, :cond_9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/2addr p2, p1

    aput p2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_9
    return-object p0
.end method

.method public static readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)V
    .locals 3

    const-string/jumbo v0, "ProcessStatsService"

    const-string v1, "Ignoring existing stats; "

    :try_start_0
    invoke-virtual {p1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    iget-object p1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "caught exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    const-string p0, "Error reading process statistics"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ProcessStatsService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    array-length v0, p3

    if-lez v0, :cond_2

    const-string v0, "--proto"

    const/4 v3, 0x0

    aget-object v4, p3, v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStatsService;->dumpProto(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v0, "--statsd"

    aget-object v4, p3, v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/util/proto/ProtoOutputStream;

    new-instance p3, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p3, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    aput-object p3, p2, v3

    new-instance v10, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v10, v3}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ProcessStatsService;->getCommittedStatsMerged(JIZLjava/util/List;Lcom/android/internal/app/procstats/ProcessStats;)J

    const-wide/32 p0, 0xf423f

    invoke-virtual {v10, p2, p0, p1}, Lcom/android/internal/app/procstats/ProcessStats;->dumpAggregatedProtoForStatsd([Landroid/util/proto/ProtoOutputStream;J)V

    aget-object p0, p2, v3

    invoke-virtual {p0}, Landroid/util/proto/ProtoOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_2
    move-object v4, p0

    :try_start_2
    invoke-virtual {v4, p2, p3}, Lcom/android/server/am/ProcessStatsService;->dumpInner(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final dumpAggregatedStats(IJJLandroid/util/proto/ProtoOutputStream;)V
    .locals 6

    const v0, 0x36ee80

    mul-int/2addr p1, v0

    int-to-long v0, p1

    sget-wide v2, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessStatsService;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    iget-object p0, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz p0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p6, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const/16 p0, 0x1f

    invoke-virtual {p1, p6, p4, p5, p0}, Lcom/android/internal/app/procstats/ProcessStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    invoke-virtual {p6, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V
    .locals 10

    const-wide/32 v0, 0x36ee80

    mul-long/2addr p2, v0

    sget-wide v0, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/ProcessStatsService;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "Unable to build stats!"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 p2, 0x0

    invoke-direct {v0, p2}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    new-instance p2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {p2, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v0, p2}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    iget-object p0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string p0, "Failure reading: "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p7, :cond_2

    move-object/from16 v2, p6

    move/from16 v9, p12

    invoke-virtual {v0, p1, v2, v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    return-void

    :cond_2
    move-object/from16 v2, p6

    move/from16 v9, p12

    if-nez p8, :cond_4

    if-eqz p9, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, p1

    move-wide v3, p4

    move/from16 v5, p11

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    return-void

    :cond_4
    :goto_0
    xor-int/lit8 v5, p9, 0x1

    move-object v1, p1

    move-wide v3, p4

    move-object/from16 v2, p6

    move/from16 v6, p8

    move/from16 v7, p10

    move/from16 v8, p11

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V

    return-void
.end method

.method public final dumpInner(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 35
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x2

    new-array v6, v5, [I

    const/4 v10, 0x0

    aput v10, v6, v10

    const/4 v11, 0x1

    const/4 v7, 0x4

    aput v7, v6, v11

    new-array v8, v11, [I

    const/4 v9, 0x3

    aput v9, v8, v10

    sget-object v9, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    move v13, v10

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v20, v18

    move/from16 v21, v20

    move/from16 v22, v21

    move/from16 v23, v22

    move/from16 v24, v23

    move/from16 v26, v24

    move/from16 v27, v26

    move/from16 v28, v27

    move/from16 v29, v11

    const/16 v19, 0x0

    const/16 v25, 0x1f

    :goto_0
    array-length v12, v0

    if-ge v14, v12, :cond_28

    aget-object v12, v0, v14

    move/from16 v30, v10

    const-string v10, "--checkin"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-wide/from16 v32, v3

    move/from16 v26, v11

    move/from16 v31, v26

    :goto_1
    const/4 v0, 0x0

    goto/16 :goto_e

    :cond_0
    const-string v10, "-c"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-wide/from16 v32, v3

    move/from16 v20, v11

    move/from16 v31, v20

    goto :goto_1

    :cond_1
    const-string v10, "--csv"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-wide/from16 v32, v3

    move/from16 v16, v11

    move/from16 v31, v16

    goto :goto_1

    :cond_2
    const-string v10, "--csv-screen"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    add-int/lit8 v14, v14, 0x1

    array-length v6, v0

    if-lt v14, v6, :cond_3

    const-string v0, "Error: argument required for --csv-screen"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_3
    new-array v6, v11, [Z

    new-array v10, v11, [Ljava/lang/String;

    sget-object v12, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    aget-object v15, v0, v14

    invoke-static {v12, v7, v15, v6, v10}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v12

    if-nez v12, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error in \""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v0, v14

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v10, v30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_4
    aget-boolean v15, v6, v30

    move-wide/from16 v32, v3

    move/from16 v31, v11

    move-object v6, v12

    goto :goto_1

    :cond_5
    const-string v10, "--csv-mem"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    add-int/lit8 v14, v14, 0x1

    array-length v8, v0

    if-lt v14, v8, :cond_6

    const-string v0, "Error: argument required for --csv-mem"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_6
    new-array v8, v11, [Z

    new-array v10, v11, [Ljava/lang/String;

    sget-object v12, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    aget-object v7, v0, v14

    invoke-static {v12, v11, v7, v8, v10}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v7

    if-nez v7, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error in \""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v0, v14

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v10, v30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_7
    aget-boolean v27, v8, v30

    move-wide/from16 v32, v3

    move-object v8, v7

    :goto_2
    move/from16 v31, v11

    goto/16 :goto_1

    :cond_8
    const-string v7, "--csv-proc"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    add-int/lit8 v14, v14, 0x1

    array-length v7, v0

    if-lt v14, v7, :cond_9

    const-string v0, "Error: argument required for --csv-proc"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_9
    new-array v7, v11, [Z

    new-array v9, v11, [Ljava/lang/String;

    sget-object v10, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget-object v12, v0, v14

    invoke-static {v10, v11, v12, v7, v9}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v10

    if-nez v10, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error in \""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v0, v14

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v9, v30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_a
    aget-boolean v29, v7, v30

    move-wide/from16 v32, v3

    move-object v9, v10

    goto :goto_2

    :cond_b
    const-string v7, "--details"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    move-wide/from16 v32, v3

    move/from16 v21, v11

    move/from16 v31, v21

    goto/16 :goto_1

    :cond_c
    const-string v7, "--full-details"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    move-wide/from16 v32, v3

    move/from16 v22, v11

    move/from16 v31, v22

    goto/16 :goto_1

    :cond_d
    const-string v7, "--hours"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    add-int/lit8 v14, v14, 0x1

    array-length v7, v0

    if-lt v14, v7, :cond_e

    const-string v0, "Error: argument required for --hours"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_e
    :try_start_0
    aget-object v7, v0, v14

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move-wide/from16 v32, v3

    goto/16 :goto_2

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error: --hours argument not an int -- "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v0, v14

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_f
    const-string v7, "--last"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    add-int/lit8 v14, v14, 0x1

    array-length v7, v0

    if-lt v14, v7, :cond_10

    const-string v0, "Error: argument required for --last"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_10
    :try_start_1
    aget-object v7, v0, v14

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error: --last argument not an int -- "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v0, v14

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_11
    const-string v7, "--max"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    add-int/lit8 v14, v14, 0x1

    array-length v5, v0

    if-lt v14, v5, :cond_12

    const-string v0, "Error: argument required for --max"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_12
    :try_start_2
    aget-object v5, v0, v14

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error: --max argument not an int -- "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v0, v14

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_13
    const-string v7, "--active"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    move-wide/from16 v32, v3

    move/from16 v24, v11

    move/from16 v28, v24

    :goto_4
    move/from16 v31, v28

    goto/16 :goto_1

    :cond_14
    const-string v7, "--current"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    move-wide/from16 v32, v3

    move/from16 v28, v11

    goto :goto_4

    :cond_15
    const-string v7, "--commit"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v7, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_3
    iget-object v10, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v12, v10, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    or-int/2addr v12, v11

    iput v12, v10, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    invoke-virtual {v1, v11, v11}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    const-string/jumbo v10, "Process stats committed."

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v7

    move-wide/from16 v32, v3

    move/from16 v17, v11

    move/from16 v31, v17

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_16
    const-string v7, "--section"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    add-int/lit8 v14, v14, 0x1

    array-length v7, v0

    if-lt v14, v7, :cond_17

    const-string v0, "Error: argument required for --section"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_17
    aget-object v7, v0, v14

    const-string v10, ","

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v10, v7

    if-nez v10, :cond_19

    const/16 v25, 0x1f

    :cond_18
    move-wide/from16 v32, v3

    goto :goto_6

    :cond_19
    sget-object v10, Lcom/android/internal/app/procstats/ProcessStats;->OPTIONS_STR:[Ljava/lang/String;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    array-length v12, v7

    move/from16 v11, v30

    move/from16 v25, v11

    :goto_5
    if-ge v11, v12, :cond_18

    aget-object v0, v7, v11

    invoke-interface {v10, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    move-wide/from16 v32, v3

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1a

    sget-object v3, Lcom/android/internal/app/procstats/ProcessStats;->OPTIONS:[I

    aget v0, v3, v0

    or-int v0, v25, v0

    move/from16 v25, v0

    :cond_1a
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p2

    move-wide/from16 v3, v32

    goto :goto_5

    :goto_6
    const/4 v0, 0x0

    :goto_7
    const/16 v31, 0x1

    goto/16 :goto_e

    :cond_1b
    move-wide/from16 v32, v3

    const-string v0, "--clear"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v3, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    new-instance v4, Lcom/android/server/am/ProcessStatsService$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, Lcom/android/server/am/ProcessStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessStatsService;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move/from16 v4, v30

    const/4 v7, 0x1

    :try_start_5
    invoke-virtual {v1, v4, v7, v7}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v7

    :goto_8
    if-ltz v4, :cond_1c

    new-instance v7, Ljava/io/File;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_b

    :cond_1c
    :try_start_6
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-string v0, "All process stats cleared."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v3

    :goto_9
    const/4 v0, 0x0

    :goto_a
    const/16 v17, 0x1

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_c

    :goto_b
    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :goto_c
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :cond_1d
    const-string v0, "--write"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v3, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v7, 0x1

    :try_start_7
    invoke-virtual {v1, v7}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    const-string/jumbo v0, "Process stats written."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v3

    goto :goto_9

    :catchall_3
    move-exception v0

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :cond_1e
    const-string v0, "--read"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v3, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_8
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v4, v1, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-static {v0, v4}, Lcom/android/server/am/ProcessStatsService;->readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)V

    const-string/jumbo v0, "Process stats read."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :try_start_a
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    monitor-exit v3

    goto :goto_9

    :catchall_4
    move-exception v0

    goto :goto_d

    :catchall_5
    move-exception v0

    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :goto_d
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0

    :cond_1f
    const-string v0, "--start-testing"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/android/server/am/AppProfiler;->setTestPssMode(Z)V

    const-string/jumbo v0, "Started high frequency sampling."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    :cond_20
    const-string v0, "--stop-testing"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppProfiler;->setTestPssMode(Z)V

    const-string/jumbo v0, "Stopped high frequency sampling."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_21
    const-string v0, "--pretend-screen-on"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v3, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_b
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    monitor-exit v3

    goto/16 :goto_9

    :catchall_6
    move-exception v0

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw v0

    :cond_22
    const-string v0, "--pretend-screen-off"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v3, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_c
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    monitor-exit v3

    goto/16 :goto_9

    :catchall_7
    move-exception v0

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    throw v0

    :cond_23
    const-string v0, "--stop-pretend-screen"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v3, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    :try_start_d
    iput-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    monitor-exit v3

    goto/16 :goto_a

    :catchall_8
    move-exception v0

    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    throw v0

    :cond_24
    const/4 v0, 0x0

    const-string v3, "-h"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_25
    const-string v3, "-a"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/16 v21, 0x1

    const/16 v23, 0x1

    goto/16 :goto_7

    :cond_26
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_27

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_27

    const-string/jumbo v0, "Unknown option: "

    invoke-virtual {v0, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_27
    move-object/from16 v19, v12

    const/16 v21, 0x1

    goto/16 :goto_7

    :goto_e
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p2

    move-wide/from16 v3, v32

    const/4 v7, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_28
    move-wide/from16 v32, v3

    if-eqz v17, :cond_29

    goto/16 :goto_28

    :cond_29
    if-eqz v16, :cond_2e

    const-string/jumbo v0, "Processes running summed over"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v15, :cond_2a

    const/4 v0, 0x0

    :goto_f
    array-length v3, v6

    if-ge v0, v3, :cond_2a

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v3, v6, v0

    invoke-static {v2, v3}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabelCsv(Ljava/io/PrintWriter;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_2a
    if-nez v27, :cond_2b

    const/4 v0, 0x0

    :goto_10
    array-length v3, v8

    if-ge v0, v3, :cond_2b

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v3, v8, v0

    invoke-static {v2, v3}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabelCsv(Ljava/io/PrintWriter;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_2b
    if-nez v29, :cond_2c

    const/4 v10, 0x0

    :goto_11
    array-length v0, v9

    if-ge v10, v0, :cond_2c

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget v3, v9, v10

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    :cond_2c
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    iget-object v12, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_e
    iget-object v3, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v11, 0x0

    move-object v7, v9

    move-object v4, v6

    move-object v5, v8

    move-object v6, v9

    move-object/from16 v10, v19

    move-wide/from16 v8, v32

    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/app/procstats/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    move-object/from16 v34, v6

    move-object v6, v4

    move-wide v3, v8

    move-object/from16 v8, v34

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2d

    move-object v1, v2

    move-wide v9, v3

    move-object v4, v6

    move v3, v15

    move/from16 v7, v29

    move-object v2, v0

    move-object v6, v5

    move/from16 v5, v27

    invoke-static/range {v1 .. v10}, Lcom/android/internal/app/procstats/DumpUtils;->dumpProcessListCsv(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z[IZ[IZ[IJ)V

    :cond_2d
    monitor-exit v12

    return-void

    :catchall_9
    move-exception v0

    monitor-exit v12
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    throw v0

    :cond_2e
    move-object/from16 v7, v19

    move-wide/from16 v3, v32

    if-eqz v13, :cond_2f

    const-string v0, "AGGREGATED OVER LAST "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " HOURS:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    int-to-long v5, v13

    move-wide v8, v5

    move-wide v5, v3

    move-wide v3, v8

    move/from16 v8, v20

    move/from16 v9, v21

    move/from16 v10, v22

    move/from16 v11, v23

    move/from16 v12, v24

    move/from16 v13, v25

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V

    return-void

    :cond_2f
    move-object v10, v1

    move-object v1, v2

    move-object v2, v7

    move/from16 v0, v18

    move/from16 v9, v21

    move/from16 v11, v23

    move/from16 v8, v24

    move/from16 v13, v25

    if-lez v0, :cond_39

    const-string v5, "LAST STATS AT INDEX "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, v10, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v5, 0x0

    const/4 v7, 0x1

    :try_start_f
    invoke-virtual {v10, v5, v5, v7}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v0, v5, :cond_30

    const-string/jumbo v0, "Only have "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " data sets"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    iget-object v0, v10, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_a
    move-exception v0

    goto/16 :goto_14

    :cond_30
    :try_start_10
    new-instance v5, Landroid/util/AtomicFile;

    new-instance v7, Ljava/io/File;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {v7, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    new-instance v7, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v12, 0x0

    invoke-direct {v7, v12}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    invoke-static {v7, v5}, Lcom/android/server/am/ProcessStatsService;->readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    iget-object v12, v10, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v12, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v12, :cond_33

    if-nez v26, :cond_31

    if-eqz v20, :cond_32

    :cond_31
    const-string/jumbo v2, "err,"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_32
    const-string v2, "Failure reading "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "; "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_33
    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v5, ".ci"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v26, :cond_34

    if-eqz v20, :cond_35

    :cond_34
    move-object v0, v7

    goto :goto_13

    :cond_35
    const-string v5, "COMMITTED STATS FROM "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v0, :cond_36

    const-string v0, " (checked in)"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_36
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez v9, :cond_37

    if-eqz v22, :cond_38

    :cond_37
    move-object v0, v7

    const/16 v31, 0x1

    goto :goto_12

    :cond_38
    move-object v0, v7

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    return-void

    :goto_12
    xor-int/lit8 v5, v22, 0x1

    move-object/from16 v1, p1

    move v6, v9

    move v7, v11

    move v9, v13

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V

    if-eqz v11, :cond_4f

    const-string v0, "  mFile="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStatsService;->getCurrentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void

    :goto_13
    invoke-virtual {v0, v1, v2, v13}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    return-void

    :goto_14
    iget-object v1, v10, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_39
    move/from16 v21, v9

    const/16 v31, 0x1

    if-nez v11, :cond_3b

    if-eqz v26, :cond_3a

    goto :goto_15

    :cond_3a
    move v9, v13

    const/16 v30, 0x0

    goto/16 :goto_23

    :cond_3b
    :goto_15
    if-nez v28, :cond_3a

    iget-object v0, v10, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    xor-int/lit8 v0, v26, 0x1

    const/4 v12, 0x0

    :try_start_11
    invoke-virtual {v10, v12, v12, v0}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v14

    if-eqz v14, :cond_48

    if-eqz v26, :cond_3c

    const/4 v0, 0x0

    goto :goto_16

    :cond_3c
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    :goto_16
    if-gez v0, :cond_3d

    const/4 v0, 0x0

    :cond_3d
    move v12, v0

    const/4 v5, 0x0

    :goto_17
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    if-ge v12, v0, :cond_47

    :try_start_12
    new-instance v15, Landroid/util/AtomicFile;

    new-instance v0, Ljava/io/File;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v15, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_10

    const/4 v6, 0x0

    :try_start_13
    invoke-direct {v0, v6}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    invoke-static {v0, v15}, Lcom/android/server/am/ProcessStatsService;->readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)V

    iget-object v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v7, :cond_40

    if-nez v26, :cond_3e

    if-eqz v20, :cond_3f

    :cond_3e
    const-string/jumbo v7, "err,"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3f
    const-string v7, "Failure reading "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "; "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move/from16 v30, v6

    move v9, v13

    goto/16 :goto_1f

    :catchall_b
    move-exception v0

    move/from16 v30, v6

    move v9, v13

    goto/16 :goto_1e

    :cond_40
    invoke-virtual {v15}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v9, ".ci"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v26, :cond_41

    if-eqz v20, :cond_42

    :cond_41
    move/from16 v30, v6

    move v9, v13

    move-object v13, v7

    goto :goto_1c

    :cond_42
    if-eqz v5, :cond_43

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    move/from16 v16, v5

    goto :goto_18

    :cond_43
    move/from16 v16, v31

    :goto_18
    :try_start_14
    const-string v5, "COMMITTED STATS FROM "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v9, :cond_44

    const-string v5, " (checked in)"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1a

    :catchall_c
    move-exception v0

    move/from16 v30, v6

    move v9, v13

    :goto_19
    move/from16 v5, v16

    goto :goto_1e

    :cond_44
    :goto_1a
    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    if-eqz v22, :cond_45

    move-object v5, v7

    const/4 v7, 0x0

    move-object v9, v5

    const/4 v5, 0x0

    move/from16 v30, v6

    const/4 v6, 0x0

    move/from16 v34, v13

    move-object v13, v9

    move/from16 v9, v34

    :try_start_15
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    move-object/from16 v1, p1

    goto :goto_1b

    :catchall_d
    move-exception v0

    move-object/from16 v1, p1

    goto :goto_19

    :cond_45
    move/from16 v30, v6

    move v5, v8

    move v9, v13

    move-object v13, v7

    :try_start_16
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    :goto_1b
    move/from16 v5, v16

    goto :goto_1d

    :catchall_e
    move-exception v0

    move v8, v5

    goto :goto_19

    :goto_1c
    :try_start_17
    invoke-virtual {v0, v1, v2, v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    :goto_1d
    if-eqz v26, :cond_46

    invoke-virtual {v15}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".ci"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_f

    goto :goto_1f

    :catchall_f
    move-exception v0

    goto :goto_1e

    :catchall_10
    move-exception v0

    move v9, v13

    const/16 v30, 0x0

    :goto_1e
    :try_start_18
    const-string v6, "**** FAILURE DUMPING STATE: "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_11

    :cond_46
    :goto_1f
    add-int/lit8 v12, v12, 0x1

    move v13, v9

    goto/16 :goto_17

    :catchall_11
    move-exception v0

    goto :goto_22

    :cond_47
    move/from16 v30, v5

    :goto_20
    move v9, v13

    goto :goto_21

    :cond_48
    const/16 v30, 0x0

    goto :goto_20

    :goto_21
    iget-object v0, v10, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_23

    :goto_22
    iget-object v1, v10, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :goto_23
    if-nez v26, :cond_4f

    iget-object v12, v10, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    if-eqz v20, :cond_49

    :try_start_19
    iget-object v0, v10, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0, v1, v2, v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    move v13, v9

    move/from16 v9, v21

    goto :goto_26

    :catchall_12
    move-exception v0

    goto/16 :goto_27

    :cond_49
    if-eqz v30, :cond_4a

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_4a
    const-string v0, "CURRENT STATS:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez v21, :cond_4c

    if-eqz v22, :cond_4b

    goto :goto_24

    :cond_4b
    iget-object v0, v10, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    move v8, v5

    move-object/from16 v1, p1

    move v13, v9

    move/from16 v9, v21

    goto :goto_25

    :cond_4c
    :goto_24
    iget-object v0, v10, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    xor-int/lit8 v5, v22, 0x1

    move-object/from16 v1, p1

    move v7, v11

    move/from16 v6, v21

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V

    move v13, v9

    move v9, v6

    if-eqz v11, :cond_4d

    const-string v0, "  mFile="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStatsService;->getCurrentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4d
    :goto_25
    move/from16 v30, v31

    :goto_26
    monitor-exit v12
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_12

    if-nez v28, :cond_4f

    if-eqz v30, :cond_4e

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_4e
    const-string v0, "AGGREGATED OVER LAST 24 HOURS:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-wide v5, v3

    const-wide/16 v3, 0x18

    move-object v7, v2

    move v12, v8

    move/from16 v8, v20

    move-object v2, v1

    move-object v1, v10

    move/from16 v10, v22

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V

    move-object v1, v2

    move-wide v3, v5

    move-object v2, v7

    move v5, v12

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "AGGREGATED OVER LAST 3 HOURS:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-wide/from16 v32, v3

    const-wide/16 v3, 0x3

    move-wide/from16 v5, v32

    move-object v2, v1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V

    goto :goto_28

    :goto_27
    :try_start_1a
    monitor-exit v12
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_12

    throw v0

    :cond_4f
    :goto_28
    return-void
.end method

.method public final dumpProto(Ljava/io/FileDescriptor;)V
    .locals 7

    new-instance v6, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v6, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iget-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide v0, 0x10b00000001L

    invoke-virtual {v6, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/16 v3, 0x1f

    invoke-virtual {v2, v6, v4, v5, v3}, Lcom/android/internal/app/procstats/ProcessStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    invoke-virtual {v6, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v2, 0x10b00000002L

    const/4 v1, 0x3

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(IJJLandroid/util/proto/ProtoOutputStream;)V

    const-wide v2, 0x10b00000003L

    const/16 v1, 0x18

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(IJJLandroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v6}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getCommittedFilesLF(IZZ)Ljava/util/ArrayList;
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v1, v0

    if-gt v1, p1, :cond_0

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    array-length v1, v0

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_4

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "state-v2-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-nez p3, :cond_2

    const-string v2, ".ci"

    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object p1

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCommittedStats(JIZLjava/util/List;)J
    .locals 7

    new-instance v6, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessStatsService;->getCommittedStatsMerged(JIZLjava/util/List;Lcom/android/internal/app/procstats/ProcessStats;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getCommittedStatsMerged(JIZLjava/util/List;Lcom/android/internal/app/procstats/ProcessStats;)J
    .locals 16

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    const-string/jumbo v7, "ProcessStatsService"

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getCommittedStatsMerged_enforcePermission()V

    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v8, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v1, v8, v8, v0}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_5

    const-string/jumbo v10, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {v10, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v0

    :goto_0
    if-ltz v11, :cond_4

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v0, "state-v2-"

    invoke-virtual {v12, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    const-string v13, ".bin"

    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v13, 0x10000000

    invoke-static {v0, v13}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    new-instance v13, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v13, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v0, v8}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    invoke-virtual {v0, v13}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    iget-wide v13, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    cmp-long v15, v13, v2

    if-lez v15, :cond_0

    move-wide v2, v13

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {v6, v0}, Lcom/android/internal/app/procstats/ProcessStats;->add(Lcom/android/internal/app/procstats/ProcessStats;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_1
    if-eqz v5, :cond_2

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v13

    new-instance v14, Lcom/android/server/am/ProcessStatsService$3;

    invoke-direct {v14, v13, v0, v4}, Lcom/android/server/am/ProcessStatsService$3;-><init>([Landroid/os/ParcelFileDescriptor;Lcom/android/internal/app/procstats/ProcessStats;I)V

    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    aget-object v13, v13, v8

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    iget-object v13, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v13, :cond_3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failure reading process stats: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_2
    :try_start_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failure to read and parse commit file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    :goto_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failure opening procstat file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_4
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_0

    :cond_4
    if-eqz p4, :cond_5

    if-eqz v5, :cond_5

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    new-instance v9, Lcom/android/server/am/ProcessStatsService$3;

    invoke-direct {v9, v0, v6, v4}, Lcom/android/server/am/ProcessStatsService$3;-><init>([Landroid/os/ParcelFileDescriptor;Lcom/android/internal/app/procstats/ProcessStats;I)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    aget-object v0, v0, v8

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v2

    :goto_5
    :try_start_3
    const-string v4, "Failure opening procstat file"

    invoke-static {v7, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v2

    :goto_6
    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final getCurrentFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final getCurrentMemoryState()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getCurrentStats(Ljava/util/List;)[B
    .locals 7

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getCurrentStats_enforcePermission()V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v2, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v2, v3, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v5, v5, v1}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v3, v1

    :goto_0
    if-ltz v3, :cond_0

    :try_start_2
    new-instance v1, Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    invoke-static {v1, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_3
    const-string/jumbo v4, "ProcessStatsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure opening procstat file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :goto_2
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public final getMemFactorLocked()I
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget p0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getMinAssociationDumpDuration()J
    .locals 2

    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    sget-wide v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_ASSOC_LOG_DURATION:J

    return-wide v0
.end method

.method public final getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;
    .locals 11

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getStatsOverTime_enforcePermission()V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v2, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v2, v3, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v6, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v3, v6

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    cmp-long v1, v3, p1

    if-gez v1, :cond_2

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v5, v5, v1}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v3, Lcom/android/internal/app/procstats/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-wide v6, v3, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v8, v3, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v6, v8

    cmp-long v1, v6, p1

    if-gez v1, :cond_1

    new-instance v1, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    add-int/lit8 v4, v0, -0x1

    new-instance v6, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v6, v5}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    invoke-static {v6, v1}, Lcom/android/server/am/ProcessStatsService;->readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)V

    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {v3, v6}, Lcom/android/internal/app/procstats/ProcessStats;->add(Lcom/android/internal/app/procstats/ProcessStats;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Added stats: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", over "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v9, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string/jumbo v1, "ProcessStatsService"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    const-string/jumbo v1, "ProcessStatsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure reading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    new-instance v0, Lcom/android/server/am/ProcessStatsService$4;

    invoke-direct {v0, p2, p1}, Lcom/android/server/am/ProcessStatsService$4;-><init>([Landroid/os/ParcelFileDescriptor;[B)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    aget-object p1, p2, v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :goto_2
    :try_start_2
    const-string/jumbo p2, "ProcessStatsService"

    const-string v0, "Failed building output pipe"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p0, 0x0

    return-object p0

    :goto_3
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    instance-of p1, p0, Ljava/lang/SecurityException;

    if-nez p1, :cond_0

    const-string/jumbo p1, "ProcessStatsService"

    const-string/jumbo p2, "Process Stats Crash"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    throw p0
.end method

.method public final performWriteState(J)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    :try_start_1
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    const-string/jumbo v0, "procstats"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    add-long/2addr v6, p1

    invoke-static {v0, v6, v7}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLF()V

    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string/jumbo p2, "ProcessStatsService"

    const-string v0, "Error writing process statistics"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLF()V

    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLF()V

    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final setMemFactorLocked(IJZ)V
    .locals 7

    iput p1, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    :cond_0
    if-eqz p4, :cond_1

    add-int/lit8 p1, p1, 0x4

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget p4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    if-eq p1, p4, :cond_6

    const/4 v0, -0x1

    if-eq p4, v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    aget-wide v1, v0, p4

    iget-wide v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    sub-long v3, p2, v3

    add-long/2addr v3, v1

    aput-wide v3, v0, p4

    :cond_2
    iput p1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    :goto_0
    if-ltz p4, :cond_6

    invoke-virtual {p0, p4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_5

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_2
    if-ltz v3, :cond_4

    invoke-virtual {v2, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    iget-object v4, v4, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_3
    if-ltz v5, :cond_3

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setMemFactor(IJ)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_5
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final shutdown()V
    .locals 3

    const-string/jumbo v0, "ProcessStatsService"

    const-string/jumbo v1, "Writing process stats before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    iput-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final trimHistoricStatesWriteLF()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "state-v2-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_3

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Pruning old procstats: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ProcessStatsService"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public final updateFileLocked()V
    .locals 5

    const-string/jumbo v0, "state-v2-"

    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".bin"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final writeStateLocked(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    return-void
.end method

.method public final writeStateLocked(ZZ)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    if-nez v3, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v1, v3, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    if-eqz p2, :cond_1

    iget v4, v3, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    new-instance v3, Landroid/util/AtomicFile;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->getCurrentFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    iput-boolean p2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    :cond_2
    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {p2}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->updateFileLocked()V

    iget-object p2, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    new-instance v3, Lcom/android/server/am/ProcessStatsService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/am/ProcessStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessStatsService;)V

    invoke-virtual {p2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/am/ProcessStatsService$2;

    invoke-direct {p2, p0, v3, v4}, Lcom/android/server/am/ProcessStatsService$2;-><init>(Lcom/android/server/am/ProcessStatsService;J)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/ProcessStatsService;->performWriteState(J)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
