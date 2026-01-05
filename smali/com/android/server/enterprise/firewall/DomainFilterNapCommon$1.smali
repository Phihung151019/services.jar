.class public final Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$1;->this$0:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onAvailable : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DomainFilterNapCommon"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$1;->this$0:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mNapEnabled:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mDomainFilterEnabled:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p0

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    move-result-object p1

    const-string v0, "DnsResolverAdapter"

    const-string/jumbo v1, "updateEnforceDnsUidForNetwork - entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda0;-><init>(IZ)V

    invoke-virtual {p1, v1}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->runWithExceptionHandling(Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$CheckedRemoteRequest;)V

    const-string/jumbo p0, "updateEnforceDnsUidForNetwork - exited"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
