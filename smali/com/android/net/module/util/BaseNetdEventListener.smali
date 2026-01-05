.class public Lcom/android/net/module/util/BaseNetdEventListener;
.super Landroid/net/metrics/INetdEventListener$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/net/metrics/INetdEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    const-string p0, "8e27594d285ca7c567d87e8cf74766c27647e02b"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onConnectEvent(IIILjava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public onNat64PrefixEvent(IZLjava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onTcpSocketStatsEvent([I[I[I[I[I)V
    .locals 0

    return-void
.end method

.method public onWakeupEvent(Ljava/lang/String;III[BLjava/lang/String;Ljava/lang/String;IIJ)V
    .locals 0

    return-void
.end method
