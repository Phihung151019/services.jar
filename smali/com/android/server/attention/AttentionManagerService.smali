.class public Lcom/android/server/attention/AttentionManagerService;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field protected static final ATTENTION_CACHE_BUFFER_SIZE:I = 0x5

.field static final DEFAULT_STALE_AFTER_MILLIS:J = 0x3e8L

.field static final KEY_SERVICE_ENABLED:Ljava/lang/String; = "service_enabled"

.field static final KEY_STALE_AFTER_MILLIS:Ljava/lang/String; = "stale_after_millis"

.field public static sTestAttentionServicePackage:Ljava/lang/String;


# instance fields
.field public mAttentionCheckCacheBuffer:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;

.field public final mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

.field public mBinding:Z

.field mComponentName:Landroid/content/ComponentName;

.field public final mConnection:Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;

.field public final mContext:Landroid/content/Context;

.field mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

.field mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

.field mIsProximityEnabled:Z

.field mIsServiceEnabled:Z

.field public final mLock:Ljava/lang/Object;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field protected mService:Landroid/service/attention/IAttentionService;

.field public mServiceBindingLatch:Ljava/util/concurrent/CountDownLatch;

.field mStaleAfterMillis:J


# direct methods
.method public static -$$Nest$mcancelAndUnbindLocked(Lcom/android/server/attention/AttentionManagerService;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->cancel()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->cancelUpdates()V

    :cond_1
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    new-instance v2, Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda2;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/attention/AttentionManagerService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mConnection:Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;

    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->cleanupService()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static -$$Nest$mhandlePendingCallbackLocked(Lcom/android/server/attention/AttentionManagerService;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    const-string v1, "Cannot call into the AttentionService"

    const-string v2, "AttentionManagerService"

    if-eqz v0, :cond_1

    iget-boolean v3, v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsDispatched:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v0, v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;

    invoke-interface {v3, v0}, Landroid/service/attention/IAttentionService;->checkAttention(Landroid/service/attention/IAttentionCallback;)V

    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsDispatched:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mCallbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;->onFailure(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    if-eqz v0, :cond_3

    iget-boolean v3, v0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mStartedUpdates:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    if-eqz v3, :cond_2

    :try_start_1
    iget-object p0, v0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mIProximityUpdateCallback:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate$1;

    invoke-interface {v3, p0}, Landroid/service/attention/IAttentionService;->onStartProximityUpdates(Landroid/service/attention/IProximityUpdateCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->cancelUpdates()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    :cond_3
    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/attention/AttentionManagerService;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Ljava/lang/Object;Lcom/android/server/attention/AttentionManagerService$AttentionHandler;)V

    new-instance p1, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    invoke-direct {p1, p0}, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;-><init>(Lcom/android/server/attention/AttentionManagerService;)V

    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/PowerManager;Ljava/lang/Object;Lcom/android/server/attention/AttentionManagerService$AttentionHandler;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;

    invoke-direct {v0, p0}, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;-><init>(Lcom/android/server/attention/AttentionManagerService;)V

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mConnection:Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/attention/AttentionManagerService;->mPowerManager:Landroid/os/PowerManager;

    iput-object p3, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    invoke-static {p1}, Landroid/hardware/SensorPrivacyManager;->getInstance(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mServiceBindingLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static resolveAttentionService(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getAttentionServicePackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/attention/AttentionManagerService;->sTestAttentionServicePackage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/attention/AttentionManagerService;->sTestAttentionServicePackage:Ljava/lang/String;

    const/16 v3, 0x80

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const/high16 v3, 0x100000

    move-object v1, v0

    :goto_0
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.service.attention.AttentionService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    const-string v1, "AttentionManagerService"

    if-eqz p0, :cond_3

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string/jumbo v3, "android.permission.BIND_ATTENTION_SERVICE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Service "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " should require android.permission.BIND_ATTENTION_SERVICE permission. Found "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " permission"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Service android.service.attention.AttentionService not found in package "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v2
.end method


# virtual methods
.method public cancel()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    iget-boolean v1, v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsFulfilled:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iput-boolean v3, v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsFulfilled:Z

    iget-object p0, v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mCallbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    invoke-virtual {p0, v2}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;->onFailure(I)V

    return-void

    :cond_1
    :try_start_0
    iget-object v0, v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;

    invoke-interface {v1, v0}, Landroid/service/attention/IAttentionService;->cancelAttentionCheck(Landroid/service/attention/IAttentionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "AttentionManagerService"

    const-string/jumbo v1, "Unable to cancel attention check"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    iput-boolean v3, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsFulfilled:Z

    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mCallbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    invoke-virtual {p0, v2}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;->onFailure(I)V

    :goto_0
    return-void
.end method

.method public cancelAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    iget-object v1, v1, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mCallbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "AttentionManagerService"

    const-string p1, "Cannot cancel a non-current request"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->cancel()V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public checkAttention(JLandroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)Z
    .locals 12

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/server/attention/AttentionManagerService;->mIsServiceEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "AttentionManagerService"

    const-string/jumbo p1, "Trying to call checkAttention() on an unsupported device."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->isServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "AttentionManagerService"

    const-string/jumbo p1, "Service is not available at this moment."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "AttentionManagerService"

    const-string p1, "Camera is locked by a toggle."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_6

    :cond_3
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->freeIfInactiveLocked()V

    iget-boolean v3, p0, Lcom/android/server/attention/AttentionManagerService;->mBinding:Z

    const/4 v4, 0x1

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    iput-boolean v4, p0, Lcom/android/server/attention/AttentionManagerService;->mBinding:Z

    new-instance v3, Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda2;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/attention/AttentionManagerService;I)V

    iget-object v5, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    invoke-static {v7, v8, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :try_start_1
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mServiceBindingLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v7, v8, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "AttentionManagerService"

    const-string v7, "Interrupted while waiting to bind Attention Service."

    invoke-static {v3, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object v3, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionCheckCacheBuffer:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;

    const/4 v7, 0x0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    iget v8, v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mStartIndex:I

    iget v9, v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mSize:I

    add-int/2addr v8, v9

    sub-int/2addr v8, v4

    rem-int/lit8 v8, v8, 0x5

    if-nez v9, :cond_7

    goto :goto_2

    :cond_7
    iget-object v0, v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mQueue:[Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    aget-object v7, v0, v8

    :goto_2
    if-eqz v7, :cond_8

    iget-wide v8, v7, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mLastComputed:J

    iget-wide v10, p0, Lcom/android/server/attention/AttentionManagerService;->mStaleAfterMillis:J

    add-long/2addr v8, v10

    cmp-long v0, v5, v8

    if-gez v0, :cond_8

    iget p0, v7, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mResult:I

    iget-wide p1, v7, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mTimestamp:J

    invoke-virtual {p3, p0, p1, p2}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;->onSuccess(IJ)V

    monitor-exit v3

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    if-eqz v0, :cond_a

    iget-boolean v5, v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsDispatched:Z

    if-eqz v5, :cond_9

    iget-boolean v0, v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsFulfilled:Z

    if-nez v0, :cond_a

    :cond_9
    monitor-exit v3

    goto :goto_6

    :cond_a
    new-instance v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-direct {v0, p3, p0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;-><init>(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;Lcom/android/server/attention/AttentionManagerService;)V

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    iget-object p3, p0, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p3, :cond_b

    :try_start_3
    iget-object p3, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    invoke-virtual {p3, v2, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    iget-object p2, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    iget-object p2, p2, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;

    invoke-interface {p1, p2}, Landroid/service/attention/IAttentionService;->checkAttention(Landroid/service/attention/IAttentionCallback;)V

    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    iput-boolean v4, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsDispatched:Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    :try_start_4
    const-string p0, "AttentionManagerService"

    const-string p1, "Cannot call into the AttentionService"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    goto :goto_6

    :cond_b
    :goto_3
    monitor-exit v3

    :goto_4
    return v4

    :goto_5
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :cond_c
    :goto_6
    return v1
.end method

.method public freeIfInactiveLocked()V
    .locals 3

    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/32 v1, 0xea60

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public getStaleAfterMillis()J
    .locals 7

    const-string/jumbo p0, "attention_manager_service"

    const-string/jumbo v0, "stale_after_millis"

    const-wide/16 v1, 0x3e8

    invoke-static {p0, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-ltz p0, :cond_1

    const-wide/16 v5, 0x2710

    cmp-long p0, v3, v5

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    return-wide v3

    :cond_1
    :goto_0
    const-string p0, "AttentionManagerService"

    const-string v0, "Bad flag value supplied for: stale_after_millis"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1
.end method

.method public isServiceAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->resolveAttentionService(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    :cond_0
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final onBootPhase(I)V
    .locals 3

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/attention/AttentionManagerService$ScreenStateReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/attention/AttentionManagerService$ScreenStateReceiver;-><init>(Lcom/android/server/attention/AttentionManagerService;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->readValuesFromDeviceConfig()V

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/attention/AttentionManagerService;)V

    const-string/jumbo v1, "attention_manager_service"

    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    iget-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x111018f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/attention/AttentionManagerService;->mIsProximityEnabled:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mIsProximityEnabled is: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/attention/AttentionManagerService;->mIsProximityEnabled:Z

    const-string v0, "AttentionManagerService"

    invoke-static {v0, p1, p0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    new-instance v0, Lcom/android/server/attention/AttentionManagerService$BinderService;

    invoke-direct {v0, p0}, Lcom/android/server/attention/AttentionManagerService$BinderService;-><init>(Lcom/android/server/attention/AttentionManagerService;)V

    const-string/jumbo v1, "attention"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v0, Landroid/attention/AttentionManagerInternal;

    new-instance v1, Lcom/android/server/attention/AttentionManagerService$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/attention/AttentionManagerService$LocalService;-><init>(Lcom/android/server/attention/AttentionManagerService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public onStartProximityUpdates(Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)Z
    .locals 6

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/server/attention/AttentionManagerService;->mIsProximityEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "AttentionManagerService"

    const-string/jumbo p1, "Trying to call onProximityUpdate() on an unsupported device."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->isServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "AttentionManagerService"

    const-string/jumbo p1, "Service is not available at this moment."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "AttentionManagerService"

    const-string/jumbo p1, "Proximity Service is unavailable during screen off at this moment."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->freeIfInactiveLocked()V

    iget-boolean v2, p0, Lcom/android/server/attention/AttentionManagerService;->mBinding:Z

    const/4 v3, 0x1

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    iput-boolean v3, p0, Lcom/android/server/attention/AttentionManagerService;->mBinding:Z

    new-instance v2, Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda2;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/attention/AttentionManagerService;I)V

    iget-object v4, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mServiceBindingLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "AttentionManagerService"

    const-string v4, "Interrupted while waiting to bind Attention Service."

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object v2, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    if-eqz v0, :cond_6

    iget-boolean v4, v0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mStartedUpdates:Z

    if-eqz v4, :cond_6

    iget-object p0, v0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mCallbackInternal:Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;

    if-ne p0, p1, :cond_5

    const-string p0, "AttentionManagerService"

    const-string/jumbo p1, "Provided callback is already registered. Skipping."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return v3

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_5
    const-string p0, "AttentionManagerService"

    const-string/jumbo p1, "New proximity update cannot be processed because there is already an ongoing update"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return v1

    :cond_6
    new-instance v0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    invoke-direct {v0, p0, p1}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;-><init>(Lcom/android/server/attention/AttentionManagerService;Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)V

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    invoke-virtual {v0}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->startUpdates()Z

    move-result p0

    monitor-exit v2

    return p0

    :goto_2
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

.method public onStopProximityUpdates(Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mCallbackInternal:Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;

    invoke-interface {v1, p1}, Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    iget-boolean v1, p1, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mStartedUpdates:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->cancelUpdates()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "AttentionManagerService"

    const-string p1, "Cannot stop a non-current callback"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final readValuesFromDeviceConfig()V
    .locals 3

    const/4 v0, 0x1

    const-string/jumbo v1, "attention_manager_service"

    const-string/jumbo v2, "service_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/attention/AttentionManagerService;->mIsServiceEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->getStaleAfterMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/attention/AttentionManagerService;->mStaleAfterMillis:J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "readValuesFromDeviceConfig():\nmIsServiceEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/attention/AttentionManagerService;->mIsServiceEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nmStaleAfterMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/attention/AttentionManagerService;->mStaleAfterMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AttentionManagerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
