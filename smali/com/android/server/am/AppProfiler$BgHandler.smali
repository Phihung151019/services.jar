.class public final Lcom/android/server/am/AppProfiler$BgHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppProfiler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppProfiler;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eq v0, v2, :cond_3

    if-eq v0, v3, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object p0, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v3, p0, Lcom/android/server/am/ActivityManagerConstants;->mEnableExtraServiceRestartDelayOnMemPressure:Z

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mExtraServiceRestartDelayOnMemPressure:[J

    aget-wide v3, p0, v0

    aget-wide v5, p0, p1

    const-string/jumbo v9, "mem-pressure-event"

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActiveServices;->performRescheduleServiceRestartOnMemoryPressureLocked(JJJLjava/lang/String;)V

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_2
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-gtz p1, :cond_5

    if-gez p1, :cond_5

    const-string p1, "ActivityManager"

    const-string v0, "Activity start nesting undercount!"

    invoke-static {p1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void

    :cond_3
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    iget-wide v4, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Lcom/android/server/am/AppProfiler$BgHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Lcom/android/server/am/AppProfiler$BgHandler;

    iget-wide v4, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Lcom/android/server/am/AppProfiler$BgHandler;

    iget-wide v0, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_5
    :goto_1
    return-void

    :cond_6
    iget-object p1, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-virtual {p1}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {p0}, Lcom/android/server/am/AppProfiler;->-$$Nest$mcollectPssInBackground(Lcom/android/server/am/AppProfiler;)V

    return-void

    :cond_7
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {p0}, Lcom/android/server/am/AppProfiler;->-$$Nest$mcollectRssInBackground(Lcom/android/server/am/AppProfiler;)V

    return-void
.end method
