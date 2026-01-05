.class public interface abstract Landroid/net/IDnsResolver;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final DNS_RESOLVER_LOG_DEBUG:I = 0x1

.field public static final DNS_RESOLVER_LOG_ERROR:I = 0x4

.field public static final DNS_RESOLVER_LOG_INFO:I = 0x2

.field public static final DNS_RESOLVER_LOG_VERBOSE:I = 0x0

.field public static final DNS_RESOLVER_LOG_WARNING:I = 0x3

.field public static final HASH:Ljava/lang/String; = "882638dc86e8afd0924ecf7c28db6cce572f7e7d"

.field public static final RESOLVER_PARAMS_BASE_TIMEOUT_MSEC:I = 0x4

.field public static final RESOLVER_PARAMS_COUNT:I = 0x6

.field public static final RESOLVER_PARAMS_MAX_SAMPLES:I = 0x3

.field public static final RESOLVER_PARAMS_MIN_SAMPLES:I = 0x2

.field public static final RESOLVER_PARAMS_RETRY_COUNT:I = 0x5

.field public static final RESOLVER_PARAMS_SAMPLE_VALIDITY:I = 0x0

.field public static final RESOLVER_PARAMS_SUCCESS_THRESHOLD:I = 0x1

.field public static final RESOLVER_STATS_COUNT:I = 0x7

.field public static final RESOLVER_STATS_ERRORS:I = 0x1

.field public static final RESOLVER_STATS_INTERNAL_ERRORS:I = 0x3

.field public static final RESOLVER_STATS_LAST_SAMPLE_TIME:I = 0x5

.field public static final RESOLVER_STATS_RTT_AVG:I = 0x4

.field public static final RESOLVER_STATS_SUCCESSES:I = 0x0

.field public static final RESOLVER_STATS_TIMEOUTS:I = 0x2

.field public static final RESOLVER_STATS_USABLE:I = 0x6

.field public static final TC_MODE_DEFAULT:I = 0x0

.field public static final TC_MODE_UDP_TCP:I = 0x1

.field public static final TRANSPORT_BLUETOOTH:I = 0x2

.field public static final TRANSPORT_CELLULAR:I = 0x0

.field public static final TRANSPORT_ETHERNET:I = 0x3

.field public static final TRANSPORT_LOWPAN:I = 0x6

.field public static final TRANSPORT_TEST:I = 0x7

.field public static final TRANSPORT_UNKNOWN:I = -0x1

.field public static final TRANSPORT_USB:I = 0x8

.field public static final TRANSPORT_VPN:I = 0x4

.field public static final TRANSPORT_WIFI:I = 0x1

.field public static final TRANSPORT_WIFI_AWARE:I = 0x5

.field public static final VERSION:I = 0x9


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string/jumbo v2, "android$net$IDnsResolver"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/IDnsResolver;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract createNetworkCache(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract destroyNetworkCache(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract flushNetworkCache(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

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

.method public abstract getPrefix64(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getResolverInfo(I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[I[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isAlive()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerEventListener(Landroid/net/metrics/INetdEventListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerUnsolicitedEventListener(Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setLogSeverity(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setPrefix64(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setResolverConfiguration(Landroid/net/ResolverParamsParcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setResolverOptions(ILandroid/net/ResolverOptionsParcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startPrefix64Discovery(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopPrefix64Discovery(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
