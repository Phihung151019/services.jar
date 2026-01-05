.class public final Lcom/android/server/job/controllers/BackgroundJobsController$2;
.super Lcom/android/server/AppStateTrackerImpl$Listener;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/BackgroundJobsController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/BackgroundJobsController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$2;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    return-void
.end method


# virtual methods
.method public final updateAllJobs()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$2;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$2;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateJobRestrictionsLocked(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateJobsForUid(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$2;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$2;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateJobRestrictionsLocked(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateJobsForUidPackage(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$2;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$2;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateJobRestrictionsLocked(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
