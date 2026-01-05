.class public final Lcom/android/server/apphibernation/AppHibernationService;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static sIsServiceEnabled:Z


# instance fields
.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mBroadcastReceiver:Lcom/android/server/apphibernation/AppHibernationService$1;

.field public final mGlobalHibernationStates:Ljava/util/Map;

.field public final mGlobalLevelHibernationDiskStore:Lcom/android/server/apphibernation/HibernationStateDiskStore;

.field public final mIActivityManager:Landroid/app/IActivityManager;

.field public final mIPackageManager:Landroid/content/pm/IPackageManager;

.field public final mInjector:Lcom/android/server/apphibernation/AppHibernationService$Injector;

.field public final mLock:Ljava/lang/Object;

.field public final mOatArtifactDeletionEnabled:Z

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mServiceStub:Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;

.field public final mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

.field public final mUsageEventListener:Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda0;

.field public final mUserDiskStores:Landroid/util/SparseArray;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserStates:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;

    invoke-direct {v0, p1}, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/apphibernation/AppHibernationService;-><init>(Lcom/android/server/apphibernation/AppHibernationService$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/apphibernation/AppHibernationService$Injector;)V
    .locals 10

    move-object v0, p1

    check-cast v0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;

    iget-object v1, v0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserDiskStores:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    new-instance v1, Lcom/android/server/apphibernation/AppHibernationService$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/apphibernation/AppHibernationService$LocalService;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    new-instance v2, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;

    invoke-direct {v2, p0}, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    iput-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mServiceStub:Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;

    new-instance v2, Lcom/android/server/apphibernation/AppHibernationService$1;

    invoke-direct {v2, p0}, Lcom/android/server/apphibernation/AppHibernationService$1;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    iput-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBroadcastReceiver:Lcom/android/server/apphibernation/AppHibernationService$1;

    new-instance v3, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    iput-object v3, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUsageEventListener:Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda0;

    iget-object v4, v0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "package"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/apphibernation/AppHibernationService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-class v6, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageManagerInternal;

    iput-object v6, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/apphibernation/AppHibernationService;->mIActivityManager:Landroid/app/IActivityManager;

    iget-object v6, v0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mContext:Landroid/content/Context;

    const-class v7, Landroid/os/UserManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    iput-object v6, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserManager:Landroid/os/UserManager;

    iget-object v6, v0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mContext:Landroid/content/Context;

    const-class v7, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/StorageStatsManager;

    iput-object v6, p0, Lcom/android/server/apphibernation/AppHibernationService;->mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v7

    const-string/jumbo v8, "hibernation"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Lcom/android/server/apphibernation/HibernationStateDiskStore;

    new-instance v8, Lcom/android/server/apphibernation/GlobalLevelHibernationProto;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iget-object v9, v0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v7, v6, v8, v9}, Lcom/android/server/apphibernation/HibernationStateDiskStore;-><init>(Ljava/io/File;Lcom/android/server/apphibernation/ProtoReadWriter;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v7, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalLevelHibernationDiskStore:Lcom/android/server/apphibernation/HibernationStateDiskStore;

    iget-object v6, v0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v6, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    iget-object v0, v0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x11101c9

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mOatArtifactDeletionEnabled:Z

    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mInjector:Lcom/android/server/apphibernation/AppHibernationService$Injector;

    sget-object p0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 p1, 0x0

    invoke-virtual {v4, p0, p1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-class p0, Lcom/android/server/apphibernation/AppHibernationService$LocalService;

    invoke-static {p0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class p0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {p0, v3}, Landroid/app/usage/UsageStatsManagerInternal;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    return-void
.end method


# virtual methods
.method public final checkUserStatesExist(ILjava/lang/String;Z)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "AppHibernationService"

    if-nez v0, :cond_0

    if-eqz p3, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Attempt to call %s on stopped or nonexistent user %d"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz p3, :cond_1

    const-string p0, "Attempt to call %s before states have been read from disk"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final getHibernatingPackagesForUser(I)Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "getHibernatingPackagesForUser"

    sget-boolean v2, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.MANAGE_APP_HIBERNATION"

    const-string v4, "Caller does not have MANAGE_APP_HIBERNATION permission."

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/apphibernation/AppHibernationService;->handleIncomingUser(ILjava/lang/String;)I

    move-result p1

    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/apphibernation/AppHibernationService;->checkUserStatesExist(ILjava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/apphibernation/UserLevelState;

    iget-object v3, v1, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v3, v1, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    if-eqz v3, :cond_2

    iget-object v1, v1, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    monitor-exit v2

    return-object v0

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleIncomingUser(ILjava/lang/String;)I
    .locals 8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mIActivityManager:Landroid/app/IActivityManager;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v3, p1

    move-object v6, p2

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final initializeGlobalHibernationStates(Ljava/util/List;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/32 v1, 0x204ca200

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v5, Lcom/android/server/apphibernation/GlobalLevelState;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v4, v5, Lcom/android/server/apphibernation/GlobalLevelState;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    check-cast v6, Landroid/util/ArrayMap;

    invoke-virtual {v6, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_3

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    if-ge v3, v0, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/apphibernation/GlobalLevelState;

    iget-object v4, v2, Lcom/android/server/apphibernation/GlobalLevelState;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v2, v2, Lcom/android/server/apphibernation/GlobalLevelState;->packageName:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v4, "No hibernation state associated with package %s. Maybe the package was uninstalled? "

    invoke-static {v4, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AppHibernationService"

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    iget-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    iget-object v5, v2, Lcom/android/server/apphibernation/GlobalLevelState;->packageName:Ljava/lang/String;

    check-cast v4, Landroid/util/ArrayMap;

    invoke-virtual {v4, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "Package manager not available"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final initializeUserHibernationStates(ILjava/util/List;)V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/32 v1, 0x200ca200

    invoke-interface {v0, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v6, Lcom/android/server/apphibernation/UserLevelState;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v5, v6, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_4

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    invoke-virtual {v2, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    move v4, v3

    :goto_2
    if-ge v4, v0, :cond_4

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/apphibernation/UserLevelState;

    iget-object v5, v5, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/apphibernation/UserLevelState;

    if-nez v6, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v6, "No hibernation state associated with package %s user %d. Maybethe package was uninstalled? "

    invoke-static {v6, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "AppHibernationService"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_3

    iget v8, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v9, 0x200000

    and-int/2addr v8, v9

    iput v8, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    if-nez v8, :cond_3

    iget-boolean v6, v7, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    if-eqz v6, :cond_3

    iput-boolean v3, v7, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/apphibernation/UserLevelState;->lastUnhibernatedMs:J

    :cond_3
    invoke-virtual {v1, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "Package manager not available"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final isHibernatingForUser(Ljava/lang/String;I)Z
    .locals 5

    const-string/jumbo v0, "isHibernatingForUser"

    sget-boolean v1, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "android.permission.MANAGE_APP_HIBERNATION"

    const-string v4, "Caller did not have permission while calling isHibernatingForUser"

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v0}, Lcom/android/server/apphibernation/AppHibernationService;->handleIncomingUser(ILjava/lang/String;)I

    move-result p2

    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p2, v0, v2}, Lcom/android/server/apphibernation/AppHibernationService;->checkUserStatesExist(ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v1

    return v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/apphibernation/UserLevelState;

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean p0, p2, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    monitor-exit v1

    return p0

    :cond_3
    :goto_0
    monitor-exit v1

    return v2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isHibernatingGlobally(Ljava/lang/String;)Z
    .locals 4

    sget-boolean v0, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "android.permission.MANAGE_APP_HIBERNATION"

    const-string v3, "Caller does not have MANAGE_APP_HIBERNATION permission."

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/apphibernation/GlobalLevelState;

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {p0, v3, p1}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p0, v2, Lcom/android/server/apphibernation/GlobalLevelState;->hibernated:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteHibernationChange(ILjava/lang/String;)V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mIActivityManager:Landroid/app/IActivityManager;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x3

    const-wide v8, 0x1cf7c5800L

    const/16 v3, 0x3c

    const/4 v4, 0x1

    move v2, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v9}, Landroid/app/IActivityManager;->noteAppRestrictionEnabled(Ljava/lang/String;IIZILjava/lang/String;IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "AppHibernationService"

    const-string p1, "Couldn\'t set restriction state change"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onBootPhase(I)V
    .locals 4

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1

    const-string/jumbo p1, "app_hibernation_enabled"

    const/4 v0, 0x1

    const-string/jumbo v1, "app_hibernation"

    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/app/StatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/StatsManager;

    new-instance v0, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;

    invoke-direct {v0, p0}, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    const/16 v2, 0x277b

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    const/16 v1, 0x277d

    invoke-virtual {p1, v1, v3, p0, v0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 2

    const-string/jumbo v0, "app_hibernation"

    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mServiceStub:Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserDiskStores:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mInjector:Lcom/android/server/apphibernation/AppHibernationService$Injector;

    check-cast v0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "hibernation"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/apphibernation/HibernationStateDiskStore;

    iget-object v3, v0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mUserLevelHibernationProto:Lcom/android/server/apphibernation/UserLevelHibernationProto;

    iget-object v0, v0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v2, v1, v3, v0}, Lcom/android/server/apphibernation/HibernationStateDiskStore;-><init>(Ljava/io/File;Lcom/android/server/apphibernation/ProtoReadWriter;Ljava/util/concurrent/ScheduledExecutorService;)V

    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserDiskStores:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/Object;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setHibernatingForUser(Ljava/lang/String;IZ)V
    .locals 4

    const-string/jumbo v0, "setHibernatingForUser"

    sget-boolean v1, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "android.permission.MANAGE_APP_HIBERNATION"

    const-string v3, "Caller does not have MANAGE_APP_HIBERNATION permission."

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v0}, Lcom/android/server/apphibernation/AppHibernationService;->handleIncomingUser(ILjava/lang/String;)I

    move-result p2

    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, p2, v0, v2}, Lcom/android/server/apphibernation/AppHibernationService;->checkUserStatesExist(ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/apphibernation/UserLevelState;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v2, v0, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    if-ne v2, p3, :cond_3

    monitor-exit v1

    return-void

    :cond_3
    iput-boolean p3, v0, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;ILcom/android/server/apphibernation/UserLevelState;)V

    invoke-interface {p3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    iget-object p3, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/Object;II)V

    invoke-interface {p3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/apphibernation/UserLevelState;->lastUnhibernatedMs:J

    :goto_0
    new-instance p1, Lcom/android/server/apphibernation/UserLevelState;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iget-object p3, v0, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    iput-object p3, p1, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    iget-boolean p3, v0, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    iput-boolean p3, p1, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    iget-wide v2, v0, Lcom/android/server/apphibernation/UserLevelState;->savedByte:J

    iput-wide v2, p1, Lcom/android/server/apphibernation/UserLevelState;->savedByte:J

    iget-wide v2, v0, Lcom/android/server/apphibernation/UserLevelState;->lastUnhibernatedMs:J

    iput-wide v2, p1, Lcom/android/server/apphibernation/UserLevelState;->lastUnhibernatedMs:J

    iget-object p3, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/apphibernation/UserLevelState;I)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance p1, Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserDiskStores:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;

    invoke-virtual {p0, p1}, Lcom/android/server/apphibernation/HibernationStateDiskStore;->scheduleWriteHibernationStates(Ljava/util/List;)V

    monitor-exit v1

    return-void

    :cond_5
    :goto_1
    const-string p0, "AppHibernationService"

    const-string/jumbo p3, "Package %s is not installed for user %s"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setHibernatingGlobally(Ljava/lang/String;Z)V
    .locals 4

    sget-boolean v0, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.MANAGE_APP_HIBERNATION"

    const-string v2, "Caller does not have MANAGE_APP_HIBERNATION permission."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/apphibernation/GlobalLevelState;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v2, v1, Lcom/android/server/apphibernation/GlobalLevelState;->hibernated:Z

    if-eq v2, p2, :cond_3

    iput-boolean p2, v1, Lcom/android/server/apphibernation/GlobalLevelState;->hibernated:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;Lcom/android/server/apphibernation/GlobalLevelState;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    const-wide/16 p1, 0x0

    iput-wide p1, v1, Lcom/android/server/apphibernation/GlobalLevelState;->savedByte:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v1, Lcom/android/server/apphibernation/GlobalLevelState;->lastUnhibernatedMs:J

    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    check-cast p2, Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalLevelHibernationDiskStore:Lcom/android/server/apphibernation/HibernationStateDiskStore;

    invoke-virtual {p0, p1}, Lcom/android/server/apphibernation/HibernationStateDiskStore;->scheduleWriteHibernationStates(Ljava/util/List;)V

    :cond_3
    monitor-exit v0

    return-void

    :cond_4
    :goto_1
    const-string p0, "AppHibernationService"

    const-string/jumbo p2, "Package %s is not installed for any user"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
