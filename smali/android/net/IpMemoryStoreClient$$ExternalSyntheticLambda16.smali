.class public final synthetic Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda16;
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

.field public final synthetic f$4:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda16;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda16;->f$0:Landroid/net/IIpMemoryStore;

    iput-object p2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda16;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda16;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda16;->f$3:Ljava/lang/Object;

    iput-object p5, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda16;->f$4:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;[J[ILandroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda16;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda16;->f$0:Landroid/net/IIpMemoryStore;

    iput-object p2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda16;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda16;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda16;->f$3:Ljava/lang/Object;

    iput-object p5, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda16;->f$4:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda16;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda16;->f$1:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda16;->f$2:Ljava/lang/Object;

    check-cast v1, [J

    iget-object v2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda16;->f$0:Landroid/net/IIpMemoryStore;

    iget-object v3, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda16;->f$3:Ljava/lang/Object;

    check-cast v3, [I

    iget-object p0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda16;->f$4:Ljava/lang/Object;

    check-cast p0, Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;

    invoke-static {v2, v0, v1, v3, p0}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$gKa5xDJhUAOR6d9F-d-TV7ZaWow(Landroid/net/IIpMemoryStore;Ljava/lang/String;[J[ILandroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda16;->f$1:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda16;->f$2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda16;->f$0:Landroid/net/IIpMemoryStore;

    iget-object v3, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda16;->f$3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object p0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda16;->f$4:Ljava/lang/Object;

    check-cast p0, Landroid/net/ipmemorystore/OnBlobRetrievedListener;

    invoke-static {v2, v0, v1, v3, p0}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$Lwi-UV2KJSgpGNur1LVnGMVszhA(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
