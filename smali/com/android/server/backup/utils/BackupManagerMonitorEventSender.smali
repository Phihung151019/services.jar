.class public Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBackupManagerMonitorDumpsysUtils:Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;

.field public mMonitor:Landroid/app/backup/IBackupManagerMonitor;


# direct methods
.method public constructor <init>(Landroid/app/backup/IBackupManagerMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    new-instance p1, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;

    invoke-direct {p1}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mBackupManagerMonitorDumpsysUtils:Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;

    return-void
.end method

.method public constructor <init>(Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iput-object p2, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mBackupManagerMonitorDumpsysUtils:Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;

    return-void
.end method

.method public static putMonitoringExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getMonitor()Landroid/app/backup/IBackupManagerMonitor;
    .locals 0

    iget-object p0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-object p0
.end method

.method public final monitorAgentLoggingResults(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const-string v1, "BackupManagerService"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "backup manager monitor is null unable to send event"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    new-instance v2, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v2}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    invoke-interface {p2, v0}, Landroid/app/IBackupAgent;->getLoggerResults(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-interface {p2, v2}, Landroid/app/IBackupAgent;->getOperationType(Lcom/android/internal/infra/AndroidFuture;)V

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v3, v4, p2}, Lcom/android/internal/infra/AndroidFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v3, v4, p2}, Lcom/android/internal/infra/AndroidFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "android.app.backup.extra.LOG_AGENT_LOGGING_RESULTS"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    const-string/jumbo v0, "android.app.backup.extra.OPERATION_TYPE"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p2, 0x34

    const/4 v0, 0x2

    invoke-virtual {p0, p2, p1, v0, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    const-string p1, "Failed to retrieve logging results from agent"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :goto_1
    const-string/jumbo p1, "Timeout while waiting to retrieve logging results from agent"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public final monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    .locals 4

    const-string v0, "BackupManagerService"

    const-string/jumbo v1, "android.app.backup.extra.OPERATION_TYPE"

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "android.app.backup.extra.LOG_EVENT_ID"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "android.app.backup.extra.LOG_EVENT_CATEGORY"

    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    const-string/jumbo p1, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object p3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    iget p3, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "android.app.backup.extra.LOG_EVENT_PACKAGE_FULL_VERSION"

    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide p2

    invoke-virtual {v2, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {v2, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-virtual {p4, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mBackupManagerMonitorDumpsysUtils:Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;

    invoke-virtual {p1, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->parseBackupManagerMonitorRestoreEventForDumpsys(Landroid/os/Bundle;)V

    :cond_1
    iget-object p1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    if-eqz p1, :cond_2

    invoke-interface {p1, v2}, Landroid/app/backup/IBackupManagerMonitor;->onEvent(Landroid/os/Bundle;)V

    return-void

    :cond_2
    const-string/jumbo p1, "backup manager monitor is null unable to send event"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const-string/jumbo p0, "backup manager monitor went away"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setMonitor(Landroid/app/backup/IBackupManagerMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-void
.end method
