.class public final Lcom/android/server/backup/BackupManagerYuva;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static backupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;


# instance fields
.field public isMemorySaverBackupFail:Z

.field public isMemorySaverRestoreFail:Z

.field public mBackupPackageName:Ljava/lang/String;

.field public mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

.field public mRestorePackageName:Ljava/lang/String;


# direct methods
.method public static getInstanceBackupYuva()Lcom/android/server/backup/BackupManagerYuva;
    .locals 2

    sget-object v0, Lcom/android/server/backup/BackupManagerYuva;->backupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/backup/BackupManagerYuva;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z

    iput-boolean v1, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverRestoreFail:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    iput-object v1, v0, Lcom/android/server/backup/BackupManagerYuva;->mBackupPackageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/backup/BackupManagerYuva;->mRestorePackageName:Ljava/lang/String;

    sput-object v0, Lcom/android/server/backup/BackupManagerYuva;->backupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    :cond_0
    sget-object v0, Lcom/android/server/backup/BackupManagerYuva;->backupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    return-object v0
.end method


# virtual methods
.method public final sendEndBackupCallback()V
    .locals 5

    const-string v0, "BackupManagerYuva"

    const-string/jumbo v1, "full backup Completed "

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerYuva;->mBackupPackageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerYuva;->mBackupPackageName:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/app/backup/IMemorySaverBackupRestoreObserver;->onBackupCompleted(Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/android/server/backup/BackupManagerYuva;->mBackupPackageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo v1, "full backup observer went away: EndBackup"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    :cond_0
    return-void
.end method

.method public final sendEndRestoreCallback()V
    .locals 5

    const-string v0, "BackupManagerYuva"

    const-string/jumbo v1, "restore completed "

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerYuva;->mRestorePackageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerYuva;->mRestorePackageName:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverRestoreFail:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/app/backup/IMemorySaverBackupRestoreObserver;->onRestoreCompleted(Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/android/server/backup/BackupManagerYuva;->mRestorePackageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo v1, "full restore observer went away: endRestore"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    :cond_0
    return-void
.end method
