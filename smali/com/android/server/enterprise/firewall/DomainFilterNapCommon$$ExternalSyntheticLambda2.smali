.class public final synthetic Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

.field public final synthetic f$1:Landroid/net/ConnectivityManager;

.field public final synthetic f$2:Landroid/net/NetworkRequest$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;Landroid/net/ConnectivityManager;Landroid/net/NetworkRequest$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    iput-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda2;->f$1:Landroid/net/ConnectivityManager;

    iput-object p3, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda2;->f$2:Landroid/net/NetworkRequest$Builder;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda2;->f$1:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda2;->f$2:Landroid/net/NetworkRequest$Builder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mConnectivityCallback:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$1;

    invoke-virtual {v1, p0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    const-string p0, "DomainFilterNapCommon"

    const-string/jumbo v1, "callback registered"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mCallbackRegistered:Z

    return-void
.end method
