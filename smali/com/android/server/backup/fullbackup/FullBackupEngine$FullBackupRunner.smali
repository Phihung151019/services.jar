.class public final Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final isDisableDataExtractionRules:Z

.field public final mAgent:Landroid/app/IBackupAgent;

.field public final mFilesDir:Ljava/io/File;

.field public final mIncludeApks:Z

.field public final mPackage:Landroid/content/pm/PackageInfo;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPipe:Landroid/os/ParcelFileDescriptor;

.field public final mSmartSwitchBackupPath:[Ljava/lang/String;

.field public final mToken:I

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/fullbackup/FullBackupEngine;Lcom/android/server/backup/UserBackupManagerService;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZ[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->isDisableDataExtractionRules:Z

    iget v0, p2, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iput v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mUserId:I

    iget-object p1, p1, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object p1, p1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iput-object p4, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mAgent:Landroid/app/IBackupAgent;

    invoke-virtual {p5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    iput p6, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mToken:I

    iput-boolean p7, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mIncludeApks:Z

    iget-object p1, p2, Lcom/android/server/backup/UserBackupManagerService;->mDataDir:Ljava/io/File;

    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mFilesDir:Ljava/io/File;

    iput-object p8, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mSmartSwitchBackupPath:[Ljava/lang/String;

    iget-boolean p1, p2, Lcom/android/server/backup/UserBackupManagerService;->mDisableDataExtractionRule:Z

    iput-boolean p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->isDisableDataExtractionRules:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "BackupManagerService"

    const-string v3, "Error running full backup for "

    const-string/jumbo v4, "Remote agent vanished during full backup of "

    const-string v0, "Calling doFullBackup() on "

    const/4 v5, 0x1

    :try_start_0
    new-instance v6, Landroid/app/backup/FullBackupDataOutput;

    iget-object v7, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    iget-object v8, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget v8, v8, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTransportFlags:I

    const-wide/16 v9, -0x1

    invoke-direct {v6, v7, v9, v10, v8}, Landroid/app/backup/FullBackupDataOutput;-><init>(Landroid/os/ParcelFileDescriptor;JI)V

    new-instance v11, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;

    iget-object v7, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v11, v6, v7}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;-><init>(Landroid/app/backup/FullBackupDataOutput;Landroid/content/pm/PackageManager;)V

    iget-object v6, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v7, "com.android.sharedstoragebackup"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iget-object v8, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v9, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mIncludeApks:Z

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v8, 0x1

    const/4 v12, 0x0

    if-eqz v10, :cond_0

    move v10, v5

    goto :goto_0

    :cond_0
    move v10, v12

    :goto_0
    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_1

    move v8, v5

    goto :goto_1

    :cond_1
    move v8, v12

    :goto_1
    if-eqz v9, :cond_3

    if-nez v7, :cond_3

    if-eqz v10, :cond_2

    if-eqz v8, :cond_3

    :cond_2
    move/from16 v16, v5

    goto :goto_2

    :cond_3
    move/from16 v16, v12

    :goto_2
    if-nez v7, :cond_4

    new-instance v13, Ljava/io/File;

    iget-object v8, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mFilesDir:Ljava/io/File;

    const-string/jumbo v9, "_manifest"

    invoke-direct {v13, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v12, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v14, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mFilesDir:Ljava/io/File;

    const/4 v15, 0x0

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->backupManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Z)V

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    iget v8, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mUserId:I

    invoke-static {v6, v8}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v8

    if-eqz v8, :cond_4

    array-length v9, v8

    if-lez v9, :cond_4

    new-instance v9, Ljava/io/File;

    iget-object v10, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mFilesDir:Ljava/io/File;

    const-string/jumbo v12, "_meta"

    invoke-direct {v9, v10, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v10, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v12, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mFilesDir:Ljava/io/File;

    invoke-virtual {v11, v10, v9, v12, v8}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->backupWidget(Landroid/content/pm/PackageInfo;Ljava/io/File;Ljava/io/File;[B)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    goto/16 :goto_9

    :cond_4
    :goto_3
    if-eqz v16, :cond_5

    iget-object v8, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v11, v8}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->backupApk(Landroid/content/pm/PackageInfo;)V

    iget v8, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mUserId:I

    iget-object v9, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v11, v8, v9}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->backupObb(ILandroid/content/pm/PackageInfo;)V

    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_6

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v0, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iget-object v6, v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-wide v7, v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mSharedBackupAgentTimeoutMillis:J

    monitor-exit v6

    :goto_4
    move-wide v11, v7

    goto :goto_5

    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw v0

    :cond_6
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v0, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    move-result-wide v7

    goto :goto_4

    :goto_5
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v9, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v10, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mToken:I

    iget-object v13, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTimeoutMonitor:Lcom/android/server/backup/BackupRestoreTask;

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mSmartSwitchBackupPath:[Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mAgent:Landroid/app/IBackupAgent;

    iget-boolean v6, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->isDisableDataExtractionRules:Z

    invoke-interface {v0, v6}, Landroid/app/IBackupAgent;->doDisableDataExtractionRules(Z)V

    iget-object v7, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mAgent:Landroid/app/IBackupAgent;

    iget-object v8, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-wide v9, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mQuota:J

    iget v11, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mToken:I

    iget-object v6, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v12, v6, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    iget v13, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTransportFlags:I

    iget-object v14, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mSmartSwitchBackupPath:[Ljava/lang/String;

    invoke-interface/range {v7 .. v14}, Landroid/app/IBackupAgent;->doFullBackupPath(Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;I[Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    iget-object v6, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mAgent:Landroid/app/IBackupAgent;

    iget-object v7, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-wide v8, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mQuota:J

    iget v10, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mToken:I

    iget-object v11, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v11, v11, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    iget v12, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTransportFlags:I

    invoke-interface/range {v6 .. v12}, Landroid/app/IBackupAgent;->doFullBackup(Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_6
    :try_start_3
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    return-void

    :goto_7
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_8

    iput-boolean v5, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    :goto_8
    :try_start_5
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_a

    :goto_9
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_8

    iput-boolean v5, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_8

    :catch_2
    :goto_a
    return-void

    :goto_b
    :try_start_7
    iget-object v1, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    throw v0
.end method
