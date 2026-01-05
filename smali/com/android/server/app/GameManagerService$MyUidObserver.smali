.class public final Lcom/android/server/app/GameManagerService$MyUidObserver;
.super Landroid/app/UidObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleUidMovedOffTop(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v0, v0, Lcom/android/server/app/GameManagerService;->mUidObserverLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v1, v1, Lcom/android/server/app/GameManagerService;->mGameForegroundUids:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0xf

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v1, v1, Lcom/android/server/app/GameManagerService;->mGameForegroundUids:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object p1, p1, Lcom/android/server/app/GameManagerService;->mGameForegroundUids:Ljava/util/Set;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object p1, p1, Lcom/android/server/app/GameManagerService;->mNonGameForegroundUids:Ljava/util/Set;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "GameManagerService"

    const-string v1, "Game power mode OFF (no games in foreground)"

    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v1, v1, Lcom/android/server/app/GameManagerService;->mNonGameForegroundUids:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v1, v1, Lcom/android/server/app/GameManagerService;->mNonGameForegroundUids:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object p1, p1, Lcom/android/server/app/GameManagerService;->mNonGameForegroundUids:Ljava/util/Set;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object p1, p1, Lcom/android/server/app/GameManagerService;->mGameForegroundUids:Ljava/util/Set;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "GameManagerService"

    const-string v1, "Game power mode ON (only games in foreground)"

    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 p1, 0x1

    invoke-virtual {p0, v2, p1}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onUidGone(IZ)V
    .locals 0

    iget-object p2, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object p2, p2, Lcom/android/server/app/GameManagerService;->mUidObserverLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService$MyUidObserver;->handleUidMovedOffTop(I)V

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onUidStateChanged(IIJI)V
    .locals 1

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService$MyUidObserver;->handleUidMovedOffTop(I)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object p2, p2, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    array-length p3, p2

    if-nez p3, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p3

    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p4, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;

    invoke-direct {p4, p0, p3}, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/app/GameManagerService$MyUidObserver;I)V

    invoke-interface {p2, p4}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p2

    iget-object p3, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object p3, p3, Lcom/android/server/app/GameManagerService;->mUidObserverLock:Ljava/lang/Object;

    monitor-enter p3

    const/16 p4, 0xf

    const/4 p5, 0x0

    if-eqz p2, :cond_3

    :try_start_0
    iget-object p2, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object p2, p2, Lcom/android/server/app/GameManagerService;->mGameForegroundUids:Ljava/util/Set;

    check-cast p2, Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object p2, p2, Lcom/android/server/app/GameManagerService;->mNonGameForegroundUids:Ljava/util/Set;

    check-cast p2, Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "GameManagerService"

    const-string v0, "Game power mode OFF (first non-game in foreground)"

    invoke-static {p2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object p2, p2, Lcom/android/server/app/GameManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {p2, p4, p5}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mNonGameForegroundUids:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit p3

    return-void

    :cond_3
    iget-object p2, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object p2, p2, Lcom/android/server/app/GameManagerService;->mGameForegroundUids:Ljava/util/Set;

    check-cast p2, Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object p2, p2, Lcom/android/server/app/GameManagerService;->mNonGameForegroundUids:Ljava/util/Set;

    check-cast p2, Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "GameManagerService"

    const-string v0, "Game power mode ON (first game in foreground)"

    invoke-static {p2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object p2, p2, Lcom/android/server/app/GameManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v0, 0x1

    invoke-virtual {p2, p4, v0}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    :cond_4
    iget-object p2, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object p2, p2, Lcom/android/server/app/GameManagerService;->mSysProps:Lcom/android/server/app/GameManagerService$Injector$1;

    const-string/jumbo p4, "debug.graphics.game_default_frame_rate.disabled"

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p4, p5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iget-object p4, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    if-nez p2, :cond_5

    iget p2, p4, Lcom/android/server/app/GameManagerService;->mGameDefaultFrameRateValue:F

    goto :goto_1

    :cond_5
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p4, p1, p2}, Lcom/android/server/app/GameManagerService;->setGameDefaultFrameRateOverride(IF)V

    iget-object p0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameForegroundUids:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit p3

    return-void

    :goto_2
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_6
    :goto_3
    return-void
.end method
