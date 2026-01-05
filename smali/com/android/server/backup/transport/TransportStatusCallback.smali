.class public Lcom/android/server/backup/transport/TransportStatusCallback;
.super Lcom/android/internal/backup/ITransportStatusCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mHasCompletedOperation:Z

.field public mOperationStatus:I

.field public final mOperationTimeout:J


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationStatus:I

    iput-boolean v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mHasCompletedOperation:Z

    const-wide/32 v0, 0x493e0

    const-string/jumbo v2, "backup_and_restore"

    const-string/jumbo v3, "backup_transport_callback_timeout_millis"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationTimeout:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationStatus:I

    iput-boolean v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mHasCompletedOperation:Z

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationTimeout:J

    return-void
.end method


# virtual methods
.method public final declared-synchronized getOperationStatus()I
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mHasCompletedOperation:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationTimeout:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-boolean v2, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mHasCompletedOperation:Z

    if-nez v2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    iget-boolean v4, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mHasCompletedOperation:Z

    if-eqz v4, :cond_1

    iget v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationStatus:I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    sub-long/2addr v0, v4

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "TransportStatusCallback"

    const-string v1, "Couldn\'t get operation status from transport"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_4
    const-string/jumbo v1, "TransportStatusCallback"

    const-string v2, "Couldn\'t get operation status from transport: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    monitor-exit p0

    const/16 p0, -0x3e8

    return p0

    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public final declared-synchronized onOperationComplete()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/TransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized onOperationCompleteWithStatus(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mHasCompletedOperation:Z

    iput p1, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationStatus:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
