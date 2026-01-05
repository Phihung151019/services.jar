.class public final synthetic Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

.field public final synthetic f$1:Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

.field public final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    iput-object p2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda7;->f$1:Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

    iput-object p3, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda7;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda7;->f$1:Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda7;->f$2:Landroid/os/Bundle;

    iget-object v2, v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mCallbackService:Lcom/android/net/IProxyCallback;

    if-nez v2, :cond_0

    iput-object v1, v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mLastCredentialsCallback:Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

    iput-object p0, v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mLastCredentialsResponse:Landroid/os/Bundle;

    sget-object p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sPendinOperationsList:Ljava/util/List;

    const-string/jumbo v1, "setProxyCredentials"

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->bindProxyService()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v2, p0, v1}, Lcom/android/net/IProxyCallback;->onCredentialsReceived(Landroid/os/Bundle;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo v0, "LocalProxyManager"

    const-string v1, "Faield to set received credentials"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method
