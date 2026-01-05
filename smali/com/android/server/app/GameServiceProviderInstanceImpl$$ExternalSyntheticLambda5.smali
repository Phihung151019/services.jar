.class public final synthetic Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

.field public final synthetic f$1:Lcom/android/server/app/GameSessionRecord;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;Lcom/android/server/app/GameSessionRecord;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    iput-object p2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/app/GameSessionRecord;

    iput p3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda5;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/app/GameSessionRecord;

    iget p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda5;->f$2:I

    check-cast p1, Landroid/service/games/CreateGameSessionResult;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->attachGameSessionLocked(ILandroid/service/games/CreateGameSessionResult;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/service/games/CreateGameSessionResult;->getGameSession()Landroid/service/games/IGameSession;

    move-result-object p1

    :try_start_1
    iget-object p2, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {p2}, Landroid/app/IActivityTaskManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    iget p2, p2, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I

    if-ne p2, p0, :cond_1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/service/games/IGameSession;->onTaskFocusChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    const-string p1, "Failed to set task focused for ID: "

    const-string p2, "GameServiceProviderInstance"

    invoke-static {p0, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_2
    :goto_0
    const-string p1, "GameServiceProviderInstance"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create GameSession: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-object p2, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameSessionRecord;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyGameSessionFromRecordLocked(Lcom/android/server/app/GameSessionRecord;)V

    :goto_1
    monitor-exit p1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
