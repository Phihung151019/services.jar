.class public final Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mNeedReport:Z

.field public final mProc:Lcom/android/server/wm/WindowProcessController;

.field public final synthetic this$0:Lcom/android/server/wm/TransitionController$RemotePlayer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TransitionController$RemotePlayer;Lcom/android/server/wm/WindowProcessController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;->this$0:Lcom/android/server/wm/TransitionController$RemotePlayer;

    iput-object p2, p0, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;->mProc:Lcom/android/server/wm/WindowProcessController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;->this$0:Lcom/android/server/wm/TransitionController$RemotePlayer;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;->this$0:Lcom/android/server/wm/TransitionController$RemotePlayer;

    iget-object p0, p0, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;->mProc:Lcom/android/server/wm/WindowProcessController;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v2}, Lcom/android/server/wm/TransitionController$RemotePlayer;->update(Lcom/android/server/wm/WindowProcessController;ZZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
