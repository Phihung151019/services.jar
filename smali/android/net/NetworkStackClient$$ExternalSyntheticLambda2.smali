.class public final synthetic Landroid/net/NetworkStackClient$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/net/NetworkStackClient$NetworkStackCallback;


# instance fields
.field public final synthetic f$0:Landroid/net/IIpMemoryStoreCallbacks;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IIpMemoryStoreCallbacks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda2;->f$0:Landroid/net/IIpMemoryStoreCallbacks;

    return-void
.end method


# virtual methods
.method public final onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V
    .locals 0

    iget-object p0, p0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda2;->f$0:Landroid/net/IIpMemoryStoreCallbacks;

    invoke-static {p0, p1}, Landroid/net/NetworkStackClient;->$r8$lambda$dN_4LBakF3RMC4PJoPi4VjtiKz0(Landroid/net/IIpMemoryStoreCallbacks;Landroid/net/INetworkStackConnector;)V

    return-void
.end method
