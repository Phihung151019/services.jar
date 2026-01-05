.class public final synthetic Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/net/IpMemoryStoreClient$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/net/IIpMemoryStore;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda15;->$r8$classId:I

    iput-object p1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda15;->f$0:Landroid/net/IIpMemoryStore;

    iput-object p2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda15;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda15;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda15;->f$3:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda15;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda15;->f$0:Landroid/net/IIpMemoryStore;

    iget-object v1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda15;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda15;->f$2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object p0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda15;->f$3:Ljava/lang/Object;

    check-cast p0, Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;

    invoke-static {v0, v1, v2, p0}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$Gtfbn8H-Hmv1h-JCbed5WTdnnEM(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda15;->f$0:Landroid/net/IIpMemoryStore;

    iget-object v1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda15;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda15;->f$2:Ljava/lang/Object;

    check-cast v2, Landroid/net/ipmemorystore/NetworkAttributes;

    iget-object p0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda15;->f$3:Ljava/lang/Object;

    check-cast p0, Landroid/net/ipmemorystore/OnStatusListener;

    invoke-static {v0, v1, v2, p0}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$tPwd2hc2Euvwob2T0xc07lBBUjs(Landroid/net/IIpMemoryStore;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnStatusListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
