.class public final synthetic Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/net/ip/IIpClientCallbacks;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda2;->f$1:Landroid/net/ip/IIpClientCallbacks;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iget-object p0, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda2;->f$1:Landroid/net/ip/IIpClientCallbacks;

    check-cast p1, Landroid/net/INetworkStackConnector;

    invoke-static {v0, p0, p1}, Landroid/net/networkstack/NetworkStackClientBase;->$r8$lambda$48w_f5bE_-SHUizoPUm5Nk7I_rQ(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;Landroid/net/INetworkStackConnector;)V

    return-void
.end method
