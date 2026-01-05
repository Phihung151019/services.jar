.class public final Lcom/android/server/enterprise/plm/ProcessLifecycleManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static volatile sInstance:Lcom/android/server/enterprise/plm/ProcessLifecycleManager;


# instance fields
.field public final mStateTracker:Lcom/android/server/enterprise/plm/ProcessStateTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ProcessLifecycleManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/android/server/enterprise/plm/ProcessAdapter;

    new-instance v3, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    new-instance v4, Lcom/android/server/enterprise/plm/context/PeripheralContext;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-direct {v3, p1, v4}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/plm/context/ProcessContext;)V

    invoke-direct {v2, v0, v3}, Lcom/android/server/enterprise/plm/ProcessAdapter;-><init>(Landroid/os/Looper;Lcom/android/server/enterprise/plm/impl/BindServiceImpl;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/enterprise/plm/ProcessAdapter;

    new-instance v3, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    new-instance v4, Lcom/android/server/enterprise/plm/context/KnoxZtContext;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-direct {v3, p1, v4}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/plm/context/ProcessContext;)V

    invoke-direct {v2, v0, v3}, Lcom/android/server/enterprise/plm/ProcessAdapter;-><init>(Landroid/os/Looper;Lcom/android/server/enterprise/plm/impl/BindServiceImpl;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/enterprise/plm/ProcessStateTracker;

    invoke-direct {v2, v0, p1, v1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;->mStateTracker:Lcom/android/server/enterprise/plm/ProcessStateTracker;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/plm/ProcessLifecycleManager;
    .locals 2

    sget-object v0, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;->sInstance:Lcom/android/server/enterprise/plm/ProcessLifecycleManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;->sInstance:Lcom/android/server/enterprise/plm/ProcessLifecycleManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;->sInstance:Lcom/android/server/enterprise/plm/ProcessLifecycleManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/android/server/enterprise/plm/ProcessLifecycleManager;->sInstance:Lcom/android/server/enterprise/plm/ProcessLifecycleManager;

    return-object p0
.end method
