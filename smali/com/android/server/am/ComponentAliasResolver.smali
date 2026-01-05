.class public final Lcom/android/server/am/ComponentAliasResolver;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEnabledByDeviceConfig:Z

.field public final mFromTo:Landroid/util/ArrayMap;

.field public final mLock:Ljava/lang/Object;

.field public mOverrideString:Ljava/lang/String;

.field public final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field public mPlatformCompat:Lcom/android/server/compat/PlatformCompat;


# direct methods
.method public static -$$Nest$mrefresh(Lcom/android/server/am/ComponentAliasResolver;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/ComponentAliasResolver;->mEnabledByDeviceConfig:Z

    iget-object v2, p0, Lcom/android/server/am/ComponentAliasResolver;->mOverrideString:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/am/ComponentAliasResolver;->update(Ljava/lang/String;Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mFromTo:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/am/ComponentAliasResolver$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ComponentAliasResolver$1;-><init>(Lcom/android/server/am/ComponentAliasResolver;)V

    iput-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/am/ComponentAliasResolver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "ACTIVITY MANAGER COMPONENT-ALIAS (dumpsys activity component-alias)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  Enabled: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string v2, "  Aliases:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ComponentAliasResolver;->mFromTo:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ComponentAliasResolver;->mFromTo:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/am/ComponentAliasResolver;->mFromTo:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    const-string v4, "    "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " -> "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onSystemReady(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string/jumbo v1, "platform_compat"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/PlatformCompat;

    iput-object v1, p0, Lcom/android/server/am/ComponentAliasResolver;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "ComponentAliasResolver"

    const-string v1, "Compat listener set."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ComponentAliasResolver;->update(Ljava/lang/String;Z)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final update(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ComponentAliasResolver;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iput-boolean p2, p0, Lcom/android/server/am/ComponentAliasResolver;->mEnabledByDeviceConfig:Z

    iput-object p1, p0, Lcom/android/server/am/ComponentAliasResolver;->mOverrideString:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/am/ComponentAliasResolver;->mFromTo:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
