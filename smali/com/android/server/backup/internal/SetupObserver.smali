.class public final Lcom/android/server/backup/internal/SetupObserver;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/internal/BackupHandler;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object p2, p1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/backup/internal/SetupObserver;->mContext:Landroid/content/Context;

    iget p1, p1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iput p1, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserId:I

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 4

    iget-object p1, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-boolean p1, p1, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    iget-object v0, p0, Lcom/android/server/backup/internal/SetupObserver;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserId:I

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-nez p1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v3, v1

    :cond_2
    iget-object v0, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iput-boolean v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz v3, :cond_3

    if-nez p1, :cond_3

    :try_start_0
    iget-object p1, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-boolean v1, p1, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    if-eqz v1, :cond_3

    iget v1, p1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v2, p0, Lcom/android/server/backup/internal/SetupObserver;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, p1}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;Lcom/android/server/backup/UserBackupManagerService;)V

    iget-object p0, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
