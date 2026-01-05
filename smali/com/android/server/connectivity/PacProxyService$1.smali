.class public final Lcom/android/server/connectivity/PacProxyService$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/PacProxyService;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/PacProxyService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const-string v0, "Failed to load PAC file: "

    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    iget-object v1, v1, Lcom/android/server/connectivity/PacProxyService;->mPacUrl:Landroid/net/Uri;

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v2, -0xbb

    invoke-static {v2}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v2

    :try_start_0
    invoke-static {v1}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$smget(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v3, "PacProxyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    iget-object v2, v2, Lcom/android/server/connectivity/PacProxyService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iget-object v3, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    iget-object v3, v3, Lcom/android/server/connectivity/PacProxyService;->mCurrentPac:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    iget-object v4, v3, Lcom/android/server/connectivity/PacProxyService;->mProxyService:Lcom/android/net/IProxyService;

    const-string/jumbo v5, "PacProxyService"

    if-nez v4, :cond_1

    const-string/jumbo v0, "setCurrentProxyScript: no proxy service"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :cond_1
    :try_start_3
    invoke-interface {v4, v0}, Lcom/android/net/IProxyService;->setPacFile(Ljava/lang/String;)V

    iput-object v0, v3, Lcom/android/server/connectivity/PacProxyService;->mCurrentPac:Ljava/lang/String;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    const-string/jumbo v3, "Unable to set PAC file"

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    iput-boolean v1, v0, Lcom/android/server/connectivity/PacProxyService;->mHasDownloaded:Z

    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v0}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$msendProxyIfNeeded(Lcom/android/server/connectivity/PacProxyService;)V

    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentDelay:I

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/PacProxyService;->setDownloadIn(I)V

    goto :goto_3

    :goto_2
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :cond_3
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    iget v0, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentDelay:I

    add-int/2addr v0, v1

    const/4 v1, 0x3

    if-le v0, v1, :cond_4

    move v0, v1

    :cond_4
    iput v0, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentDelay:I

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/PacProxyService;->setDownloadIn(I)V

    :goto_3
    return-void

    :goto_4
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw p0
.end method
