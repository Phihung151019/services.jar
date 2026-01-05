.class public final synthetic Lcom/android/server/SystemServer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;


# virtual methods
.method public final handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z
    .locals 11

    sget-object p1, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const/16 p1, 0x3e8

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const-string/jumbo v7, "system_server"

    iget-object v10, p4, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->exceptionMessage:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v9, p2

    filled-new-array/range {v5 .. v10}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x7558

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const-string/jumbo v3, "system_server"

    const/4 v5, 0x3

    const/16 v0, 0x50

    const/16 v1, 0x3e8

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;II)V

    const-class p1, Lcom/android/server/SystemServer;

    monitor-enter p1

    :try_start_0
    sget-object v0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p2, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
