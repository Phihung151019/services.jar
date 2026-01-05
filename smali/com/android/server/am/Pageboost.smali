.class public abstract Lcom/android/server/am/Pageboost;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final BOOTFILE_ENABLED:Z

.field public static final CACHE_STAT_PREFETCH:Z

.field public static final PAGEBOOST_ACTIVE_LAUNCH_ENABLED:Z

.field public static final PAGEBOOST_ACTIVE_LAUNCH_TIMEOUT:I

.field public static PAGEBOOST_DAEMON_ENABLED:Z

.field public static final PAGEBOOST_IGNORE_DRAM_SPECIFICATION:Z

.field public static final PAGEBOOST_IO_PREFETCH_ENABLED:Z

.field public static PAGEBOOST_KERNEL_ENABLED:Z

.field public static final PAGEBOOST_MINIMIZE:Z

.field public static final PAGEBOOST_VRAMDISK_WITHOUT_PREDICT:Z

.field public static mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field public static mAppDB:Landroid/database/sqlite/SQLiteDatabase;

.field public static mAppDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

.field public static mBootFileManager:Lcom/android/server/am/Pageboost$LRUPolicy;

.field public static mContext:Landroid/content/Context;

.field public static mFileDB:Landroid/database/sqlite/SQLiteDatabase;

.field public static mFileDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

.field public static mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

.field public static final mPackageReceiver:Lcom/android/server/am/Pageboost$1;

.field public static final mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

.field public static final mReceiver:Lcom/android/server/am/Pageboost$1;

.field public static mZygote64FileMap:Lcom/android/server/am/Pageboost$FileMapList;

.field public static mZygoteFileMap:Lcom/android/server/am/Pageboost$FileMapList;

.field public static final munlock_firstapp:Z

.field public static final sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

.field public static final sHandlerThread:Lcom/android/server/ServiceThread;

.field public static user_unlock_done:Z


# direct methods
.method public static -$$Nest$smaddPackage(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    invoke-direct {v0, p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setApkPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    sget-object p0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "add app to global @ runtime: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    const-string/jumbo v1, "Pageboost"

    invoke-static {p0, v0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static -$$Nest$smdelayedInitPageboost()V
    .locals 12

    const-string/jumbo v0, "Pageboost"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/proc/self/io_record_control"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "io_record_control file exists: kernel support = true"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sput-boolean v1, Lcom/android/server/am/Pageboost;->PAGEBOOST_KERNEL_ENABLED:Z

    const-string/jumbo v2, "io_record_control file does not exist: kernel support = false"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo v2, "io_record_control file open failed"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "checkPageboostKernelSupport: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/server/am/Pageboost;->PAGEBOOST_KERNEL_ENABLED:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "init.svc.pageboostd"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "running"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_DAEMON_ENABLED:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "checkPageboostDaemonSupport: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/am/Pageboost;->PAGEBOOST_DAEMON_ENABLED:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Pageboost"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Pageboost"

    const-string/jumbo v1, "abort delayedInitPageboost"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_1
    sget v0, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    const-string v0, "/proc/self/io_record_control"

    const-string v2, "1"

    invoke-static {v0, v2}, Lcom/android/server/am/Pageboost$IoRecord;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "Pageboost"

    const-string/jumbo v2, "emergency reset during bootup"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v0, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/am/Pageboost;->mReceiver:Lcom/android/server/am/Pageboost$1;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/am/Pageboost;->mPackageReceiver:Lcom/android/server/am/Pageboost$1;

    if-eqz v0, :cond_7

    const-string/jumbo v0, "com.sec.android.launcher.action.RUN_APP"

    const-string/jumbo v2, "com.android.server.am.ACTION_PAGEBOOST"

    const-string/jumbo v3, "com.android.server.am.ACTION_VRAMDISK_PREFETCH"

    const-string/jumbo v4, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    const-string/jumbo v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v8

    const-string/jumbo v0, "android.intent.action.REBOOT"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v6, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/server/am/Pageboost;->mReceiver:Lcom/android/server/am/Pageboost$1;

    const-string/jumbo v9, "com.android.server.am.permission.PAGEBOOST"

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/am/Pageboost;->mPackageReceiver:Lcom/android/server/am/Pageboost$1;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v2, "Pageboost"

    new-instance v3, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    sget-object v4, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/android/server/am/Pageboost$PageboostAppDBHelper$AppDBErrorHandler;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper$AppDBErrorHandler;-><init>(I)V

    const-string v5, "/data/misc/pageboost/pageboost_file_db.db"

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v9, 0x1

    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;I)V

    sput-object v3, Lcom/android/server/am/Pageboost;->mFileDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    :try_start_1
    sget-object v0, Lcom/android/server/am/Pageboost;->mFileDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v0, "getWritableDatabase for fileDB"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception for fileDB "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "SQLiteException for fileDB "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "malformed database"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "delete fileDB and open"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/data/misc/pageboost/pageboost_file_db.db"

    invoke-static {v0}, Lcom/android/server/am/Pageboost;->deleteDB(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/am/Pageboost;->mFileDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    move v1, v4

    goto :goto_3

    :catch_3
    const-string/jumbo v0, "SQLiteDatabaseCorruptException for fileDB"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/am/Pageboost;->mFileDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    :cond_3
    :goto_3
    sget-object v0, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_4

    :try_start_2
    const-string/jumbo v3, "db pragma init"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "PRAGMA synchronous = NORMAL;"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    const-string/jumbo v3, "pragma init failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_4
    const-string v2, "/data/misc/pageboost/pageboost_app_db.db"

    const-string/jumbo v3, "delete app db and open"

    const-string/jumbo v4, "Pageboost"

    if-eqz v1, :cond_5

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/server/am/Pageboost;->deleteDB(Ljava/lang/String;)V

    :cond_5
    new-instance v5, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    sget-object v6, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/android/server/am/Pageboost$PageboostAppDBHelper$AppDBErrorHandler;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper$AppDBErrorHandler;-><init>(I)V

    const-string v7, "/data/misc/pageboost/pageboost_app_db.db"

    const/4 v8, 0x0

    const/4 v9, 0x7

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v11}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;I)V

    sput-object v5, Lcom/android/server/am/Pageboost;->mAppDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    :try_start_3
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v0, "getWritableDatabase for appDB"

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_6

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception for appDB "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v4}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "SQLiteException for appDB "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "malformed database"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/server/am/Pageboost;->deleteDB(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/am/Pageboost;->mAppDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_7

    :catch_7
    const-string/jumbo v0, "SQLiteDatabaseCorruptException for appDB"

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/am/Pageboost;->mAppDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    :cond_6
    :goto_7
    const-string/jumbo v0, "zygote64"

    invoke-static {v0}, Lcom/android/server/am/Pageboost;->getFileMapFromCmd(Ljava/lang/String;)Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/Pageboost;->mZygote64FileMap:Lcom/android/server/am/Pageboost$FileMapList;

    const-string/jumbo v0, "zygote"

    invoke-static {v0}, Lcom/android/server/am/Pageboost;->getFileMapFromCmd(Ljava/lang/String;)Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/Pageboost;->mZygoteFileMap:Lcom/android/server/am/Pageboost$FileMapList;

    const-string/jumbo v0, "system_server"

    invoke-static {v0}, Lcom/android/server/am/Pageboost;->getFileMapFromCmd(Ljava/lang/String;)Lcom/android/server/am/Pageboost$FileMapList;

    sget-object v1, Lcom/android/server/am/Pageboost$Vramdisk;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    new-instance v0, Lcom/android/server/am/Pageboost$LRUPolicy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/am/Pageboost$LRUPolicy;->openSocket()V

    sput-object v0, Lcom/android/server/am/Pageboost$Vramdisk;->conn:Lcom/android/server/am/Pageboost$LRUPolicy;

    goto :goto_8

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :cond_7
    const-string/jumbo v0, "Pageboost"

    const-string/jumbo v1, "Pageboost Delayed Init Failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    return-void
.end method

.method public static -$$Nest$smgetPidFromPackageName(Ljava/lang/String;Z)I
    .locals 5

    sget-object v0, Lcom/android/server/am/Pageboost;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/Pageboost;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    if-nez p1, :cond_0

    if-eqz v2, :cond_1

    iget p0, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v3, :cond_1

    const-string/jumbo v3, "cch-empty"

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget p0, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public static -$$Nest$smrealupdatePackages()V
    .locals 28

    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v0, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

    if-nez v0, :cond_1

    goto/16 :goto_5

    :cond_1
    sget-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "Pageboost"

    const-string/jumbo v1, "reinit global list"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    :cond_2
    sget-object v0, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    sget v0, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->$r8$clinit:I

    new-instance v10, Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-direct {v10}, Lcom/android/server/am/Pageboost$PageboostAppList;-><init>()V

    const-string v3, "AppLRU"

    const-string v9, "ID ASC"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v11, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    const-string v0, "APPNAME"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v0, "CAPTURED"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const-string v0, "ANON"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string v0, "ION"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string v0, "GPU"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const-string/jumbo v0, "SIZE_PR"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    const-string/jumbo v0, "SIZE_MAP_PR"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    const-string/jumbo v0, "SCORE"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    const-string v0, "EXEC_CNT"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const-string v0, "ACC_ETIME"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    const-string/jumbo v0, "PREFETCH_CNT"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    const-string v0, "HIT_CNT"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    const-string v0, "APK_PATH"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v11 .. v27}, Lcom/android/server/am/Pageboost$PageboostAppInfo;-><init>(Ljava/lang/String;IIIIJJIIJIILjava/lang/String;)V

    invoke-virtual {v10, v11, v3}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    const/16 v0, 0x80

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    const-string/jumbo v4, "Pageboost"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "pkg info : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v6, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v4}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v4, :cond_7

    new-instance v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v4, v6}, Lcom/android/server/am/Pageboost$PageboostAppInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4, v3}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    const-string/jumbo v6, "Pageboost"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "add app to global : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v8, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v4, v2}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setApkPath(Ljava/lang/String;)V

    iput v5, v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    goto :goto_1

    :cond_7
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v4, v2}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setApkPath(Ljava/lang/String;)V

    iput v5, v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    goto :goto_1

    :cond_8
    iget-object v1, v10, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_1
    iget-object v0, v10, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    iget v3, v2, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    if-nez v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const-string/jumbo v3, "Pageboost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove not installed app : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_a
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sput-object v10, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    :goto_3
    return-void

    :goto_4
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_b
    :goto_5
    const-string/jumbo v0, "Pageboost"

    const-string/jumbo v1, "mContext or mPredictor is not initialized yet."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static -$$Nest$smremovePackage(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    iget-object v4, v3, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const-string/jumbo p0, "Pageboost"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove app @ runtime : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v2, :cond_4

    sget-object p0, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, v2, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void

    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static constructor <clinit>()V
    .locals 10

    const-string/jumbo v0, "Pageboost"

    const-string/jumbo v1, "ro.config.pageboost.io_prefetch.enabled"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    const-string/jumbo v1, "ro.config.pageboost.ignore_dram_spec"

    const-string/jumbo v3, "false"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/Pageboost;->PAGEBOOST_IGNORE_DRAM_SPECIFICATION:Z

    const-string/jumbo v4, "ro.config.pageboost.active_launch.enabled"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_ENABLED:Z

    const-string/jumbo v4, "ro.config.pageboost.active_launch.timeout"

    const/16 v5, 0x64

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_TIMEOUT:I

    const-string/jumbo v4, "ro.config.pageboost.vramdisk.minimize"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/Pageboost;->PAGEBOOST_MINIMIZE:Z

    const-string/jumbo v4, "ro.config.pageboost.vramdisk.without_predict"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/Pageboost;->PAGEBOOST_VRAMDISK_WITHOUT_PREDICT:Z

    const-string/jumbo v4, "ro.config.pageboost.vramdisk.bootfile.enabled"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/Pageboost;->BOOTFILE_ENABLED:Z

    const-string/jumbo v4, "ro.config.pageboost.vramdisk.cache_prefetch.enabled"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/Pageboost;->CACHE_STAT_PREFETCH:Z

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/am/Pageboost;->PAGEBOOST_KERNEL_ENABLED:Z

    sput-boolean v2, Lcom/android/server/am/Pageboost;->PAGEBOOST_DAEMON_ENABLED:Z

    const/4 v3, 0x0

    sput-object v3, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    sput-object v3, Lcom/android/server/am/Pageboost;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    sput-object v3, Lcom/android/server/am/Pageboost;->sHandlerThread:Lcom/android/server/ServiceThread;

    sput-object v3, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    sput-object v3, Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

    sput-object v3, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    sput-object v3, Lcom/android/server/am/Pageboost;->mReceiver:Lcom/android/server/am/Pageboost$1;

    sput-object v3, Lcom/android/server/am/Pageboost;->mPackageReceiver:Lcom/android/server/am/Pageboost$1;

    sput-object v3, Lcom/android/server/am/Pageboost;->mAppDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    sput-object v3, Lcom/android/server/am/Pageboost;->mFileDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    sput-object v3, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    sput-object v3, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    sput-object v3, Lcom/android/server/am/Pageboost;->mZygote64FileMap:Lcom/android/server/am/Pageboost$FileMapList;

    sput-object v3, Lcom/android/server/am/Pageboost;->mZygoteFileMap:Lcom/android/server/am/Pageboost$FileMapList;

    sput-object v3, Lcom/android/server/am/Pageboost;->mBootFileManager:Lcom/android/server/am/Pageboost$LRUPolicy;

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/am/Pageboost;->user_unlock_done:Z

    sput-boolean v4, Lcom/android/server/am/Pageboost;->munlock_firstapp:Z

    const-string/jumbo v5, "dram size : "

    :try_start_0
    const-string/jumbo v6, "Static Initialization of Pageboost"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/android/server/ServiceThread;

    const/16 v7, 0xa

    invoke-direct {v6, v0, v7, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Lcom/android/server/am/Pageboost;->sHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v6}, Lcom/android/server/ServiceThread;->start()V

    new-instance v6, Lcom/android/server/am/Pageboost$PageboostHandler;

    sget-object v7, Lcom/android/server/am/Pageboost;->sHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v7}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7, v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    sput-object v6, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    new-instance v3, Lcom/android/server/am/Pageboost$PageboostPredictor;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/android/server/am/Pageboost$LRUPolicy;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/am/Pageboost$LRUPolicy;->mRecentPrefetchList:Ljava/lang/Object;

    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, v6, Lcom/android/server/am/Pageboost$LRUPolicy;->mLock:Ljava/lang/Object;

    sput-object v6, Lcom/android/server/am/Pageboost$PageboostPredictor;->mAppSelection:Lcom/android/server/am/Pageboost$LRUPolicy;

    sput-object v3, Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    const-wide v8, 0x180000000L

    cmp-long v1, v6, v8

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    sput-boolean v1, Lcom/android/server/am/Pageboost$Vramdisk;->ENABLED:Z

    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v6

    const-wide v8, 0xc0000000L

    cmp-long v1, v6, v8

    if-gtz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    sput-boolean v2, Lcom/android/server/am/Pageboost;->munlock_firstapp:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " APP_LAUNCH_MUNLOCK_RAMSIZE: 3221225472"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/am/Pageboost$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/am/Pageboost$1;-><init>(I)V

    sput-object v1, Lcom/android/server/am/Pageboost;->mReceiver:Lcom/android/server/am/Pageboost$1;

    new-instance v1, Lcom/android/server/am/Pageboost$1;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/am/Pageboost$1;-><init>(I)V

    sput-object v1, Lcom/android/server/am/Pageboost;->mPackageReceiver:Lcom/android/server/am/Pageboost$1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo v1, "failed to staticInitialize by exception"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static deleteDB(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    :cond_0
    return-void
.end method

.method public static dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v0, "vramdisk enabled: (config) false (decision_by_dram) "

    const-string/jumbo v1, "prefetch level: "

    const-string/jumbo v2, "alp enabled: "

    const-string/jumbo v3, "prefetch enabled: "

    const-string/jumbo v4, "ignore dram spec: "

    const-string/jumbo v5, "minimized: "

    :try_start_0
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_MINIMIZE:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", kernel support: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_KERNEL_ENABLED:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", daemon support: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_DAEMON_ENABLED:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p0, :cond_6

    sget-object v5, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    if-nez v5, :cond_1

    goto/16 :goto_2

    :cond_1
    array-length v5, p1

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    const-string/jumbo v5, "purge"

    aget-object v7, p1, v6

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object p1, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_2

    sget v0, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->$r8$clinit:I

    const-string v0, "1"

    const-string v1, "AppLRU"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "db clear : ret "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "Pageboost"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "DB is purged. Please type \'adb reboot\'"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "(!CAUTION: Do not reboot using \'power key\'. Unless DB will be restored)"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string/jumbo p1, "app DB not exists. Try again after 5 seconds"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_3
    array-length v5, p1

    const/4 v7, 0x2

    if-le v5, v7, :cond_4

    const-string/jumbo v5, "heimdall"

    aget-object p1, p1, v6

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto/16 :goto_2

    :cond_4
    const-string p1, "== Pageboost dump start =="

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "- Pageboost Configurations"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/android/server/am/Pageboost;->PAGEBOOST_IGNORE_DRAM_SPECIFICATION:Z

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_ENABLED:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo p1, "prefetch app count: 1"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/Pageboost$Vramdisk;->ENABLED:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo p1, "memprep enabled: false"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "- Pageboost AppLRU Info"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object p1, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    iget-object v0, p1, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p1, p1, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    invoke-virtual {v1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_5
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "- Pageboost Vramdisk Info"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo p1, "disabled"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "- Action Log"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/server/am/Pageboost$Vramdisk;->print(Ljava/io/PrintWriter;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "- Bigdata: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",  String: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "== pageboost dump end =="

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const-string/jumbo p0, "Pageboost"

    const-string/jumbo p1, "failed to dumpInfo by exception"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void
.end method

.method public static getFileMapFromCmd(Ljava/lang/String;)Lcom/android/server/am/Pageboost$FileMapList;
    .locals 2

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object p0

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    new-instance v0, Lcom/android/server/am/Pageboost$FileMapList;

    const/4 v1, 0x0

    aget p0, p0, v1

    invoke-direct {v0, p0}, Lcom/android/server/am/Pageboost$FileMapList;-><init>(I)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isPageboostMinimized()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_MINIMIZE:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_KERNEL_ENABLED:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_DAEMON_ENABLED:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static onAppLaunch(Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v0, "Pageboost"

    const-string/jumbo v1, "onAppLaunch : "

    :try_start_0
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz p0, :cond_4

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    sget v1, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-eqz v1, :cond_3

    const/16 v1, 0xe

    invoke-static {v1, v3, p0}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(IILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x5

    const/16 v2, 0x7d0

    invoke-static {v1, v2, p0}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(IILjava/lang/Object;)V

    :goto_1
    const/16 v1, 0x11

    invoke-static {v1, v3, p0}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(IILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "failed to onAppLaunch by exception"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method

.method public static onProcStatusChange(IILjava/lang/String;)V
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    const/16 v1, 0x10

    const/4 v2, -0x1

    move v4, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/Pageboost;->sendMessage(IIIIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "Pageboost"

    const-string/jumbo p1, "failed to onProcStatusChange by exception"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static prefetchPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string/jumbo v0, "Pageboost"

    const-string/jumbo v1, "prefetchRequested,"

    const-string/jumbo v2, "failed to prefetch. maybe not captured yet : "

    const-string/jumbo v3, "not in Pageboost pkg list : "

    :try_start_0
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    if-nez v4, :cond_1

    const-string/jumbo p0, "Pageboost pkg list is not initialized yet"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p0, :cond_2

    const-string/jumbo p0, "null pkg is requested"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {v4, p0}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string/jumbo v3, "alp"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v4}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->activeLaunch()Z

    move-result v2

    if-nez v2, :cond_4

    :goto_0
    return-void

    :cond_4
    sget-boolean v2, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_ENABLED:Z

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    sget v7, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_TIMEOUT:I

    const/16 v3, 0x15

    const/4 v8, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static/range {v3 .. v8}, Lcom/android/server/am/Pageboost;->sendMessage(IIIIILjava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v4}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->execute()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/Pageboost$Vramdisk;->add(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "failed to prefetchPackage by exception"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static sendMessage(IIIIILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p5, :cond_0

    const-string/jumbo v1, "pkg"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-ltz p1, :cond_1

    const-string/jumbo p5, "launchtime"

    invoke-virtual {v0, p5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    if-ltz p2, :cond_2

    const-string/jumbo p1, "pid"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    if-ltz p3, :cond_3

    const-string/jumbo p1, "status"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    sget-object p1, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    if-lez p4, :cond_4

    sget-object p1, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    int-to-long p2, p4

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_4
    sget-object p1, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static sendMessageWithObject(IILjava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    invoke-virtual {v0, p0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    if-lez p1, :cond_0

    sget-object p2, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    int-to-long v0, p1

    invoke-virtual {p2, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_0
    sget-object p1, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static startActiveLaunch(Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v0, "Pageboost"

    const-string/jumbo v1, "start alp : "

    :try_start_0
    sget-boolean v2, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_ENABLED:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/16 v2, 0x13

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v7, p0

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/Pageboost;->sendMessage(IIIIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "failed to startActiveLaunch by exception"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static stopActiveLaunch()V
    .locals 8

    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_ENABLED:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "Pageboost"

    const-string/jumbo v1, "stop alp"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/16 v2, 0x14

    const/4 v7, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/Pageboost;->sendMessage(IIIIILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
