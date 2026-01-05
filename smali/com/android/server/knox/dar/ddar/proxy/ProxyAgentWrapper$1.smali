.class public final Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 3

    const-string p1, "KnoxService::ProxyAgentWrapper"

    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    iget-object v0, v0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    invoke-virtual {v0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onBindingDied : "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    iput-boolean v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    invoke-static {p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$mtriggerRestart(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 3

    const-string p1, "KnoxService::ProxyAgentWrapper"

    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    iget-object v0, v0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    invoke-virtual {v0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onNullBinding : "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    iput-boolean v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    invoke-static {p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$mtriggerRestart(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string p1, "KnoxService::ProxyAgentWrapper"

    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    iget-object v0, v0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    invoke-virtual {v0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Knox Proxy Agent started : "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "KnoxService::ProxyAgentWrapper: "

    const-string v3, "\n"

    invoke-static {v2, v0, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/android/server/knox/dar/ddar/DDLog$Logger;

    monitor-enter v3

    monitor-exit v3

    const-string v3, ""

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mService:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mHandler:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {p2}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    move-result-object p2

    iput-object p2, v2, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    iget-object p2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    iget-object v2, p2, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    if-nez v2, :cond_0

    const-string p0, "KnoxService::ProxyAgentWrapper"

    const-string/jumbo p2, "onServiceConnected: Unable to find Knox Proxy Agent!"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iput-boolean v1, p2, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    iput-boolean v0, p2, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsNotify:Z

    iget-object p2, p2, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    iget-boolean p2, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsReconnection:Z

    if-eqz p2, :cond_2

    const-string p2, "KnoxService::ProxyAgentWrapper"

    :try_start_1
    iget-object v0, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "sending onAgentReconnected signal"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    invoke-interface {v0}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;->onAgentReconnected()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "RemoteException: name:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -- onAgentReconnected"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2, p1, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    iput-boolean v1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsReconnection:Z

    :cond_2
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mService:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mHandler:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mService:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mHandler:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string p1, "KnoxService::ProxyAgentWrapper"

    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    iget-object v0, v0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    invoke-virtual {v0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Knox Proxy Agent disconnected : "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    iput-boolean v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    invoke-static {p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$mtriggerRestart(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
