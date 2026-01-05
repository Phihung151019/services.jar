.class public Lcom/android/server/backup/restore/FullRestoreEngine;
.super Lcom/android/server/backup/restore/RestoreEngine;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;


# instance fields
.field public mAgent:Landroid/app/IBackupAgent;

.field public mAgentPackage:Ljava/lang/String;

.field public final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field public final mAllowApks:Z

.field public final mApkCount:Ljava/util/HashMap;

.field public mAppVersion:J

.field public final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field public final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mBuffer:[B

.field public final mClearedPackages:Ljava/util/HashSet;

.field public final mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

.field public final mEphemeralOpToken:I

.field public final mIsAdbRestore:Z

.field public final mManifestSignatures:Ljava/util/HashMap;

.field public final mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field public final mMonitorTask:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;

.field public mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field public final mOnlyPackage:Landroid/content/pm/PackageInfo;

.field public final mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

.field public final mPackageInstallers:Ljava/util/HashMap;

.field public final mPackagePolicies:Ljava/util/HashMap;

.field public mPipes:[Landroid/os/ParcelFileDescriptor;

.field public mPipesClosed:Z

.field public final mPipesLock:Ljava/lang/Object;

.field public mPrivilegeApp:Z

.field public mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

.field public final mSessionFlag:Ljava/util/HashMap;

.field public final mSessionId:Ljava/util/HashMap;

.field public mTargetApp:Landroid/content/pm/ApplicationInfo;

.field public final mUserId:I

.field public mWidgetData:[B

.field public restorePass:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/backup/restore/RestoreEngine;-><init>()V

    new-instance v0, Lcom/android/server/backup/restore/RestoreDeleteObserver;

    invoke-direct {v0}, Lcom/android/server/backup/restore/RestoreDeleteObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mApkCount:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionFlag:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionId:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->restorePass:Z

    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPrivilegeApp:Z

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowApks:Z

    iput v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mEphemeralOpToken:I

    iput v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBuffer:[B

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/internal/LifecycleOperationStorage;Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Landroid/content/pm/PackageInfo;ZIZLcom/android/server/backup/utils/BackupEligibilityRules;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/backup/restore/RestoreEngine;-><init>()V

    new-instance v0, Lcom/android/server/backup/restore/RestoreDeleteObserver;

    invoke-direct {v0}, Lcom/android/server/backup/restore/RestoreDeleteObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mApkCount:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionFlag:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionId:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->restorePass:Z

    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPrivilegeApp:Z

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iput-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    iput p8, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mEphemeralOpToken:I

    iput-object p3, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;

    iput-object p4, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    iput-object p5, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    new-instance p2, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    invoke-direct {p2, p5}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;-><init>(Landroid/app/backup/IBackupManagerMonitor;)V

    iput-object p6, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    iput-boolean p7, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowApks:Z

    iget-object p2, p1, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    const-string/jumbo p3, "Timeout parameters cannot be null"

    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-boolean p9, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    iget p2, p1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iput p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    iput-object p10, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    const/high16 p2, 0x10000

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBuffer:[B

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->isYuvaSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "BackupManagerService"

    const-string p1, "Backup Manager Yuva is Supported"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/backup/BackupManagerYuva;->getInstanceBackupYuva()Lcom/android/server/backup/BackupManagerYuva;

    move-result-object p0

    sput-object p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    :cond_0
    return-void
.end method

.method public static isCanonicalFilePath(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final bindToAgent(Lcom/android/server/backup/FileMetadata;)Landroid/app/IBackupAgent;
    .locals 3

    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupAgentConnectionManager:Lcom/android/server/backup/BackupAgentConnectionManager;

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const-string/jumbo v2, "k"

    iget-object p1, p1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    iget-object p0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget p0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mBackupDestination:I

    invoke-virtual {v0, v1, p1, p0}, Lcom/android/server/backup/BackupAgentConnectionManager;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;II)Landroid/app/IBackupAgent;

    move-result-object p0

    return-object p0
.end method

.method public final isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget p0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mBackupDestination:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string/jumbo v1, "c"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "r"

    iget-object v1, p1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo p1, "no_backup/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    return v0
.end method

.method public final restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)V
    .locals 47

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p4

    iget-boolean v11, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    const-string/jumbo v0, "Restoring key-value file for "

    const-string/jumbo v5, "Restoring OBB file for "

    const-string/jumbo v6, "Restoring data for "

    const-string/jumbo v7, "Unable to create agent for "

    const-string v8, "APK file; installing; copying "

    const-string v9, "Expected data for "

    invoke-virtual {v1}, Lcom/android/server/backup/restore/RestoreEngine;->isRunning()Z

    move-result v10

    const-string v12, "BackupManagerService"

    if-nez v10, :cond_0

    const-string/jumbo v0, "Restore engine used after halting"

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v10, Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;

    invoke-direct {v10}, Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;-><init>()V

    new-instance v13, Lcom/android/server/backup/utils/TarBackupReader;

    move-object/from16 v14, p7

    invoke-direct {v13, v2, v10, v14}, Lcom/android/server/backup/utils/TarBackupReader;-><init>(Ljava/io/InputStream;Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;Landroid/app/backup/IBackupManagerMonitor;)V

    const/4 v14, 0x1

    :try_start_0
    invoke-virtual {v13}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeaders()Lcom/android/server/backup/FileMetadata;

    move-result-object v15

    if-eqz v15, :cond_7

    iput-boolean v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->restorePass:Z

    iget-object v3, v15, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    iget-object v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v19, v14

    sget-object v14, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    if-nez v19, :cond_4

    if-eqz v4, :cond_2

    move-object/from16 v19, v5

    :try_start_1
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but saw "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, v1, Lcom/android/server/backup/restore/RestoreEngine;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v5, -0x3

    :try_start_3
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v9, 0x0

    :try_start_4
    invoke-virtual {v1, v9}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    :goto_0
    move/from16 v24, v11

    :catch_1
    :goto_1
    const/4 v5, 0x0

    goto/16 :goto_26

    :catch_2
    move-exception v0

    :goto_2
    move/from16 v24, v11

    :goto_3
    const/4 v5, 0x0

    goto/16 :goto_28

    :catch_3
    const/4 v9, 0x0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    const/4 v5, -0x3

    goto :goto_4

    :catch_6
    move-exception v0

    const/4 v5, -0x3

    :goto_4
    const/4 v9, 0x0

    goto :goto_2

    :cond_1
    :goto_5
    const/4 v9, 0x0

    goto :goto_6

    :cond_2
    move-object/from16 v19, v5

    goto :goto_5

    :goto_6
    :try_start_5
    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0

    if-nez v5, :cond_3

    :try_start_6
    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_3
    :try_start_7
    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v5, :cond_5

    const-string/jumbo v5, "Saw new package; finalizing old one"

    invoke-static {v12, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v5, v11}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0

    const/4 v5, 0x0

    :try_start_8
    iput-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iput-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_9

    :catch_7
    :goto_7
    move/from16 v24, v11

    goto/16 :goto_26

    :catch_8
    move-exception v0

    :goto_8
    move/from16 v24, v11

    goto/16 :goto_28

    :catch_9
    move-exception v0

    const/4 v5, 0x0

    goto :goto_8

    :cond_4
    move-object/from16 v19, v5

    const/4 v9, 0x0

    :cond_5
    :goto_9
    :try_start_9
    iget-object v5, v15, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v9, "_manifest"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_0

    iget-object v9, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    if-eqz v5, :cond_8

    const/4 v5, 0x0

    :try_start_a
    invoke-virtual {v13, v15}, Lcom/android/server/backup/utils/TarBackupReader;->readAppManifestAndReturnSignatures(Lcom/android/server/backup/FileMetadata;)[Landroid/content/pm/Signature;

    move-result-object v17

    iget-wide v6, v15, Lcom/android/server/backup/FileMetadata;->version:J

    iput-wide v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAppVersion:J

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iget-object v14, v9, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object v4, v9, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-boolean v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPrivilegeApp:Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_c

    move/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v4

    move-object v2, v5

    move/from16 v21, v6

    move-object/from16 v16, v15

    const/4 v4, -0x3

    const/4 v5, 0x1

    const/4 v9, 0x0

    move/from16 v15, p5

    :try_start_b
    invoke-virtual/range {v13 .. v21}, Lcom/android/server/backup/utils/TarBackupReader;->chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;ILcom/android/server/backup/utils/BackupEligibilityRules;Landroid/content/Context;Z)Lcom/android/server/backup/restore/RestorePolicy;

    move-result-object v0

    move-object/from16 v15, v16

    move-object/from16 v6, v17

    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    iget-object v8, v15, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    iget-object v6, v15, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/backup/UserBackupManagerService;->mSplitRestoreFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v5, :cond_6

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mApkCount:Ljava/util/HashMap;

    iget v6, v15, Lcom/android/server/backup/FileMetadata;->splitCount:I

    add-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionFlag:Ljava/util/HashMap;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :catch_a
    move-object v5, v2

    goto :goto_7

    :catch_b
    move-exception v0

    :goto_a
    move-object v5, v2

    goto :goto_8

    :cond_6
    :goto_b
    iget-wide v6, v15, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v13, v6, v7}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0, v3}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendOnRestorePackage(Landroid/app/backup/IFullBackupRestoreObserver;Ljava/lang/String;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_a

    :cond_7
    :goto_c
    move/from16 v24, v11

    move-object v2, v15

    goto/16 :goto_25

    :catch_c
    move-object v2, v5

    goto/16 :goto_7

    :catch_d
    move-exception v0

    move-object v2, v5

    const/4 v4, -0x3

    const/4 v5, 0x1

    const/4 v9, 0x0

    goto :goto_a

    :cond_8
    :try_start_c
    iget-object v5, v15, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v4, "_meta"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v13, v15}, Lcom/android/server/backup/utils/TarBackupReader;->readMetadata(Lcom/android/server/backup/FileMetadata;)V

    invoke-virtual {v13}, Lcom/android/server/backup/utils/TarBackupReader;->getWidgetData()[B

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    invoke-virtual {v13}, Lcom/android/server/backup/utils/TarBackupReader;->getMonitor()V

    iget-wide v2, v15, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v13, v2, v3}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    goto :goto_c

    :cond_9
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_0

    if-eqz v4, :cond_14

    const-string/jumbo v5, "a"

    move/from16 v24, v11

    const/4 v11, 0x1

    if-eq v4, v11, :cond_12

    const/4 v11, 0x2

    if-eq v4, v11, :cond_a

    :try_start_d
    const-string v4, "Invalid policy from manifest"

    invoke-static {v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v3

    move-object v3, v2

    move-object v2, v15

    move-object v15, v4

    :goto_d
    const/4 v4, 0x0

    goto/16 :goto_10

    :catch_e
    move-exception v0

    goto/16 :goto_3

    :cond_a
    iget-object v4, v15, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v15, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    iget-boolean v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPrivilegeApp:Z

    invoke-static {v0}, Lcom/android/server/backup/utils/RestoreUtils;->setPrivilegeApp(Z)V

    sget-object v0, Lcom/android/server/backup/UserBackupManagerService;->mSplitRestoreFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_1

    sget-object v11, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    const/4 v5, 0x1

    if-ne v0, v5, :cond_f

    :try_start_e
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionFlag:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_f

    if-nez v0, :cond_b

    :try_start_f
    iget-object v0, v9, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/android/server/backup/utils/RestoreUtils;->createSession(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionFlag:Ljava/util/HashMap;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionId:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_1

    :cond_b
    :try_start_10
    iget-object v0, v9, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionId:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v0, v2, v15, v10, v4}, Lcom/android/server/backup/utils/RestoreUtils;->writeSession(Landroid/content/Context;Ljava/io/InputStream;Lcom/android/server/backup/FileMetadata;Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;I)Z

    move-result v0

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mApkCount:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_f

    const/16 v16, 0x1

    add-int/lit8 v4, v4, -0x1

    :try_start_11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_d

    const-string v0, "APK file; copy error"

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    move-object/from16 v20, v15

    goto :goto_e

    :cond_d
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mApkCount:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v9, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    iget v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionId:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v22, v6

    move-object/from16 v21, v15

    invoke-static/range {v17 .. v23}, Lcom/android/server/backup/utils/RestoreUtils;->installApkSplitSupport(Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;II)Z

    move-result v0

    move-object/from16 v20, v21

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v0, :cond_e

    move-object v14, v11

    :cond_e
    invoke-virtual {v2, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_e
    move-object/from16 v2, v20

    goto :goto_f

    :catch_f
    const/16 v16, 0x1

    goto/16 :goto_1

    :catch_10
    move-exception v0

    const/16 v16, 0x1

    goto/16 :goto_3

    :cond_f
    move-object v4, v3

    move/from16 v16, v5

    move-object/from16 v20, v15

    iget-object v3, v9, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    move-object v5, v4

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    move-object v6, v5

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    move-object v7, v6

    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    move-object v9, v10

    iget v10, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    move-object v15, v7

    move-object/from16 v7, v20

    invoke-static/range {v2 .. v10}, Lcom/android/server/backup/utils/RestoreUtils;->installApk(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;I)Z

    move-result v0

    move-object v2, v7

    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v0, :cond_10

    move-object v14, v11

    :cond_10
    invoke-virtual {v3, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f
    iget-wide v2, v2, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v13, v2, v3}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    return-void

    :cond_11
    move-object/from16 v46, v3

    move-object v3, v2

    move-object v2, v15

    move-object/from16 v15, v46

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v4, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :cond_12
    move-object/from16 v46, v3

    move-object v3, v2

    move-object v2, v15

    move-object/from16 v15, v46

    iget-object v4, v2, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const-string/jumbo v4, "apk present but ACCEPT"

    invoke-static {v12, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_13
    const/4 v4, 0x1

    goto :goto_10

    :cond_14
    move-object/from16 v24, v3

    move-object v3, v2

    move-object v2, v15

    move-object/from16 v15, v24

    move/from16 v24, v11

    goto/16 :goto_d

    :goto_10
    invoke-virtual {v1, v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/backup/restore/FullRestoreEngine;->isCanonicalFilePath(Ljava/lang/String;)Z

    move-result v5
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_1

    if-nez v5, :cond_16

    :cond_15
    const/4 v4, 0x0

    :cond_16
    if-eqz v4, :cond_1b

    :try_start_12
    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_1

    if-nez v5, :cond_1b

    :try_start_13
    iget-object v5, v9, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v8, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_13} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_1

    const/4 v10, 0x0

    :try_start_14
    invoke-virtual {v5, v15, v10, v8}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v5, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/android/server/backup/restore/FullRestoreEngine;->shouldForceClearAppDataOnFullRestore(Ljava/lang/String;)Z

    move-result v5

    iget-object v8, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v8, :cond_17

    if-eqz v5, :cond_18

    :cond_17
    const-string v5, "Clearing app data preparatory to full restore"

    invoke-static {v12, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v15}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataBeforeRestore(Ljava/lang/String;)V

    :cond_18
    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v5, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_19
    invoke-virtual {v1}, Lcom/android/server/backup/restore/FullRestoreEngine;->setUpPipes()V

    invoke-virtual {v1, v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->bindToAgent(Lcom/android/server/backup/FileMetadata;)Landroid/app/IBackupAgent;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iput-object v15, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_14} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_1

    goto :goto_11

    :catch_11
    const/4 v10, 0x0

    :catch_12
    :try_start_15
    sget-object v5, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v5, :cond_1a

    const/4 v11, 0x1

    iput-boolean v11, v5, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverRestoreFail:Z

    :cond_1a
    :goto_11
    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-nez v5, :cond_1c

    invoke-virtual {v7, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v4, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v10

    goto :goto_12

    :cond_1b
    const/4 v10, 0x0

    goto :goto_12

    :catch_13
    move-exception v0

    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_1c
    :goto_12
    if-eqz v4, :cond_1d

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " but agent is for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v10

    :cond_1d
    invoke-virtual {v1, v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->shouldSkipReadOnlyDir(Lcom/android/server/backup/FileMetadata;)Z

    move-result v5

    if-eqz v5, :cond_1e

    move v4, v10

    :cond_1e
    if-eqz v4, :cond_2b

    iget-wide v7, v2, Lcom/android/server/backup/FileMetadata;->size:J

    const-string/jumbo v11, "com.android.sharedstoragebackup"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_15} :catch_1

    const-wide/16 v25, 0x0

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    if-eqz v11, :cond_1f

    :try_start_16
    iget-object v6, v5, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_16} :catch_14

    move/from16 p7, v10

    :try_start_17
    iget-wide v10, v5, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mSharedBackupAgentTimeoutMillis:J

    monitor-exit v6

    :goto_13
    move-wide/from16 v29, v10

    goto :goto_14

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    :try_start_18
    throw v0

    :catch_14
    move/from16 p7, v10

    goto/16 :goto_1

    :catch_15
    move-exception v0

    move/from16 p7, v10

    goto/16 :goto_3

    :cond_1f
    move/from16 p7, v10

    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis(I)J

    move-result-wide v10
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_18} :catch_1

    goto :goto_13

    :goto_14
    :try_start_19
    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;

    const/16 v32, 0x1

    move/from16 v28, p6

    move-object/from16 v27, v5

    move-object/from16 v31, v6

    invoke-virtual/range {v27 .. v32}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    const-string/jumbo v5, "obb"

    iget-object v6, v2, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_19} :catch_1

    const-string v6, " : "

    if-nez v5, :cond_23

    :try_start_1a
    const-string/jumbo v5, "k"

    iget-object v10, v2, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAppVersion:J

    iput-wide v5, v2, Lcom/android/server/backup/FileMetadata;->version:J

    new-instance v17, Lcom/android/server/backup/KeyValueAdbRestoreEngine;

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v5, v0, Lcom/android/server/backup/UserBackupManagerService;->mDataDir:Ljava/io/File;

    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v21, v6, p7

    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_19
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1a} :catch_1

    move/from16 v23, p6

    move-object/from16 v18, v0

    move-object/from16 v20, v2

    move-object/from16 v19, v5

    move-object/from16 v22, v6

    :try_start_1b
    invoke-direct/range {v17 .. v23}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/io/File;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;Landroid/app/IBackupAgent;I)V

    move-object/from16 v0, v17

    new-instance v2, Ljava/lang/Thread;

    const-string/jumbo v5, "restore-key-value-runner"

    invoke-direct {v2, v0, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    move/from16 p5, v4

    move-object/from16 v2, v20

    goto/16 :goto_15

    :catch_16
    move-object/from16 v2, v20

    :catch_17
    const/4 v5, 0x0

    goto/16 :goto_16

    :catch_18
    move-object/from16 v2, v20

    :catch_19
    const/4 v5, 0x0

    goto/16 :goto_18

    :cond_20
    move-object/from16 v20, v2

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string/jumbo v0, "system process agent - spinning a thread"

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v17, Lcom/android/server/backup/restore/RestoreFileRunnable;

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v21, v5, p7

    move/from16 v22, p6

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    invoke-direct/range {v17 .. v22}, Lcom/android/server/backup/restore/RestoreFileRunnable;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;I)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_18
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_1b} :catch_1

    move-object/from16 v0, v17

    move-object/from16 v2, v20

    :try_start_1c
    new-instance v5, Ljava/lang/Thread;

    const-string/jumbo v6, "restore-sys-runner"

    invoke-direct {v5, v0, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    move/from16 p5, v4

    goto :goto_15

    :cond_21
    move-object/from16 v2, v20

    invoke-virtual {v9}, Lcom/android/server/backup/UserBackupManagerService;->getDataExtractionRuleStatus()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    const/4 v11, 0x1

    invoke-interface {v0, v11}, Landroid/app/IBackupAgent;->doDisableDataExtractionRules(Z)V

    :cond_22
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v34, v5, p7

    iget-wide v5, v2, Lcom/android/server/backup/FileMetadata;->size:J

    iget v10, v2, Lcom/android/server/backup/FileMetadata;->type:I

    iget-object v11, v2, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    move-object/from16 v33, v0

    iget-object v0, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    move/from16 p5, v4

    move-wide/from16 v35, v5

    iget-wide v4, v2, Lcom/android/server/backup/FileMetadata;->mode:J

    move-wide/from16 v40, v4

    iget-wide v4, v2, Lcom/android/server/backup/FileMetadata;->mtime:J

    iget-object v6, v9, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move/from16 v44, p6

    move-object/from16 v39, v0

    move-wide/from16 v42, v4

    move-object/from16 v45, v6

    move/from16 v37, v10

    move-object/from16 v38, v11

    invoke-interface/range {v33 .. v45}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V

    :goto_15
    move/from16 v4, p5

    const/4 v0, 0x1

    const/4 v5, 0x0

    goto :goto_19

    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v4, v19

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, p7

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_19
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_1c} :catch_1

    const/4 v5, 0x0

    :try_start_1d
    throw v5
    :try_end_1d
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_1d} :catch_1c

    :goto_16
    :try_start_1e
    const-string v0, "Agent crashed during full restore"

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    move/from16 v0, p7

    move v4, v0

    goto :goto_19

    :catch_1a
    move-exception v0

    goto/16 :goto_28

    :goto_18
    const-string v0, "Couldn\'t establish restore"

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_1e} :catch_1c

    goto :goto_17

    :goto_19
    if-eqz v4, :cond_28

    :try_start_1f
    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/16 v16, 0x1

    aget-object v0, v0, v16

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/4 v0, 0x1

    :goto_1a
    cmp-long v10, v7, v25

    if-lez v10, :cond_27

    move-object/from16 v10, p3

    array-length v11, v10
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_1f} :catch_1c

    move-object/from16 p5, v6

    int-to-long v5, v11

    cmp-long v5, v7, v5

    if-lez v5, :cond_24

    :try_start_20
    array-length v5, v10

    :goto_1b
    move/from16 v6, p7

    goto :goto_1c

    :cond_24
    long-to-int v5, v7

    goto :goto_1b

    :goto_1c
    invoke-virtual {v3, v10, v6, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_20} :catch_1

    if-gtz v5, :cond_25

    goto :goto_1e

    :cond_25
    move-wide/from16 v18, v7

    int-to-long v6, v5

    sub-long v7, v18, v6

    if-eqz v0, :cond_26

    move-object/from16 v11, p5

    const/4 v6, 0x0

    :try_start_21
    invoke-virtual {v11, v10, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_21 .. :try_end_21} :catch_1

    goto :goto_1d

    :catch_1b
    move-exception v0

    :try_start_22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to write to restore pipe: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_1d

    :cond_26
    move-object/from16 v11, p5

    :goto_1d
    move-object v6, v11

    const/16 p7, 0x0

    const/4 v5, 0x0

    goto :goto_1a

    :cond_27
    move-object/from16 v10, p3

    :goto_1e
    iget-wide v5, v2, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v13, v5, v6}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    move/from16 v5, p6

    invoke-virtual {v9, v5}, Lcom/android/server/backup/UserBackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v0

    goto :goto_1f

    :cond_28
    move-object/from16 v10, p3

    :goto_1f
    if-nez v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Agent failure restoring "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; ending restore"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v0

    const/16 v5, 0x12

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v1}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v9, 0x0

    invoke-virtual {v1, v0, v9}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_22} :catch_1

    const/4 v5, 0x0

    :try_start_23
    iput-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v0, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_29

    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverRestoreFail:Z

    :cond_29
    if-eqz p4, :cond_2c

    iget-object v0, v1, Lcom/android/server/backup/restore/RestoreEngine;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V

    goto/16 :goto_2a

    :cond_2a
    const/4 v5, 0x0

    goto :goto_20

    :cond_2b
    move-object/from16 v10, p3

    move/from16 p5, v4

    const/4 v5, 0x0

    const-wide/16 v25, 0x0

    :cond_2c
    :goto_20
    if-nez v4, :cond_30

    iget-wide v6, v2, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v8, 0x1ff

    add-long/2addr v6, v8

    const-wide/16 v8, -0x200

    and-long/2addr v6, v8

    :goto_21
    cmp-long v0, v6, v25

    if-lez v0, :cond_2f

    array-length v0, v10

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-lez v0, :cond_2d

    array-length v0, v10

    :goto_22
    const/4 v9, 0x0

    goto :goto_23

    :cond_2d
    long-to-int v0, v6

    goto :goto_22

    :goto_23
    invoke-virtual {v3, v10, v9, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    int-to-long v8, v0

    cmp-long v0, v8, v25

    if-gtz v0, :cond_2e

    goto :goto_24

    :cond_2e
    sub-long/2addr v6, v8

    goto :goto_21

    :cond_2f
    :goto_24
    sget-object v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_30

    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverRestoreFail:Z
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_23} :catch_1c

    :cond_30
    :goto_25
    move-object v15, v2

    goto :goto_29

    :catch_1c
    :goto_26
    sget-object v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_31

    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverRestoreFail:Z

    :cond_31
    :goto_27
    move-object v15, v5

    goto :goto_29

    :goto_28
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "io exception on restore socket read: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_32

    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverRestoreFail:Z

    :cond_32
    iget-object v0, v1, Lcom/android/server/backup/restore/RestoreEngine;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, -0x3

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_27

    :goto_29
    if-nez v15, :cond_33

    invoke-virtual {v1}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V

    if-eqz p2, :cond_33

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move/from16 v2, v24

    invoke-virtual {v1, v0, v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    :cond_33
    :goto_2a
    return-void
.end method

.method public final setUpPipes()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesClosed:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final shouldForceClearAppDataOnFullRestore(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "packages_to_clear_data_before_full_restore"

    iget p0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final shouldSkipReadOnlyDir(Lcom/android/server/backup/FileMetadata;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v2, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget v0, p1, Lcom/android/server/backup/FileMetadata;->type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->mode:J

    sget v0, Landroid/system/OsConstants;->S_IWUSR:I

    int-to-long v4, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Skipping restore of "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v0, " and its contents as read-only dirs are currently not supported."

    const-string v2, "BackupManagerService"

    invoke-static {p0, p1, v0, v2}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    const/4 p0, 0x0

    return p0
.end method

.method public final tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v2

    iget-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {p2}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    move-result-wide v3

    new-instance v5, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;

    iget-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    invoke-direct {v5, v0, p2, v2}, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/internal/LifecycleOperationStorage;I)V

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    iget-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v1, "system"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    invoke-direct {p2, v1, v2, v0}, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;-><init>(Landroid/app/IBackupAgent;ILcom/android/server/backup/UserBackupManagerService;)V

    new-instance v1, Ljava/lang/Thread;

    const-string/jumbo v2, "restore-sys-finished-runner"

    invoke-direct {v1, p2, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    invoke-interface {p2, v2, v1}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V

    :goto_0
    iget-object p2, v5, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {p2}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    move-result-wide v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p2, v5, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    :try_start_2
    const-string p2, "AdbRestoreFinishedLatch"

    const-string v1, "Interrupted!"

    invoke-static {p2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    iget-object p2, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupAgentConnectionManager:Lcom/android/server/backup/BackupAgentConnectionManager;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/android/server/backup/BackupAgentConnectionManager;->unbindAgent(Landroid/content/pm/ApplicationInfo;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    const-string p1, "BackupManagerService"

    const-string/jumbo p2, "Lost app trying to shut down"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    :cond_2
    return-void
.end method

.method public final tearDownPipes()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesClosed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :try_start_1
    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    iput-boolean v2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesClosed:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    const-string v1, "BackupManagerService"

    const-string v2, "Couldn\'t close agent pipes"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
