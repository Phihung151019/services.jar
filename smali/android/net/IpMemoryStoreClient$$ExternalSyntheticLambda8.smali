.class public final synthetic Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/net/IpMemoryStoreClient$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/net/IIpMemoryStore;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IIpMemoryStore;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda8;->f$0:Landroid/net/IIpMemoryStore;

    iput-object p2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda8;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    check-cast v0, Landroid/net/ipmemorystore/OnL2KeyResponseListener;

    iget-object v1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda8;->f$0:Landroid/net/IIpMemoryStore;

    iget-object p0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/net/ipmemorystore/NetworkAttributes;

    invoke-static {v1, p0, v0}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$F4PDL_SdP2inoqkygo2e8UmmOOk(Landroid/net/IIpMemoryStore;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    check-cast v0, Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;

    iget-object v1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda8;->f$0:Landroid/net/IIpMemoryStore;

    iget-object p0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v1, p0, v0}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$rscP1A28INZB0xb8E8vEaCkPx1g(Landroid/net/IIpMemoryStore;Ljava/lang/String;Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
