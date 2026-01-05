.class public final Lcom/android/server/app/GameServiceProviderInstanceImpl;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mActivityManager:Landroid/app/IActivityManager;

.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field public final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

.field public final mGameServiceController:Lcom/android/server/app/GameServiceProviderInstanceImpl$6;

.field public final mGameServiceLifecycleCallbacks:Lcom/android/server/app/GameServiceProviderInstanceImpl$1;

.field public final mGameSessionController:Lcom/android/server/app/GameServiceProviderInstanceImpl$7;

.field public final mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;

.field public final mGameSessionServiceLifecycleCallbacks:Lcom/android/server/app/GameServiceProviderInstanceImpl$2;

.field public final mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mGameTaskInfoProvider:Lcom/android/server/app/GameTaskInfoProvider;

.field public volatile mIsRunning:Z

.field public final mLock:Ljava/lang/Object;

.field public final mPackageNameToProcessCountMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mPidToPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mProcessObserver:Lcom/android/server/app/GameServiceProviderInstanceImpl$5;

.field public final mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

.field public final mTaskStackListener:Lcom/android/server/app/GameServiceProviderInstanceImpl$4;

.field public final mTaskSystemBarsVisibilityListener:Lcom/android/server/app/GameServiceProviderInstanceImpl$3;

.field public final mUserHandle:Landroid/os/UserHandle;

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field public final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Lcom/android/server/app/GameTaskInfoProvider;Landroid/app/IActivityManager;Landroid/app/ActivityManagerInternal;Landroid/app/IActivityTaskManager;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/wm/ActivityTaskManagerInternal;Lcom/android/internal/infra/ServiceConnector;Lcom/android/internal/infra/ServiceConnector;Lcom/android/internal/util/ScreenshotHelper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$1;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceLifecycleCallbacks:Lcom/android/server/app/GameServiceProviderInstanceImpl$1;

    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$2;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceLifecycleCallbacks:Lcom/android/server/app/GameServiceProviderInstanceImpl$2;

    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$3;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$3;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mTaskSystemBarsVisibilityListener:Lcom/android/server/app/GameServiceProviderInstanceImpl$3;

    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mTaskStackListener:Lcom/android/server/app/GameServiceProviderInstanceImpl$4;

    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mProcessObserver:Lcom/android/server/app/GameServiceProviderInstanceImpl$5;

    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$6;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$6;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceController:Lcom/android/server/app/GameServiceProviderInstanceImpl$6;

    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$7;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$7;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionController:Lcom/android/server/app/GameServiceProviderInstanceImpl$7;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPidToPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPackageNameToProcessCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mUserHandle:Landroid/os/UserHandle;

    iput-object p2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameTaskInfoProvider:Lcom/android/server/app/GameTaskInfoProvider;

    iput-object p4, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityManager:Landroid/app/IActivityManager;

    iput-object p5, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iput-object p6, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iput-object p7, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iput-object p8, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iput-object p9, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p10, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    iput-object p11, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    iput-object p12, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    return-void
.end method

.method public static destroyGameSessionDuringAttach(ILandroid/service/games/CreateGameSessionResult;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/service/games/CreateGameSessionResult;->getGameSession()Landroid/service/games/IGameSession;

    move-result-object p1

    invoke-interface {p1}, Landroid/service/games/IGameSession;->onDestroyed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "Failed to destroy session: "

    const-string v0, "GameServiceProviderInstance"

    invoke-static {p0, p1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final attachGameSessionLocked(ILandroid/service/games/CreateGameSessionResult;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameSessionRecord;

    const-string v1, "GameServiceProviderInstance"

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "No associated game session record. Destroying id: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyGameSessionDuringAttach(ILandroid/service/games/CreateGameSessionResult;)V

    return-void

    :cond_0
    sget-object v2, Lcom/android/server/app/GameSessionRecord$State;->GAME_SESSION_REQUESTED:Lcom/android/server/app/GameSessionRecord$State;

    iget-object v3, v0, Lcom/android/server/app/GameSessionRecord;->mState:Lcom/android/server/app/GameSessionRecord$State;

    if-ne v3, v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p2}, Landroid/service/games/CreateGameSessionResult;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/WindowManagerInternal;->addTrustedTaskOverlay(ILandroid/view/SurfaceControlViewHost$SurfacePackage;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2}, Landroid/service/games/CreateGameSessionResult;->getGameSession()Landroid/service/games/IGameSession;

    move-result-object v5

    invoke-virtual {p2}, Landroid/service/games/CreateGameSessionResult;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v6

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/app/GameSessionRecord;

    sget-object v3, Lcom/android/server/app/GameSessionRecord$State;->GAME_SESSION_ATTACHED:Lcom/android/server/app/GameSessionRecord$State;

    iget-object v4, v0, Lcom/android/server/app/GameSessionRecord;->mRootComponentName:Landroid/content/ComponentName;

    iget v2, v0, Lcom/android/server/app/GameSessionRecord;->mTaskId:I

    invoke-direct/range {v1 .. v6}, Lcom/android/server/app/GameSessionRecord;-><init>(ILcom/android/server/app/GameSessionRecord$State;Landroid/content/ComponentName;Landroid/service/games/IGameSession;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Failed to add task overlay. Destroying id: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyGameSessionDuringAttach(ILandroid/service/games/CreateGameSessionResult;)V

    return-void

    :cond_1
    invoke-static {p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyGameSessionDuringAttach(ILandroid/service/games/CreateGameSessionResult;)V

    return-void
.end method

.method public final createGameSessionLocked(I)V
    .locals 12

    iget-boolean v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mIsRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/app/GameSessionRecord;

    const-string v0, ") creation. Ignoring."

    const-string v1, "GameServiceProviderInstance"

    if-nez v4, :cond_1

    const-string/jumbo p0, "No existing game session record found for task (id: "

    invoke-static {p1, p0, v0, v1}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v2, Lcom/android/server/app/GameSessionRecord$State;->NO_GAME_SESSION_REQUESTED:Lcom/android/server/app/GameSessionRecord$State;

    iget-object v3, v4, Lcom/android/server/app/GameSessionRecord;->mState:Lcom/android/server/app/GameSessionRecord$State;

    if-ne v3, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameTaskInfoProvider:Lcom/android/server/app/GameTaskInfoProvider;

    invoke-virtual {v2, p1}, Lcom/android/server/app/GameTaskInfoProvider;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    move-object v5, v2

    goto :goto_0

    :cond_2
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    new-instance v5, Landroid/service/games/GameSessionViewHostConfiguration;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v5, v2, v6, v3}, Landroid/service/games/GameSessionViewHostConfiguration;-><init>(III)V

    :goto_0
    if-nez v5, :cond_3

    const-string p0, "Failed to create view host configuration for task (id"

    invoke-static {p1, p0, v0, v1}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/android/server/app/GameSessionRecord;

    sget-object v8, Lcom/android/server/app/GameSessionRecord$State;->GAME_SESSION_REQUESTED:Lcom/android/server/app/GameSessionRecord$State;

    iget-object v9, v4, Lcom/android/server/app/GameSessionRecord;->mRootComponentName:Landroid/content/ComponentName;

    iget v7, v4, Lcom/android/server/app/GameSessionRecord;->mTaskId:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/android/server/app/GameSessionRecord;-><init>(ILcom/android/server/app/GameSessionRecord$State;Landroid/content/ComponentName;Landroid/service/games/IGameSession;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    invoke-virtual {v0, v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    const-wide/16 v1, 0x2710

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v4, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;Lcom/android/server/app/GameSessionRecord;I)V

    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v6

    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;ILcom/android/server/app/GameSessionRecord;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;)V

    check-cast v0, Lcom/android/internal/infra/ServiceConnector$Impl;

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    return-void

    :cond_4
    move v3, p1

    const-string p0, "Existing game session for task (id: "

    const-string p1, ") is not awaiting game session request. Ignoring."

    invoke-static {v3, p0, p1, v1}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final destroyGameSessionFromRecordLocked(Lcom/android/server/app/GameSessionRecord;)V
    .locals 4

    iget-object v0, p1, Lcom/android/server/app/GameSessionRecord;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    const-string v1, "GameServiceProviderInstance"

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v3, p1, Lcom/android/server/app/GameSessionRecord;->mTaskId:I

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/WindowManagerInternal;->removeTrustedTaskOverlay(ILandroid/view/SurfaceControlViewHost$SurfacePackage;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to remove task overlay. This is expected if the task is already destroyed: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/android/server/app/GameSessionRecord;->mIGameSession:Landroid/service/games/IGameSession;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/service/games/IGameSession;->onDestroyed()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to destroy session: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    invoke-interface {p0}, Lcom/android/internal/infra/ServiceConnector;->unbind()V

    :cond_2
    return-void
.end method

.method public final gameTaskStartedLocked(Lcom/android/server/app/GameTaskInfo;)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mIsRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lcom/android/server/app/GameTaskInfo;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameSessionRecord;

    if-eqz v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Existing game session found for task (id: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/android/server/app/GameTaskInfo;->mTaskId:I

    const-string v0, ") creation. Ignoring."

    const-string v1, "GameServiceProviderInstance"

    invoke-static {p1, v0, v1, p0}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return-void

    :cond_1
    iget v3, p1, Lcom/android/server/app/GameTaskInfo;->mTaskId:I

    iget-object v5, p1, Lcom/android/server/app/GameTaskInfo;->mComponentName:Landroid/content/ComponentName;

    new-instance v2, Lcom/android/server/app/GameSessionRecord;

    sget-object v4, Lcom/android/server/app/GameSessionRecord$State;->NO_GAME_SESSION_REQUESTED:Lcom/android/server/app/GameSessionRecord$State;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/app/GameSessionRecord;-><init>(ILcom/android/server/app/GameSessionRecord$State;Landroid/content/ComponentName;Landroid/service/games/IGameSession;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/app/GameTaskInfo;)V

    check-cast p0, Lcom/android/internal/infra/ServiceConnector$Impl;

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public final onForegroundActivitiesChangedLocked(I)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPidToPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/app/GameSessionRecord;

    iget-object v2, v2, Lcom/android/server/app/GameSessionRecord;->mRootComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPidToPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPackageNameToProcessCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPackageNameToProcessCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameSessionRecord;

    sget-object v2, Lcom/android/server/app/GameSessionRecord$State;->GAME_SESSION_ENDED_PROCESS_DEATH:Lcom/android/server/app/GameSessionRecord$State;

    iget-object v3, v1, Lcom/android/server/app/GameSessionRecord;->mState:Lcom/android/server/app/GameSessionRecord$State;

    if-ne v3, v2, :cond_3

    iget-object v2, v1, Lcom/android/server/app/GameSessionRecord;->mRootComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, v1, Lcom/android/server/app/GameSessionRecord;->mTaskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v6, v1, Lcom/android/server/app/GameSessionRecord;->mRootComponentName:Landroid/content/ComponentName;

    new-instance v3, Lcom/android/server/app/GameSessionRecord;

    sget-object v5, Lcom/android/server/app/GameSessionRecord$State;->NO_GAME_SESSION_REQUESTED:Lcom/android/server/app/GameSessionRecord$State;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/app/GameSessionRecord;-><init>(ILcom/android/server/app/GameSessionRecord$State;Landroid/content/ComponentName;Landroid/service/games/IGameSession;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    invoke-virtual {v2, v9, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->createGameSessionLocked(I)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public final onProcessDiedLocked(I)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPidToPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPackageNameToProcessCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    const-string p0, "GameServiceProviderInstance"

    const-string/jumbo p1, "onProcessDiedLocked(): Missing process count for package"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPackageNameToProcessCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameSessionRecord;

    iget-object v2, v1, Lcom/android/server/app/GameSessionRecord;->mIGameSession:Landroid/service/games/IGameSession;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/server/app/GameSessionRecord;->mRootComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameTaskInfoProvider:Lcom/android/server/app/GameTaskInfoProvider;

    iget v3, v1, Lcom/android/server/app/GameSessionRecord;->mTaskId:I

    invoke-virtual {v2, v3}, Lcom/android/server/app/GameTaskInfoProvider;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-boolean v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/android/server/app/GameSessionRecord;

    sget-object v6, Lcom/android/server/app/GameSessionRecord$State;->GAME_SESSION_ENDED_PROCESS_DEATH:Lcom/android/server/app/GameSessionRecord$State;

    iget-object v7, v1, Lcom/android/server/app/GameSessionRecord;->mRootComponentName:Landroid/content/ComponentName;

    iget v5, v1, Lcom/android/server/app/GameSessionRecord;->mTaskId:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/app/GameSessionRecord;-><init>(ILcom/android/server/app/GameSessionRecord$State;Landroid/content/ComponentName;Landroid/service/games/IGameSession;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyGameSessionFromRecordLocked(Lcom/android/server/app/GameSessionRecord;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public final onTaskFocusChangedLocked(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameSessionRecord;

    if-nez v0, :cond_5

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameTaskInfoProvider:Lcom/android/server/app/GameTaskInfoProvider;

    iget-object v0, p2, Lcom/android/server/app/GameTaskInfoProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p2, Lcom/android/server/app/GameTaskInfoProvider;->mGameTaskInfoCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameTaskInfo;

    if-eqz v1, :cond_0

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, p1}, Lcom/android/server/app/GameTaskInfoProvider;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1, v0}, Lcom/android/server/app/GameTaskInfoProvider;->generateGameInfo(ILandroid/content/ComponentName;)Lcom/android/server/app/GameTaskInfo;

    move-result-object v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    const-string p0, "GameServiceProviderInstance"

    const-string/jumbo p2, "No task info for focused task: "

    invoke-static {p1, p2, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-boolean p1, v1, Lcom/android/server/app/GameTaskInfo;->mIsGameTask:Z

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->gameTaskStartedLocked(Lcom/android/server/app/GameTaskInfo;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    iget-object p0, v0, Lcom/android/server/app/GameSessionRecord;->mIGameSession:Landroid/service/games/IGameSession;

    if-nez p0, :cond_6

    goto :goto_3

    :cond_6
    :try_start_2
    invoke-interface {p0, p2}, Landroid/service/games/IGameSession;->onTaskFocusChanged(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    const-string p0, "GameServiceProviderInstance"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to notify session of task focus change: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    return-void
.end method

.method public final startLocked()V
    .locals 3

    const-string v0, "GameServiceProviderInstance"

    iget-boolean v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mIsRunning:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mIsRunning:Z

    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceLifecycleCallbacks:Lcom/android/server/app/GameServiceProviderInstanceImpl$1;

    check-cast v1, Lcom/android/internal/infra/ServiceConnector$Impl;

    invoke-virtual {v1, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->setServiceLifecycleCallbacks(Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V

    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceLifecycleCallbacks:Lcom/android/server/app/GameServiceProviderInstanceImpl$2;

    check-cast v1, Lcom/android/internal/infra/ServiceConnector$Impl;

    invoke-virtual {v1, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->setServiceLifecycleCallbacks(Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V

    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    check-cast v1, Lcom/android/internal/infra/ServiceConnector$Impl;

    invoke-virtual {v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mTaskStackListener:Lcom/android/server/app/GameServiceProviderInstanceImpl$4;

    invoke-interface {v1, v2}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed to register task stack listener"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mProcessObserver:Lcom/android/server/app/GameServiceProviderInstanceImpl$5;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "Failed to register process observer"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mTaskSystemBarsVisibilityListener:Lcom/android/server/app/GameServiceProviderInstanceImpl$3;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerInternal;->registerTaskSystemBarsListener(Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;)V

    return-void
.end method

.method public final stopLocked()V
    .locals 3

    const-string v0, "GameServiceProviderInstance"

    iget-boolean v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mIsRunning:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mIsRunning:Z

    :try_start_0
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mProcessObserver:Lcom/android/server/app/GameServiceProviderInstanceImpl$5;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed to unregister process observer"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mTaskStackListener:Lcom/android/server/app/GameServiceProviderInstanceImpl$4;

    invoke-interface {v1, v2}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "Failed to unregister task stack listener"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mTaskSystemBarsVisibilityListener:Lcom/android/server/app/GameServiceProviderInstanceImpl$3;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->unregisterTaskSystemBarsListener(Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;)V

    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameSessionRecord;

    invoke-virtual {p0, v1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyGameSessionFromRecordLocked(Lcom/android/server/app/GameSessionRecord;)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    check-cast v0, Lcom/android/internal/infra/ServiceConnector$Impl;

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    check-cast v0, Lcom/android/internal/infra/ServiceConnector$Impl;

    invoke-virtual {v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    check-cast v0, Lcom/android/internal/infra/ServiceConnector$Impl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->setServiceLifecycleCallbacks(Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V

    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    check-cast p0, Lcom/android/internal/infra/ServiceConnector$Impl;

    invoke-virtual {p0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->setServiceLifecycleCallbacks(Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V

    return-void
.end method

.method public takeScreenshot(ILcom/android/internal/infra/AndroidFuture;)V
    .locals 9

    const-string/jumbo v0, "No game session found for id: "

    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/server/app/GameSessionRecord;

    if-nez v8, :cond_0

    const-string p0, "GameServiceProviderInstance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/service/games/GameScreenshotResult;->createInternalErrorResult()Landroid/service/games/GameScreenshotResult;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v8, Lcom/android/server/app/GameSessionRecord;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda0;

    move-object v4, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;Landroid/view/SurfaceControl;ILcom/android/internal/infra/AndroidFuture;Lcom/android/server/app/GameSessionRecord;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
