.class public final Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
.super Lcom/android/server/backup/fullbackup/FullBackupTask;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# instance fields
.field public final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field public mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field public final mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

.field public final mBackupObserver:Landroid/app/backup/IBackupObserver;

.field public mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

.field public final mBackupRunnerOpToken:I

.field public final mCancelLock:Ljava/lang/Object;

.field public volatile mCancelled:Z

.field public final mCurrentOpToken:I

.field public volatile mIsDoingBackup:Z

.field public final mJob:Lcom/android/server/backup/FullBackupJob;

.field public final mLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field public final mOperationStorage:Lcom/android/server/backup/OperationStorage;

.field public final mPackages:Ljava/util/List;

.field public final mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

.field public mUpdateSchedule:Z

.field public final mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mUserId:I

.field public final mUserInitiated:Z


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;ZLcom/android/server/backup/utils/BackupEligibilityRules;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/backup/fullbackup/FullBackupTask;-><init>(Landroid/app/backup/IFullBackupRestoreObserver;)V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iput-object p3, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    iput-boolean p5, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    iput-object p7, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p6, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    new-instance p2, Ljava/util/ArrayList;

    array-length p3, p4

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    iput-object p8, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    if-eqz p10, :cond_0

    goto :goto_0

    :cond_0
    sget-object p10, Lcom/android/server/backup/internal/OnTaskFinishedListener;->NOP:Lcom/android/server/backup/internal/OnTaskFinishedListener$$ExternalSyntheticLambda0;

    :goto_0
    iput-object p10, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    iput-boolean p11, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserInitiated:Z

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result p2

    iput p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result p2

    iput p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    new-instance p2, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    invoke-direct {p2, p9}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;-><init>(Landroid/app/backup/IBackupManagerMonitor;)V

    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    iget-object p2, p1, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    const-string/jumbo p3, "Timeout parameters cannot be null"

    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iget p2, p1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iput p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    iput-object p12, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->isBackupOperationInProgress()Z

    move-result p2

    const-string/jumbo p3, "PFTBT"

    if-eqz p2, :cond_1

    const-string/jumbo p1, "Skipping full backup. A backup is already in progress."

    invoke-static {p3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    return-void

    :cond_1
    array-length p2, p4

    const/4 p5, 0x0

    move p6, p5

    :goto_1
    if-ge p6, p2, :cond_6

    aget-object p7, p4, p6

    const/4 p8, 0x3

    :try_start_0
    iget-object p9, p1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget p10, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    const/high16 p11, 0x8000000

    invoke-virtual {p9, p7, p11, p10}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p9

    iget-object p10, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object p11, p9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p10, p11}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result p10

    const/16 p11, -0x7d1

    if-nez p10, :cond_2

    iget-object p10, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 p12, 0x9

    invoke-virtual {p10, p12, p9, p8, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    iget-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {p9, p7, p11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_3

    :cond_2
    iget-object p10, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {p10, p9}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result p10

    if-nez p10, :cond_3

    iget-object p10, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 p12, 0xa

    invoke-virtual {p10, p12, p9, p8, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    iget-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {p9, p7, p11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_3

    :cond_3
    iget-object p10, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object p12, p9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p10, Lcom/android/server/backup/utils/BackupEligibilityRules;->systemPackagesAllowedForProfileUser:Ljava/util/Set;

    iget p10, p12, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 p12, 0x200000

    and-int/2addr p10, p12

    if-eqz p10, :cond_4

    move p10, v0

    goto :goto_2

    :cond_4
    move p10, p5

    :goto_2
    if-eqz p10, :cond_5

    iget-object p10, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 p12, 0xb

    invoke-virtual {p10, p12, p9, p8, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    iget-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {p9, p7, p11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_3

    :cond_5
    iget-object p10, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    check-cast p10, Ljava/util/ArrayList;

    invoke-virtual {p10, p9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string/jumbo p9, "Requested package "

    const-string p10, " not found; ignoring"

    invoke-static {p9, p7, p10, p3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p7, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 p9, 0xc

    invoke-virtual {p7, p9, v1, p8, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    :goto_3
    add-int/2addr p6, v0

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p4

    :goto_4
    if-ge p5, p4, :cond_7

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    add-int/2addr p5, v0

    check-cast p6, Landroid/content/pm/PackageInfo;

    iget-object p6, p6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, p6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "backupmanager pftbt token="

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p4, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget p3, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    const/4 p4, 0x2

    check-cast p2, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    invoke-virtual {p2, p3, p1, p0, p4}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->registerOperationForPackages(ILjava/util/Set;Lcom/android/server/backup/BackupRestoreTask;I)V

    return-void
.end method

.method public static cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V
    .locals 5

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    aget-object v1, p0, v0

    const-string/jumbo v2, "Unable to close pipe!"

    const-string/jumbo v3, "PFTBT"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    aput-object v4, p0, v0

    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 v0, 0x1

    aget-object v1, p0, v0

    if-eqz v1, :cond_1

    aput-object v4, p0, v0

    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 0

    return-void
.end method

.method public final handleCancel(I)V
    .locals 4

    const-string v0, "Error calling cancelFullBackup() on transport: "

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_0

    :try_start_0
    const-string/jumbo p0, "PFTBT"

    const-string/jumbo p1, "This task cannot time out"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    if-eqz v3, :cond_2

    const-string/jumbo p0, "PFTBT"

    const-string p1, "Ignoring duplicate cancel call."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_2
    iput-boolean v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    iget-boolean v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v3, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    invoke-virtual {v2, v3, p1}, Lcom/android/server/backup/UserBackupManagerService;->handleCancel(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    invoke-virtual {p0}, Lcom/android/server/backup/transport/TransportConnection;->getConnectedTransport()Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object p0

    iget-object p1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {p1}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {p0, v2}, Lcom/android/internal/backup/IBackupTransport;->cancelFullBackup(Lcom/android/internal/backup/ITransportStatusCallback;)V

    invoke-virtual {v2}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p1, v2}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, v2}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    throw p0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception p0

    :try_start_4
    const-string/jumbo p1, "PFTBT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final operationComplete(J)V
    .locals 0

    return-void
.end method

.method public final run()V
    .locals 36

    move-object/from16 v1, p0

    const-string/jumbo v0, "full backup requested but enabled="

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    :try_start_0
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_12
    .catchall {:try_start_0 .. :try_end_0} :catchall_1d

    :try_start_1
    iget-boolean v3, v2, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_11
    .catchall {:try_start_1 .. :try_end_1} :catchall_1c

    if-eqz v3, :cond_0

    :try_start_2
    iget-boolean v2, v2, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_18

    if-nez v2, :cond_1

    :cond_0
    move-wide/from16 v16, v13

    const/16 v2, -0x7d3

    const/16 v4, -0x3e8

    goto/16 :goto_2d

    :cond_1
    :try_start_3
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string/jumbo v2, "PFTBT.run()"

    invoke-virtual {v0, v2}, Lcom/android/server/backup/transport/TransportConnection;->connect(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_17

    const/4 v2, 0x1

    if-nez v0, :cond_5

    :try_start_4
    const-string/jumbo v0, "PFTBT"

    const-string/jumbo v3, "Transport not present; full data backup not performed"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v3, 0xf

    invoke-virtual {v0, v3, v12, v2, v12}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    if-eqz v0, :cond_2

    const/16 v10, -0x7d3

    goto :goto_0

    :cond_2
    const/16 v10, -0x3e8

    :goto_0
    const-string/jumbo v0, "PFTBT"

    const-string v2, "Full backup completed with status: "

    invoke-static {v10, v2, v0}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v10}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v0, :cond_3

    iget v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    :cond_3
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_6
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask()V

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string/jumbo v2, "PFTBT.run()"

    invoke-interface {v0, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v0, :cond_4

    :goto_1
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v13, v14}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    :cond_4
    :goto_2
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentConnectionManager;->clearNoRestrictedModePackages()V

    const-string/jumbo v0, "PFTBT"

    const-string v2, "Full data backup pass finished."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakeLock()Lcom/android/server/backup/BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupWakeLock;->release()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    move-object/from16 v26, v12

    const/16 v2, -0x7d3

    const/16 v10, -0x3e8

    goto/16 :goto_36

    :catch_0
    move-exception v0

    move-object v6, v12

    move-object v7, v6

    :goto_3
    const/16 v2, -0x7d3

    :goto_4
    const/16 v4, -0x3e8

    goto/16 :goto_33

    :catchall_2
    move-exception v0

    move-object/from16 v26, v12

    :goto_5
    const/16 v2, -0x7d3

    :goto_6
    const/4 v10, 0x0

    goto/16 :goto_36

    :cond_5
    :try_start_8
    iget-object v3, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    invoke-virtual {v3}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->getMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_e
    .catchall {:try_start_8 .. :try_end_8} :catchall_17

    if-nez v3, :cond_6

    :try_start_9
    iget-object v3, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->getBackupManagerMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->setMonitor(Landroid/app/backup/IBackupManagerMonitor;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_7

    :catch_1
    :try_start_a
    const-string/jumbo v3, "PFTBT"

    const-string v4, "Failed to retrieve monitor from transport"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_6
    :goto_7
    :try_start_b
    iget-object v3, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    invoke-virtual {v1, v0, v3}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->setNoRestrictedModePackages(Lcom/android/server/backup/transport/BackupTransportClient;Ljava/util/List;)V

    iget-object v3, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_e
    .catchall {:try_start_b .. :try_end_b} :catchall_17

    :try_start_c
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_f
    .catchall {:try_start_c .. :try_end_c} :catchall_18

    const/high16 v4, 0x10000

    :try_start_d
    new-array v4, v4, [B
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_e
    .catchall {:try_start_d .. :try_end_d} :catchall_17

    move-object v6, v12

    move-object v7, v6

    move-wide/from16 v16, v13

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v3, :cond_7

    :try_start_e
    iput-object v12, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    iget-object v8, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    iget-object v10, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v11, "PFTBT"

    move-object/from16 v18, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x0

    const-string v15, "Initiating full-data transport backup of "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " token: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v11, 0xb18

    invoke-static {v11, v10}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v11
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d
    .catchall {:try_start_e .. :try_end_e} :catchall_15

    :try_start_f
    iget-boolean v7, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserInitiated:Z

    iget-object v12, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_14

    :try_start_10
    iget-boolean v15, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    if-eqz v15, :cond_8

    monitor-exit v12

    move-object v7, v11

    :cond_7
    const/16 v2, -0x7d3

    goto/16 :goto_24

    :catchall_3
    move-exception v0

    :goto_9
    move-object/from16 v26, v11

    :goto_a
    const/16 v2, -0x7d3

    const/16 v4, -0x3e8

    goto/16 :goto_22

    :cond_8
    aget-object v15, v11, v19

    invoke-virtual {v0, v8, v15, v7}, Lcom/android/server/backup/transport/BackupTransportClient;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v15

    if-nez v15, :cond_9

    iget-object v7, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7, v2}, Lcom/android/server/backup/transport/BackupTransportClient;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v20

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v22
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    move-object v6, v0

    :try_start_11
    new-instance v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    move v7, v2

    aget-object v2, v22, v7

    move-object/from16 v23, v4

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    move/from16 v24, v7

    iget v7, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    move/from16 v25, v3

    move-object v3, v8

    invoke-virtual {v6}, Lcom/android/server/backup/transport/BackupTransportClient;->getTransportFlags()I

    move-result v8

    move-object/from16 v26, v6

    move-object/from16 v27, v23

    move/from16 v9, v24

    move-wide/from16 v34, v20

    move/from16 v21, v5

    move-wide/from16 v5, v34

    invoke-direct/range {v0 .. v8}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;-><init>(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/transport/TransportConnection;JII)V

    iput-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    aget-object v0, v22, v9

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    aput-object v18, v22, v9

    iput-boolean v9, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    move-wide v4, v5

    move-object/from16 v6, v22

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object/from16 v26, v11

    move-object/from16 v6, v22

    goto :goto_a

    :cond_9
    move-object/from16 v26, v0

    move v9, v2

    move/from16 v25, v3

    move-object/from16 v27, v4

    move/from16 v21, v5

    move-object v3, v8

    const-wide v4, 0x7fffffffffffffffL

    :goto_b
    :try_start_12
    monitor-exit v12
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_11

    const/16 v0, -0x3ed

    if-nez v15, :cond_15

    :try_start_13
    aget-object v2, v11, v19

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    aput-object v18, v11, v19

    new-instance v2, Ljava/lang/Thread;

    iget-object v7, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    const-string/jumbo v8, "package-backup-bridge"

    invoke-direct {v2, v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    new-instance v2, Ljava/io/FileInputStream;

    aget-object v7, v6, v19

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v7, Ljava/io/FileOutputStream;

    aget-object v8, v11, v9

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iget-object v8, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    move-object/from16 v22, v10

    invoke-virtual {v8}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->getPreflightResultBlocking()J

    move-result-wide v9
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    cmp-long v8, v9, v16

    if-gez v8, :cond_a

    :try_start_14
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const-string/jumbo v4, "android.app.backup.extra.LOG_PREFLIGHT_ERROR"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v5, v4, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v4, 0x10

    const/4 v7, 0x3

    invoke-virtual {v2, v4, v3, v7, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    long-to-int v2, v9

    move-object/from16 v23, v6

    move-object/from16 v8, v22

    move-object/from16 v7, v26

    move-object/from16 v31, v27

    move-object/from16 v26, v11

    goto/16 :goto_15

    :catchall_5
    move-exception v0

    move-object v12, v6

    move-object/from16 v26, v11

    move/from16 v10, v19

    const/16 v2, -0x7d3

    goto/16 :goto_36

    :catch_2
    move-exception v0

    move-object v7, v11

    goto/16 :goto_3

    :cond_a
    move-object/from16 v23, v6

    move-object/from16 v12, v27

    move-wide/from16 v27, v16

    :goto_c
    :try_start_15
    invoke-virtual {v2, v12}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_d

    move-object/from16 v29, v2

    move/from16 v2, v19

    invoke-virtual {v7, v12, v2, v6}, Ljava/io/FileOutputStream;->write([BII)V

    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    move-object/from16 v30, v7

    :try_start_16
    iget-boolean v7, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    if-nez v7, :cond_b

    move-object/from16 v7, v26

    invoke-virtual {v7, v6}, Lcom/android/server/backup/transport/BackupTransportClient;->sendBackupData(I)I

    move-result v15

    goto :goto_d

    :catchall_6
    move-exception v0

    move-object/from16 v26, v11

    goto :goto_11

    :cond_b
    move-object/from16 v7, v26

    :goto_d
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    move-object/from16 v26, v11

    move-object/from16 v31, v12

    int-to-long v11, v6

    add-long v11, v27, v11

    :try_start_17
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    if-eqz v2, :cond_c

    if-lez v8, :cond_c

    move/from16 v32, v6

    new-instance v6, Landroid/app/backup/BackupProgress;

    invoke-direct {v6, v9, v10, v11, v12}, Landroid/app/backup/BackupProgress;-><init>(JJ)V

    move/from16 v33, v8

    move-object/from16 v8, v22

    invoke-static {v2, v8, v6}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnUpdate(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    goto :goto_13

    :catchall_7
    move-exception v0

    :goto_e
    move-object/from16 v12, v23

    goto/16 :goto_5

    :catch_3
    move-exception v0

    :goto_f
    move-object/from16 v6, v23

    :goto_10
    move-object/from16 v7, v26

    goto/16 :goto_3

    :cond_c
    move/from16 v32, v6

    move/from16 v33, v8

    move-object/from16 v8, v22

    goto :goto_13

    :goto_11
    :try_start_18
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    :try_start_19
    throw v0

    :catchall_8
    move-exception v0

    goto :goto_11

    :catchall_9
    move-exception v0

    :goto_12
    move-object/from16 v26, v11

    goto :goto_e

    :catch_4
    move-exception v0

    move-object/from16 v26, v11

    goto :goto_f

    :cond_d
    move-object/from16 v29, v2

    move/from16 v32, v6

    move-object/from16 v30, v7

    move/from16 v33, v8

    move-object/from16 v31, v12

    move-object/from16 v8, v22

    move-object/from16 v7, v26

    move-object/from16 v26, v11

    move-wide/from16 v11, v27

    :goto_13
    if-lez v32, :cond_f

    if-eqz v15, :cond_e

    goto :goto_14

    :cond_e
    move-object/from16 v22, v8

    move-wide/from16 v27, v11

    move-object/from16 v11, v26

    move-object/from16 v2, v29

    move-object/from16 v12, v31

    move/from16 v8, v33

    const/16 v19, 0x0

    move-object/from16 v26, v7

    move-object/from16 v7, v30

    goto/16 :goto_c

    :cond_f
    :goto_14
    if-ne v15, v0, :cond_10

    const-string/jumbo v2, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Package hit quota limit in-flight "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " of "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v6, 0x12

    move-object/from16 v9, v18

    const/4 v10, 0x1

    invoke-virtual {v2, v6, v3, v10, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v2, v11, v12, v4, v5}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->sendQuotaExceeded(JJ)V

    :cond_10
    move v2, v15

    :goto_15
    iget-object v4, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v4}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->getBackupResultBlocking()I

    move-result v4

    iget-object v5, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_3
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    const/4 v6, 0x0

    :try_start_1a
    iput-boolean v6, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z

    iget-boolean v6, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    if-nez v6, :cond_12

    if-nez v4, :cond_11

    invoke-virtual {v7}, Lcom/android/server/backup/transport/BackupTransportClient;->finishBackup()I

    move-result v6

    if-nez v2, :cond_12

    move v2, v6

    goto :goto_16

    :catchall_a
    move-exception v0

    goto :goto_18

    :cond_11
    iget-object v6, v7, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {v6}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    move-result-object v9
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    :try_start_1b
    iget-object v10, v7, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v10, v9}, Lcom/android/internal/backup/IBackupTransport;->cancelFullBackup(Lcom/android/internal/backup/ITransportStatusCallback;)V

    invoke-virtual {v9}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    :try_start_1c
    invoke-virtual {v6, v9}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    goto :goto_16

    :catchall_b
    move-exception v0

    invoke-virtual {v6, v9}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    throw v0

    :cond_12
    :goto_16
    monitor-exit v5
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    if-nez v2, :cond_13

    if-eqz v4, :cond_13

    move v15, v4

    goto :goto_17

    :cond_13
    move v15, v2

    :goto_17
    if-eqz v15, :cond_14

    :try_start_1d
    const-string/jumbo v2, "PFTBT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " backing up "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    invoke-virtual {v7}, Lcom/android/server/backup/transport/BackupTransportClient;->requestFullBackupTime()J

    move-result-wide v13

    const-string/jumbo v2, "PFTBT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Transport suggested backoff="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_3
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    goto :goto_19

    :goto_18
    :try_start_1e
    monitor-exit v5
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    :try_start_1f
    throw v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_3
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    :catchall_c
    move-exception v0

    move-object/from16 v23, v6

    goto/16 :goto_12

    :catch_5
    move-exception v0

    move-object/from16 v23, v6

    move-object/from16 v26, v11

    goto/16 :goto_10

    :cond_15
    move-object/from16 v23, v6

    move-object v8, v10

    move-object/from16 v7, v26

    move-object/from16 v31, v27

    move-object/from16 v26, v11

    :goto_19
    :try_start_20
    iget-boolean v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_a
    .catchall {:try_start_20 .. :try_end_20} :catchall_10

    if-eqz v2, :cond_16

    :try_start_21
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v8}, Lcom/android/server/backup/UserBackupManagerService;->enqueueFullBackup(JLjava/lang/String;)V

    :cond_16
    const/16 v2, -0x3ea

    if-ne v15, v2, :cond_18

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v8, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const-string/jumbo v0, "PFTBT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Transport rejected backup of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", skipping"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "transport rejected"

    filled-new-array {v8, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xb19

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    if-eqz v0, :cond_17

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v0

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v9, 0x1

    invoke-virtual {v0, v2, v9}, Lcom/android/server/backup/BackupAgentConnectionManager;->unbindAgent(Landroid/content/pm/ApplicationInfo;Z)V

    :cond_17
    :goto_1a
    const/16 v2, -0x7d3

    :goto_1b
    const/16 v4, -0x3e8

    const/4 v9, 0x1

    goto/16 :goto_21

    :cond_18
    if-ne v15, v0, :cond_19

    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v2, v8, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const-string/jumbo v0, "PFTBT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Transport quota exceeded for package: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb1d

    invoke-static {v0, v8}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v0

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v9, 0x1

    invoke-virtual {v0, v2, v9}, Lcom/android/server/backup/BackupAgentConnectionManager;->unbindAgent(Landroid/content/pm/ApplicationInfo;Z)V

    goto :goto_1a

    :cond_19
    const/16 v0, -0x3eb

    if-ne v15, v0, :cond_1a

    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v2, v8, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const-string/jumbo v0, "PFTBT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Application failure for package: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb07

    invoke-static {v0, v8}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v0

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v9, 0x1

    invoke-virtual {v0, v2, v9}, Lcom/android/server/backup/BackupAgentConnectionManager;->unbindAgent(Landroid/content/pm/ApplicationInfo;Z)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_3
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    goto :goto_1a

    :cond_1a
    const/16 v2, -0x7d3

    if-ne v15, v2, :cond_1b

    :try_start_22
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v8, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const-string/jumbo v0, "PFTBT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Backup cancelled. package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", entire session cancelled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb1e

    invoke-static {v0, v8}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v0

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v9, 0x1

    invoke-virtual {v0, v4, v9}, Lcom/android/server/backup/BackupAgentConnectionManager;->unbindAgent(Landroid/content/pm/ApplicationInfo;Z)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_6
    .catchall {:try_start_22 .. :try_end_22} :catchall_d

    goto/16 :goto_1b

    :catchall_d
    move-exception v0

    :goto_1c
    move-object/from16 v12, v23

    goto/16 :goto_6

    :catch_6
    move-exception v0

    move-object/from16 v6, v23

    move-object/from16 v7, v26

    goto/16 :goto_4

    :cond_1b
    if-eqz v15, :cond_1e

    :try_start_23
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_8
    .catchall {:try_start_23 .. :try_end_23} :catchall_d

    const/16 v4, -0x3e8

    :try_start_24
    invoke-static {v0, v8, v4}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const-string/jumbo v0, "PFTBT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Transport failed; aborting backup: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    new-array v0, v6, [Ljava/lang/Object;

    const/16 v5, 0xb1a

    invoke-static {v5, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_7
    .catchall {:try_start_24 .. :try_end_24} :catchall_d

    :try_start_25
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v0

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v9, 0x1

    invoke-virtual {v0, v3, v9}, Lcom/android/server/backup/BackupAgentConnectionManager;->unbindAgent(Landroid/content/pm/ApplicationInfo;Z)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_7
    .catchall {:try_start_25 .. :try_end_25} :catchall_f

    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    if-eqz v0, :cond_1c

    move v10, v2

    goto :goto_1d

    :cond_1c
    move v10, v4

    :goto_1d
    const-string/jumbo v0, "PFTBT"

    const-string v2, "Full backup completed with status: "

    invoke-static {v10, v2, v0}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v10}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    invoke-static/range {v26 .. v26}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    invoke-static/range {v23 .. v23}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v0, :cond_1d

    iget v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    :cond_1d
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_26
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask()V

    monitor-exit v3
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_e

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string/jumbo v2, "PFTBT.run()"

    invoke-interface {v0, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v0, :cond_4

    goto/16 :goto_1

    :catchall_e
    move-exception v0

    :try_start_27
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_e

    throw v0

    :catchall_f
    move-exception v0

    move v10, v4

    move-object/from16 v12, v23

    goto/16 :goto_36

    :catch_7
    move-exception v0

    :goto_1e
    move-object/from16 v6, v23

    :goto_1f
    move-object/from16 v7, v26

    goto/16 :goto_33

    :catch_8
    move-exception v0

    :goto_20
    const/16 v4, -0x3e8

    goto :goto_1e

    :cond_1e
    const/16 v4, -0x3e8

    const/4 v9, 0x1

    :try_start_28
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/4 v6, 0x0

    invoke-static {v0, v8, v6}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const/16 v0, 0xb1b

    invoke-static {v0, v8}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/backup/UserBackupManagerService;->logBackupComplete(Ljava/lang/String;)V

    :goto_21
    invoke-static/range {v26 .. v26}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    invoke-static/range {v23 .. v23}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "PFTBT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unbinding agent in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_7
    .catchall {:try_start_28 .. :try_end_28} :catchall_d

    :try_start_29
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_29} :catch_9
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_7
    .catchall {:try_start_29 .. :try_end_29} :catchall_d

    :catch_9
    :cond_1f
    add-int/lit8 v5, v21, 0x1

    move-object v0, v7

    move v2, v9

    move-object/from16 v6, v23

    move/from16 v3, v25

    move-object/from16 v7, v26

    move-object/from16 v4, v31

    const/4 v12, 0x0

    goto/16 :goto_8

    :catchall_10
    move-exception v0

    const/16 v2, -0x7d3

    goto/16 :goto_1c

    :catch_a
    move-exception v0

    const/16 v2, -0x7d3

    goto :goto_20

    :catchall_11
    move-exception v0

    move-object/from16 v23, v6

    goto/16 :goto_9

    :goto_22
    :try_start_2a
    monitor-exit v12
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_13

    :try_start_2b
    throw v0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_12

    :catchall_12
    move-exception v0

    :goto_23
    move-object v12, v6

    goto/16 :goto_6

    :catch_b
    move-exception v0

    goto :goto_1f

    :catchall_13
    move-exception v0

    goto :goto_22

    :catchall_14
    move-exception v0

    move-object/from16 v26, v11

    const/16 v2, -0x7d3

    goto :goto_23

    :catch_c
    move-exception v0

    move-object/from16 v26, v11

    const/16 v2, -0x7d3

    const/16 v4, -0x3e8

    goto :goto_1f

    :catchall_15
    move-exception v0

    const/16 v2, -0x7d3

    move-object v12, v6

    move-object/from16 v26, v7

    goto/16 :goto_6

    :catch_d
    move-exception v0

    goto/16 :goto_3

    :goto_24
    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    if-eqz v0, :cond_20

    move v11, v2

    goto :goto_25

    :cond_20
    const/4 v11, 0x0

    :goto_25
    const-string/jumbo v0, "PFTBT"

    const-string v2, "Full backup completed with status: "

    invoke-static {v11, v2, v0}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    invoke-static {v7}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    invoke-static {v6}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v0, :cond_21

    iget v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    :cond_21
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_2c
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask()V

    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_16

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string/jumbo v2, "PFTBT.run()"

    invoke-interface {v0, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v0, :cond_22

    :goto_26
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v13, v14}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    :cond_22
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentConnectionManager;->clearNoRestrictedModePackages()V

    const-string/jumbo v0, "PFTBT"

    const-string v2, "Full data backup pass finished."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakeLock()Lcom/android/server/backup/BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupWakeLock;->release()V

    goto/16 :goto_35

    :catchall_16
    move-exception v0

    :try_start_2d
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_16

    throw v0

    :catchall_17
    move-exception v0

    move-wide/from16 v16, v13

    const/16 v2, -0x7d3

    :goto_27
    const/4 v10, 0x0

    :goto_28
    const/4 v12, 0x0

    const/16 v26, 0x0

    goto/16 :goto_36

    :catch_e
    move-exception v0

    move-wide/from16 v16, v13

    :goto_29
    const/16 v2, -0x7d3

    const/16 v4, -0x3e8

    :goto_2a
    const/4 v6, 0x0

    const/4 v7, 0x0

    goto/16 :goto_33

    :catchall_18
    move-exception v0

    move-wide/from16 v16, v13

    const/16 v2, -0x7d3

    goto :goto_2b

    :catch_f
    move-exception v0

    move-wide/from16 v16, v13

    const/16 v2, -0x7d3

    const/16 v4, -0x3e8

    goto :goto_2c

    :goto_2b
    move-wide/from16 v13, v16

    goto :goto_27

    :goto_2c
    move-wide/from16 v13, v16

    goto :goto_2a

    :goto_2d
    :try_start_2e
    const-string/jumbo v3, "PFTBT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-boolean v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " setupComplete="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-boolean v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "; ignoring"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-boolean v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-eqz v0, :cond_23

    const/16 v0, 0xd

    goto :goto_2e

    :cond_23
    const/16 v0, 0xe

    :goto_2e
    iget-object v3, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/4 v7, 0x3

    const/4 v9, 0x0

    invoke-virtual {v3, v0, v9, v7, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_10
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1b

    const/4 v6, 0x0

    :try_start_2f
    iput-boolean v6, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_10
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1a

    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    if-eqz v0, :cond_24

    move v11, v2

    goto :goto_2f

    :cond_24
    const/16 v11, -0x7d1

    :goto_2f
    const-string/jumbo v0, "PFTBT"

    const-string v2, "Full backup completed with status: "

    invoke-static {v11, v2, v0}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v0, :cond_25

    iget v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    :cond_25
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_30
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask()V

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_19

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string/jumbo v2, "PFTBT.run()"

    invoke-interface {v0, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    move-wide/from16 v7, v16

    invoke-virtual {v0, v7, v8}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    goto/16 :goto_2

    :catchall_19
    move-exception v0

    :try_start_31
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_19

    throw v0

    :catchall_1a
    move-exception v0

    move-wide/from16 v7, v16

    :goto_30
    move v10, v6

    move-wide v13, v7

    goto/16 :goto_28

    :catch_10
    move-exception v0

    move-wide/from16 v7, v16

    :goto_31
    move-wide v13, v7

    goto/16 :goto_2a

    :catchall_1b
    move-exception v0

    move-wide/from16 v7, v16

    :goto_32
    const/4 v6, 0x0

    goto :goto_30

    :catchall_1c
    move-exception v0

    move-wide v7, v13

    const/16 v2, -0x7d3

    goto :goto_32

    :catch_11
    move-exception v0

    move-wide v7, v13

    const/16 v2, -0x7d3

    const/16 v4, -0x3e8

    goto :goto_31

    :catchall_1d
    move-exception v0

    move-wide v7, v13

    const/16 v2, -0x7d3

    const/4 v6, 0x0

    move v10, v6

    goto/16 :goto_28

    :catch_12
    move-exception v0

    move-wide v7, v13

    goto/16 :goto_29

    :goto_33
    :try_start_32
    const-string/jumbo v3, "PFTBT"

    const-string v5, "Exception trying full transport backup"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const-string/jumbo v5, "android.app.backup.extra.LOG_EXCEPTION_FULL_BACKUP"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/16 v5, 0x13

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-virtual {v3, v5, v9, v8, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_1f

    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    if-eqz v0, :cond_26

    move v10, v2

    goto :goto_34

    :cond_26
    move v10, v4

    :goto_34
    const-string/jumbo v0, "PFTBT"

    const-string v2, "Full backup completed with status: "

    invoke-static {v10, v2, v0}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v10}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    invoke-static {v7}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    invoke-static {v6}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v0, :cond_27

    iget v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    :cond_27
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_33
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask()V

    monitor-exit v3
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_1e

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string/jumbo v2, "PFTBT.run()"

    invoke-interface {v0, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v0, :cond_22

    goto/16 :goto_26

    :goto_35
    return-void

    :catchall_1e
    move-exception v0

    :try_start_34
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_1e

    throw v0

    :catchall_1f
    move-exception v0

    move v10, v4

    move-object v12, v6

    move-object/from16 v26, v7

    :goto_36
    iget-boolean v3, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    if-eqz v3, :cond_28

    move v11, v2

    goto :goto_37

    :cond_28
    move v11, v10

    :goto_37
    const-string/jumbo v2, "PFTBT"

    const-string v3, "Full backup completed with status: "

    invoke-static {v11, v3, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v2, v11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    invoke-static/range {v26 .. v26}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    invoke-static {v12}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v2, :cond_29

    iget v3, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    :cond_29
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_35
    iget-object v3, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask()V

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_20

    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string/jumbo v3, "PFTBT.run()"

    invoke-interface {v2, v3}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-boolean v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v2, :cond_2a

    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2, v13, v14}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    :cond_2a
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/backup/BackupAgentConnectionManager;->clearNoRestrictedModePackages()V

    const-string/jumbo v2, "PFTBT"

    const-string v3, "Full data backup pass finished."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakeLock()Lcom/android/server/backup/BackupWakeLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/BackupWakeLock;->release()V

    throw v0

    :catchall_20
    move-exception v0

    :try_start_36
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_20

    throw v0
.end method

.method public final setNoRestrictedModePackages(Lcom/android/server/backup/transport/BackupTransportClient;Ljava/util/List;)V
    .locals 5

    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    move-object v3, p2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1, v0}, Lcom/android/server/backup/transport/BackupTransportClient;->getPackagesThatShouldNotUseRestrictedMode(ILjava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupAgentConnectionManager:Lcom/android/server/backup/BackupAgentConnectionManager;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/backup/BackupAgentConnectionManager;->setNoRestrictedModePackages(ILjava/util/Set;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "PFTBT"

    const-string p1, "Failed to retrieve no restricted mode packages from transport"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final unregisterTask()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    check-cast v0, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    invoke-virtual {v0, p0}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->removeOperation(I)V

    return-void
.end method
