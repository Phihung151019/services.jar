.class public Lcom/android/server/app/GameManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mService:Lcom/android/server/app/GameManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/app/GameManagerService;

    new-instance v1, Lcom/android/server/ServiceThread;

    const-string v2, "GameManagerService"

    const/16 v3, 0xa

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->start()V

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Lcom/android/server/app/GameManagerService$Injector;

    invoke-direct {v3}, Lcom/android/server/app/GameManagerService$Injector;-><init>()V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/server/app/GameManagerService;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/io/File;Lcom/android/server/app/GameManagerService$Injector;)V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 4

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService;->onBootCompleted()V

    iget-object p1, p0, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/StatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/StatsManager;

    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/app/GameManagerService;)V

    const/16 v2, 0x27b5

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    new-instance v1, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/app/GameManagerService;)V

    const/16 v2, 0x27b6

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    new-instance v1, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/app/GameManagerService;)V

    const/16 p0, 0x27b7

    invoke-virtual {p1, p0, v3, v0, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 5

    const/4 v0, 0x1

    const-string/jumbo v1, "game"

    iget-object v2, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    sget v2, Lcom/android/server/app/GameManagerService;->$r8$clinit:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/app/GameManagerService$LocalService;

    invoke-direct {v2, v1}, Lcom/android/server/app/GameManagerService$LocalService;-><init>(Lcom/android/server/app/GameManagerService;)V

    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    iget-object v3, v1, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3

    :try_start_0
    iget-object v4, v1, Lcom/android/server/wm/CompatModePackages;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v1, v1, Lcom/android/server/wm/CompatModePackages;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const-class v1, Landroid/app/GameManagerInternal;

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/app/GameManagerService$DeviceConfigListener;

    invoke-direct {v2, v1}, Lcom/android/server/app/GameManagerService$DeviceConfigListener;-><init>(Lcom/android/server/app/GameManagerService;)V

    iput-object v2, v1, Lcom/android/server/app/GameManagerService;->mDeviceConfigListener:Lcom/android/server/app/GameManagerService$DeviceConfigListener;

    iget-object p0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/app/GameManagerService$3;

    invoke-direct {v2, p0, v0}, Lcom/android/server/app/GameManagerService$3;-><init>(Lcom/android/server/app/GameManagerService;I)V

    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v1, v0, v0}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Duplicate id provided: 1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 4

    const-string v0, "GameManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Starting user "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    const-string/jumbo v1, "ON_USER_STARTING"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/android/server/app/GameManagerService;->sendUserMessage(IIILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mCurrentForegroundUser:Lcom/android/server/SystemService$TargetUser;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceController;->setCurrentForegroundUserAndEvaluateProvider(Lcom/android/server/SystemService$TargetUser;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 5

    iget-object p0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "ON_USER_STOPPING"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {p0, v0, v4, v3, v2}, Lcom/android/server/app/GameManagerService;->sendUserMessage(IIILjava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mCurrentForegroundUser:Lcom/android/server/SystemService$TargetUser;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mCurrentForegroundUser:Lcom/android/server/SystemService$TargetUser;

    invoke-virtual {v0}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceController;->setCurrentForegroundUserAndEvaluateProvider(Lcom/android/server/SystemService$TargetUser;)V

    :cond_1
    return-void

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    const-string/jumbo v2, "ON_USER_SWITCHING"

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/server/app/GameManagerService;->sendUserMessage(IIILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/app/GameServiceController;->setCurrentForegroundUserAndEvaluateProvider(Lcom/android/server/SystemService$TargetUser;)V

    :cond_0
    return-void
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mCurrentForegroundUser:Lcom/android/server/SystemService$TargetUser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mCurrentForegroundUser:Lcom/android/server/SystemService$TargetUser;

    invoke-virtual {v0}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/android/server/app/GameServiceController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceController;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
