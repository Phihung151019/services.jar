.class public Landroid/net/shared/PrivateDnsConfig;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final ddrEnabled:Z

.field public final dohIps:[Ljava/net/InetAddress;

.field public final dohName:Ljava/lang/String;

.field public final dohPath:Ljava/lang/String;

.field public final dohPort:I

.field public final hostname:Ljava/lang/String;

.field public final ips:[Ljava/net/InetAddress;

.field public final mode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/shared/PrivateDnsConfig;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[Ljava/net/InetAddress;ZLjava/lang/String;[Ljava/net/InetAddress;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/shared/PrivateDnsConfig;->mode:I

    const-string p1, ""

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p0, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    const/4 p2, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, [Ljava/net/InetAddress;->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/net/InetAddress;

    goto :goto_1

    :cond_1
    new-array p3, p2, [Ljava/net/InetAddress;

    :goto_1
    iput-object p3, p0, Landroid/net/shared/PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    iput-boolean p4, p0, Landroid/net/shared/PrivateDnsConfig;->ddrEnabled:Z

    if-eqz p5, :cond_2

    goto :goto_2

    :cond_2
    move-object p5, p1

    :goto_2
    iput-object p5, p0, Landroid/net/shared/PrivateDnsConfig;->dohName:Ljava/lang/String;

    if-eqz p6, :cond_3

    invoke-virtual {p6}, [Ljava/net/InetAddress;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/net/InetAddress;

    goto :goto_3

    :cond_3
    new-array p2, p2, [Ljava/net/InetAddress;

    :goto_3
    iput-object p2, p0, Landroid/net/shared/PrivateDnsConfig;->dohIps:[Ljava/net/InetAddress;

    if-eqz p7, :cond_4

    goto :goto_4

    :cond_4
    move-object p7, p1

    :goto_4
    iput-object p7, p0, Landroid/net/shared/PrivateDnsConfig;->dohPath:Ljava/lang/String;

    iput p8, p0, Landroid/net/shared/PrivateDnsConfig;->dohPort:I

    return-void
.end method

.method public constructor <init>(Landroid/net/shared/PrivateDnsConfig;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/net/shared/PrivateDnsConfig;->mode:I

    iput v0, p0, Landroid/net/shared/PrivateDnsConfig;->mode:I

    iget-object v0, p1, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/shared/PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    iput-object v0, p0, Landroid/net/shared/PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    iget-boolean v0, p1, Landroid/net/shared/PrivateDnsConfig;->ddrEnabled:Z

    iput-boolean v0, p0, Landroid/net/shared/PrivateDnsConfig;->ddrEnabled:Z

    iget-object v0, p1, Landroid/net/shared/PrivateDnsConfig;->dohName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/shared/PrivateDnsConfig;->dohName:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/shared/PrivateDnsConfig;->dohIps:[Ljava/net/InetAddress;

    iput-object v0, p0, Landroid/net/shared/PrivateDnsConfig;->dohIps:[Ljava/net/InetAddress;

    iget-object v0, p1, Landroid/net/shared/PrivateDnsConfig;->dohPath:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/shared/PrivateDnsConfig;->dohPath:Ljava/lang/String;

    iget p1, p1, Landroid/net/shared/PrivateDnsConfig;->dohPort:I

    iput p1, p0, Landroid/net/shared/PrivateDnsConfig;->dohPort:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/net/InetAddress;)V
    .locals 10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :goto_1
    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v9}, Landroid/net/shared/PrivateDnsConfig;-><init>(ILjava/lang/String;[Ljava/net/InetAddress;ZLjava/lang/String;[Ljava/net/InetAddress;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 9

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    :goto_0
    move v1, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :goto_1
    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroid/net/shared/PrivateDnsConfig;-><init>(ILjava/lang/String;[Ljava/net/InetAddress;ZLjava/lang/String;[Ljava/net/InetAddress;Ljava/lang/String;I)V

    return-void
.end method

.method public static fromParcel(Landroid/net/PrivateDnsConfigParcel;)Landroid/net/shared/PrivateDnsConfig;
    .locals 10

    iget-object v0, p0, Landroid/net/PrivateDnsConfigParcel;->ips:[Ljava/lang/String;

    array-length v1, v0

    new-array v1, v1, [Ljava/net/InetAddress;

    new-instance v2, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda9;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-static {v0, v2}, Landroid/net/shared/ParcelableUtil;->fromParcelableArray([Ljava/lang/Object;Ljava/util/function/Function;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Ljava/net/InetAddress;

    iget v0, p0, Landroid/net/PrivateDnsConfigParcel;->privateDnsMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/net/shared/PrivateDnsConfig;

    iget-object p0, p0, Landroid/net/PrivateDnsConfigParcel;->hostname:Ljava/lang/String;

    invoke-direct {v0, p0, v4}, Landroid/net/shared/PrivateDnsConfig;-><init>(Ljava/lang/String;[Ljava/net/InetAddress;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/PrivateDnsConfigParcel;->dohIps:[Ljava/lang/String;

    array-length v1, v0

    new-array v1, v1, [Ljava/net/InetAddress;

    new-instance v2, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda9;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-static {v0, v2}, Landroid/net/shared/ParcelableUtil;->fromParcelableArray([Ljava/lang/Object;Ljava/util/function/Function;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Ljava/net/InetAddress;

    new-instance v1, Landroid/net/shared/PrivateDnsConfig;

    iget v2, p0, Landroid/net/PrivateDnsConfigParcel;->privateDnsMode:I

    iget-object v3, p0, Landroid/net/PrivateDnsConfigParcel;->hostname:Ljava/lang/String;

    iget-boolean v5, p0, Landroid/net/PrivateDnsConfigParcel;->ddrEnabled:Z

    iget-object v6, p0, Landroid/net/PrivateDnsConfigParcel;->dohName:Ljava/lang/String;

    iget-object v8, p0, Landroid/net/PrivateDnsConfigParcel;->dohPath:Ljava/lang/String;

    iget v9, p0, Landroid/net/PrivateDnsConfigParcel;->dohPort:I

    invoke-direct/range {v1 .. v9}, Landroid/net/shared/PrivateDnsConfig;-><init>(ILjava/lang/String;[Ljava/net/InetAddress;ZLjava/lang/String;[Ljava/net/InetAddress;Ljava/lang/String;I)V

    return-object v1
.end method

.method private static modeAsString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string/jumbo p0, "unknown"

    return-object p0

    :cond_0
    const-string/jumbo p0, "strict"

    return-object p0

    :cond_1
    const-string/jumbo p0, "opportunistic"

    return-object p0

    :cond_2
    const-string/jumbo p0, "off"

    return-object p0
.end method


# virtual methods
.method public areSettingsSameAs(Landroid/net/shared/PrivateDnsConfig;)Z
    .locals 2

    iget v0, p0, Landroid/net/shared/PrivateDnsConfig;->mode:I

    iget v1, p1, Landroid/net/shared/PrivateDnsConfig;->mode:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    iget-object p1, p1, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public inOpportunisticMode()Z
    .locals 1

    iget p0, p0, Landroid/net/shared/PrivateDnsConfig;->mode:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public inStrictMode()Z
    .locals 1

    iget p0, p0, Landroid/net/shared/PrivateDnsConfig;->mode:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toParcel()Landroid/net/PrivateDnsConfigParcel;
    .locals 5

    new-instance v0, Landroid/net/PrivateDnsConfigParcel;

    invoke-direct {v0}, Landroid/net/PrivateDnsConfigParcel;-><init>()V

    iget-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/PrivateDnsConfigParcel;->hostname:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda9;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda9;-><init>(I)V

    const-class v3, Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/net/shared/ParcelableUtil;->toParcelableArray(Ljava/util/Collection;Ljava/util/function/Function;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Landroid/net/PrivateDnsConfigParcel;->ips:[Ljava/lang/String;

    iget v1, p0, Landroid/net/shared/PrivateDnsConfig;->mode:I

    iput v1, v0, Landroid/net/PrivateDnsConfigParcel;->privateDnsMode:I

    iget-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->dohName:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/PrivateDnsConfigParcel;->dohName:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->dohIps:[Ljava/net/InetAddress;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda9;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-static {v1, v2, v3}, Landroid/net/shared/ParcelableUtil;->toParcelableArray(Ljava/util/Collection;Ljava/util/function/Function;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Landroid/net/PrivateDnsConfigParcel;->dohIps:[Ljava/lang/String;

    iget-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->dohPath:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/PrivateDnsConfigParcel;->dohPath:Ljava/lang/String;

    iget v1, p0, Landroid/net/shared/PrivateDnsConfig;->dohPort:I

    iput v1, v0, Landroid/net/PrivateDnsConfigParcel;->dohPort:I

    iget-boolean p0, p0, Landroid/net/shared/PrivateDnsConfig;->ddrEnabled:Z

    iput-boolean p0, v0, Landroid/net/PrivateDnsConfigParcel;->ddrEnabled:Z

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PrivateDnsConfig{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/net/shared/PrivateDnsConfig;->mode:I

    invoke-static {v1}, Landroid/net/shared/PrivateDnsConfig;->modeAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dohName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->dohName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dohIps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->dohIps:[Ljava/net/InetAddress;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dohPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->dohPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dohPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/net/shared/PrivateDnsConfig;->dohPort:I

    const-string/jumbo v1, "}"

    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
