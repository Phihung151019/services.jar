.class public final Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    const-string v0, "AbsCocktailBarStatePolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "handleMessage: entry what = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v2, 0x4

    if-eq v0, v2, :cond_e

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v0, v2, :cond_8

    const/16 v2, 0x31

    if-eq v0, v2, :cond_5

    const/16 v1, 0x33

    if-eq v0, v1, :cond_2

    const/16 p1, 0x65

    if-eq v0, p1, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p1, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mCocktailBarStateThread:Landroid/os/HandlerThread;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v3, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mCocktailBarStateThread:Landroid/os/HandlerThread;

    iput-object v3, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mCocktailBarStateHandler:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;

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
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->clone()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const/16 v1, 0x4d

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_1
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_3
    if-ge v4, v1, :cond_4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    check-cast v3, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    iget-object v5, v3, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-interface {p1, v5}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3, v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_4
    :goto_2
    monitor-exit v2

    return-void

    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_6

    goto :goto_4

    :cond_6
    move v1, v4

    :goto_4
    iget-object p1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;

    iget-object v0, p1, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget-boolean v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    if-eq v0, v1, :cond_7

    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget-object v2, p1, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-direct {v0, v2}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(I)V

    iput-boolean v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    iget v2, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    iget-object p1, p1, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {p1, v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    :cond_7
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;

    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput-boolean v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_9

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget-object v5, v0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v5, v5, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-direct {v2, v5}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(I)V

    iput v1, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    iget v1, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    const/16 v5, 0x80

    or-int/2addr v1, v5

    iput v1, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    iget-object v0, v0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    iget-object v1, v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_2
    iget v6, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    if-ne v6, v5, :cond_c

    iget-object v0, v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    :cond_a
    :goto_5
    if-ge v4, v5, :cond_d

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    if-eqz v3, :cond_b

    iget-object v7, v6, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_6

    :catchall_2
    move-exception p0

    goto :goto_8

    :cond_b
    :goto_6
    invoke-virtual {v6, v2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    goto :goto_5

    :cond_c
    iget-object v0, v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_7
    if-ge v4, v3, :cond_d

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    invoke-virtual {v5, v2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    goto :goto_7

    :cond_d
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;

    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    return-void

    :goto_8
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :cond_e
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v3, v0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v3, v3, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    if-eq v3, v1, :cond_f

    new-instance v3, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget-object v4, v0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v4, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-direct {v3, v4}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(I)V

    iput v1, v3, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    iget v1, v3, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    or-int/2addr v1, v2

    iput v1, v3, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    iget-object v0, v0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, v3}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    :cond_f
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;

    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    return-void

    :cond_10
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    if-eq v0, p1, :cond_11

    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(I)V

    iget v2, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v1, v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    :cond_11
    :goto_9
    return-void
.end method
