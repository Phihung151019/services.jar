.class public interface abstract Landroid/net/metrics/INetdEventListener;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final DNS_REPORTED_IP_ADDRESSES_LIMIT:I = 0xa

.field public static final EVENT_GETADDRINFO:I = 0x1

.field public static final EVENT_GETHOSTBYADDR:I = 0x3

.field public static final EVENT_GETHOSTBYNAME:I = 0x2

.field public static final EVENT_RES_NSEND:I = 0x4

.field public static final HASH:Ljava/lang/String; = "8e27594d285ca7c567d87e8cf74766c27647e02b"

.field public static final REPORTING_LEVEL_FULL:I = 0x2

.field public static final REPORTING_LEVEL_METRICS:I = 0x1

.field public static final REPORTING_LEVEL_NONE:I = 0x0

.field public static final VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string/jumbo v2, "android$net$metrics$INetdEventListener"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/metrics/INetdEventListener;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getInterfaceHash()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onConnectEvent(IIILjava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onNat64PrefixEvent(IZLjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onTcpSocketStatsEvent([I[I[I[I[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onWakeupEvent(Ljava/lang/String;III[BLjava/lang/String;Ljava/lang/String;IIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
