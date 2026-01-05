.class public final Landroid/net/NetworkStackClient$NetworkStackConnection;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;


# instance fields
.field public final synthetic this$0:Landroid/net/NetworkStackClient;


# direct methods
.method public constructor <init>(Landroid/net/NetworkStackClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/NetworkStackClient$NetworkStackConnection;->this$0:Landroid/net/NetworkStackClient;

    return-void
.end method


# virtual methods
.method public final onModuleServiceConnected(Landroid/os/IBinder;)V
    .locals 0

    iget-object p0, p0, Landroid/net/NetworkStackClient$NetworkStackConnection;->this$0:Landroid/net/NetworkStackClient;

    invoke-static {p0}, Landroid/net/NetworkStackClient;->-$$Nest$mlogi(Landroid/net/NetworkStackClient;)V

    invoke-static {p0, p1}, Landroid/net/NetworkStackClient;->-$$Nest$mregisterNetworkStackService(Landroid/net/NetworkStackClient;Landroid/os/IBinder;)V

    return-void
.end method
