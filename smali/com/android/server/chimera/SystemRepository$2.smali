.class public final Lcom/android/server/chimera/SystemRepository$2;
.super Landroid/app/IProcessObserver$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/chimera/SystemRepository$2;->this$0:Lcom/android/server/chimera/SystemRepository;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onForegroundActivitiesChanged(IIZ)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/chimera/SystemRepository$2;->this$0:Lcom/android/server/chimera/SystemRepository;

    iget-object v1, v0, Lcom/android/server/chimera/SystemRepository;->mChimeraProcessObservers:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/chimera/SystemRepository$2;->this$0:Lcom/android/server/chimera/SystemRepository;

    iget-object v0, v0, Lcom/android/server/chimera/SystemRepository;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :goto_0
    move-object v8, v0

    goto :goto_1

    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    goto :goto_0

    :goto_1
    array-length v0, v8

    if-nez v0, :cond_1

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    iget-object v0, p0, Lcom/android/server/chimera/SystemRepository$2;->this$0:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/chimera/SystemRepository;->getCurrentHomePackageName()Ljava/lang/String;

    move-result-object v0

    aget-object v3, v8, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iget-object v0, p0, Lcom/android/server/chimera/SystemRepository$2;->this$0:Lcom/android/server/chimera/SystemRepository;

    iget-object v0, v0, Lcom/android/server/chimera/SystemRepository;->mChimeraProcessObservers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v3, v2

    :goto_2
    if-ge v3, v10, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v11, v3, 0x1

    move-object v3, v4

    check-cast v3, Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-interface/range {v3 .. v9}, Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;->onForegroundActivitiesChanged(IIZI[Ljava/lang/String;Z)V

    move p1, v4

    move p2, v5

    move p3, v6

    move v3, v11

    goto :goto_2

    :cond_2
    move v6, p3

    if-nez v9, :cond_3

    if-eqz v6, :cond_3

    iget-object p0, p0, Lcom/android/server/chimera/SystemRepository$2;->this$0:Lcom/android/server/chimera/SystemRepository;

    aget-object p1, v8, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/chimera/SystemRepository;->mLastForegroundApp:Landroid/util/Pair;

    :cond_3
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onForegroundServicesChanged(III)V
    .locals 0

    return-void
.end method

.method public final onProcessDied(II)V
    .locals 2

    sget-object p2, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->INSTANCE:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p2, p2, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mHandler:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Handler onProcessDied catch exception "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "HeimdallAlwaysRunningMonitor"

    invoke-static {p2, v0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepository$2;->this$0:Lcom/android/server/chimera/SystemRepository;

    iget-object p0, p0, Lcom/android/server/chimera/SystemRepository;->mFGActivityManager:Lcom/android/server/chimera/SystemRepository$ForegroundActivityManager;

    if-eqz p0, :cond_1

    monitor-enter p0

    :try_start_1
    iget-object p2, p0, Lcom/android/server/chimera/SystemRepository$ForegroundActivityManager;->mForegroundActivities:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->getInstance()Lcom/android/server/chimera/GPUMemoryReclaimer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_3
    sget-boolean p2, Lcom/android/server/chimera/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutPids:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public final onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
