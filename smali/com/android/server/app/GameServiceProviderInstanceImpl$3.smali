.class public final Lcom/android/server/app/GameServiceProviderInstanceImpl$3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$3;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    return-void
.end method


# virtual methods
.method public final onTransientSystemBarsVisibilityChanged(IZZ)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$3;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameSessionRecord;

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/app/GameSessionRecord;->mIGameSession:Landroid/service/games/IGameSession;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-interface {p0, p2}, Landroid/service/games/IGameSession;->onTransientSystemBarVisibilityFromRevealGestureChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    const-string p0, "GameServiceProviderInstance"

    const-string p2, "Failed to send transient system bars visibility from reveal gesture for task: "

    invoke-static {p1, p2, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
