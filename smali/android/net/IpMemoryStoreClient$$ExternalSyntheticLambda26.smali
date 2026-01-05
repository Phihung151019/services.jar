.class public final synthetic Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/net/IpMemoryStoreClient;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda26;->$r8$classId:I

    iput-object p1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda26;->f$0:Landroid/net/IpMemoryStoreClient;

    iput-object p2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda26;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda26;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda26;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda26;->f$0:Landroid/net/IpMemoryStoreClient;

    iget-object v1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda26;->f$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda26;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;

    check-cast p1, Landroid/net/IIpMemoryStore;

    invoke-static {v0, v1, p0, p1}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$A1dJWBt0zGMwIg94ZNfwEJPFkqQ(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;Landroid/net/IIpMemoryStore;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda26;->f$0:Landroid/net/IpMemoryStoreClient;

    iget-object v1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda26;->f$1:Ljava/lang/Object;

    check-cast v1, Landroid/net/ipmemorystore/NetworkAttributes;

    iget-object p0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda26;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/net/ipmemorystore/OnL2KeyResponseListener;

    check-cast p1, Landroid/net/IIpMemoryStore;

    invoke-static {v0, v1, p0, p1}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$m-MiiJpkUlbFj594pow56N1SWac(Landroid/net/IpMemoryStoreClient;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnL2KeyResponseListener;Landroid/net/IIpMemoryStore;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
