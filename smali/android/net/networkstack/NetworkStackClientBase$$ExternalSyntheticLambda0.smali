.class public final synthetic Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/net/Network;

    iget-object v1, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object p0, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/net/INetworkMonitorCallbacks;

    check-cast p1, Landroid/net/INetworkStackConnector;

    invoke-static {v0, v1, p0, p1}, Landroid/net/networkstack/NetworkStackClientBase;->$r8$lambda$o_PdOWRUuao3JqvKE8gTlhXzpWQ(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;Landroid/net/INetworkStackConnector;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v1, Landroid/net/dhcp/DhcpServingParamsParcel;

    iget-object p0, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/net/dhcp/IDhcpServerCallbacks;

    check-cast p1, Landroid/net/INetworkStackConnector;

    invoke-static {v0, v1, p0, p1}, Landroid/net/networkstack/NetworkStackClientBase;->$r8$lambda$W7vPNax4FJkXUNCRAsG5q0i5siM(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;Landroid/net/INetworkStackConnector;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
