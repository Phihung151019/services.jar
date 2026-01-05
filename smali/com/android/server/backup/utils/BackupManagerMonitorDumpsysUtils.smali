.class public final Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final LOGS_RETENTION_PERIOD_MILLISEC:J


# instance fields
.field public mIsAfterRetentionPeriod:Z

.field public mIsAfterRetentionPeriodCached:Z

.field public mIsFileLargerThanSizeLimit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->LOGS_RETENTION_PERIOD_MILLISEC:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriodCached:Z

    iput-boolean v0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsFileLargerThanSizeLimit:Z

    return-void
.end method

.method public static addAgentLogsIfAvailable(Landroid/os/Bundle;Ljava/io/PrintWriter;)V
    .locals 6

    const-string/jumbo v0, "android.app.backup.extra.LOG_AGENT_LOGGING_RESULTS"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    const-string v1, "\tAgent Logs:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;

    invoke-virtual {v1}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->getFailCount()I

    move-result v3

    invoke-virtual {v1}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->getSuccessCount()I

    move-result v4

    add-int/2addr v4, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\t\tData Type: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->getDataType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\t\t\tItem restored: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->getSuccessCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->getErrors()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\t\t\tAgent Error - Category: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", Count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static addExtrasIfAvailable(Landroid/os/Bundle;Ljava/io/PrintWriter;)V
    .locals 5

    const-string/jumbo v0, "android.app.backup.extra.LOG_EVENT_ID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_2

    const-string/jumbo v1, "android.app.backup.extra.LOG_RESTORE_ANYWAY"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\t\tPackage supports RestoreAnyVersion: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v1, "android.app.backup.extra.LOG_RESTORE_VERSION"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\t\tPackage version on source: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v1, "android.app.backup.extra.LOG_EVENT_PACKAGE_FULL_VERSION"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\t\tPackage version on target: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_4

    const-string/jumbo v0, "android.app.backup.extra.V_TO_U_DENYLIST"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\t\tV to U Denylist : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v0, "android.app.backup.extra.V_TO_U_ALLOWLIST"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\t\tV to U Allowllist : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public static getBMMEventsFile()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "backup"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "bmmevents.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getId(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "Unknown log event ID: "

    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "LOG_EVENT_ID_FULL_BACKUP_AGENT_PIPE_BROKEN"

    return-object p0

    :pswitch_2
    const-string p0, "Failed to read data from Transport"

    return-object p0

    :pswitch_3
    const-string p0, "Agent failure during restore"

    return-object p0

    :pswitch_4
    const-string p0, "Failed to send data to agent"

    return-object p0

    :pswitch_5
    const-string p0, "Agent crashed before restore data is streamed"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "Unable to create Agent"

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "Restore data does not belong to package"

    return-object p0

    :pswitch_8
    const-string/jumbo p0, "Pkg accepted for restore"

    return-object p0

    :pswitch_9
    const-string/jumbo p0, "Skip restore at install"

    return-object p0

    :pswitch_a
    const-string p0, "Invoked restore at install"

    return-object p0

    :pswitch_b
    const-string/jumbo p0, "V to U restore lists"

    return-object p0

    :pswitch_c
    const-string/jumbo p0, "V to U restore pkg not eligible"

    return-object p0

    :pswitch_d
    const-string/jumbo p0, "V to U restore pkg eligible"

    return-object p0

    :pswitch_e
    const-string p0, "Agent failure"

    return-object p0

    :pswitch_f
    const-string/jumbo p0, "Restore complete"

    return-object p0

    :pswitch_10
    const-string/jumbo p0, "Start package restore"

    return-object p0

    :pswitch_11
    const-string/jumbo p0, "Transport error full restore"

    return-object p0

    :pswitch_12
    const-string p0, "Full agent error"

    return-object p0

    :pswitch_13
    const-string/jumbo p0, "No feeder thread"

    return-object p0

    :pswitch_14
    const-string/jumbo p0, "Transport error KV restore"

    return-object p0

    :pswitch_15
    const-string/jumbo p0, "Package restore finished"

    return-object p0

    :pswitch_16
    const-string p0, "KV agent error"

    return-object p0

    :pswitch_17
    const-string/jumbo p0, "No next restore target"

    return-object p0

    :pswitch_18
    const-string p0, "Full restore"

    return-object p0

    :pswitch_19
    const-string p0, "KV restore"

    return-object p0

    :pswitch_1a
    const-string/jumbo p0, "Unknown restore type"

    return-object p0

    :pswitch_1b
    const-string p0, "Cannot get next package name"

    return-object p0

    :pswitch_1c
    const-string/jumbo p0, "Transport error during start restore"

    return-object p0

    :pswitch_1d
    const-string/jumbo p0, "Start restore at install"

    return-object p0

    :pswitch_1e
    const-string/jumbo p0, "Start system restore"

    return-object p0

    :pswitch_1f
    const-string p0, "Agent logging results"

    return-object p0

    :pswitch_20
    const-string/jumbo p0, "Transport non-incremental backup required"

    return-object p0

    :pswitch_21
    const-string/jumbo p0, "Transport is null"

    return-object p0

    :pswitch_22
    const-string/jumbo p0, "No packages"

    return-object p0

    :pswitch_23
    const-string/jumbo p0, "Widget unknown version"

    return-object p0

    :pswitch_24
    const-string/jumbo p0, "Widget metadata mismatch"

    return-object p0

    :pswitch_25
    const-string p0, "Corrupt manifest"

    return-object p0

    :pswitch_26
    const-string p0, "Full restore timeout"

    return-object p0

    :pswitch_27
    const-string/jumbo p0, "Unknown version"

    return-object p0

    :pswitch_28
    const-string p0, "Expected different package"

    return-object p0

    :pswitch_29
    const-string/jumbo p0, "Missing signature"

    return-object p0

    :pswitch_2a
    const-string p0, "Cannot restore without APK"

    return-object p0

    :pswitch_2b
    const-string p0, "APK not installed"

    return-object p0

    :pswitch_2c
    const-string p0, "Full restore allow backup false"

    return-object p0

    :pswitch_2d
    const-string/jumbo p0, "System app no agent"

    return-object p0

    :pswitch_2e
    const-string p0, "Full restore signature mismatch"

    return-object p0

    :pswitch_2f
    const-string/jumbo p0, "Version of backup older"

    return-object p0

    :pswitch_30
    const-string/jumbo p0, "Versions match"

    return-object p0

    :pswitch_31
    const-string/jumbo p0, "Restore any version"

    return-object p0

    :pswitch_32
    const-string p0, "Key-value restore timeout"

    return-object p0

    :pswitch_33
    const-string p0, "Can\'t find agent"

    return-object p0

    :pswitch_34
    const-string/jumbo p0, "Signature mismatch"

    return-object p0

    :pswitch_35
    const-string p0, "App has no agent"

    return-object p0

    :pswitch_36
    const-string/jumbo p0, "Restore version higher"

    return-object p0

    :pswitch_37
    const-string/jumbo p0, "Package not present"

    return-object p0

    :pswitch_38
    const-string/jumbo p0, "Lost transport"

    return-object p0

    :pswitch_39
    const-string/jumbo p0, "PM agent has no metadata"

    return-object p0

    :pswitch_3a
    const-string/jumbo p0, "No PM metadata received"

    return-object p0

    :pswitch_3b
    const-string/jumbo p0, "No restore metadata available"

    return-object p0

    :pswitch_3c
    const-string p0, "Key-value backup cancel"

    return-object p0

    :pswitch_3d
    const-string p0, "Exception full backup"

    return-object p0

    :pswitch_3e
    const-string/jumbo p0, "Quota hit preflight"

    return-object p0

    :pswitch_3f
    const-string p0, "Error preflight"

    return-object p0

    :pswitch_40
    const-string/jumbo p0, "Package transport not present"

    return-object p0

    :pswitch_41
    const-string p0, "Device not provisioned"

    return-object p0

    :pswitch_42
    const-string p0, "Backup disabled"

    return-object p0

    :pswitch_43
    const-string/jumbo p0, "Package not found"

    return-object p0

    :pswitch_44
    const-string/jumbo p0, "Package stopped"

    return-object p0

    :pswitch_45
    const-string/jumbo p0, "Package key-value participant"

    return-object p0

    :pswitch_46
    const-string/jumbo p0, "Package ineligible"

    return-object p0

    :pswitch_47
    const-string/jumbo p0, "No data to send"

    return-object p0

    :pswitch_48
    const-string p0, "Illegal key"

    return-object p0

    :pswitch_49
    const-string p0, "Full backup cancel"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_49
        :pswitch_48
        :pswitch_0
        :pswitch_47
        :pswitch_0
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_0
        :pswitch_3e
        :pswitch_3d
        :pswitch_0
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_0
        :pswitch_0
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static isDateAfterNMillisec(JJJ)Z
    .locals 2

    cmp-long v0, p0, p2

    const/4 v1, 0x1

    if-lez v0, :cond_0

    return v1

    :cond_0
    sub-long/2addr p2, p0

    cmp-long p0, p2, p4

    if-ltz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final deleteExpiredBMMEvents()Z
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->isAfterRetentionPeriod()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getBMMEventsFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "BackupManagerMonitorDumpsysUtils"

    if-eqz p0, :cond_0

    :try_start_1
    const-string p0, "Deleted expired BMM Events"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string/jumbo p0, "Unable to delete expired BMM Events"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0

    :catch_0
    :cond_2
    return v0
.end method

.method public getBMMEventsFileSizeLimit()J
    .locals 2

    const-wide/32 v0, 0x186a000

    return-wide v0
.end method

.method public getRetentionPeriodInMillisec()J
    .locals 2

    sget-wide v0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->LOGS_RETENTION_PERIOD_MILLISEC:J

    return-wide v0
.end method

.method public getSetUpDate()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getSetUpDateFile()Ljava/io/File;

    move-result-object p0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p0, Ljava/io/InputStreamReader;

    invoke-direct {p0, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_1

    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_1
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception p0

    :try_start_a
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_3
    :try_start_b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    :try_start_c
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "An error occurred while reading the date: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "BackupManagerMonitorDumpsysUtils"

    invoke-static {p0, v0, v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string p0, "Could not retrieve setup date"

    return-object p0
.end method

.method public getSetUpDateFile()Ljava/io/File;
    .locals 2

    new-instance p0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "backup"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "initialSetupTimestamp.txt"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public isAfterRetentionPeriod()Z
    .locals 8

    iget-boolean v0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriodCached:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriod:Z

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getSetUpDateFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriod:Z

    iput-boolean v1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriodCached:Z

    return v0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getSetUpDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getRetentionPeriodInMillisec()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->isDateAfterNMillisec(JJJ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriod:Z

    iput-boolean v1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriodCached:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    iput-boolean v1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriod:Z

    iput-boolean v1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriodCached:Z

    return v1
.end method

.method public final parseBackupManagerMonitorRestoreEventForDumpsys(Landroid/os/Bundle;)V
    .locals 14

    const-string/jumbo v0, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    const-string v1, "\tPackage: "

    const-string/jumbo v2, "["

    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->isAfterRetentionPeriod()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_8

    :cond_0
    const-string/jumbo v3, "android.app.backup.extra.OPERATION_TYPE"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    goto/16 :goto_8

    :cond_1
    const-string/jumbo v3, "android.app.backup.extra.LOG_EVENT_ID"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "BackupManagerMonitorDumpsysUtils"

    if-eqz v5, :cond_a

    const-string/jumbo v5, "android.app.backup.extra.LOG_EVENT_CATEGORY"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_9

    :cond_2
    invoke-static {}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getBMMEventsFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->recordSetUpTimestamp()V

    :cond_3
    iget-boolean v8, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsFileLargerThanSizeLimit:Z

    const/4 v9, 0x0

    if-nez v8, :cond_5

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getBMMEventsFileSizeLimit()J

    move-result-wide v12

    cmp-long v8, v10, v12

    if-lez v8, :cond_4

    move v8, v4

    goto :goto_0

    :cond_4
    move v8, v9

    :goto_0
    iput-boolean v8, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsFileLargerThanSizeLimit:Z

    :cond_5
    iget-boolean p0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsFileLargerThanSizeLimit:Z

    if-eqz p0, :cond_6

    goto/16 :goto_8

    :cond_6
    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v7, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v7, p0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v5, 0x34

    if-ne v3, v5, :cond_8

    const-string/jumbo v5, "android.app.backup.extra.LOG_AGENT_LOGGING_RESULTS"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    xor-int/lit8 v9, v5, 0x1

    :cond_7
    if-nez v9, :cond_8

    :try_start_3
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_7

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_8
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v8, v9}, Ljava/util/Date;-><init>(J)V

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v5, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "] - "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_9
    :goto_2
    invoke-static {p1, v7}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->addAgentLogsIfAvailable(Landroid/os/Bundle;Ljava/io/PrintWriter;)V

    invoke-static {p1, v7}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->addExtrasIfAvailable(Landroid/os/Bundle;Ljava/io/PrintWriter;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :goto_3
    :try_start_7
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    :try_start_8
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_5
    :try_start_9
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception p0

    :try_start_a
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :goto_7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "IO Exception when writing BMM events to file: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    return-void

    :cond_a
    :goto_9
    const-string p0, "Event id and category are not optional fields."

    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public recordSetUpTimestamp()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getSetUpDateFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p0, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->println(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    :try_start_6
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "An error occurred while recording the setup date: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BackupManagerMonitorDumpsysUtils"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
