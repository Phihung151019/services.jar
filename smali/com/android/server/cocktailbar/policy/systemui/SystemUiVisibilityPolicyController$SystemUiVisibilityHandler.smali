.class public final Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityHandler;->this$0:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    const-string/jumbo v0, "SystemUiVisibilityPolicyController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "handleMessage: entry what = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2, v0}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/16 p1, 0x65

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityHandler;->this$0:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibilityThread:Landroid/os/HandlerThread;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibilityThread:Landroid/os/HandlerThread;

    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibilityHandler:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityHandler;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityHandler;->this$0:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mStateListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_3
    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityListenerInfo;

    iget-object v5, v4, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityListenerInfo;->token:Landroid/os/IBinder;

    invoke-interface {v0, v5}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, p1}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityListenerInfo;->onSystemUiVisibilityChanged(I)V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_4
    :goto_2
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_5
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityHandler;->this$0:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mStateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_2
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_4
    if-ge v2, v1, :cond_6

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityListenerInfo;

    invoke-virtual {v3, p1}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityListenerInfo;->onSystemUiVisibilityChanged(I)V

    goto :goto_4

    :catchall_2
    move-exception p0

    goto :goto_5

    :cond_6
    monitor-exit v0

    return-void

    :goto_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0
.end method
