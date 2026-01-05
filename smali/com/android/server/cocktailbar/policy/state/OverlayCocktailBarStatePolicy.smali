.class public final Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mCocktailBarStateHandler:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;

.field public mCocktailBarStateThread:Landroid/os/HandlerThread;

.field public final mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

.field public final mLock:Ljava/lang/Object;

.field public final mLockMap:Landroid/util/SparseArray;

.field public final mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

.field public final mWindowType:I


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mWindowType:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mLockMap:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    return-void
.end method


# virtual methods
.method public final enqueueMessageLocked(Landroid/os/Message;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mCocktailBarStateThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CocktailBarVisibility"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mCocktailBarStateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mCocktailBarStateThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;-><init>(Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mCocktailBarStateHandler:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;

    new-instance v2, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    iget p2, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mCocktailBarStateHandler:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object p2, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mCocktailBarStateHandler:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;

    if-eqz p2, :cond_2

    const-wide/16 v0, 0x0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mCocktailBarStateHandler:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;

    const/16 p2, 0x65

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mCocktailBarStateHandler:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method

.method public final updateActivate(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x31

    iput v2, v1, Landroid/os/Message;->what:I

    iput p1, v1, Landroid/os/Message;->arg1:I

    const/4 p1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->enqueueMessageLocked(Landroid/os/Message;Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateCocktailBarWindowType(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->what:I

    iput p1, v1, Landroid/os/Message;->arg1:I

    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->enqueueMessageLocked(Landroid/os/Message;Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
