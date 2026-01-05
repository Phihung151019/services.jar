.class public final Lcom/android/server/HeimdAllFsService$1;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/HeimdAllFsService;


# direct methods
.method public constructor <init>(Lcom/android/server/HeimdAllFsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    const-string p1, "HeimdAllFS"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const-string/jumbo v0, "persist.sys.heimdallfs.firstlaunchinfo"

    const-string/jumbo v1, "runIdleMaint, HeimdAllFS Thread End, latch down"

    const-string v2, "HeimdAllFS"

    const-string/jumbo v3, "Set H.fs first launch date "

    :try_start_0
    const-string/jumbo v4, "runIdleMaint, HeimdAllFS Thread Start"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v5, v4, Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyMMdd"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/HeimdAllFsService;->mIsUserTrial:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/HeimdAllFsService;->setTriggerThreshold()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    :goto_0
    sget-boolean v5, Lcom/android/server/HeimdAllFsService;->mForceService:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v6, "sys.heimdallfs.todayinfo"

    if-nez v5, :cond_1

    :try_start_1
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v0, "Once a day, bye bye"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    iget-object p0, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_1
    :try_start_2
    invoke-static {v6, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v5, Lcom/android/server/HeimdAllFsService;->mForceService:Z

    if-nez v5, :cond_2

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    iget-object p0, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_2
    :try_start_3
    sget-boolean v0, Lcom/android/server/HeimdAllFsService;->mForceService:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/server/HeimdAllFsService;->checkFirstLaunchDay()Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "Wait for 16 days to activate H.fs"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    iget-object p0, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    invoke-virtual {v0}, Lcom/android/server/HeimdAllFsService;->getPackagesOnUserdata()Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/HeimdAllFsService;->mPackagesInfo:Ljava/util/List;

    sget-object v0, Lcom/android/server/HeimdAllFsService$FunctionOrder;->DEFRAG:Lcom/android/server/HeimdAllFsService$FunctionOrder;

    invoke-static {v0}, Lcom/android/server/HeimdAllFsService;->isServiceActivate(Lcom/android/server/HeimdAllFsService$FunctionOrder;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Defrag!!"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-object v0, Lcom/android/server/HeimdAllFsService$FunctionOrder;->COMPRESS:Lcom/android/server/HeimdAllFsService$FunctionOrder;

    invoke-static {v0}, Lcom/android/server/HeimdAllFsService;->isServiceActivate(Lcom/android/server/HeimdAllFsService$FunctionOrder;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    iget-object v3, v0, Lcom/android/server/HeimdAllFsService;->mPackagesInfo:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/android/server/HeimdAllFsService;->startCompress(Ljava/util/List;)V

    :cond_5
    const-string v0, "HeimdAllFS Thread End Normally"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    iget-object p0, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :goto_1
    :try_start_5
    const-string v3, "Exception!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    iget-object p0, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_6
    return-void

    :goto_2
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    iget-object p0, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_7
    throw v0
.end method
