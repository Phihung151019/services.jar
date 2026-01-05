.class public final synthetic Lcom/android/server/enterprise/firewall/DomainFilter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/firewall/DomainFilter;

.field public final synthetic f$1:Landroid/net/Network;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/net/Network;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    iput-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$$ExternalSyntheticLambda0;->f$1:Landroid/net/Network;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$$ExternalSyntheticLambda0;->f$1:Landroid/net/Network;

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDnsResolverAdapter:Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    invoke-virtual {p0}, Landroid/net/Network;->getNetId()I

    move-result p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "flushNetworkCache - entered"

    const-string v2, "DnsResolverAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda2;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda2;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->runWithExceptionHandling(Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$CheckedRemoteRequest;)V

    const-string/jumbo p0, "flushNetworkCache - exited"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
