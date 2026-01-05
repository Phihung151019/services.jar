.class public final synthetic Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/net/IpMemoryStoreClient;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/net/ipmemorystore/OnDeleteStatusListener;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;I)V
    .locals 0

    iput p5, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda4;->f$0:Landroid/net/IpMemoryStoreClient;

    iput-object p2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda4;->f$2:Z

    iput-object p4, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda4;->f$3:Landroid/net/ipmemorystore/OnDeleteStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda4;->f$0:Landroid/net/IpMemoryStoreClient;

    iget-object v1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda4;->f$2:Z

    iget-object p0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda4;->f$3:Landroid/net/ipmemorystore/OnDeleteStatusListener;

    check-cast p1, Landroid/net/IIpMemoryStore;

    invoke-static {v0, v1, v2, p0, p1}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$U6AxfDXBAs4ISSIivSALg-8kfCw(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;Landroid/net/IIpMemoryStore;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda4;->f$0:Landroid/net/IpMemoryStoreClient;

    iget-object v1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda4;->f$2:Z

    iget-object p0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda4;->f$3:Landroid/net/ipmemorystore/OnDeleteStatusListener;

    check-cast p1, Landroid/net/IIpMemoryStore;

    invoke-static {v0, v1, v2, p0, p1}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$HNYtD8BPOyUv7tcyyeuKiVvlE9o(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;Landroid/net/IIpMemoryStore;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
