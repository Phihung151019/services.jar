.class public final synthetic Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/net/IpMemoryStoreClient$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/net/ipmemorystore/OnDeleteStatusListener;


# direct methods
.method public synthetic constructor <init>(Landroid/net/ipmemorystore/OnDeleteStatusListener;I)V
    .locals 0

    iput p2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda5;->f$0:Landroid/net/ipmemorystore/OnDeleteStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda5;->$r8$classId:I

    iget-object p0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda5;->f$0:Landroid/net/ipmemorystore/OnDeleteStatusListener;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$M8u7jyyYWsGpRh7kG9dUg0fqBSY(Landroid/net/ipmemorystore/OnDeleteStatusListener;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$4j3dNF67o6NAOGYtmRLAylaDeoE(Landroid/net/ipmemorystore/OnDeleteStatusListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
