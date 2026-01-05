.class public abstract Lcom/android/server/am/StackTracesDumpHelper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final ANR_FILE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final NATIVE_DUMP_TIMEOUT_MS:I

.field public static final TEMP_DUMP_TIME_LIMIT:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd-HH-mm-ss-SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/StackTracesDumpHelper;->ANR_FILE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v1, v0, 0x7d0

    sput v1, Lcom/android/server/am/StackTracesDumpHelper;->NATIVE_DUMP_TIMEOUT_MS:I

    mul-int/lit16 v0, v0, 0x2710

    sput v0, Lcom/android/server/am/StackTracesDumpHelper;->TEMP_DUMP_TIME_LIMIT:I

    return-void
.end method

.method public static appendtoANRFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    array-length p0, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return p0

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "ActivityManager"

    const-string v0, "Exception writing to ANR dump file:"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static collectPids(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    const-string v0, "ActivityManager"

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    const-string v1, "Interrupted while collecting "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :goto_1
    const-string v1, "Failed to collect "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized createAnrDumpFile(Ljava/io/File;)Ljava/io/File;
    .locals 5

    const-string/jumbo v0, "anr_"

    const-class v1, Lcom/android/server/am/StackTracesDumpHelper;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/am/StackTracesDumpHelper;->ANR_FILE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x180

    const/4 v2, -0x1

    invoke-static {p0, v0, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo v0, "Unable to create ANR dump file: createNewFile failed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static dumpJavaTracesTombstoned(ILjava/lang/String;J)J
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v2, "----- dumping pid: "

    const-string v3, " at "

    invoke-static {p0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/am/StackTracesDumpHelper;->appendtoANRFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-wide/16 v3, 0x3e8

    div-long/2addr p2, v3

    long-to-int p2, p2

    invoke-static {p0, p1, p2}, Landroid/os/Debug;->dumpJavaBacktraceToFileTimeout(ILjava/lang/String;I)Z

    move-result p2

    const-string p3, "ActivityManager"

    if-eqz p2, :cond_0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    int-to-long v6, v2

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x64

    cmp-long v2, v4, v6

    if-gez v2, :cond_0

    const-string/jumbo p2, "Successfully created Java ANR file is empty!"

    invoke-static {p3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string/jumbo v2, "Unable to get ANR file size"

    invoke-static {p3, v2, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    move p2, v3

    :cond_0
    if-nez p2, :cond_1

    const-string p2, "Dumping Java threads failed, initiating native stack dump."

    invoke-static {p3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget p2, Lcom/android/server/am/StackTracesDumpHelper;->NATIVE_DUMP_TIMEOUT_MS:I

    div-int/lit16 p2, p2, 0x3e8

    invoke-static {p0, p1, p2}, Landroid/os/Debug;->dumpNativeBacktraceToFileTimeout(ILjava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_1

    const-string/jumbo p0, "Native stack dump failed!"

    invoke-static {p3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method public static dumpStackTraces(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Lcom/android/internal/os/anr/AnrLatencyTracker;)J
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v0, p4

    move-object/from16 v4, p5

    const-string v5, "Dumping to "

    const-string v6, "ActivityManager"

    invoke-static {v5, v1, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget v5, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v5, v5, 0x4e20

    int-to-long v7, v5

    const-string v5, "); deadline exceeded."

    const/4 v11, 0x1

    const-wide/16 v12, -0x1

    const/4 v14, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_7

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v1, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v4, :cond_0

    :try_start_1
    invoke-virtual {v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->copyingFirstPidStarted()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v10, v0

    goto :goto_2

    :cond_0
    :goto_0
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v7, v8, v10}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v10

    invoke-static {v10, v9}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/io/OutputStream;)J

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_1

    invoke-virtual {v4, v11}, Lcom/android/internal/os/anr/AnrLatencyTracker;->copyingFirstPidEnded(Z)V

    :cond_1
    move v0, v11

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move v9, v11

    goto :goto_4

    :catch_1
    move-exception v0

    move v9, v11

    goto :goto_6

    :catch_2
    move-exception v0

    move v9, v11

    goto :goto_7

    :catch_3
    move-exception v0

    move v9, v11

    goto :goto_8

    :cond_2
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v4, :cond_3

    invoke-virtual {v4, v14}, Lcom/android/internal/os/anr/AnrLatencyTracker;->copyingFirstPidEnded(Z)V

    :cond_3
    :goto_1
    move v0, v14

    goto :goto_9

    :catchall_2
    move-exception v0

    move v11, v14

    goto/16 :goto_a

    :catch_4
    move-exception v0

    move v9, v14

    goto :goto_4

    :catch_5
    move-exception v0

    move v9, v14

    goto :goto_6

    :catch_6
    move-exception v0

    move v9, v14

    goto :goto_7

    :catch_7
    move-exception v0

    move v9, v14

    goto :goto_8

    :goto_2
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_5
    invoke-virtual {v10, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v10
    :try_end_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_4
    :try_start_6
    const-string v10, "Copying the first pid timed out"

    invoke-static {v6, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v4, :cond_3

    :goto_5
    invoke-virtual {v4, v9}, Lcom/android/internal/os/anr/AnrLatencyTracker;->copyingFirstPidEnded(Z)V

    goto :goto_1

    :catchall_4
    move-exception v0

    move v11, v9

    goto :goto_a

    :goto_6
    :try_start_7
    const-string v10, "Failed to read the first pid\'s predump file"

    invoke-static {v6, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v4, :cond_3

    goto :goto_5

    :goto_7
    const-string v10, "Interrupted while collecting the first pid\'s predump to the main ANR file"

    invoke-static {v6, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v4, :cond_3

    goto :goto_5

    :goto_8
    const-string v10, "Failed to collect the first pid\'s predump to the main ANR file"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v6, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v4, :cond_3

    goto :goto_5

    :goto_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long v9, v9, v16

    sub-long/2addr v7, v9

    cmp-long v9, v7, v18

    if-gtz v9, :cond_4

    const-string v0, "Aborting stack trace dump (currently copying primary pid"

    invoke-static {v15, v0, v5, v6}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-wide v12

    :cond_4
    if-eqz v0, :cond_5

    sget v9, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v15, v9, :cond_5

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v12

    :cond_5
    if-eqz v0, :cond_8

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpAsCommaSeparatedArrayWithHeader()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/android/server/am/StackTracesDumpHelper;->appendtoANRFile(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :goto_a
    if-eqz v4, :cond_6

    invoke-virtual {v4, v11}, Lcom/android/internal/os/anr/AnrLatencyTracker;->copyingFirstPidEnded(Z)V

    :cond_6
    throw v0

    :cond_7
    const-wide/16 v18, 0x0

    move v0, v14

    :cond_8
    :goto_b
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingFirstPidsStarted()V

    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    :goto_c
    if-ge v0, v9, :cond_11

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-nez v0, :cond_a

    sget v15, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v15, v10, :cond_a

    move v15, v11

    goto :goto_d

    :cond_a
    move v15, v14

    :goto_d
    const-string v11, "Collecting stacks for pid "

    invoke-static {v10, v11, v6}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_b

    :try_start_8
    invoke-virtual {v4, v10}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidStarted(I)V

    goto :goto_e

    :catchall_5
    move-exception v0

    goto :goto_f

    :cond_b
    :goto_e
    invoke-static {v10, v1, v7, v8}, Lcom/android/server/am/StackTracesDumpHelper;->dumpJavaTracesTombstoned(ILjava/lang/String;J)J

    move-result-wide v20
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidEnded()V

    :cond_c
    sub-long v7, v7, v20

    cmp-long v11, v7, v18

    if-gtz v11, :cond_d

    const-string v0, "Aborting stack trace dump (current firstPid="

    invoke-static {v10, v0, v5, v6}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-wide v12

    :cond_d
    if-eqz v15, :cond_f

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpAsCommaSeparatedArrayWithHeader()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Lcom/android/server/am/StackTracesDumpHelper;->appendtoANRFile(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move-wide v12, v10

    :cond_f
    add-int/lit8 v0, v0, 0x1

    const/4 v11, 0x1

    goto :goto_c

    :goto_f
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidEnded()V

    :cond_10
    throw v0

    :cond_11
    if-eqz v4, :cond_12

    invoke-virtual {v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingFirstPidsEnded()V

    :cond_12
    const-string/jumbo v0, "native pids"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lcom/android/server/am/StackTracesDumpHelper;->collectPids(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "dumpStackTraces nativepids="

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_18

    if-eqz v4, :cond_13

    invoke-virtual {v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingNativePidsStarted()V

    :cond_13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v9, v14

    :goto_10
    if-ge v9, v2, :cond_17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v11, "Collecting stacks for native pid "

    invoke-static {v10, v11, v6}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    sget v11, Lcom/android/server/am/StackTracesDumpHelper;->NATIVE_DUMP_TIMEOUT_MS:I

    int-to-long v14, v11

    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    if-eqz v4, :cond_14

    invoke-virtual {v4, v10}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidStarted(I)V

    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v14, v14, v22

    long-to-int v11, v14

    invoke-static {v10, v1, v11}, Landroid/os/Debug;->dumpNativeBacktraceToFileTimeout(ILjava/lang/String;I)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long v14, v14, v20

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidEnded()V

    :cond_15
    sub-long/2addr v7, v14

    cmp-long v11, v7, v18

    if-gtz v11, :cond_16

    const-string v0, "Aborting stack trace dump (current native pid="

    invoke-static {v10, v0, v5, v6}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-wide v12

    :cond_16
    const/4 v14, 0x0

    goto :goto_10

    :cond_17
    if-eqz v4, :cond_18

    invoke-virtual {v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingNativePidsEnded()V

    :cond_18
    const-string/jumbo v0, "extra pids"

    invoke-static {v3, v0}, Lcom/android/server/am/StackTracesDumpHelper;->collectPids(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v3, :cond_19

    :try_start_9
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_8

    move-object v2, v0

    goto :goto_13

    :catch_8
    move-exception v0

    goto :goto_11

    :catch_9
    move-exception v0

    goto :goto_12

    :goto_11
    const-string v3, "Interrupted while collecting extra pids"

    invoke-static {v6, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    :goto_12
    const-string v3, "Failed to collect extra pids"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v6, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19
    :goto_13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "dumpStackTraces extraPids="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_20

    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingExtraPidsStarted()V

    :cond_1a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v14, 0x0

    :cond_1b
    if-ge v14, v0, :cond_1f

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v14, v14, 0x1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v9, "Collecting stacks for extra pid "

    invoke-static {v3, v9, v6}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_1c

    :try_start_a
    invoke-virtual {v4, v3}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidStarted(I)V

    goto :goto_14

    :catchall_6
    move-exception v0

    goto :goto_15

    :cond_1c
    :goto_14
    invoke-static {v3, v1, v7, v8}, Lcom/android/server/am/StackTracesDumpHelper;->dumpJavaTracesTombstoned(ILjava/lang/String;J)J

    move-result-wide v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidEnded()V

    :cond_1d
    sub-long/2addr v7, v9

    cmp-long v9, v7, v18

    if-gtz v9, :cond_1b

    const-string v0, "Aborting stack trace dump (current extra pid="

    invoke-static {v3, v0, v5, v6}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-wide v12

    :goto_15
    if-eqz v4, :cond_1e

    invoke-virtual {v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidEnded()V

    :cond_1e
    throw v0

    :cond_1f
    if-eqz v4, :cond_20

    invoke-virtual {v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingExtraPidsEnded()V

    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "----- dumping ended at "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/StackTracesDumpHelper;->appendtoANRFile(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Done dumping"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v12
.end method

.method public static dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/Future;Ljava/io/StringWriter;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Future;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;
    .locals 10

    move-object/from16 v2, p6

    move-object/from16 v6, p11

    const-string v3, "ActivityManager"

    const-string/jumbo v4, "Subject: "

    const-string/jumbo v5, "dumpStackTraces pids="

    if-eqz v6, :cond_0

    :try_start_0
    invoke-virtual {v6}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesStarted()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_6

    :cond_0
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    new-instance v7, Lcom/android/server/am/StackTracesDumpHelper$$ExternalSyntheticLambda0;

    invoke-direct {v7, p1, p2, v6}, Lcom/android/server/am/StackTracesDumpHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Lcom/android/internal/os/anr/AnrLatencyTracker;)V

    goto :goto_1

    :cond_1
    move-object v7, v5

    :goto_1
    if-eqz v7, :cond_2

    move-object/from16 p1, p9

    invoke-static {v7, p1}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object p1, v5

    :goto_2
    new-instance p2, Ljava/io/File;

    const-string v7, "/data/anr"

    invoke-direct {p2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p2}, Lcom/android/server/am/StackTracesDumpHelper;->createAnrDumpFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p8, :cond_3

    :try_start_2
    invoke-virtual/range {p8 .. p8}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-nez v2, :cond_4

    if-nez p7, :cond_4

    if-eqz v1, :cond_8

    :cond_4
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v8, ""

    if-eqz v2, :cond_5

    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_5
    move-object v2, v8

    :goto_4
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p8 .. p8}, Lcom/android/server/am/StackTracesDumpHelper;->stringifyHeaders(Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_6
    move-object v1, v8

    :goto_5
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p7, :cond_7

    move-object/from16 v8, p7

    :cond_7
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/server/am/StackTracesDumpHelper;->appendtoANRFile(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    move-object v2, p0

    move-object v4, p1

    move-object v3, p3

    move-object/from16 v5, p10

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTraces(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Lcom/android/internal/os/anr/AnrLatencyTracker;)J

    move-result-wide p0

    if-eqz p5, :cond_9

    invoke-virtual {p5, p0, p1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_9
    invoke-static {p2}, Lcom/android/server/am/StackTracesDumpHelper;->maybePruneOldTraces(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p11, :cond_a

    invoke-virtual/range {p11 .. p11}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesEnded()V

    :cond_a
    return-object v7

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_4
    const-string p1, "Exception creating ANR dump file:"

    invoke-static {v3, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p4, :cond_b

    const-string p1, "----- Exception creating ANR dump file -----\n"

    invoke-virtual {p4, p1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    new-instance p1, Ljava/io/PrintWriter;

    invoke-direct {p1, p4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, p1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    :cond_b
    if-eqz p11, :cond_c

    invoke-virtual/range {p11 .. p11}, Lcom/android/internal/os/anr/AnrLatencyTracker;->anrSkippedDumpStackTraces()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_c
    if-eqz p11, :cond_d

    invoke-virtual/range {p11 .. p11}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesEnded()V

    :cond_d
    return-object v5

    :goto_6
    if-eqz p11, :cond_e

    invoke-virtual/range {p11 .. p11}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesEnded()V

    :cond_e
    throw p0
.end method

.method public static maybePruneOldTraces(Ljava/io/File;)V
    .locals 9

    const-string v0, "ActivityManager"

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_3

    :cond_0
    const-string/jumbo v1, "tombstoned.max_anr_count"

    const/16 v2, 0x40

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :try_start_0
    new-instance v4, Lcom/android/server/am/StackTracesDumpHelper$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-static {v4}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v4

    invoke-static {p0, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v4, 0x0

    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_3

    if-gt v4, v1, :cond_1

    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    sub-long v5, v2, v5

    const-wide/32 v7, 0x5265c00

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to prune stale trace file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p0, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :goto_2
    const-string/jumbo v1, "tombstone modification times changed while sorting; not pruning"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_3
    return-void
.end method

.method public static stringifyHeaders(Ljava/util/LinkedHashMap;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
