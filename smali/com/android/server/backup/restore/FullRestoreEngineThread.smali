.class public final Lcom/android/server/backup/restore/FullRestoreEngineThread;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

.field public final mEngineStream:Ljava/io/InputStream;

.field public final mMustKillAgent:Z


# direct methods
.method public constructor <init>(Lcom/android/server/backup/restore/FullRestoreEngine;Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V

    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {p1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngineStream:Ljava/io/InputStream;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mMustKillAgent:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v0, v0, Lcom/android/server/backup/restore/RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v2, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngineStream:Ljava/io/InputStream;

    iget-boolean v3, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mMustKillAgent:Z

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBuffer:[B

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    iget-boolean v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowApks:Z

    iget v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mEphemeralOpToken:I

    iget-object v8, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/backup/restore/FullRestoreEngine;->restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngineStream:Ljava/io/InputStream;

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngineStream:Ljava/io/InputStream;

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method public final waitForResult()V
    .locals 2

    iget-object p0, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v0, p0, Lcom/android/server/backup/restore/RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :catch_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/restore/RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/restore/RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/android/server/backup/restore/RestoreEngine;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    return-void

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
