.class public final Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field private netId:I

.field private subPriority:I

.field private uidRanges:[Landroid/net/UidRangeParcel;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->netId:I

    iput v0, p0, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->subPriority:I

    return-void
.end method


# virtual methods
.method public build()Landroid/net/netd/aidl/NativeUidRangeConfig;
    .locals 3

    new-instance v0, Landroid/net/netd/aidl/NativeUidRangeConfig;

    iget v1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->netId:I

    iget-object v2, p0, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->uidRanges:[Landroid/net/UidRangeParcel;

    iget p0, p0, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->subPriority:I

    invoke-direct {v0, v1, v2, p0}, Landroid/net/netd/aidl/NativeUidRangeConfig;-><init>(I[Landroid/net/UidRangeParcel;I)V

    return-object v0
.end method

.method public setNetId(I)Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;
    .locals 0

    iput p1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->netId:I

    return-object p0
.end method

.method public setSubPriority(I)Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;
    .locals 0

    iput p1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->subPriority:I

    return-object p0
.end method

.method public setUidRanges([Landroid/net/UidRangeParcel;)Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;
    .locals 0

    iput-object p1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->uidRanges:[Landroid/net/UidRangeParcel;

    return-object p0
.end method
