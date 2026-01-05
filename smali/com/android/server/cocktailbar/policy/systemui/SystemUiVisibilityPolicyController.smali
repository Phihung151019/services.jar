.class public final Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static mInstance:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mStateListeners:Ljava/util/ArrayList;

.field public mSystemUiVisibility:I

.field public mSystemUiVisibilityHandler:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityHandler;

.field public mSystemUiVisibilityThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibility:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mStateListeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final enqueueMessageLocked(Landroid/os/Message;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibilityThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "SystemUiVisibility"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibilityThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityHandler;

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibilityThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityHandler;-><init>(Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibilityHandler:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityHandler;

    new-instance v2, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$1;

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

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibilityHandler:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityHandler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object p2, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibilityHandler:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityHandler;

    if-eqz p2, :cond_2

    const-wide/16 v0, 0x0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibilityHandler:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityHandler;

    const/16 p2, 0x65

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibilityHandler:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityHandler;

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method

.method public final notifyStateToBinder(Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget p1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibility:I

    iput p1, v1, Landroid/os/Message;->arg1:I

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->enqueueMessageLocked(Landroid/os/Message;Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setState(IIZ)V
    .locals 0

    if-eqz p3, :cond_0

    iget p3, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibility:I

    not-int p2, p2

    and-int/2addr p2, p3

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibility:I

    return-void

    :cond_0
    iget p2, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibility:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibility:I

    return-void
.end method

.method public final systemUiVisibilityChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    iget v3, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibility:I

    iput v3, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->enqueueMessageLocked(Landroid/os/Message;Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
