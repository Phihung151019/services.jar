.class public final Landroid/net/networkstack/ModuleNetworkStackClient$PollingRunner;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroid/net/networkstack/ModuleNetworkStackClient;


# direct methods
.method public constructor <init>(Landroid/net/networkstack/ModuleNetworkStackClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/networkstack/ModuleNetworkStackClient$PollingRunner;->this$0:Landroid/net/networkstack/ModuleNetworkStackClient;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :goto_0
    invoke-static {}, Landroid/net/NetworkStack;->getService()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/net/networkstack/ModuleNetworkStackClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Interrupted while waiting for NetworkStack connector"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/net/networkstack/ModuleNetworkStackClient$PollingRunner;->this$0:Landroid/net/networkstack/ModuleNetworkStackClient;

    invoke-static {v0}, Landroid/net/INetworkStackConnector$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackConnector;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/networkstack/NetworkStackClientBase;->onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V

    return-void
.end method
