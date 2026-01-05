.class public final Lcom/android/server/app/GameManagerService;
.super Landroid/app/IGameManagerService$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mConfigs:Landroid/util/ArrayMap;

.field public final mContext:Landroid/content/Context;

.field public mDeviceConfigListener:Lcom/android/server/app/GameManagerService$DeviceConfigListener;

.field public final mDeviceConfigLock:Ljava/lang/Object;

.field public mGameDefaultFrameRateValue:F

.field public final mGameForegroundUids:Ljava/util/Set;

.field final mGameModeInterventionListFile:Landroid/util/AtomicFile;

.field public final mGameModeListenerLock:Ljava/lang/Object;

.field public final mGameModeListeners:Landroid/util/ArrayMap;

.field public final mGameServiceController:Lcom/android/server/app/GameServiceController;

.field public final mGameStateListenerLock:Ljava/lang/Object;

.field public final mGameStateListeners:Landroid/util/ArrayMap;

.field final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mNonGameForegroundUids:Ljava/util/Set;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public final mSettings:Landroid/util/ArrayMap;

.field public final mSysProps:Lcom/android/server/app/GameManagerService$Injector$1;

.field final mUidObserver:Lcom/android/server/app/GameManagerService$MyUidObserver;

.field public final mUidObserverLock:Ljava/lang/Object;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static $r8$lambda$LCP_4kvy-EB-QxmT_kuk0Xyillc(Lcom/android/server/app/GameManagerService;ILjava/util/List;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x27b6

    const/16 v4, 0x27b5

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0x27b7

    if-ne v1, v3, :cond_8

    iget-object v1, v0, Lcom/android/server/app/GameManagerService;->mGameModeListenerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/android/server/app/GameManagerService;->mGameModeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-static {v3, v0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    iget-object v6, v0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1
    iget-object v7, v0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v7

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v5, v7}, Lcom/android/server/app/GameManagerService;->getConfig(ILjava/lang/String;)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    :try_start_2
    iget-object v9, v0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v7, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v7
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    const-string v9, "GameManagerService"

    const-string v10, "Cannot find UID for package "

    const-string v11, " under user handle id "

    invoke-static {v5, v10, v7, v11, v9}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, -0x1

    :goto_2
    const/4 v9, 0x0

    if-ne v1, v4, :cond_6

    invoke-virtual {v8}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getOverriddenGameModes()[I

    move-result-object v10

    array-length v11, v10

    new-array v11, v11, [I

    array-length v12, v10

    move v13, v9

    move v14, v13

    :goto_3
    if-ge v13, v12, :cond_4

    aget v15, v10, v13

    add-int/lit8 v16, v14, 0x1

    invoke-static {v15}, Lcom/android/server/app/GameManagerService;->gameModeToStatsdGameMode(I)I

    move-result v15

    aput v15, v11, v14

    add-int/lit8 v13, v13, 0x1

    move/from16 v14, v16

    goto :goto_3

    :cond_4
    invoke-virtual {v8}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModes()[I

    move-result-object v8

    array-length v10, v8

    new-array v10, v10, [I

    array-length v12, v8

    move v13, v9

    :goto_4
    if-ge v9, v12, :cond_5

    aget v14, v8, v9

    add-int/lit8 v15, v13, 0x1

    invoke-static {v14}, Lcom/android/server/app/GameManagerService;->gameModeToStatsdGameMode(I)I

    move-result v14

    aput v14, v10, v13

    add-int/lit8 v9, v9, 0x1

    move v13, v15

    goto :goto_4

    :cond_5
    invoke-static {v4, v7, v11, v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II[I[I)Landroid/util/StatsEvent;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    if-ne v1, v3, :cond_2

    invoke-virtual {v8}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModes()[I

    move-result-object v10

    array-length v11, v10

    :goto_5
    if-ge v9, v11, :cond_2

    aget v12, v10, v9

    invoke-virtual {v8, v12}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v13

    if-eqz v13, :cond_7

    invoke-static {v12}, Lcom/android/server/app/GameManagerService;->gameModeToStatsdGameMode(I)I

    move-result v12

    invoke-virtual {v13}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getFps()I

    move-result v14

    invoke-virtual {v13}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getScaling()F

    move-result v13

    invoke-static {v3, v7, v12, v14, v13}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIF)Landroid/util/StatsEvent;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_8
    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/android/server/utils/LazyJniRegistrar;->registerGameManagerService()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/io/File;Lcom/android/server/app/GameManagerService$Injector;)V
    .locals 5

    invoke-static {p1}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IGameManagerService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameModeListenerLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameStateListenerLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameModeListeners:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameStateListeners:Landroid/util/ArrayMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mUidObserverLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameForegroundUids:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mNonGameForegroundUids:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/app/GameManagerService$SettingsHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/app/GameManagerService$SettingsHandler;-><init>(Lcom/android/server/app/GameManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mUserManager:Landroid/os/UserManager;

    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "system"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p3

    const/16 v1, 0x1fd

    const/4 v2, -0x1

    invoke-static {p3, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    new-instance p3, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "game_mode_intervention.list"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p3, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object p3, p0, Lcom/android/server/app/GameManagerService;->mGameModeInterventionListFile:Landroid/util/AtomicFile;

    invoke-virtual {p3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    const/16 v0, 0x1b0

    invoke-static {p3, v0, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    const-string/jumbo p3, "android.software.game_service"

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    new-instance p3, Lcom/android/server/app/GameServiceController;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v3, Lcom/android/server/app/GameServiceProviderSelectorImpl;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Lcom/android/server/app/GameServiceProviderSelectorImpl;-><init>(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;)V

    new-instance p2, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;

    invoke-direct {p2, p1}, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p3, p1, v1, v3, p2}, Lcom/android/server/app/GameServiceController;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/server/app/GameServiceProviderSelectorImpl;Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;)V

    iput-object p3, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    :goto_0
    new-instance p1, Lcom/android/server/app/GameManagerService$MyUidObserver;

    invoke-direct {p1, p0}, Lcom/android/server/app/GameManagerService$MyUidObserver;-><init>(Lcom/android/server/app/GameManagerService;)V

    iput-object p1, p0, Lcom/android/server/app/GameManagerService;->mUidObserver:Lcom/android/server/app/GameManagerService$MyUidObserver;

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p2

    const/4 p3, 0x3

    invoke-interface {p2, p1, p3, v2, v0}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "GameManagerService"

    const-string p2, "Could not register UidObserver"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/server/app/GameManagerService$Injector$1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/app/GameManagerService;->mSysProps:Lcom/android/server/app/GameManagerService$Injector$1;

    return-void
.end method

.method public static gameModeToStatsdGameMode(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_4

    const/4 v1, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x5

    return p0

    :cond_1
    return v1

    :cond_2
    return v0

    :cond_3
    return v1

    :cond_4
    return v0
.end method

.method private static native nativeSetGameDefaultFrameRateOverride(IF)V
.end method

.method private static native nativeSetGameModeFrameRateOverride(IF)V
.end method


# virtual methods
.method public final addGameModeListener(Landroid/app/IGameModeListener;)V
    .locals 3

    const-string/jumbo v0, "android.permission.MANAGE_GAME_MODE"

    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1}, Landroid/app/IGameModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/android/server/app/GameManagerService$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/app/GameManagerService$1;-><init>(Lcom/android/server/app/GameManagerService;Landroid/app/IGameModeListener;Landroid/os/IBinder;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameModeListenerLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameModeListeners:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "GameManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to link death recipient for IGameModeListener from caller "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", abandoned its listener registration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final addGameStateListener(Landroid/app/IGameStateListener;)V
    .locals 3

    :try_start_0
    invoke-interface {p1}, Landroid/app/IGameStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/android/server/app/GameManagerService$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/app/GameManagerService$1;-><init>(Lcom/android/server/app/GameManagerService;Landroid/app/IGameStateListener;Landroid/os/IBinder;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameStateListenerLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameStateListeners:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "GameManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to link death recipient for IGameStateListener from caller "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", abandoned its listener registration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final checkPermission(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Access denied to process: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", must have permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    iget-object p1, p0, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "android.permission.DUMP"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Permission Denial: can\'t dump GameManagerService from from pid="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " without permission android.permission.DUMP"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    array-length p1, p3

    if-nez p1, :cond_2

    :cond_1
    const-string p1, "*Dump GameManagerService*"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->getInstalledGamePackageNames(I)[Ljava/lang/String;

    move-result-object p3

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p3, v1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/app/GameManagerService;->getInterventionList(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final getAvailableGameModes(Ljava/lang/String;I)[I
    .locals 1

    const-string/jumbo v0, "android.permission.MANAGE_GAME_MODE"

    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Lcom/android/server/app/GameManagerService;->isPackageGame(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [I

    return-object p0

    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/app/GameManagerService;->getConfig(ILjava/lang/String;)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    const/4 p1, 0x4

    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModes()[I

    move-result-object p0

    return-object p0
.end method

.method public final getConfig(ILjava/lang/String;)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    .locals 4

    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameManagerSettings;

    iget-object p0, p0, Lcom/android/server/app/GameManagerSettings;->mConfigOverrides:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->copyAndApplyOverride(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    if-nez p0, :cond_3

    return-object v1

    :cond_3
    return-object p0

    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final getGameMode(Ljava/lang/String;I)I
    .locals 11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v5, "getGameMode"

    const-string/jumbo v6, "com.android.server.app.GameManagerService"

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/app/GameManagerService;->isPackageGame(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-le v2, v4, :cond_1

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "IGameManagerService"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "onTransact"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v5, :cond_2

    move v1, v3

    :catch_0
    :cond_2
    const-string/jumbo v2, "PackageName = : "

    const-string v5, "GMS_getGameMode"

    const-string v6, "GAME_MODE_UNSUPPORTED"

    const-string v7, "GAME_MODE_PERFORMANCE"

    const/4 v8, 0x2

    const-string v9, "GAME_MODE_STANDARD"

    const-string v10, "GAME_MODE_BATTERY"

    if-eqz v1, :cond_7

    if-eqz v0, :cond_6

    invoke-virtual {p0, p2, p1}, Lcom/android/server/app/GameManagerService;->getGameModeFromSettingsUnchecked(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_3

    move-object v6, v10

    goto :goto_1

    :cond_3
    if-ne v0, v3, :cond_4

    move-object v6, v9

    goto :goto_1

    :cond_4
    if-ne v0, v8, :cond_5

    move-object v6, v7

    :cond_5
    :goto_1
    invoke-static {v2, p1, v6, v5}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0, p2, p1}, Lcom/android/server/app/GameManagerService;->getGameModeFromSettingsUnchecked(ILjava/lang/String;)I

    move-result p0

    return p0

    :cond_7
    const-string/jumbo v1, "android.permission.MANAGE_GAME_MODE"

    invoke-virtual {p0, v1}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    if-eqz v0, :cond_b

    invoke-virtual {p0, p2, p1}, Lcom/android/server/app/GameManagerService;->getGameModeFromSettingsUnchecked(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_8

    move-object v6, v10

    goto :goto_2

    :cond_8
    if-ne v0, v3, :cond_9

    move-object v6, v9

    goto :goto_2

    :cond_9
    if-ne v0, v8, :cond_a

    move-object v6, v7

    :cond_a
    :goto_2
    invoke-static {v2, p1, v6, v5}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p0, p2, p1}, Lcom/android/server/app/GameManagerService;->getGameModeFromSettingsUnchecked(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getGameModeFromSettingsUnchecked(ILjava/lang/String;)I
    .locals 4

    const-string/jumbo v0, "User ID \'"

    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const-string p0, "GameManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' does not have a Game Mode selected for package: \'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v3

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameManagerSettings;

    iget-object p1, p0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v3, p0

    :cond_2
    :goto_0
    monitor-exit v1

    return v3

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getGameModeInfo(Ljava/lang/String;I)Landroid/app/GameModeInfo;
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v5, "getGameModeInfo"

    const-string/jumbo v6, "com.android.server.app.GameManagerService"

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    const-string/jumbo v0, "android.permission.MANAGE_GAME_MODE"

    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Lcom/android/server/app/GameManagerService;->isPackageGame(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/app/GameManagerService;->getGameModeFromSettingsUnchecked(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/app/GameManagerService;->getConfig(ILjava/lang/String;)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getOverriddenGameModes()[I

    move-result-object p0

    invoke-virtual {v1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModes()[I

    move-result-object p1

    new-instance p2, Landroid/app/GameModeInfo$Builder;

    invoke-direct {p2}, Landroid/app/GameModeInfo$Builder;-><init>()V

    invoke-virtual {p2, v0}, Landroid/app/GameModeInfo$Builder;->setActiveGameMode(I)Landroid/app/GameModeInfo$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/GameModeInfo$Builder;->setAvailableGameModes([I)Landroid/app/GameModeInfo$Builder;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/app/GameModeInfo$Builder;->setOverriddenGameModes([I)Landroid/app/GameModeInfo$Builder;

    move-result-object p0

    iget-boolean p2, v1, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowDownscale:Z

    invoke-virtual {p0, p2}, Landroid/app/GameModeInfo$Builder;->setDownscalingAllowed(Z)Landroid/app/GameModeInfo$Builder;

    move-result-object p0

    iget-boolean p2, v1, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowFpsOverride:Z

    invoke-virtual {p0, p2}, Landroid/app/GameModeInfo$Builder;->setFpsOverrideAllowed(Z)Landroid/app/GameModeInfo$Builder;

    move-result-object p0

    array-length p2, p1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_4

    aget v3, p1, v2

    invoke-virtual {v1, v3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->willGamePerformOptimizations(I)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1, v3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v4

    if-eqz v4, :cond_3

    :try_start_0
    iget-object v5, v4, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mFps:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move v5, v0

    :goto_1
    if-lez v5, :cond_1

    goto :goto_2

    :cond_1
    move v5, v0

    :goto_2
    iget v4, v4, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mScaling:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v6, v4, v6

    if-nez v6, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    :cond_2
    new-instance v6, Landroid/app/GameModeConfiguration$Builder;

    invoke-direct {v6}, Landroid/app/GameModeConfiguration$Builder;-><init>()V

    invoke-virtual {v6, v4}, Landroid/app/GameModeConfiguration$Builder;->setScalingFactor(F)Landroid/app/GameModeConfiguration$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/GameModeConfiguration$Builder;->setFpsOverride(I)Landroid/app/GameModeConfiguration$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/GameModeConfiguration$Builder;->build()Landroid/app/GameModeConfiguration;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/app/GameModeInfo$Builder;->setGameModeConfiguration(ILandroid/app/GameModeConfiguration;)Landroid/app/GameModeInfo$Builder;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/app/GameModeInfo$Builder;->build()Landroid/app/GameModeInfo;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance v1, Landroid/app/GameModeInfo$Builder;

    invoke-direct {v1}, Landroid/app/GameModeInfo$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/app/GameModeInfo$Builder;->setActiveGameMode(I)Landroid/app/GameModeInfo$Builder;

    move-result-object v0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/app/GameManagerService;->getConfig(ILjava/lang/String;)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object p0

    if-nez p0, :cond_6

    const/4 p0, 0x4

    const/4 p1, 0x1

    filled-new-array {p1, p0}, [I

    move-result-object p0

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModes()[I

    move-result-object p0

    :goto_3
    invoke-virtual {v0, p0}, Landroid/app/GameModeInfo$Builder;->setAvailableGameModes([I)Landroid/app/GameModeInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/GameModeInfo$Builder;->build()Landroid/app/GameModeInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getInstalledGamePackageNames(I)[Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda2;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final getInstalledGamePackageNamesByAllUsers(I)Ljava/util/List;
    .locals 7

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    invoke-static {v3, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    :cond_1
    array-length p1, v3

    :goto_1
    if-ge v4, p1, :cond_2

    aget v1, v3, v4

    invoke-virtual {p0, v1}, Lcom/android/server/app/GameManagerService;->getInstalledGamePackageNames(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final getInterventionList(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "android.permission.QUERY_ALL_PACKAGES"

    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getConfig(ILjava/lang/String;)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_0

    const-string p0, "\n No intervention found for package "

    invoke-static {p1, p0, p2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLoadingBoostDuration(ILjava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object p0

    if-nez p0, :cond_2

    :goto_0
    const/4 p0, -0x1

    return p0

    :cond_2
    monitor-enter p0

    :try_start_1
    iget p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mLoadingBoostDuration:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final getResolutionScalingFactor(Ljava/lang/String;II)F
    .locals 4

    const-string/jumbo v0, "User "

    const-string/jumbo v1, "android.permission.MANAGE_GAME_MODE"

    invoke-virtual {p0, v1}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p3, p1}, Lcom/android/server/app/GameManagerService;->getConfig(ILjava/lang/String;)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getScaling()F

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/high16 p0, -0x40800000    # -1.0f

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " wasn\'t started"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final isAngleEnabled(Ljava/lang/String;I)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    if-nez p0, :cond_1

    monitor-exit v1

    return v0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object p0

    if-nez p0, :cond_2

    :goto_0
    return v0

    :cond_2
    monitor-enter p0

    :try_start_1
    iget-boolean p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mUseAngle:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final isPackageGame(ILjava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v1, 0x20000

    invoke-virtual {p0, p2, v1, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->category:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method public final notifyGraphicsEnvironmentSetup(Ljava/lang/String;I)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v5, "notifyGraphicsEnvironmentSetup"

    const-string/jumbo v6, "com.android.server.app.GameManagerService"

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    move v1, v0

    :catch_0
    :cond_0
    const-string v2, "GameManagerService"

    if-nez v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "No-op for attempt to notify graphics env setup for different packagethan caller with uid: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo p0, "No-op for attempt to notify graphics env setup for non-game app: "

    invoke-static {p0, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0, p2, p1}, Lcom/android/server/app/GameManagerService;->getLoadingBoostDuration(ILjava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_6

    const/16 p2, 0x1388

    if-eqz p1, :cond_3

    if-le p1, p2, :cond_4

    :cond_3
    move p1, p2

    :cond_4
    iget-object p2, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {p2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_5
    const-string p2, "Game loading power mode ON (loading boost on game start)"

    invoke-static {v2, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/app/GameManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v2, 0x10

    invoke-virtual {p2, v2, v0}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    :goto_0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    int-to-long v0, p1

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_6
    return-void
.end method

.method public onBootCompleted()V
    .locals 5

    const-string v0, "GameManagerService"

    const-string/jumbo v1, "onBootCompleted"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lcom/android/server/app/GameServiceController;->mHasBootCompleted:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/app/GameServiceController;->mHasBootCompleted:Z

    iget-object v2, v1, Lcom/android/server/app/GameServiceController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceController;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/app/GameManagerService$3;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/app/GameManagerService$3;-><init>(Lcom/android/server/app/GameManagerService;I)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "Game loading power mode OFF (game manager service start/restart)"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    const-string v1, "Game power mode OFF (game manager service start/restart)"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mSysProps:Lcom/android/server/app/GameManagerService$Injector$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "ro.surface_flinger.game_default_frame_rate_override"

    const/16 v2, 0x3c

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/app/GameManagerService;->mGameDefaultFrameRateValue:F

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Game Default Frame Rate : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/app/GameManagerService;->mGameDefaultFrameRateValue:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/android/server/app/GameManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0}, Landroid/os/ShellCommand;-><init>()V

    iput-object v1, v0, Lcom/android/server/app/GameManagerShellCommand;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public final removeGameModeListener(Landroid/app/IGameModeListener;)V
    .locals 1

    const-string/jumbo v0, "android.permission.MANAGE_GAME_MODE"

    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameModeListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameModeListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeGameStateListener(Landroid/app/IGameStateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameStateListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameStateListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public resetGameModeConfigOverride(Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string/jumbo v0, "android.permission.MANAGE_GAME_MODE"

    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameManagerSettings;

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq p3, v2, :cond_4

    iget-object v2, v1, Lcom/android/server/app/GameManagerSettings;->mConfigOverrides:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    if-nez v2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModesBitfield()I

    move-result v4

    shl-int v5, v3, p3

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_3

    monitor-exit v0

    return-void

    :cond_3
    iget-object v4, v2, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, v2, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v5, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object p3, v2, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigLock:Ljava/lang/Object;

    monitor-enter p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, v2, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_5

    :try_start_4
    iget-object p3, v1, Lcom/android/server/app/GameManagerSettings;->mConfigOverrides:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception p0

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p0

    :cond_4
    iget-object p3, v1, Lcom/android/server/app/GameManagerSettings;->mConfigOverrides:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result p3

    invoke-virtual {p0, p2, p1}, Lcom/android/server/app/GameManagerService;->getConfig(ILjava/lang/String;)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModesBitfield()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    shl-int v1, v3, p3

    and-int/2addr v0, v1

    if-eqz v0, :cond_6

    move v0, p3

    goto :goto_2

    :cond_6
    move v0, v3

    :goto_2
    if-eq p3, v0, :cond_7

    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/app/GameManagerService;->setGameMode(Ljava/lang/String;II)V

    return-void

    :cond_7
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/app/GameManagerService;->setGameMode(Ljava/lang/String;II)V

    return-void

    :goto_3
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p0
.end method

.method public final sendUserMessage(IIILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    int-to-long v0, p3

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Failed to send user message "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GameManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setGameDefaultFrameRateOverride(IF)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setDefaultFrameRateOverride : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GameManagerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lcom/android/server/app/GameManagerService;->nativeSetGameDefaultFrameRateOverride(IF)V

    return-void
.end method

.method public final setGameMode(Ljava/lang/String;II)V
    .locals 9

    const-string v0, "Failed to set game mode for package "

    const-string/jumbo v1, "android.permission.MANAGE_GAME_MODE"

    invoke-virtual {p0, v1}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string p0, "GameManagerService"

    const-string/jumbo p2, "No-op for attempt to set UNSUPPORTED mode for app: "

    invoke-static {p2, p1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p3, p1}, Lcom/android/server/app/GameManagerService;->isPackageGame(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "GameManagerService"

    const-string/jumbo p2, "No-op for attempt to set game mode for non-game app: "

    invoke-static {p2, p1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const-string/jumbo v7, "setGameMode"

    const-string/jumbo v8, "com.android.server.app.GameManagerService"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v4, p3

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p3

    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string p0, "GameManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as user "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not started"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :cond_2
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameManagerSettings;

    iget-object v2, v0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    iget-object v4, v0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq p2, v2, :cond_5

    iget-object v0, v0, Lcom/android/server/app/GameManagerSettings;->mConfigOverrides:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1, v2, p3}, Lcom/android/server/app/GameManagerService;->getResolutionScalingFactor(Ljava/lang/String;II)F

    move-result v4

    invoke-virtual {v0, p2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getOrAddDefaultGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput v4, v5, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mScaling:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :cond_5
    :goto_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/app/GameManagerService;->updateInterventions(IILjava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/app/GameManagerService;->mGameModeListenerLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_5
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameModeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IGameModeListener;

    invoke-interface {v1}, Landroid/app/IGameModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-interface {v1, p1, v2, p2, p3}, Landroid/app/IGameModeListener;->onGameModeChanged(Ljava/lang/String;III)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :catch_0
    :try_start_7
    const-string v5, "GameManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot notify game mode change for listener added by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/app/GameManagerService;->mGameModeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const-string/jumbo v0, "SET_GAME_MODE"

    const/16 v1, 0x2710

    invoke-virtual {p0, p3, v3, v1, v0}, Lcom/android/server/app/GameManagerService;->sendUserMessage(IIILjava/lang/String;)V

    const-string/jumbo v0, "SET_GAME_MODE"

    const/4 v1, 0x0

    const/4 v3, 0x6

    invoke-virtual {p0, p3, v3, v1, v0}, Lcom/android/server/app/GameManagerService;->sendUserMessage(IIILjava/lang/String;)V

    :try_start_8
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    :catch_1
    const-string p0, "GameManagerService"

    const-string v0, "Cannot find the UID for package "

    const-string v1, " under user "

    invoke-static {p3, v0, p1, v1, p0}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    :goto_2
    const-string p1, "GameManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setGameMode: fromGameMode "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "toGameMode "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {v2}, Lcom/android/server/app/GameManagerService;->gameModeToStatsdGameMode(I)I

    move-result p3

    invoke-static {p2}, Lcom/android/server/app/GameManagerService;->gameModeToStatsdGameMode(I)I

    move-result p2

    const/16 v0, 0x22b

    invoke-static {v0, p0, p1, p3, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIII)V

    return-void

    :goto_3
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p0

    :goto_4
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw p0
.end method

.method public setGameModeConfigOverride(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string/jumbo v0, "android.permission.MANAGE_GAME_MODE"

    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v2, v0

    goto :goto_1

    :catch_0
    const-string v0, "GameManagerService"

    const-string v1, "Cannot find the UID for package "

    const-string v2, " under user "

    invoke-static {p2, v1, p1, v2, v0}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_0

    :goto_1
    invoke-virtual {p0, p2, p1}, Lcom/android/server/app/GameManagerService;->getConfig(ILjava/lang/String;)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {p3}, Lcom/android/server/app/GameManagerService;->gameModeToStatsdGameMode(I)I

    move-result v4

    invoke-virtual {v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getScaling()F

    move-result v5

    if-nez p5, :cond_0

    invoke-virtual {v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getScaling()F

    move-result v1

    :goto_2
    move v6, v1

    goto :goto_3

    :cond_0
    invoke-static {p5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_2

    :goto_3
    invoke-virtual {v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getFps()I

    move-result v7

    if-nez p4, :cond_1

    invoke-virtual {v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getFps()I

    move-result v0

    :goto_4
    move v8, v0

    goto :goto_5

    :cond_1
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    :goto_5
    const/16 v1, 0x22c

    invoke-static/range {v1 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIFFII)V

    goto :goto_a

    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {p3}, Lcom/android/server/app/GameManagerService;->gameModeToStatsdGameMode(I)I

    move-result v4

    if-nez p5, :cond_3

    const/high16 v0, -0x40800000    # -1.0f

    :goto_6
    move v6, v0

    goto :goto_7

    :cond_3
    invoke-static {p5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_6

    :goto_7
    if-nez p4, :cond_4

    const/4 v0, 0x0

    :goto_8
    move v8, v0

    goto :goto_9

    :cond_4
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_8

    :goto_9
    const/high16 v5, -0x40800000    # -1.0f

    const/4 v7, 0x0

    const/16 v1, 0x22c

    invoke-static/range {v1 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIFFII)V

    :goto_a
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_d

    :cond_5
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameManagerSettings;

    iget-object v2, v0, Lcom/android/server/app/GameManagerSettings;->mConfigOverrides:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    if-nez v2, :cond_6

    new-instance v2, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    invoke-direct {v2, p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/app/GameManagerSettings;->mConfigOverrides:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2, p3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getOrAddDefaultGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v2

    if-eqz p4, :cond_7

    monitor-enter v2

    :try_start_2
    iput-object p4, v2, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mFps:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_7
    const-string p4, ""

    monitor-enter v2

    :try_start_4
    iput-object p4, v2, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mFps:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-exit v2

    :goto_b
    if-eqz p5, :cond_8

    invoke-static {p5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p4

    monitor-enter v2

    :try_start_5
    iput p4, v2, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mScaling:F
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v2

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object p0, v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :cond_8
    :goto_c
    const-string p4, "GameManagerService"

    const-string/jumbo p5, "Package Name: "

    const-string v0, " FPS: "

    invoke-static {p5, p1, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {v2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getFps()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Scaling: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getScaling()F

    move-result v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/app/GameManagerService;->setGameMode(Ljava/lang/String;II)V

    return-void

    :catchall_3
    move-exception v0

    move-object p0, v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0

    :goto_d
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0
.end method

.method public setGameModeFrameRateOverride(IF)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/app/GameManagerService;->nativeSetGameModeFrameRateOverride(IF)V

    return-void
.end method

.method public final setGameServiceProvider(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "android.permission.SET_GAME_SERVICE"

    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderOverride:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderOverride:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/app/GameServiceController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceController;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setGameState(Ljava/lang/String;Landroid/app/GameState;I)V
    .locals 3

    invoke-virtual {p0, p3, p1}, Lcom/android/server/app/GameManagerService;->isPackageGame(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "No-op for attempt to set game state for non-game app: "

    const-string p2, "GameManagerService"

    invoke-static {p0, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "packageName"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "userId"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final toggleGameDefaultFrameRate(Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/IGameManagerService$Stub;->toggleGameDefaultFrameRate_enforcePermission()V

    const-string v0, "GameManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "toggleGameDefaultFrameRate : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mSysProps:Lcom/android/server/app/GameManagerService$Injector$1;

    const-string/jumbo v2, "debug.graphics.game_default_frame_rate.disabled"

    const-string/jumbo v3, "false"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mSysProps:Lcom/android/server/app/GameManagerService$Injector$1;

    const-string/jumbo v2, "debug.graphics.game_default_frame_rate.disabled"

    const-string/jumbo v3, "true"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mUidObserverLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameForegroundUids:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz p1, :cond_1

    iget v3, p0, Lcom/android/server/app/GameManagerService;->mGameDefaultFrameRateValue:F

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p0, v2, v3}, Lcom/android/server/app/GameManagerService;->setGameDefaultFrameRateOverride(IF)V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_2
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :goto_4
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public varargs updateConfigsForUser(IZ[Ljava/lang/String;)V
    .locals 8

    if-eqz p2, :cond_0

    invoke-static {p3}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0, p1}, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/app/GameManagerService;I)V

    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda2;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, [Ljava/lang/String;

    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_4

    aget-object v4, p3, v2

    new-instance v5, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    iget-object v6, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v5, v6, v4, p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    iget-object v6, v5, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v7, v5, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-gtz v7, :cond_2

    iget-boolean v7, v5, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOverridden:Z

    if-nez v7, :cond_2

    iget-boolean v7, v5, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOverridden:Z

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_1
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_3

    :try_start_3
    const-string v3, "GameManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding config: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_1
    move-exception p0

    goto/16 :goto_9

    :cond_3
    const-string v3, "GameManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Inactive package config for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_3
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0

    :cond_4
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object p2, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    monitor-exit p2

    return-void

    :catchall_2
    move-exception p0

    goto/16 :goto_8

    :cond_5
    array-length v0, p3

    move v2, v1

    :goto_4
    if-ge v2, v0, :cond_6

    aget-object v4, p3, v2

    iget-object v5, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/app/GameManagerSettings;

    iget-object v5, v5, Lcom/android/server/app/GameManagerSettings;->mConfigOverrides:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "GameManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeConfigOverrideLock for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    array-length p2, p3

    move v0, v1

    :goto_5
    if-ge v0, p2, :cond_9

    aget-object v2, p3, v0

    invoke-virtual {p0, v2, p1}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :try_start_9
    iget-object v6, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v6, :cond_7

    :try_start_a
    invoke-virtual {v6}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModesBitfield()I

    move-result v5

    and-int/lit8 v5, v5, -0x2

    shl-int v6, v3, v4

    and-int/2addr v5, v6

    if-eqz v5, :cond_7

    move v5, v4

    goto :goto_6

    :cond_7
    move v5, v3

    :goto_6
    if-eq v5, v4, :cond_8

    invoke-virtual {p0, v2, v5, p1}, Lcom/android/server/app/GameManagerService;->setGameMode(Ljava/lang/String;II)V

    goto :goto_7

    :catch_0
    move-exception p0

    goto :goto_a

    :cond_8
    invoke-virtual {p0, v4, p1, v2}, Lcom/android/server/app/GameManagerService;->updateInterventions(IILjava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :catchall_3
    move-exception p0

    :try_start_b
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw p0

    :cond_9
    const-string/jumbo p2, "UPDATE_CONFIGS_FOR_USERS"

    const/4 p3, 0x6

    invoke-virtual {p0, p1, p3, v1, p2}, Lcom/android/server/app/GameManagerService;->sendUserMessage(IIILjava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    return-void

    :goto_8
    :try_start_d
    monitor-exit p2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    :goto_9
    :try_start_f
    monitor-exit p2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    throw p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    :goto_a
    const-string p2, "GameManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Failed to update configs for user "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateCustomGameModeConfiguration(Ljava/lang/String;Landroid/app/GameModeConfiguration;I)V
    .locals 10

    const-string/jumbo v0, "User "

    const-string/jumbo v1, "android.permission.MANAGE_GAME_MODE"

    invoke-virtual {p0, v1}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    invoke-virtual {p0, p3, p1}, Lcom/android/server/app/GameManagerService;->isPackageGame(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "GameManagerService"

    const-string/jumbo p2, "No-op for attempt to update custom game mode for non-game app: "

    invoke-static {p2, p1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameManagerSettings;

    iget-object v1, v0, Lcom/android/server/app/GameManagerSettings;->mConfigOverrides:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    invoke-direct {v1, p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/app/GameManagerSettings;->mConfigOverrides:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getOrAddDefaultGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getScaling()F

    move-result v6

    invoke-virtual {v1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getFps()I

    move-result v8

    invoke-virtual {p2}, Landroid/app/GameModeConfiguration;->getScalingFactor()F

    move-result v2

    iput v2, v1, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mScaling:F

    invoke-virtual {p2}, Landroid/app/GameModeConfiguration;->getFpsOverride()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mFps:Ljava/lang/String;

    const-string/jumbo v2, "UPDATE_CUSTOM_GAME_MODE_CONFIG"

    const/4 v3, 0x1

    const/16 v4, 0x2710

    invoke-virtual {p0, p3, v3, v4, v2}, Lcom/android/server/app/GameManagerService;->sendUserMessage(IIILjava/lang/String;)V

    const/4 v2, 0x6

    const-string/jumbo v3, "UPDATE_CUSTOM_GAME_MODE_CONFIG"

    invoke-virtual {p0, p3, v2, v4, v3}, Lcom/android/server/app/GameManagerService;->sendUserMessage(IIILjava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_3

    invoke-virtual {p0, v2, p3, p1}, Lcom/android/server/app/GameManagerService;->updateInterventions(IILjava/lang/String;)V

    :cond_3
    const-string v2, "GameManagerService"

    const-string/jumbo v3, "Updated custom game mode config for package: "

    const-string v4, " with FPS="

    invoke-static {v3, p1, v4}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getFps()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";Scaling="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getScaling()F

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " under user "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    move v3, p0

    goto :goto_1

    :catch_0
    const-string p0, "GameManagerService"

    const-string v1, "Cannot find the UID for package "

    const-string v2, " under user "

    invoke-static {p3, v1, p1, v2, p0}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    goto :goto_0

    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->gameModeToStatsdGameMode(I)I

    move-result v5

    invoke-virtual {p2}, Landroid/app/GameModeConfiguration;->getScalingFactor()F

    move-result v7

    invoke-virtual {p2}, Landroid/app/GameModeConfiguration;->getFpsOverride()I

    move-result v9

    const/16 v2, 0x22c

    invoke-static/range {v2 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIFFII)V

    return-void

    :goto_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_4
    :try_start_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " wasn\'t started"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public final updateInterventions(IILjava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p2, p3}, Lcom/android/server/app/GameManagerService;->getConfig(ILjava/lang/String;)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "GameManagerService"

    if-eq p1, v1, :cond_2

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->willGamePerformOptimizations(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Game mode "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getFps()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p3, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/app/GameManagerService;->setGameModeFrameRateOverride(IF)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :cond_2
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, p3, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->setGameModeFrameRateOverride(IF)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    if-nez v0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Package configuration not found for "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :cond_3
    :goto_1
    return-void
.end method

.method public final updateResolutionScalingFactor(Ljava/lang/String;IFI)V
    .locals 9

    const-string/jumbo v0, "User "

    const-string/jumbo v1, "android.permission.MANAGE_GAME_MODE"

    invoke-virtual {p0, v1}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x0

    invoke-static {p3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    move v6, p2

    move v5, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/app/GameManagerService;->setGameModeConfigOverride(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    move v5, p4

    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " wasn\'t started"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
