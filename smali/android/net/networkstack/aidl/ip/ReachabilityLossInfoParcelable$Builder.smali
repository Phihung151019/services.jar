.class public final Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable$Builder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field private message:Ljava/lang/String;

.field private reason:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;
    .locals 2

    new-instance v0, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;

    iget-object v1, p0, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable$Builder;->message:Ljava/lang/String;

    iget p0, p0, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable$Builder;->reason:I

    invoke-direct {v0, v1, p0}, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable$Builder;
    .locals 0

    iput-object p1, p0, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setReason(I)Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable$Builder;
    .locals 0

    iput p1, p0, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable$Builder;->reason:I

    return-object p0
.end method
