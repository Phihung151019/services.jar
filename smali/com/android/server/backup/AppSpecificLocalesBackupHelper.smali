.class public final Lcom/android/server/backup/AppSpecificLocalesBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mLocaleManagerInternal:Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;

.field public final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const-string/jumbo v0, "app_locales"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    iput p1, p0, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;->mUserId:I

    const-class p1, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;

    iput-object p1, p0, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;->mLocaleManagerInternal:Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;

    return-void
.end method


# virtual methods
.method public final applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 4

    const-string/jumbo v0, "app_locales"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "AppLocalesBackupHelper"

    const/4 v2, 0x1

    const-string/jumbo v3, "app_locales:locales"

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;->mLocaleManagerInternal:Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;

    iget v0, p0, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;->mUserId:I

    invoke-virtual {p1, v0, p2}, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;->stageAndApplyRestoredPayload(I[B)V

    invoke-virtual {p0}, Landroid/app/backup/BlobBackupHelper;->getLogger()Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Landroid/app/backup/BackupRestoreEventLogger;->logItemsRestored(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Couldn\'t communicate with locale manager"

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/app/backup/BlobBackupHelper;->getLogger()Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object p0

    const-string/jumbo p1, "restore_failed"

    invoke-virtual {p0, v3, v2, p1}, Landroid/app/backup/BackupRestoreEventLogger;->logItemsRestoreFailed(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Unexpected restore key "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/backup/BlobBackupHelper;->getLogger()Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object p0

    const-string/jumbo p1, "unexpected_key"

    invoke-virtual {p0, v3, v2, p1}, Landroid/app/backup/BackupRestoreEventLogger;->logItemsBackupFailed(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public final getBackupPayload(Ljava/lang/String;)[B
    .locals 6

    const-string/jumbo v0, "app_locales"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "AppLocalesBackupHelper"

    const/4 v2, 0x1

    const-string/jumbo v3, "app_locales:locales"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;->mLocaleManagerInternal:Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;

    iget v0, p0, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;->getBackupPayload(I)[B

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/backup/BlobBackupHelper;->getLogger()Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/app/backup/BackupRestoreEventLogger;->logItemsBackedUp(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "Couldn\'t communicate with locale manager"

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/app/backup/BlobBackupHelper;->getLogger()Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object p0

    const-string/jumbo p1, "backup_failed"

    invoke-virtual {p0, v3, v2, p1}, Landroid/app/backup/BackupRestoreEventLogger;->logItemsBackupFailed(Ljava/lang/String;ILjava/lang/String;)V

    return-object v4

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unexpected backup key "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/backup/BlobBackupHelper;->getLogger()Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object p0

    const-string/jumbo p1, "unexpected_key"

    invoke-virtual {p0, v3, v2, p1}, Landroid/app/backup/BackupRestoreEventLogger;->logItemsBackupFailed(Ljava/lang/String;ILjava/lang/String;)V

    return-object v4
.end method
