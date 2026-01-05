.class public final synthetic Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/core/pm/containerservice/IContainerService;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/core/pm/containerservice/IContainerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/core/pm/containerservice/IContainerService;->doForceGC()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method
