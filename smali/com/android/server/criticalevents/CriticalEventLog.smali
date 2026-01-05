.class public Lcom/android/server/criticalevents/CriticalEventLog;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field static final FILENAME:Ljava/lang/String; = "critical_event_log.pb"

.field public static sInstance:Lcom/android/server/criticalevents/CriticalEventLog;


# instance fields
.field public final mEvents:Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;

.field public final mHandler:Landroid/os/Handler;

.field public mLastSaveAttemptMs:J

.field public final mLoadAndSaveImmediately:Z

.field public final mLogFile:Ljava/io/File;

.field public final mMinTimeBetweenSavesMs:J

.field public final mSaveRunnable:Lcom/android/server/criticalevents/CriticalEventLog$$ExternalSyntheticLambda0;

.field public final mWindowMs:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIJZLcom/android/server/criticalevents/CriticalEventLog$ILogLoader;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mLastSaveAttemptMs:J

    new-instance v0, Lcom/android/server/criticalevents/CriticalEventLog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/criticalevents/CriticalEventLog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/criticalevents/CriticalEventLog;)V

    iput-object v0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mSaveRunnable:Lcom/android/server/criticalevents/CriticalEventLog$$ExternalSyntheticLambda0;

    const-string/jumbo v0, "critical_event_log.pb"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mLogFile:Ljava/io/File;

    iput p3, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mWindowMs:I

    iput-wide p4, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mMinTimeBetweenSavesMs:J

    iput-boolean p6, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mLoadAndSaveImmediately:Z

    new-instance p1, Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;

    const-class p3, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-direct {p1, p3, p2}, Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object p1, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mEvents:Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;

    const-string p1, "CriticalEventLogIO"

    invoke-static {p1}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object p1

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/server/criticalevents/CriticalEventLog$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p7}, Lcom/android/server/criticalevents/CriticalEventLog$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/criticalevents/CriticalEventLog;Lcom/android/server/criticalevents/CriticalEventLog$ILogLoader;)V

    if-nez p6, :cond_0

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/criticalevents/CriticalEventLog$$ExternalSyntheticLambda1;->run()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/criticalevents/CriticalEventLog;
    .locals 9

    sget-object v0, Lcom/android/server/criticalevents/CriticalEventLog;->sInstance:Lcom/android/server/criticalevents/CriticalEventLog;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/criticalevents/CriticalEventLog;

    const-wide/16 v2, 0x5

    invoke-static {v2, v3}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    long-to-int v4, v2

    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v5

    new-instance v8, Lcom/android/server/criticalevents/CriticalEventLog$LogLoader;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    const/16 v3, 0x14

    const/4 v7, 0x0

    const-string v2, "/data/misc/critical-events"

    invoke-direct/range {v1 .. v8}, Lcom/android/server/criticalevents/CriticalEventLog;-><init>(Ljava/lang/String;IIJZLcom/android/server/criticalevents/CriticalEventLog$ILogLoader;)V

    sput-object v1, Lcom/android/server/criticalevents/CriticalEventLog;->sInstance:Lcom/android/server/criticalevents/CriticalEventLog;

    :cond_0
    sget-object v0, Lcom/android/server/criticalevents/CriticalEventLog;->sInstance:Lcom/android/server/criticalevents/CriticalEventLog;

    return-object v0
.end method


# virtual methods
.method public appendAndSave(Lcom/android/server/criticalevents/nano/CriticalEventProto;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mEvents:Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;->mBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-boolean p1, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mLoadAndSaveImmediately:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/criticalevents/CriticalEventLog;->saveLogToFileNow()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mSaveRunnable:Lcom/android/server/criticalevents/CriticalEventLog$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mSaveRunnable:Lcom/android/server/criticalevents/CriticalEventLog$$ExternalSyntheticLambda0;

    invoke-virtual {p0}, Lcom/android/server/criticalevents/CriticalEventLog;->saveDelayMs()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "CriticalEventLog"

    const-string p1, "Error scheduling save"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getOutputLogProto(ILjava/lang/String;I)Lcom/android/server/criticalevents/nano/CriticalEventLogProto;
    .locals 7

    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/criticalevents/CriticalEventLog;->getWallTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->timestampMs:J

    iget v3, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mWindowMs:I

    iput v3, v0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->windowMs:I

    iget-object p0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mEvents:Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;

    iget v4, p0, Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;->mCapacity:I

    iput v4, v0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->capacity:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;->mBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v3}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    check-cast v3, [Lcom/android/server/criticalevents/nano/CriticalEventProto;

    const/4 p0, 0x0

    move v4, p0

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1

    aget-object v5, v3, v4

    iget-wide v5, v5, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    cmp-long v5, v5, v1

    if-ltz v5, :cond_0

    array-length v1, v3

    invoke-static {v3, v4, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/criticalevents/nano/CriticalEventProto;

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-array v1, p0, [Lcom/android/server/criticalevents/nano/CriticalEventProto;

    :goto_1
    new-instance v2, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput p1, v2, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->mTraceProcessClassEnum:I

    iput-object p2, v2, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->mTraceProcessName:Ljava/lang/String;

    iput p3, v2, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->mTraceUid:I

    :goto_2
    array-length p1, v1

    if-ge p0, p1, :cond_5

    aget-object p1, v1, p0

    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->hasAnr()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getAnr()Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    move-result-object p2

    iget p3, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->processClass:I

    iget-object v3, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->process:Ljava/lang/String;

    iget p2, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->uid:I

    invoke-virtual {v2, p3, p2, v3}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->shouldSanitize(IILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    invoke-direct {p2}, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getAnr()Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    move-result-object p3

    iget p3, p3, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->processClass:I

    iput p3, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->processClass:I

    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getAnr()Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    move-result-object p3

    iget p3, p3, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->uid:I

    iput p3, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->uid:I

    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getAnr()Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    move-result-object p3

    iget p3, p3, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->pid:I

    iput p3, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->pid:I

    new-instance p3, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-direct {p3}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    iget-wide v3, p1, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    iput-wide v3, p3, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    invoke-virtual {p3, p2}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setAnr(Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    :goto_3
    move-object p1, p3

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->hasJavaCrash()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getJavaCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    move-result-object p2

    iget p3, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->processClass:I

    iget-object v3, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->process:Ljava/lang/String;

    iget p2, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->uid:I

    invoke-virtual {v2, p3, p2, v3}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->shouldSanitize(IILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    invoke-direct {p2}, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getJavaCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    move-result-object p3

    iget p3, p3, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->processClass:I

    iput p3, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->processClass:I

    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getJavaCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    move-result-object p3

    iget p3, p3, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->uid:I

    iput p3, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->uid:I

    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getJavaCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    move-result-object p3

    iget p3, p3, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->pid:I

    iput p3, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->pid:I

    new-instance p3, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-direct {p3}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    iget-wide v3, p1, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    iput-wide v3, p3, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    invoke-virtual {p3, p2}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setJavaCrash(Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->hasNativeCrash()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getNativeCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    move-result-object p2

    iget p3, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->processClass:I

    iget-object v3, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->process:Ljava/lang/String;

    iget p2, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->uid:I

    invoke-virtual {v2, p3, p2, v3}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->shouldSanitize(IILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    invoke-direct {p2}, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getNativeCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    move-result-object p3

    iget p3, p3, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->processClass:I

    iput p3, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->processClass:I

    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getNativeCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    move-result-object p3

    iget p3, p3, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->uid:I

    iput p3, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->uid:I

    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getNativeCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    move-result-object p3

    iget p3, p3, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->pid:I

    iput p3, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->pid:I

    new-instance p3, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-direct {p3}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    iget-wide v3, p1, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    iput-wide v3, p3, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    invoke-virtual {p3, p2}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setNativeCrash(Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    goto/16 :goto_3

    :cond_4
    :goto_4
    aput-object p1, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_2

    :cond_5
    iput-object v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->events:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getWallTimeMillis()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final log(Lcom/android/server/criticalevents/nano/CriticalEventProto;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/criticalevents/CriticalEventLog;->getWallTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    invoke-virtual {p0, p1}, Lcom/android/server/criticalevents/CriticalEventLog;->appendAndSave(Lcom/android/server/criticalevents/nano/CriticalEventProto;)V

    return-void
.end method

.method public saveDelayMs()J
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/criticalevents/CriticalEventLog;->getWallTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mLastSaveAttemptMs:J

    iget-wide v4, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mMinTimeBetweenSavesMs:J

    add-long/2addr v2, v4

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public saveLogToFileNow()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/criticalevents/CriticalEventLog;->getWallTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mLastSaveAttemptMs:J

    iget-object v0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "CriticalEventLog"

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Error creating log directory: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Error creating log file"

    invoke-static {v2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;-><init>()V

    iget-object v1, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mEvents:Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;

    monitor-enter v1

    :try_start_1
    iget-object v3, v1, Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;->mBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v3}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit v1

    check-cast v3, [Lcom/android/server/criticalevents/nano/CriticalEventProto;

    iput-object v3, v0, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;->events:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-static {v0}, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v0

    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object p0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mLogFile:Ljava/io/File;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    return-void

    :catch_1
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :goto_2
    const-string v0, "Error saving log to disk."

    invoke-static {v2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catchall_2
    move-exception p0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0
.end method
