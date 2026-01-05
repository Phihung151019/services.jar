.class public final synthetic Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/net/IpMemoryStoreClient$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda7;->$r8$classId:I

    iget-object p0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;

    invoke-static {p0}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$-agmG3QnCnTGjpVGuNCsN8Zf7Ko(Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V

    return-void

    :pswitch_0
    check-cast p0, Landroid/net/ipmemorystore/OnL2KeyResponseListener;

    invoke-static {p0}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$EqiuXKS_kMkqzw8-ZS1i2veSvM8(Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V

    return-void

    :pswitch_1
    check-cast p0, Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;

    invoke-static {p0}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$rmld3gkm9_RMJEplNWL6IUwOKUc(Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;)V

    return-void

    :pswitch_2
    check-cast p0, Landroid/net/IIpMemoryStore;

    invoke-static {p0}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$PYxMl-8VTNMxiGLoTuj7FUrL7Ss(Landroid/net/IIpMemoryStore;)V

    return-void

    :pswitch_3
    check-cast p0, Landroid/net/ipmemorystore/OnBlobRetrievedListener;

    invoke-static {p0}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$vk0Nh2Qc67PGCXFRrO6ttafnr-w(Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V

    return-void

    :pswitch_4
    check-cast p0, Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;

    invoke-static {p0}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$CVFuVz16jcHPC8U-Sx6-K762Gvc(Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
