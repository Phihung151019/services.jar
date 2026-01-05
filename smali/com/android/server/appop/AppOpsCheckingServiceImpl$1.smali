.class public final Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/AppOpsCheckingServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsCheckingServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;->this$0:Lcom/android/server/appop/AppOpsCheckingServiceImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;->this$0:Lcom/android/server/appop/AppOpsCheckingServiceImpl;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;->this$0:Lcom/android/server/appop/AppOpsCheckingServiceImpl;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteScheduled:Z

    iput-boolean v2, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFastWriteScheduled:Z

    new-instance v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl$1$1;-><init>(Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
