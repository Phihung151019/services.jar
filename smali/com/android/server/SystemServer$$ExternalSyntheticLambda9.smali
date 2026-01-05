.class public final synthetic Lcom/android/server/SystemServer$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;


# virtual methods
.method public final onModuleServiceConnected(Landroid/os/IBinder;)V
    .locals 2

    sget-object p0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    const-string/jumbo p0, "tethering"

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p0, p1, v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    return-void
.end method
