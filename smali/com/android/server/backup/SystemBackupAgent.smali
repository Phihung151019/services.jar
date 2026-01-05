.class public Lcom/android/server/backup/SystemBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final WALLPAPER_IMAGE:Ljava/lang/String;

.field public static final WALLPAPER_INFO:Ljava/lang/String;

.field public static final sEligibleHelpersForNonSystemUser:Ljava/util/Set;

.field public static final sEligibleHelpersForProfileUser:Ljava/util/Set;


# instance fields
.field public mIsProfileUser:Z

.field public mLogger:Landroid/app/backup/BackupRestoreEventLogger;

.field public mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "wallpaper"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v2, "wallpaper_info.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    const-string/jumbo v5, "companion"

    const-string/jumbo v6, "app_gender"

    const-string/jumbo v1, "permissions"

    const-string/jumbo v2, "notifications"

    const-string/jumbo v3, "account_sync_settings"

    const-string/jumbo v4, "app_locales"

    const-string/jumbo v7, "system_gender"

    const-string/jumbo v8, "display"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->sEligibleHelpersForProfileUser:Ljava/util/Set;

    const-string/jumbo v3, "preferred_activities"

    const-string/jumbo v4, "shortcut_manager"

    const-string/jumbo v1, "account_manager"

    const-string/jumbo v2, "usage_stats"

    const-string/jumbo v5, "input"

    const-string/jumbo v6, "wear"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    sput-object v2, Lcom/android/server/backup/SystemBackupAgent;->sEligibleHelpersForNonSystemUser:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    iput-boolean v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mIsProfileUser:Z

    return-void
.end method


# virtual methods
.method public final addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V
    .locals 1

    iget v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mIsProfileUser:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/backup/SystemBackupAgent;->sEligibleHelpersForProfileUser:Ljava/util/Set;

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/server/backup/SystemBackupAgent;->sEligibleHelpersForNonSystemUser:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    iget-object p0, p0, Lcom/android/server/backup/SystemBackupAgent;->mLogger:Landroid/app/backup/BackupRestoreEventLogger;

    invoke-virtual {p2, p0}, Landroid/app/backup/BackupHelperWithLogger;->setLogger(Landroid/app/backup/BackupRestoreEventLogger;)V

    :cond_2
    return-void
.end method

.method public final onCreate(Landroid/os/UserHandle;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/backup/BackupAgentHelper;->onCreate(Landroid/os/UserHandle;I)V

    invoke-virtual {p0}, Landroid/app/backup/BackupAgentHelper;->getBackupRestoreEventLogger()Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mLogger:Landroid/app/backup/BackupRestoreEventLogger;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    iput p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/app/backup/BackupAgentHelper;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isProfile()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/backup/SystemBackupAgent;->mIsProfileUser:Z

    :cond_0
    new-instance p1, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;

    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {p1, p0, p2}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;-><init>(Landroid/content/Context;I)V

    const-string/jumbo p2, "account_sync_settings"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    new-instance p1, Lcom/android/server/backup/PreferredActivityBackupHelper;

    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {p1, p2}, Lcom/android/server/backup/PreferredActivityBackupHelper;-><init>(I)V

    const-string/jumbo p2, "preferred_activities"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    new-instance p1, Lcom/android/server/notification/NotificationBackupHelper;

    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {p1, p2}, Lcom/android/server/notification/NotificationBackupHelper;-><init>(I)V

    const-string/jumbo p2, "notifications"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    new-instance p1, Lcom/android/server/backup/PermissionBackupHelper;

    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {p1, p2}, Lcom/android/server/backup/PermissionBackupHelper;-><init>(I)V

    const-string/jumbo p2, "permissions"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    new-instance p1, Lcom/android/server/backup/UsageStatsBackupHelper;

    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {p1, p2}, Lcom/android/server/backup/UsageStatsBackupHelper;-><init>(I)V

    const-string/jumbo p2, "usage_stats"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    new-instance p1, Lcom/android/server/backup/ShortcutBackupHelper;

    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {p1, p2}, Lcom/android/server/backup/ShortcutBackupHelper;-><init>(I)V

    const-string/jumbo p2, "shortcut_manager"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    new-instance p1, Lcom/android/server/backup/AccountManagerBackupHelper;

    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {p1, p2}, Lcom/android/server/backup/AccountManagerBackupHelper;-><init>(I)V

    const-string/jumbo p2, "account_manager"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    invoke-virtual {p0}, Landroid/app/backup/BackupAgentHelper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string/jumbo p2, "android.software.slices_disabled"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/android/server/backup/SliceBackupHelper;

    invoke-direct {p1, p0}, Lcom/android/server/backup/SliceBackupHelper;-><init>(Landroid/content/Context;)V

    const-string/jumbo p2, "slices"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    :cond_1
    new-instance p1, Lcom/android/server/backup/PeopleBackupHelper;

    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {p1, p2}, Lcom/android/server/backup/PeopleBackupHelper;-><init>(I)V

    const-string/jumbo p2, "people"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    new-instance p1, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;

    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {p1, p2}, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;-><init>(I)V

    const-string/jumbo p2, "app_locales"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    new-instance p1, Lcom/android/server/backup/AppGrammaticalGenderBackupHelper;

    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {p1, p2}, Lcom/android/server/backup/AppGrammaticalGenderBackupHelper;-><init>(I)V

    const-string/jumbo p2, "app_gender"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    new-instance p1, Lcom/android/server/backup/CompanionBackupHelper;

    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {p1, p2}, Lcom/android/server/backup/CompanionBackupHelper;-><init>(I)V

    const-string/jumbo p2, "companion"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    new-instance p1, Lcom/android/server/backup/SystemGrammaticalGenderBackupHelper;

    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {p1, p2}, Lcom/android/server/backup/SystemGrammaticalGenderBackupHelper;-><init>(I)V

    const-string/jumbo p2, "system_gender"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    new-instance p1, Lcom/android/server/display/DisplayBackupHelper;

    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {p1, p2}, Lcom/android/server/display/DisplayBackupHelper;-><init>(I)V

    const-string/jumbo p2, "display"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    invoke-virtual {p0}, Landroid/app/backup/BackupAgentHelper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string/jumbo p2, "android.hardware.type.watch"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/android/server/backup/WearBackupHelper;

    invoke-direct {p1}, Lcom/android/server/backup/WearBackupHelper;-><init>()V

    const-string/jumbo p2, "wear"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    :cond_2
    return-void
.end method

.method public final onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 0

    return-void
.end method

.method public final onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 3

    new-instance v0, Landroid/app/backup/WallpaperBackupHelper;

    const-string v1, "/data/data/com.android.settings/files/wallpaper"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    const-string/jumbo v2, "wallpaper"

    invoke-virtual {p0, v2, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    new-instance v0, Landroid/app/backup/WallpaperBackupHelper;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    const-string/jumbo v1, "system_files"

    invoke-virtual {p0, v1, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public final onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 17

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    const-string v2, "Couldn\'t restore settings\n"

    const-string/jumbo v3, "Skipping unrecognized system file: [ "

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Restoring file domain="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "SystemBackupAgent"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "r"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v6, "wallpaper"

    if-eqz v4, :cond_1

    const-string/jumbo v4, "wallpaper_info.xml"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v7, 0x1

    if-eqz v4, :cond_0

    new-instance v4, Ljava/io/File;

    sget-object v8, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object/from16 v16, v4

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/io/File;

    sget-object v8, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :goto_1
    if-nez v16, :cond_2

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v8, p1

    move-wide/from16 v9, p2

    move/from16 v11, p4

    move-wide/from16 v12, p7

    move-wide/from16 v14, p9

    invoke-static/range {v8 .. v16}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    if-eqz v7, :cond_3

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/app/IWallpaperManager;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Landroid/app/IWallpaperManager;->settingsRestored()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    if-eqz v7, :cond_3

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3
    :goto_2
    return-void
.end method
