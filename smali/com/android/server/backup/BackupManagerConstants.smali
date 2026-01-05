.class public final Lcom/android/server/backup/BackupManagerConstants;
.super Landroid/util/KeyValueSettingObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final BACKUP_FINISHED_NOTIFICATION_RECEIVERS:Ljava/lang/String; = "backup_finished_notification_receivers"

.field public static final DEFAULT_BACKUP_FINISHED_NOTIFICATION_RECEIVERS:Ljava/lang/String; = ""

.field public static final DEFAULT_FULL_BACKUP_INTERVAL_MILLISECONDS:J = 0x5265c00L

.field public static final DEFAULT_FULL_BACKUP_REQUIRED_NETWORK_TYPE:I = 0x2

.field public static final DEFAULT_FULL_BACKUP_REQUIRE_CHARGING:Z = true

.field public static final DEFAULT_KEY_VALUE_BACKUP_FUZZ_MILLISECONDS:J = 0x927c0L

.field public static final DEFAULT_KEY_VALUE_BACKUP_INTERVAL_MILLISECONDS:J = 0xdbba00L

.field public static final DEFAULT_KEY_VALUE_BACKUP_REQUIRED_NETWORK_TYPE:I = 0x1

.field public static final DEFAULT_KEY_VALUE_BACKUP_REQUIRE_CHARGING:Z = true

.field public static final DEFAULT_WAKELOCK_TIMEOUT_MILLIS:J = 0x1b7740L

.field public static final FULL_BACKUP_INTERVAL_MILLISECONDS:Ljava/lang/String; = "full_backup_interval_milliseconds"

.field public static final FULL_BACKUP_REQUIRED_NETWORK_TYPE:Ljava/lang/String; = "full_backup_required_network_type"

.field public static final FULL_BACKUP_REQUIRE_CHARGING:Ljava/lang/String; = "full_backup_require_charging"

.field public static final KEY_VALUE_BACKUP_FUZZ_MILLISECONDS:Ljava/lang/String; = "key_value_backup_fuzz_milliseconds"

.field public static final KEY_VALUE_BACKUP_INTERVAL_MILLISECONDS:Ljava/lang/String; = "key_value_backup_interval_milliseconds"

.field public static final KEY_VALUE_BACKUP_REQUIRED_NETWORK_TYPE:Ljava/lang/String; = "key_value_backup_required_network_type"

.field public static final KEY_VALUE_BACKUP_REQUIRE_CHARGING:Ljava/lang/String; = "key_value_backup_require_charging"

.field public static final WAKELOCK_TIMEOUT_MILLIS:Ljava/lang/String; = "wakelock_timeout_millis"


# instance fields
.field public mBackupFinishedNotificationReceivers:[Ljava/lang/String;

.field public mFullBackupIntervalMilliseconds:J

.field public mFullBackupRequireCharging:Z

.field public mFullBackupRequiredNetworkType:I

.field public mKeyValueBackupFuzzMilliseconds:J

.field public mKeyValueBackupIntervalMilliseconds:J

.field public mKeyValueBackupRequireCharging:Z

.field public mKeyValueBackupRequiredNetworkType:I

.field public mWakelockTimeoutMillis:J


# virtual methods
.method public final declared-synchronized getFullBackupIntervalMilliseconds()J
    .locals 5

    const-string/jumbo v0, "getFullBackupIntervalMilliseconds(...) returns "

    monitor-enter p0

    :try_start_0
    const-string v1, "BackupManagerConstants"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupIntervalMilliseconds:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupIntervalMilliseconds:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getKeyValueBackupIntervalMilliseconds()J
    .locals 5

    const-string/jumbo v0, "getKeyValueBackupIntervalMilliseconds(...) returns "

    monitor-enter p0

    :try_start_0
    const-string v1, "BackupManagerConstants"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupIntervalMilliseconds:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupIntervalMilliseconds:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getSettingValue(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/content/ContentResolver;->getUserId()I

    move-result p0

    const-string/jumbo v0, "backup_manager_constants"

    invoke-static {p1, v0, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized update(Landroid/util/KeyValueListParser;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "key_value_backup_interval_milliseconds"

    const-wide/32 v1, 0xdbba00

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupIntervalMilliseconds:J

    const-string/jumbo v0, "key_value_backup_fuzz_milliseconds"

    const-wide/32 v1, 0x927c0

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupFuzzMilliseconds:J

    const-string/jumbo v0, "key_value_backup_require_charging"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupRequireCharging:Z

    const-string/jumbo v0, "key_value_backup_required_network_type"

    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupRequiredNetworkType:I

    const-string/jumbo v0, "full_backup_interval_milliseconds"

    const-wide/32 v2, 0x5265c00

    invoke-virtual {p1, v0, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupIntervalMilliseconds:J

    const-string/jumbo v0, "full_backup_require_charging"

    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupRequireCharging:Z

    const-string/jumbo v0, "full_backup_required_network_type"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupRequiredNetworkType:I

    const-string/jumbo v0, "backup_finished_notification_receivers"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mBackupFinishedNotificationReceivers:[Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mBackupFinishedNotificationReceivers:[Ljava/lang/String;

    :goto_0
    const-string/jumbo v0, "wakelock_timeout_millis"

    const-wide/32 v1, 0x1b7740

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mWakelockTimeoutMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
