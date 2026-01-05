.class public final Lcom/android/server/backup/utils/TarBackupReader;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

.field public final mBytesReadListener:Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;

.field public final mInputStream:Ljava/io/InputStream;

.field public mWidgetData:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;Landroid/app/backup/IBackupManagerMonitor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    invoke-direct {p1, p3}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;-><init>(Landroid/app/backup/IBackupManagerMonitor;)V

    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    return-void
.end method

.method public static extractLine([BI[Ljava/lang/String;)I
    .locals 4

    array-length v0, p0

    if-ge p1, v0, :cond_2

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-byte v2, p0, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/String;

    sub-int v2, v1, p1

    invoke-direct {v0, p0, p1, v2}, Ljava/lang/String;-><init>([BII)V

    const/4 p0, 0x0

    aput-object v0, p2, p0

    add-int/lit8 v1, v1, 0x1

    return v1

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Incomplete data"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static extractRadix(III[B)J
    .locals 5

    add-int/2addr p1, p0

    const-wide/16 v0, 0x0

    :goto_0
    if-ge p0, p1, :cond_2

    aget-byte v2, p3, p0

    if-eqz v2, :cond_2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0x30

    if-lt v2, v3, :cond_1

    add-int/lit8 v3, p2, 0x2f

    if-gt v2, v3, :cond_1

    int-to-long v3, p2

    mul-long/2addr v3, v0

    add-int/lit8 v2, v2, -0x30

    int-to-long v0, v2

    add-long/2addr v0, v3

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Invalid number in header: \'"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char p3, v2

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p3, "\' for radix "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    return-wide v0
.end method

.method public static readExactly(Ljava/io/InputStream;[BI)I
    .locals 2

    if-lez p2, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    sub-int v1, p2, v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "size must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;ILcom/android/server/backup/utils/BackupEligibilityRules;Landroid/content/Context;Z)Lcom/android/server/backup/restore/RestorePolicy;
    .locals 20

    move/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    const-string/jumbo v5, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    sget-object v6, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    move-object/from16 v7, p0

    iget-object v7, v7, Lcom/android/server/backup/utils/TarBackupReader;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const-string v8, "BackupManagerService"

    const-string/jumbo v9, "Restore manifest signatures do not match installed application for "

    const-string v10, "Data requires newer version "

    const-string v11, "Data version "

    const-string/jumbo v12, "Package "

    const-string/jumbo v13, "Restore manifest from "

    sget-object v14, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    if-nez v2, :cond_0

    return-object v14

    :cond_0
    :try_start_0
    iget-object v15, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v16, v14

    const/high16 v14, 0x8000000

    move-object/from16 v17, v6

    move-object/from16 v6, p1

    :try_start_1
    invoke-virtual {v6, v15, v14, v3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v14, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {v4, v14}, Lcom/android/server/backup/utils/BackupEligibilityRules;->isAppBackupAllowed(Landroid/content/pm/ApplicationInfo;)Z

    move-result v14

    if-nez v14, :cond_2

    if-eqz p8, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " but allowBackup=false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x27

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v7, v2, v6, v3, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    goto/16 :goto_3

    :cond_2
    :goto_0
    iget-object v13, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v13

    if-eqz v13, :cond_4

    iget-object v13, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v13, :cond_3

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is system level with no agent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x26

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v7, v2, v6, v3, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    goto/16 :goto_3

    :cond_4
    :goto_1
    invoke-virtual {v4, v2, v6}, Lcom/android/server/backup/utils/BackupEligibilityRules;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    const/high16 v4, 0x20000

    and-int/2addr v2, v4

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    if-eqz v2, :cond_5

    :try_start_2
    const-string/jumbo v2, "Package has restoreAnyVersion; taking data"

    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x22

    const/4 v3, 0x3

    const/4 v9, 0x0

    invoke-virtual {v7, v2, v6, v3, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    :goto_2
    move-object v14, v4

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v6}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v13

    move-wide/from16 v18, v13

    iget-wide v13, v1, Lcom/android/server/backup/FileMetadata;->version:J

    cmp-long v2, v18, v13

    if-ltz v2, :cond_6

    const-string/jumbo v2, "Sig + version match; taking data"

    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x23

    const/4 v3, 0x3

    const/4 v9, 0x0

    invoke-virtual {v7, v2, v6, v3, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    goto :goto_2

    :cond_6
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "v_to_u_restore_allowlist"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const-string v2, ""

    :cond_7
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    if-eqz v0, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v1, Lcom/android/server/backup/FileMetadata;->version:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " is newer than installed version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " - requiring apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v14, v17

    goto :goto_4

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v1, Lcom/android/server/backup/FileMetadata;->version:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "; ignoring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "android.app.backup.extra.LOG_OLD_VERSION"

    iget-wide v3, v1, Lcom/android/server/backup/FileMetadata;->version:J

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v9, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v2, 0x24

    const/4 v3, 0x3

    invoke-virtual {v7, v2, v6, v3, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    :goto_3
    move-object/from16 v14, v16

    goto :goto_4

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x25

    const/4 v3, 0x3

    const/4 v9, 0x0

    invoke-virtual {v7, v2, v6, v3, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :goto_4
    move-object/from16 v0, v17

    goto :goto_6

    :catch_0
    move-object/from16 v17, v6

    move-object/from16 v16, v14

    :catch_1
    if-eqz v0, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const-string v4, " not installed; requiring apk in dataset"

    invoke-static {v2, v3, v4, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v14, v17

    goto :goto_5

    :cond_a
    move-object/from16 v14, v16

    :goto_5
    iget-object v2, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "android.app.backup.extra.LOG_POLICY_ALLOW_APKS"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v0, 0x28

    const/4 v3, 0x3

    const/4 v9, 0x0

    invoke-virtual {v7, v0, v9, v3, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    goto :goto_4

    :goto_6
    if-ne v14, v0, :cond_b

    iget-boolean v0, v1, Lcom/android/server/backup/FileMetadata;->hasApk:Z

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Cannot restore package "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const-string v3, " without the matching .apk"

    invoke-static {v0, v2, v3, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/16 v1, 0x29

    const/4 v3, 0x3

    const/4 v9, 0x0

    invoke-virtual {v7, v1, v9, v3, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    :cond_b
    return-object v14
.end method

.method public final getMonitor()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    iget-object p0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-void
.end method

.method public final getWidgetData()[B
    .locals 0

    iget-object p0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    return-object p0
.end method

.method public final readAppManifestAndReturnSignatures(Lcom/android/server/backup/FileMetadata;)[Landroid/content/pm/Signature;
    .locals 13

    const-string/jumbo v0, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const-string v2, "BackupManagerService"

    const-string/jumbo v3, "Unknown restore manifest version "

    const-string v4, "Expected package "

    const-string/jumbo v5, "Missing signature on backed-up package "

    iget-wide v6, p1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v8, 0x10000

    cmp-long v8, v6, v8

    if-gtz v8, :cond_7

    long-to-int v6, v6

    new-array v7, v6, [B

    iget-object p0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    invoke-static {p0, v7, v6}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BI)I

    move-result p0

    int-to-long v8, p0

    iget-wide v10, p1, Lcom/android/server/backup/FileMetadata;->size:J

    cmp-long p0, v8, v10

    if-nez p0, :cond_6

    const/4 p0, 0x1

    new-array v6, p0, [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    :try_start_0
    invoke-static {v7, v8, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    aget-object v12, v6, v8

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    if-ne v12, p0, :cond_5

    invoke-static {v7, v11, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v3

    aget-object v11, v6, v8

    iget-object v12, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {v7, v3, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v3

    aget-object v4, v6, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v11, v4

    iput-wide v11, p1, Lcom/android/server/backup/FileMetadata;->version:J

    invoke-static {v7, v3, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v3

    aget-object v4, v6, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-static {v7, v3, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v3

    aget-object v4, v6, v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    aget-object v4, v6, v8

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    move-object v4, v10

    :goto_0
    iput-object v4, p1, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    invoke-static {v7, v3, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v3

    aget-object v4, v6, v8

    const-string v11, "1"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p1, Lcom/android/server/backup/FileMetadata;->hasApk:Z

    sget-object v4, Lcom/android/server/backup/UserBackupManagerService;->mSplitRestoreFlag:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v4, p0, :cond_1

    invoke-static {v7, v3, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v3

    aget-object p0, v6, v8

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/android/server/backup/FileMetadata;->splitCount:I

    :cond_1
    invoke-static {v7, v3, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result p0

    aget-object v3, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    new-array v4, v3, [Landroid/content/pm/Signature;

    move v5, v8

    :goto_1
    if-ge v5, v3, :cond_2

    invoke-static {v7, p0, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result p0

    new-instance v11, Landroid/content/pm/Signature;

    aget-object v12, v6, v8

    invoke-direct {v11, v12}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v11, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    return-object v4

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const/16 v3, 0x2a

    invoke-virtual {v1, v3, v10, v9, p0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    return-object v10

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " but restore manifest claims "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v3, "android.app.backup.extra.LOG_MANIFEST_PACKAGE_NAME"

    invoke-virtual {p0, v3, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x2b

    invoke-virtual {v1, v3, v10, v9, p0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    return-object v10

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for package "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v3, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    invoke-virtual {p0, v3, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v3, 0x2c

    invoke-virtual {v1, v3, v10, v9, p0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    :goto_2
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "Corrupt restore manifest for package "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {p0, v3, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const/16 p1, 0x2e

    invoke-virtual {v1, p1, v10, v9, p0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    :goto_3
    return-object v10

    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo p1, "Unexpected EOF in manifest"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Restore manifest too big; corrupt? size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readMetadata(Lcom/android/server/backup/FileMetadata;)V
    .locals 12

    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v2, 0x10000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_6

    long-to-int v0, v0

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    invoke-static {v2, v1, v0}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BI)I

    move-result v2

    int-to-long v2, v2

    iget-wide v4, p1, Lcom/android/server/backup/FileMetadata;->size:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v5

    aget-object v6, v3, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/4 v8, 0x3

    const-string/jumbo v9, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    const-string v10, "BackupManagerService"

    const/4 v11, 0x0

    if-ne v6, v2, :cond_4

    invoke-static {v1, v5, v3}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v2

    aget-object v3, v3, v4

    iget-object v4, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v3, Ljava/io/ByteArrayInputStream;

    sub-int/2addr v0, v2

    invoke-direct {v3, v1, v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    const/high16 v4, 0x10000

    if-gt v2, v4, :cond_1

    const v4, 0x1ffed01

    if-eq v1, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Ignoring metadata blob "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " for "

    invoke-static {v1, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto :goto_0

    :cond_0
    new-array v1, v2, [B

    iput-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->read([B)I

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Datum "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " too big; corrupt? size="

    invoke-static {v1, v0, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-wide v1, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Metadata mismatch: package "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " but widget data for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v9, p0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "android.app.backup.extra.LOG_WIDGET_PACKAGE_NAME"

    invoke-virtual {p0, p1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x2f

    invoke-virtual {v7, p1, v11, v8, p0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    return-void

    :cond_4
    const-string/jumbo p0, "Unsupported metadata version "

    invoke-static {v6, p0, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v9, p0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    invoke-virtual {p0, p1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x30

    invoke-virtual {v7, p1, v11, v8, p0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    return-void

    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo p1, "Unexpected EOF in widget data"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Metadata too big; corrupt? size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readPaxExtendedHeader(Lcom/android/server/backup/FileMetadata;)V
    .locals 10

    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v2, 0x8000

    cmp-long v2, v0, v2

    const-string v3, "BackupManagerService"

    if-gtz v2, :cond_8

    const-wide/16 v4, 0x1ff

    add-long/2addr v0, v4

    const/16 v2, 0x9

    shr-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit16 v0, v0, 0x200

    new-array v1, v0, [B

    iget-object p0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    invoke-static {p0, v1, v0}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BI)I

    move-result p0

    if-lt p0, v0, :cond_7

    iget-wide v4, p1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int p0, v4

    const/4 v0, 0x0

    :cond_0
    add-int/lit8 v2, v0, 0x1

    :goto_0
    if-ge v2, p0, :cond_1

    aget-byte v4, v1, v2

    const/16 v5, 0x20

    if-eq v4, v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ge v2, p0, :cond_6

    sub-int v4, v2, v0

    const/16 v5, 0xa

    invoke-static {v0, v4, v5, v1}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix(III[B)J

    move-result-wide v4

    long-to-int v4, v4

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v0, v4

    add-int/lit8 v4, v0, -0x1

    add-int/lit8 v2, v2, 0x2

    :goto_1
    aget-byte v6, v1, v2

    const/16 v7, 0x3d

    if-eq v6, v7, :cond_2

    if-gt v2, v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-gt v2, v4, :cond_5

    new-instance v6, Ljava/lang/String;

    sub-int v7, v2, v5

    const-string/jumbo v8, "UTF-8"

    invoke-direct {v6, v1, v5, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance v7, Ljava/lang/String;

    add-int/lit8 v9, v2, 0x1

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v7, v1, v9, v4, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const-string/jumbo v2, "path"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v7, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string/jumbo v2, "size"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/server/backup/FileMetadata;->size:J

    goto :goto_2

    :cond_4
    const-string/jumbo v2, "Unhandled pax key: "

    invoke-static {v5, v2, v3}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-lt v0, p0, :cond_0

    return-void

    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid pax declaration"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid pax data"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo p1, "Unable to read full pax header"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Suspiciously large pax header size "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " - aborting"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Sanity failure: pax header size "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readTarHeaders()Lcom/android/server/backup/FileMetadata;
    .locals 19

    move-object/from16 v0, p0

    const-string/jumbo v1, "US-ASCII"

    const-string v2, "BackupManagerService"

    const-string/jumbo v3, "Unknown entity type "

    const-string/jumbo v4, "Unknown tar entity type: "

    const-string v5, "Illegal semantic path in non-manifest "

    const-string v6, "Illegal semantic path in "

    const-string v7, "File in shared storage: "

    const/16 v8, 0x200

    new-array v9, v8, [B

    iget-object v10, v0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    invoke-static {v10, v9, v8}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BI)I

    move-result v10

    const-string/jumbo v11, "Unable to read full block header"

    const/4 v12, 0x0

    if-nez v10, :cond_0

    move v10, v12

    goto :goto_0

    :cond_0
    if-lt v10, v8, :cond_11

    const/4 v10, 0x1

    :goto_0
    if-eqz v10, :cond_10

    :try_start_0
    new-instance v10, Lcom/android/server/backup/FileMetadata;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    const/16 v14, 0x7c

    const/16 v15, 0xc

    const/16 v13, 0x8

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    invoke-static {v14, v15, v13, v9}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix(III[B)J

    move-result-wide v5

    iput-wide v5, v10, Lcom/android/server/backup/FileMetadata;->size:J

    const/16 v5, 0x88

    invoke-static {v5, v15, v13, v9}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix(III[B)J

    move-result-wide v5

    iput-wide v5, v10, Lcom/android/server/backup/FileMetadata;->mtime:J

    const/16 v5, 0x64

    invoke-static {v5, v13, v13, v9}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix(III[B)J

    move-result-wide v13

    iput-wide v13, v10, Lcom/android/server/backup/FileMetadata;->mode:J

    const/16 v6, 0x159

    move v13, v6

    :goto_1
    const/16 v14, 0x1f4

    if-ge v13, v14, :cond_1

    aget-byte v14, v9, v13

    if-eqz v14, :cond_1

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    new-instance v14, Ljava/lang/String;

    sub-int/2addr v13, v6

    invoke-direct {v14, v9, v6, v13, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v14, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    move v6, v12

    :goto_2
    if-ge v6, v5, :cond_2

    aget-byte v13, v9, v6

    if-eqz v13, :cond_2

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v9, v12, v6, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v6, 0x2f

    if-lez v1, :cond_4

    iget-object v1, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_3
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    :cond_4
    const/16 v1, 0x9c

    aget-byte v5, v9, v1

    const/16 v13, 0x78

    if-ne v5, v13, :cond_8

    invoke-virtual {v0, v10}, Lcom/android/server/backup/utils/TarBackupReader;->readPaxExtendedHeader(Lcom/android/server/backup/FileMetadata;)V

    iget-object v0, v0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    invoke-static {v0, v9, v8}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BI)I

    move-result v0

    if-nez v0, :cond_5

    move v0, v12

    goto :goto_4

    :cond_5
    if-lt v0, v8, :cond_7

    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_6

    aget-byte v5, v9, v1

    goto :goto_5

    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad or missing pax header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_5
    if-eqz v5, :cond_10

    const/16 v0, 0x30

    if-eq v5, v0, :cond_a

    const/16 v0, 0x35

    if-ne v5, v0, :cond_9

    const/4 v0, 0x2

    iput v0, v10, Lcom/android/server/backup/FileMetadata;->type:I

    iget-wide v0, v10, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_b

    const-string v0, "Directory entry with nonzero size in header"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v3, v10, Lcom/android/server/backup/FileMetadata;->size:J

    goto :goto_6

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/4 v0, 0x1

    iput v0, v10, Lcom/android/server/backup/FileMetadata;->type:I

    :cond_b
    :goto_6
    const-string/jumbo v0, "shared/"

    iget-object v1, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-virtual {v0, v12, v1, v12, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v0, "com.android.sharedstoragebackup"

    iput-object v0, v10, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const-string/jumbo v0, "shared"

    iput-object v0, v10, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_c
    const-string/jumbo v0, "apps/"

    iget-object v1, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-virtual {v0, v12, v1, v12, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_e

    iget-object v1, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v1, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    iget-object v1, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const/16 v16, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v1, "_manifest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v1, "_meta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_d

    iget-object v1, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v1, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    iget-object v1, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const/16 v16, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    return-object v10

    :cond_d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v3, v18

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_f
    return-object v10

    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Parse error in header: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :cond_10
    const/4 v0, 0x0

    return-object v0

    :cond_11
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final skipTarPadding(J)V
    .locals 2

    const-wide/16 v0, 0x200

    add-long/2addr p1, v0

    rem-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    long-to-int p1, p1

    rsub-int p1, p1, 0x200

    new-array p2, p1, [B

    iget-object p0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    invoke-static {p0, p2, p1}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BI)I

    move-result p0

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo p1, "Unexpected EOF in padding"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method
