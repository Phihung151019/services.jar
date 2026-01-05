.class public final Lcom/android/server/logcat/LogcatManagerService;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field static final PENDING_CONFIRMATION_TIMEOUT_MILLIS:I

.field static final STATUS_EXPIRATION_TIMEOUT_MILLIS:I = 0xea60


# instance fields
.field public final mActiveLogAccessCount:Ljava/util/Map;

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mBinderService:Lcom/android/server/logcat/LogcatManagerService$BinderService;

.field public final mClock:Lcom/android/server/logcat/LogcatManagerService$Injector$$ExternalSyntheticLambda0;

.field public final mContext:Landroid/content/Context;

.field public final mDialogCallback:Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;

.field public final mHandler:Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;

.field public final mInjector:Lcom/android/server/logcat/LogcatManagerService$Injector;

.field public final mLogAccessStatus:Ljava/util/Map;

.field public mLogdService:Landroid/os/ILogd;

.field public final mSecurityLogHandlerCallback:Lcom/android/server/logcat/LogcatManagerService$KnoxSecurityLogHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const v0, 0x11170

    goto :goto_0

    :cond_0
    const v0, 0x61a80

    :goto_0
    sput v0, Lcom/android/server/logcat/LogcatManagerService;->PENDING_CONFIRMATION_TIMEOUT_MILLIS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/android/server/logcat/LogcatManagerService$Injector;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/logcat/LogcatManagerService;->mActiveLogAccessCount:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/logcat/LogcatManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mInjector:Lcom/android/server/logcat/LogcatManagerService$Injector;

    new-instance p1, Lcom/android/server/logcat/LogcatManagerService$Injector$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/logcat/LogcatManagerService;->mClock:Lcom/android/server/logcat/LogcatManagerService$Injector$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/android/server/logcat/LogcatManagerService$BinderService;

    invoke-direct {p1, p0}, Lcom/android/server/logcat/LogcatManagerService$BinderService;-><init>(Lcom/android/server/logcat/LogcatManagerService;)V

    iput-object p1, p0, Lcom/android/server/logcat/LogcatManagerService;->mBinderService:Lcom/android/server/logcat/LogcatManagerService$BinderService;

    new-instance p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;

    invoke-direct {p1, p0}, Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;-><init>(Lcom/android/server/logcat/LogcatManagerService;)V

    iput-object p1, p0, Lcom/android/server/logcat/LogcatManagerService;->mDialogCallback:Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;

    new-instance p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;-><init>(Landroid/os/Looper;Lcom/android/server/logcat/LogcatManagerService;)V

    iput-object p1, p0, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;

    new-instance p1, Lcom/android/server/logcat/LogcatManagerService$KnoxSecurityLogHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/logcat/LogcatManagerService;->mSecurityLogHandlerCallback:Lcom/android/server/logcat/LogcatManagerService$KnoxSecurityLogHandler;

    return-void
.end method


# virtual methods
.method public final approveRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V
    .locals 6

    const-string/jumbo v0, "LogcatManagerService"

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/logcat/LogcatManagerService;->getLogdService()Landroid/os/ILogd;

    move-result-object v1

    iget v2, p2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    iget v3, p2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    iget v4, p2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    iget v5, p2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/ILogd;->approve(IIII)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    :try_start_1
    const-string/jumbo v1, "Logd connection no longer valid while approving, trying once more."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogdService:Landroid/os/ILogd;

    invoke-virtual {p0}, Lcom/android/server/logcat/LogcatManagerService;->getLogdService()Landroid/os/ILogd;

    move-result-object v1

    iget v2, p2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    iget v3, p2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    iget v4, p2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    iget p2, p2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    invoke-interface {v1, v2, v3, v4, p2}, Landroid/os/ILogd;->approve(IIII)V

    :goto_0
    iget-object p2, p0, Lcom/android/server/logcat/LogcatManagerService;->mActiveLogAccessCount:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mActiveLogAccessCount:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    const-string p1, "Fails to call remote functions"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public final declineRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V
    .locals 6

    const-string/jumbo v0, "LogcatManagerService"

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/logcat/LogcatManagerService;->getLogdService()Landroid/os/ILogd;

    move-result-object v1

    iget v2, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    iget v3, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    iget v4, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    iget v5, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/ILogd;->decline(IIII)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    :try_start_1
    const-string/jumbo v1, "Logd connection no longer valid while declining, trying once more."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogdService:Landroid/os/ILogd;

    invoke-virtual {p0}, Lcom/android/server/logcat/LogcatManagerService;->getLogdService()Landroid/os/ILogd;

    move-result-object p0

    iget v1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    iget v2, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    iget v3, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    iget p1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    invoke-interface {p0, v1, v2, v3, p1}, Landroid/os/ILogd;->decline(IIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_0
    const-string p1, "Fails to call remote functions"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public getBinderService()Landroid/os/logcat/ILogcatManagerService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mBinderService:Lcom/android/server/logcat/LogcatManagerService$BinderService;

    return-object p0
.end method

.method public final getClientForRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;
    .locals 7

    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "LogcatManagerService"

    if-nez v0, :cond_0

    const-string/jumbo p0, "PackageManager is null, declining the logd access"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v3, v1

    goto :goto_2

    :cond_0
    iget v3, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v4, "Unknown calling package name, declining the logd access"

    if-eqz v3, :cond_1

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/logcat/LogcatManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    if-eqz v3, :cond_4

    iget v5, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    invoke-virtual {v3, v5}, Landroid/app/ActivityManagerInternal;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_2

    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    invoke-static {v5}, Landroid/os/Process;->getParentPid(I)I

    move-result v5

    iget-object v3, p0, Lcom/android/server/logcat/LogcatManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3, v5}, Landroid/app/ActivityManagerInternal;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 p0, 0x0

    aget-object v3, v0, p0

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    :goto_2
    if-nez v3, :cond_7

    return-object v1

    :cond_7
    new-instance p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    iget p1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    invoke-direct {p0, p1, v3}, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method public getDialogCallback()Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mDialogCallback:Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;

    return-object p0
.end method

.method public final getLogdService()Landroid/os/ILogd;
    .locals 1

    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogdService:Landroid/os/ILogd;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mInjector:Lcom/android/server/logcat/LogcatManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "logd"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ILogd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ILogd;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogdService:Landroid/os/ILogd;

    :cond_0
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogdService:Landroid/os/ILogd;

    return-object p0
.end method

.method public final onAccessApprovedForClient(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->scheduleStatusExpiry(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mPendingRequests:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;

    invoke-virtual {p0, p1, v4}, Lcom/android/server/logcat/LogcatManagerService;->approveRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    iput p0, v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mStatus:I

    iget-object p0, v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mPendingRequests:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method public final onAccessDeclinedForClient(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->scheduleStatusExpiry(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mPendingRequests:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;

    invoke-virtual {p0, v3}, Lcom/android/server/logcat/LogcatManagerService;->declineRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    iput p0, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mStatus:I

    iget-object p0, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mPendingRequests:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 2

    :try_start_0
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-string/jumbo v0, "logcat"

    iget-object v1, p0, Lcom/android/server/logcat/LogcatManagerService;->mBinderService:Lcom/android/server/logcat/LogcatManagerService$BinderService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string/jumbo v0, "LogcatManagerService"

    const-string v1, "Could not start the LogcatManagerService."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final scheduleStatusExpiry(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V
    .locals 6

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x5

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mClock:Lcom/android/server/logcat/LogcatManagerService$Injector$$ExternalSyntheticLambda0;

    invoke-virtual {p0}, Lcom/android/server/logcat/LogcatManagerService$Injector$$ExternalSyntheticLambda0;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method
