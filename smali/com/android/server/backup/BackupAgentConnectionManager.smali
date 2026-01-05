.class public final Lcom/android/server/backup/BackupAgentConnectionManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public forcedNonRestrictedMode:Z

.field public final mActivityManager:Landroid/app/IActivityManager;

.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAgentConnectLock:Ljava/lang/Object;

.field public final mBackupNoRestrictedModePackages:Landroid/util/ArraySet;

.field public mCurrentConnection:Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;

.field public final mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mRestoreNoRestrictedModePackages:Landroid/util/ArraySet;

.field public final mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mUserId:I

.field public final mUserIdMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/internal/LifecycleOperationStorage;Landroid/content/pm/PackageManager;Lcom/android/server/backup/UserBackupManagerService;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mAgentConnectLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mRestoreNoRestrictedModePackages:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mBackupNoRestrictedModePackages:Landroid/util/ArraySet;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mActivityManager:Landroid/app/IActivityManager;

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iput-object p1, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    iput-object p2, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iput p4, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserId:I

    const-string/jumbo p1, "[UserID:"

    const-string/jumbo p2, "] "

    invoke-static {p4, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserIdMsg:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->forcedNonRestrictedMode:Z

    return-void
.end method


# virtual methods
.method public final bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;II)Landroid/app/IBackupAgent;
    .locals 9

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "BackupManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserIdMsg:Ljava/lang/String;

    const-string/jumbo p3, "bindToAgentSynchronous for null app"

    invoke-static {p2, p0, p3, p1}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/android/server/backup/BackupAgentConnectionManager;->shouldUseRestrictedBackupModeForPackage(ILjava/lang/String;)Z

    move-result v8

    iget-object v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mCurrentConnection:Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;

    if-eqz v0, :cond_1

    const-string v0, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserIdMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "binding to new agent before unbinding from old one: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mCurrentConnection:Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;

    iget-object v4, v4, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;

    invoke-direct {v0, p1, p2, v8}, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;-><init>(Landroid/content/pm/ApplicationInfo;IZ)V

    iput-object v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mCurrentConnection:Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserId:I

    move v5, p2

    move v7, p3

    invoke-interface/range {v3 .. v8}, Landroid/app/IActivityManager;->bindBackupAgent(Ljava/lang/String;IIIZ)Z

    move-result p2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    const/4 p2, 0x0

    :goto_1
    if-nez p2, :cond_2

    :try_start_2
    const-string p2, "BackupManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserIdMsg:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "bind request failed for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mCurrentConnection:Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;

    goto :goto_3

    :cond_2
    const-string p2, "BackupManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserIdMsg:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "awaiting agent for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-wide/16 v3, 0x2710

    add-long/2addr p2, v3

    :goto_2
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mCurrentConnection:Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;->connecting:Z

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v0, v3, p2

    if-gez v0, :cond_3

    :try_start_3
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mAgentConnectLock:Ljava/lang/Object;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_4
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserIdMsg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Interrupted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mCurrentConnection:Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;

    goto :goto_2

    :cond_3
    :goto_3
    iget-object p2, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mCurrentConnection:Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;

    if-eqz p2, :cond_5

    iget-boolean p3, p2, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;->connecting:Z

    if-nez p3, :cond_4

    iget-object p0, p2, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;->backupAgent:Landroid/app/IBackupAgent;

    monitor-exit v2

    return-object p0

    :cond_4
    const-string p2, "BackupManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserIdMsg:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Timeout waiting for agent "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mCurrentConnection:Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;

    :cond_5
    iget-object p1, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget p0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserId:I

    invoke-virtual {p1, p0}, Landroid/app/ActivityManagerInternal;->clearPendingBackup(I)V

    monitor-exit v2

    return-object v1

    :goto_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final clearNoRestrictedModePackages()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mBackupNoRestrictedModePackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    iget-object p0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mRestoreNoRestrictedModePackages:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCallingUid()I
    .locals 0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    return p0
.end method

.method public getThreadForCancellation(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    new-instance p0, Ljava/lang/Thread;

    const-string/jumbo v0, "agent-disconnected"

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setNoRestrictedModePackages(ILjava/util/Set;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mBackupNoRestrictedModePackages:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    iget-object p0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mBackupNoRestrictedModePackages:Landroid/util/ArraySet;

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mRestoreNoRestrictedModePackages:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    iget-object p0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mRestoreNoRestrictedModePackages:Landroid/util/ArraySet;

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "opType must be BACKUP or RESTORE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final shouldUseRestrictedBackupModeForPackage(ILjava/lang/String;)Z
    .locals 6

    iget v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserId:I

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->forcedNonRestrictedMode:Z

    const-string v3, "BackupManagerService"

    if-eqz v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "forcedNonRestrictedMode = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->forcedNonRestrictedMode:Z

    invoke-static {v3, p1, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    return v1

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "android.app.backup.PROPERTY_USE_RESTRICTED_BACKUP_MODE"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, p2, v5, v0}, Landroid/content/pm/PackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$Property;->isBoolean()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p0

    return p0

    :cond_2
    const-string/jumbo v2, "android.app.backup.PROPERTY_USE_RESTRICTED_BACKUP_MODEmust be a boolean."

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-wide/32 v4, 0x16736606

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v4, v5, p2, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    return v2

    :cond_3
    if-ne p1, v2, :cond_4

    iget-object v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mBackupNoRestrictedModePackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    iget-object p0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mRestoreNoRestrictedModePackages:Landroid/util/ArraySet;

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    const-string/jumbo p0, "Transport requested no restricted mode for: "

    invoke-static {p0, p2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_6
    return v2

    :cond_7
    :goto_0
    return v1
.end method

.method public final unbindAgent(Landroid/content/pm/ApplicationInfo;Z)V
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "BackupManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserIdMsg:Ljava/lang/String;

    const-string/jumbo v0, "unbindAgent for null app"

    invoke-static {p2, p0, v0, p1}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    iget p2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p2}, Landroid/os/UserHandle;->isCore(I)Z

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    :cond_1
    move p2, v1

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mCurrentConnection:Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;

    if-eqz p2, :cond_5

    iget-boolean v3, p2, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;->inRestrictedMode:Z

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    iget p2, p2, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;->backupMode:I

    const/4 v3, 0x2

    if-eq p2, v3, :cond_4

    const/4 v3, 0x3

    if-ne p2, v3, :cond_1

    :cond_4
    iget p2, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x10000

    and-int/2addr p2, v3

    if-eqz p2, :cond_1

    :cond_5
    :goto_0
    move p2, v2

    :goto_1
    if-eqz p2, :cond_6

    goto :goto_2

    :cond_6
    move v2, v1

    :goto_2
    iput-boolean v1, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->forcedNonRestrictedMode:Z

    iget-object p2, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mCurrentConnection:Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;

    if-nez p2, :cond_7

    const-string p2, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserIdMsg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unbindAgent but no current connection"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_7
    iget-object p2, p2, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserIdMsg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unbindAgent for unexpected package: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " expected: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mCurrentConnection:Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;

    iget-object v3, v3, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mCurrentConnection:Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;

    :goto_3
    if-eqz v2, :cond_9

    const-string p2, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserIdMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Killing agent host process"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mActivityManager:Landroid/app/IActivityManager;

    iget-object p2, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {p0, p2, p1}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :cond_9
    :try_start_1
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
