.class public final Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

.field public final synthetic val$agentName:Ljava/lang/String;

.field public final synthetic val$command:Ljava/lang/String;

.field public final synthetic val$params:Landroid/os/Bundle;

.field public final synthetic val$svcName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    iput-object p2, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;->val$agentName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;->val$svcName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;->val$command:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;->val$params:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;->val$agentName:Ljava/lang/String;

    const-string/jumbo v1, "relayAsync from bg thread, relay start to System proxy agent : "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DualDARComnService"

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;->getInstance()Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;->val$svcName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;->val$command:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;->val$params:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;->relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;->val$agentName:Ljava/lang/String;

    const-string/jumbo v0, "relayAsync from bg thread, relay end to System proxy agent : "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
