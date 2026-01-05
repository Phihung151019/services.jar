.class public final synthetic Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AnrHelper;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/internal/os/TimeoutRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AnrHelper;ILcom/android/internal/os/TimeoutRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/AnrHelper;

    iput p2, p0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;->f$2:Lcom/android/internal/os/TimeoutRecord;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;->f$1:I

    iget-object v1, p0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;->f$2:Lcom/android/internal/os/TimeoutRecord;

    sget-object v2, Lcom/android/server/am/AnrHelper;->sDefaultThreadFactory:Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/AnrHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    sget-object v2, Lcom/android/server/am/StackTracesDumpHelper;->ANR_FILE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    const-string v2, "ActivityManager"

    const-string v3, "Aborted stack trace dump (current primary pid="

    const-string v4, "Collecting stacks for pid "

    const-string/jumbo v5, "created ANR temporary file:"

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesTempFileStarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    :goto_0
    :try_start_1
    const-string/jumbo v6, "temp_anr_"

    const-string v7, ".txt"

    new-instance v8, Ljava/io/File;

    const-string v9, "/data/anr"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " into temporary file "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidStarted(I)V

    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/android/server/am/StackTracesDumpHelper;->TEMP_DUMP_TIME_LIMIT:I

    int-to-long v7, v5

    invoke-static {v0, v4, v7, v8}, Lcom/android/server/am/StackTracesDumpHelper;->dumpJavaTracesTombstoned(ILjava/lang/String;J)J

    move-result-wide v4

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidEnded()V

    :cond_2
    cmp-long v4, v7, v4

    if-gtz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "); deadline exceeded."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesTempFileTimedOut()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesTempFileEnded()V

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "Exception creating temporary ANR dump file:"

    invoke-static {v2, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesTempFileCreationFailed()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesTempFileEnded()V

    :cond_5
    const/4 v6, 0x0

    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/android/server/am/AnrHelper;->mTempDumpedPids:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object v6

    :goto_2
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesTempFileEnded()V

    :cond_7
    throw p0
.end method
