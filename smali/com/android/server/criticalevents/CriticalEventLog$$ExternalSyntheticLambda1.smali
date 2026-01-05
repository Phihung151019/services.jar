.class public final synthetic Lcom/android/server/criticalevents/CriticalEventLog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/criticalevents/CriticalEventLog;

.field public final synthetic f$1:Lcom/android/server/criticalevents/CriticalEventLog$ILogLoader;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/criticalevents/CriticalEventLog;Lcom/android/server/criticalevents/CriticalEventLog$ILogLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/criticalevents/CriticalEventLog$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/criticalevents/CriticalEventLog;

    iput-object p2, p0, Lcom/android/server/criticalevents/CriticalEventLog$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/criticalevents/CriticalEventLog$ILogLoader;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/criticalevents/CriticalEventLog$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/criticalevents/CriticalEventLog;

    iget-object p0, p0, Lcom/android/server/criticalevents/CriticalEventLog$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/criticalevents/CriticalEventLog$ILogLoader;

    iget-object v1, v0, Lcom/android/server/criticalevents/CriticalEventLog;->mLogFile:Ljava/io/File;

    check-cast p0, Lcom/android/server/criticalevents/CriticalEventLog$LogLoader;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    const-string v2, "CriticalEventLog"

    if-nez p0, :cond_0

    const-string/jumbo p0, "No log found, returning empty log proto."

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;

    invoke-direct {p0}, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;-><init>()V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;->parseFrom([B)Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Error reading log from disk."

    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;

    invoke-direct {p0}, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;-><init>()V

    :goto_0
    iget-object p0, p0, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;->events:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    iget-object v4, v0, Lcom/android/server/criticalevents/CriticalEventLog;->mEvents:Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;

    monitor-enter v4

    :try_start_1
    iget-object v5, v4, Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;->mBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v5, v3}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    return-void
.end method
