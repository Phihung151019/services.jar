.class public Lcom/android/server/compat/PlatformCompat;
.super Lcom/android/internal/compat/IPlatformCompat$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

.field public final mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

.field public final mCompatConfig:Lcom/android/server/compat/CompatConfig;

.field public final mContext:Landroid/content/Context;

.field public mIsWear:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-static {p1}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    iput-object p1, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/compat/ChangeReporter;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/compat/ChangeReporter;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    new-instance v0, Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-direct {v0}, Lcom/android/internal/compat/AndroidBuildClassifier;-><init>()V

    iput-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    new-instance v1, Lcom/android/server/compat/CompatConfig;

    invoke-direct {v1, v0, p1}, Lcom/android/server/compat/CompatConfig;-><init>(Lcom/android/internal/compat/AndroidBuildClassifier;Landroid/content/Context;)V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object p1

    const-string/jumbo v0, "etc"

    const-string/jumbo v2, "compatconfig"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/server/compat/CompatConfig;->initConfigFromLib(Ljava/io/File;)V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object p1

    const-string/jumbo v3, "system_ext"

    filled-new-array {v3, v0, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/server/compat/CompatConfig;->initConfigFromLib(Ljava/io/File;)V

    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/ApexManager;->getActiveApexInfos()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    iget-object v3, v3, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexDirectory:Ljava/io/File;

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/compat/CompatConfig;->initConfigFromLib(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/File;

    const-string v0, "/data/misc/appcompat"

    const-string/jumbo v2, "compat_framework_overrides.xml"

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v3, "/product/etc/appcompat"

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v0}, Lcom/android/server/compat/CompatConfig;->initOverrides(Ljava/io/File;Ljava/io/File;)V

    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V

    iput-object v1, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/compat/CompatConfig;Lcom/android/internal/compat/AndroidBuildClassifier;Lcom/android/internal/compat/ChangeReporter;)V
    .locals 1

    invoke-static {p1}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    iput-object p1, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/compat/PlatformCompat;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    iput-object p2, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    iput-object p3, p0, Lcom/android/server/compat/PlatformCompat;->mBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {p0, p1}, Lcom/android/server/compat/PlatformCompat;->registerPackageReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public static getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 7

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    move-object v6, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(IIJLjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public static killPackage(Ljava/lang/String;)V
    .locals 5

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    const-string v1, "Compatibility"

    if-gez v0, :cond_0

    const-string v0, "Didn\'t find package "

    const-string v2, " on device."

    invoke-static {v0, p0, v2, v1}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "Killing package "

    const-string v3, " (UID "

    const-string v4, ")."

    invoke-static {v0, v2, p0, v3, v4}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v3, "PlatformCompat overrides"

    const/4 v4, -0x1

    invoke-interface {v2, p0, v4, v3}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method


# virtual methods
.method public final checkAllCompatOverridesAreOverridable(Ljava/util/Collection;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    iget-object v1, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    iget-object v1, v1, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    iget-object v1, v1, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/compat/CompatChange;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getOverridable()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Only change ids marked as Overridable can be overridden."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method public final clearOverride(JLjava/lang/String;)Z
    .locals 2

    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->clearOverride_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/compat/CompatConfig;->getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/compat/CompatChange;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/compat/CompatConfig;->removeOverrideUnsafe(Lcom/android/server/compat/CompatChange;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit p0

    invoke-static {p3}, Lcom/android/server/compat/PlatformCompat;->killPackage(Ljava/lang/String;)V

    return p1

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final clearOverrideForTest(JLjava/lang/String;)Z
    .locals 2

    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->clearOverrideForTest_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/compat/CompatConfig;->getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/compat/CompatChange;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/compat/CompatConfig;->removeOverrideUnsafe(Lcom/android/server/compat/CompatChange;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit p0

    return p1

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final clearOverrides(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->clearOverrides_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/compat/CompatConfig;->removePackageOverrides(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/compat/PlatformCompat;->killPackage(Ljava/lang/String;)V

    return-void
.end method

.method public final clearOverridesForTest(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->clearOverridesForTest_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/compat/CompatConfig;->removePackageOverrides(Ljava/lang/String;)V

    return-void
.end method

.method public final containsOverride(JLjava/lang/String;)Z
    .locals 0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/compat/CompatChange;

    if-eqz p0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final disableTargetSdkChanges(Ljava/lang/String;I)I
    .locals 7

    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->disableTargetSdkChanges_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/compat/CompatConfig;->getAllowedChangesSinceTargetSdkForPackage(ILjava/lang/String;)[J

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    aget-wide v4, p2, v2

    new-instance v6, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v6}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    invoke-virtual {v6, v1}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v6

    invoke-virtual {p0, v4, v5, p1, v6}, Lcom/android/server/compat/CompatConfig;->addOverrideUnsafe(JLjava/lang/String;Landroid/app/compat/PackageOverride;)Z

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V

    :cond_1
    array-length p0, p2

    invoke-static {p1}, Lcom/android/server/compat/PlatformCompat;->killPackage(Ljava/lang/String;)V

    return p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    iget-object p1, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    const-string/jumbo p3, "platform_compat"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    const-string/jumbo p3, "android.permission.READ_COMPAT_CHANGE_CONFIG"

    const-string v0, "Cannot read compat change"

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    const-string/jumbo p3, "android.permission.LOG_COMPAT_CHANGE"

    const-string v0, "Cannot read log compat change usage"

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    iget-object p1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    if-nez p1, :cond_1

    const-string/jumbo p0, "No compat overrides."

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/compat/CompatChange;

    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v0

    const-wide/32 v2, 0x14ce0124

    cmp-long p3, v0, v2

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/compat/CompatChange;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final enableTargetSdkChanges(Ljava/lang/String;I)I
    .locals 7

    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->enableTargetSdkChanges_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/compat/CompatConfig;->getAllowedChangesSinceTargetSdkForPackage(ILjava/lang/String;)[J

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v3, p2, v1

    new-instance v5, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v5}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v5

    invoke-virtual {p0, v3, v4, p1, v5}, Lcom/android/server/compat/CompatConfig;->addOverrideUnsafe(JLjava/lang/String;Landroid/app/compat/PackageOverride;)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V

    :cond_1
    array-length p0, p2

    invoke-static {p1}, Lcom/android/server/compat/PlatformCompat;->killPackage(Ljava/lang/String;)V

    return p0
.end method

.method public final fixTargetSdk(Landroid/content/pm/ApplicationInfo;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mIsWear:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mIsWear:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mIsWear:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {p0}, Lcom/android/internal/compat/AndroidBuildClassifier;->platformTargetSdk()I

    move-result p0

    iput p0, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    :cond_1
    return-void
.end method

.method public final getAppConfig(Landroid/content/pm/ApplicationInfo;)Lcom/android/internal/compat/CompatibilityChangeConfig;
    .locals 5

    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getAppConfig_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/compat/CompatChange;

    iget-object v4, p0, Lcom/android/server/compat/CompatConfig;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {v3, p1, v4}, Lcom/android/server/compat/CompatChange;->isEnabled(Landroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/AndroidBuildClassifier;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/android/internal/compat/CompatibilityChangeConfig;

    new-instance p1, Landroid/compat/Compatibility$ChangeConfig;

    invoke-direct {p1, v0, v1}, Landroid/compat/Compatibility$ChangeConfig;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-direct {p0, p1}, Lcom/android/internal/compat/CompatibilityChangeConfig;-><init>(Landroid/compat/Compatibility$ChangeConfig;)V

    return-object p0
.end method

.method public final getOverrideValidator()Lcom/android/internal/compat/IOverrideValidator;
    .locals 0

    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    return-object p0
.end method

.method public final isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z
    .locals 0

    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->isChangeEnabled_enforcePermission()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternal(JLandroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public final isChangeEnabledByPackageName(JLjava/lang/String;I)Z
    .locals 0

    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->isChangeEnabledByPackageName_enforcePermission()V

    invoke-static {p3, p4}, Lcom/android/server/compat/PlatformCompat;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    if-nez p4, :cond_0

    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/CompatConfig;->willChangeBeEnabled(JLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternal(JLandroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public final isChangeEnabledByUid(JI)Z
    .locals 6

    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->isChangeEnabledByUid_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    invoke-static {v5, v2}, Lcom/android/server/compat/PlatformCompat;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {p0, v5, p3}, Lcom/android/server/compat/PlatformCompat;->fixTargetSdk(Landroid/content/pm/ApplicationInfo;I)V

    invoke-virtual {p0, p1, p2, v5}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternal(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v5

    and-int/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/compat/CompatChange;

    if-nez p0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getDisabled()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public final isChangeEnabledInternal(JLandroid/content/pm/ApplicationInfo;)Z
    .locals 11

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    iget-object v0, v0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/compat/CompatChange;

    iget-object v1, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/android/server/compat/CompatConfig;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {v0, p3, v1}, Lcom/android/server/compat/CompatChange;->isEnabled(Landroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/AndroidBuildClassifier;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    move v8, v2

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    move v8, v3

    :goto_1
    if-eqz p3, :cond_6

    iget-object v3, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    iget v4, p3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result v5

    if-eq v5, v3, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    :cond_2
    add-int/2addr v3, v2

    if-gtz v3, :cond_3

    goto :goto_2

    :cond_3
    const/16 v0, 0x2710

    if-eq v3, v0, :cond_5

    if-ne v3, v4, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v2, 0x0

    :cond_5
    :goto_3
    move v10, v2

    iget-object v4, p0, Lcom/android/server/compat/PlatformCompat;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    iget v5, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v9

    move-wide v6, p1

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/compat/ChangeReporter;->reportChange(IJIZZ)V

    :cond_6
    return v1
.end method

.method public final isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/compat/CompatChange;

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {p1, p3, p0}, Lcom/android/server/compat/CompatChange;->isEnabled(Landroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/AndroidBuildClassifier;)Z

    move-result p0

    return p0
.end method

.method public final listAllChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;
    .locals 5

    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->listAllChanges_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/compat/CompatibilityChangeInfo;

    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/compat/CompatChange;

    add-int/lit8 v3, v1, 0x1

    new-instance v4, Lcom/android/internal/compat/CompatibilityChangeInfo;

    invoke-direct {v4, v2}, Lcom/android/internal/compat/CompatibilityChangeInfo;-><init>(Lcom/android/internal/compat/CompatibilityChangeInfo;)V

    aput-object v4, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final listUIChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/compat/PlatformCompat;->listAllChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/compat/PlatformCompat$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/compat/PlatformCompat$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/compat/PlatformCompat;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/compat/PlatformCompat$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/internal/compat/CompatibilityChangeInfo;

    return-object p0
.end method

.method public final putAllOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;)V
    .locals 4

    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->putAllOverridesOnReleaseBuilds_enforcePermission()V

    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;->packageNameToOverrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    iget-object v1, v1, Lcom/android/internal/compat/CompatibilityOverrideConfig;->overrides:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/compat/PlatformCompat;->checkAllCompatOverridesAreOverridable(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;->packageNameToOverrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;->packageNameToOverrides:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/compat/CompatConfig;->addPackageOverridesWithoutSaving(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;Z)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final putOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->putOverridesOnReleaseBuilds_enforcePermission()V

    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityOverrideConfig;->overrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/compat/PlatformCompat;->checkAllCompatOverridesAreOverridable(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/compat/CompatConfig;->addPackageOverrides(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;Z)V

    return-void
.end method

.method public final registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)V
    .locals 4

    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/compat/CompatConfig;Ljava/util/concurrent/atomic/AtomicBoolean;J)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/compat/CompatChange;

    const-string/jumbo p1, "Listener for change "

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lcom/android/server/compat/CompatChange;->mListener:Lcom/android/server/compat/CompatChange$ChangeListener;

    if-nez p2, :cond_0

    iput-object p3, p0, Lcom/android/server/compat/CompatChange;->mListener:Lcom/android/server/compat/CompatChange$ChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already registered."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final registerPackageReceiver(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/android/server/compat/PlatformCompat$1;

    invoke-direct {v0, p0}, Lcom/android/server/compat/PlatformCompat$1;-><init>(Lcom/android/server/compat/PlatformCompat;)V

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1, v1}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final removeAllOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;)V
    .locals 4

    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->removeAllOverridesOnReleaseBuilds_enforcePermission()V

    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;->packageNameToOverridesToRemove:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;

    iget-object v1, v1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;->changeIds:Ljava/util/Set;

    invoke-virtual {p0, v1}, Lcom/android/server/compat/PlatformCompat;->checkAllCompatOverridesAreOverridable(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;->packageNameToOverridesToRemove:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;->packageNameToOverridesToRemove:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/compat/CompatConfig;->removePackageOverridesWithoutSaving(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final removeOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->removeOverridesOnReleaseBuilds_enforcePermission()V

    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;->changeIds:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/android/server/compat/PlatformCompat;->checkAllCompatOverridesAreOverridable(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/compat/CompatConfig;->removePackageOverridesWithoutSaving(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final reportChange(JLandroid/content/pm/ApplicationInfo;)V
    .locals 7

    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->reportChange_enforcePermission()V

    iget v1, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v5

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    const/4 v6, 0x1

    const/4 v4, 0x3

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/compat/ChangeReporter;->reportChange(IJIZZ)V

    return-void
.end method

.method public final reportChangeByPackageName(JLjava/lang/String;I)V
    .locals 7

    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->reportChangeByPackageName_enforcePermission()V

    invoke-static {p3, p4}, Lcom/android/server/compat/PlatformCompat;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    if-eqz p3, :cond_0

    iget v1, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v5

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    const/4 v6, 0x1

    const/4 v4, 0x3

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/compat/ChangeReporter;->reportChange(IJIZZ)V

    :cond_0
    return-void
.end method

.method public final reportChangeByUid(JI)V
    .locals 7

    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->reportChangeByUid_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    const/4 v6, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-wide v2, p1

    move v1, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/compat/ChangeReporter;->reportChange(IJIZZ)V

    return-void
.end method

.method public final setOverrides(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V
    .locals 5

    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->setOverrides_enforcePermission()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeConfig;->enabledChanges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v3}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeConfig;->disabledChanges()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v3}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    invoke-virtual {v3, v2}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    new-instance p1, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    invoke-direct {p1, v0}, Lcom/android/internal/compat/CompatibilityOverrideConfig;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/compat/CompatConfig;->addPackageOverrides(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;Z)V

    invoke-static {p2}, Lcom/android/server/compat/PlatformCompat;->killPackage(Ljava/lang/String;)V

    return-void
.end method

.method public final setOverridesForTest(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V
    .locals 5

    invoke-super {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->setOverridesForTest_enforcePermission()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeConfig;->enabledChanges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    new-instance v3, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v3}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeConfig;->disabledChanges()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    new-instance v3, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v3}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    invoke-virtual {v3, v2}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    new-instance p1, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    invoke-direct {p1, v0}, Lcom/android/internal/compat/CompatibilityOverrideConfig;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/compat/CompatConfig;->addPackageOverrides(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;Z)V

    return-void
.end method
