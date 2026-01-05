.class public final Landroid/net/IpSecMigrateInfoParcel$Builder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field private direction:I

.field private interfaceId:I

.field private newDestinationAddress:Ljava/lang/String;

.field private newSourceAddress:Ljava/lang/String;

.field private oldDestinationAddress:Ljava/lang/String;

.field private oldSourceAddress:Ljava/lang/String;

.field private requestId:I

.field private selAddrFamily:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->requestId:I

    iput v0, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->selAddrFamily:I

    iput v0, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->direction:I

    iput v0, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->interfaceId:I

    return-void
.end method


# virtual methods
.method public build()Landroid/net/IpSecMigrateInfoParcel;
    .locals 9

    new-instance v0, Landroid/net/IpSecMigrateInfoParcel;

    iget v1, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->requestId:I

    iget v2, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->selAddrFamily:I

    iget v3, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->direction:I

    iget-object v4, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->oldSourceAddress:Ljava/lang/String;

    iget-object v5, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->oldDestinationAddress:Ljava/lang/String;

    iget-object v6, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->newSourceAddress:Ljava/lang/String;

    iget-object v7, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->newDestinationAddress:Ljava/lang/String;

    iget v8, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->interfaceId:I

    invoke-direct/range {v0 .. v8}, Landroid/net/IpSecMigrateInfoParcel;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public setDirection(I)Landroid/net/IpSecMigrateInfoParcel$Builder;
    .locals 0

    iput p1, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->direction:I

    return-object p0
.end method

.method public setInterfaceId(I)Landroid/net/IpSecMigrateInfoParcel$Builder;
    .locals 0

    iput p1, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->interfaceId:I

    return-object p0
.end method

.method public setNewDestinationAddress(Ljava/lang/String;)Landroid/net/IpSecMigrateInfoParcel$Builder;
    .locals 0

    iput-object p1, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->newDestinationAddress:Ljava/lang/String;

    return-object p0
.end method

.method public setNewSourceAddress(Ljava/lang/String;)Landroid/net/IpSecMigrateInfoParcel$Builder;
    .locals 0

    iput-object p1, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->newSourceAddress:Ljava/lang/String;

    return-object p0
.end method

.method public setOldDestinationAddress(Ljava/lang/String;)Landroid/net/IpSecMigrateInfoParcel$Builder;
    .locals 0

    iput-object p1, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->oldDestinationAddress:Ljava/lang/String;

    return-object p0
.end method

.method public setOldSourceAddress(Ljava/lang/String;)Landroid/net/IpSecMigrateInfoParcel$Builder;
    .locals 0

    iput-object p1, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->oldSourceAddress:Ljava/lang/String;

    return-object p0
.end method

.method public setRequestId(I)Landroid/net/IpSecMigrateInfoParcel$Builder;
    .locals 0

    iput p1, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->requestId:I

    return-object p0
.end method

.method public setSelAddrFamily(I)Landroid/net/IpSecMigrateInfoParcel$Builder;
    .locals 0

    iput p1, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->selAddrFamily:I

    return-object p0
.end method
