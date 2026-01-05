.class public final Lcom/android/server/ExplicitHealthCheckController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mConnection:Lcom/android/server/ExplicitHealthCheckController$1;

.field public final mContext:Landroid/content/Context;

.field public mEnabled:Z

.field public final mLock:Ljava/lang/Object;

.field public mNotifySyncRunnable:Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;

.field public mPassedConsumer:Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda7;

.field public mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

.field public mSupportedConsumer:Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda7;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/ExplicitHealthCheckController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final bindService()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mEnabled:Z

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/ExplicitHealthCheckController;->mConnection:Lcom/android/server/ExplicitHealthCheckController$1;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ExplicitHealthCheckController;->getServiceComponentNameLocked()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "ExplicitHealthCheckController"

    const-string v1, "Explicit health check service not found"

    invoke-static {p0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v1, Lcom/android/server/ExplicitHealthCheckController$1;

    invoke-direct {v1, p0}, Lcom/android/server/ExplicitHealthCheckController$1;-><init>(Lcom/android/server/ExplicitHealthCheckController;)V

    iput-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mConnection:Lcom/android/server/ExplicitHealthCheckController$1;

    iget-object p0, p0, Lcom/android/server/ExplicitHealthCheckController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v1, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    const-string p0, "ExplicitHealthCheckController"

    const-string v1, "Explicit health check service is bound"

    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    const-string p0, "ExplicitHealthCheckController"

    const-string/jumbo v1, "Not binding to service, service disabled"

    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    if-eqz p0, :cond_4

    const-string p0, "ExplicitHealthCheckController"

    const-string/jumbo v1, "Not binding to service, service already connected"

    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string p0, "ExplicitHealthCheckController"

    const-string/jumbo v1, "Not binding to service, service already connecting"

    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getServiceComponentNameLocked()Landroid/content/ComponentName;
    .locals 5

    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExplicitHealthCheckController"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p0, "no external services package!"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object p0, v2

    goto :goto_1

    :cond_0
    const-string/jumbo v3, "android.service.watchdog.ExplicitHealthCheckService"

    invoke-static {v3, v0}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/ExplicitHealthCheckController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v3, 0x84

    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez p0, :cond_2

    :cond_1
    const-string/jumbo p0, "No valid components found."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :goto_1
    if-nez p0, :cond_3

    return-object v2

    :cond_3
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "android.permission.BIND_EXPLICIT_HEALTH_CHECK_SERVICE"

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not require permission android.permission.BIND_EXPLICIT_HEALTH_CHECK_SERVICE"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_4
    return-object v0
.end method

.method public final prepareServiceLocked(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mEnabled:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Service not ready to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/ExplicitHealthCheckController;->mEnabled:Z

    if-eqz p1, :cond_1

    const-string p1, ". Binding..."

    goto :goto_0

    :cond_1
    const-string p1, ". Disabled"

    :goto_0
    const-string v1, "ExplicitHealthCheckController"

    invoke-static {v0, p1, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/ExplicitHealthCheckController;->mEnabled:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/ExplicitHealthCheckController;->bindService()V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final unbindService()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ExplicitHealthCheckController;->mConnection:Lcom/android/server/ExplicitHealthCheckController$1;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    iput-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mConnection:Lcom/android/server/ExplicitHealthCheckController$1;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const-string p0, "ExplicitHealthCheckController"

    const-string v1, "Explicit health check service is unbound"

    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
