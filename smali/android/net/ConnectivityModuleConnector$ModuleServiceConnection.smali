.class public final Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final mModuleServiceCallback:Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;

.field public final mPackageName:Ljava/lang/String;

.field public final synthetic this$0:Landroid/net/ConnectivityModuleConnector;


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityModuleConnector;Ljava/lang/String;Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;->this$0:Landroid/net/ConnectivityModuleConnector;

    iput-object p2, p0, Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;->mModuleServiceCallback:Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;->this$0:Landroid/net/ConnectivityModuleConnector;

    invoke-static {p1}, Landroid/net/ConnectivityModuleConnector;->-$$Nest$mlogi(Landroid/net/ConnectivityModuleConnector;)V

    iget-object p0, p0, Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;->mModuleServiceCallback:Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;

    invoke-interface {p0, p2}, Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;->onModuleServiceConnected(Landroid/os/IBinder;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p1, p0, Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;->this$0:Landroid/net/ConnectivityModuleConnector;

    iget-object p0, p0, Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;->mPackageName:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/net/ConnectivityModuleConnector;->-$$Nest$mmaybeCrashWithTerribleFailure(Landroid/net/ConnectivityModuleConnector;Ljava/lang/String;)V

    return-void
.end method
