.class public final Lcom/android/server/connectivity/DefaultNetworkMetrics;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;

.field public final mEvents:Ljava/util/List;

.field public final mEventsLog:Lcom/android/internal/util/RingBuffer;

.field public mIsCurrentlyValid:Z

.field public mLastTransports:I

.field public mLastValidationTimeMs:J


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEvents:Ljava/util/List;

    new-instance v2, Lcom/android/internal/util/RingBuffer;

    const-class v3, Landroid/net/metrics/DefaultNetworkEvent;

    const/16 v4, 0x40

    invoke-direct {v2, v3, v4}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v2, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEventsLog:Lcom/android/internal/util/RingBuffer;

    new-instance v2, Landroid/net/metrics/DefaultNetworkEvent;

    invoke-direct {v2, v0, v1}, Landroid/net/metrics/DefaultNetworkEvent;-><init>(J)V

    iput-wide v0, v2, Landroid/net/metrics/DefaultNetworkEvent;->durationMs:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    iput-object v2, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;

    return-void
.end method

.method public static fillLinkInfo(Landroid/net/metrics/DefaultNetworkEvent;Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .locals 4

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    iput p1, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    iget p1, p0, Landroid/net/metrics/DefaultNetworkEvent;->transports:I

    int-to-long v0, p1

    invoke-virtual {p3}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide v2

    or-long/2addr v0, v2

    long-to-int p1, v0

    iput p1, p0, Landroid/net/metrics/DefaultNetworkEvent;->transports:I

    iget-boolean p1, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv4:Z

    invoke-virtual {p2}, Landroid/net/LinkProperties;->hasIpv4Address()Z

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroid/net/LinkProperties;->hasIpv4DefaultRoute()Z

    move-result p3

    if-eqz p3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    or-int/2addr p1, p3

    iput-boolean p1, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv4:Z

    iget-boolean p1, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv6:Z

    invoke-virtual {p2}, Landroid/net/LinkProperties;->hasGlobalIpv6Address()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/net/LinkProperties;->hasIpv6DefaultRoute()Z

    move-result p2

    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    or-int/2addr p1, v0

    iput-boolean p1, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv6:Z

    return-void
.end method


# virtual methods
.method public final logCurrentDefaultNetwork(JLandroid/net/Network;ILandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;

    iget-wide v1, v0, Landroid/net/metrics/DefaultNetworkEvent;->validatedMs:J

    iget-wide v3, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastValidationTimeMs:J

    sub-long v3, p1, v3

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroid/net/metrics/DefaultNetworkEvent;->validatedMs:J

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;

    invoke-virtual {v0, p1, p2}, Landroid/net/metrics/DefaultNetworkEvent;->updateDuration(J)V

    iget p1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastTransports:I

    iput p1, v0, Landroid/net/metrics/DefaultNetworkEvent;->previousTransports:I

    if-eqz p3, :cond_1

    invoke-static {v0, p3, p5, p6}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->fillLinkInfo(Landroid/net/metrics/DefaultNetworkEvent;Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    iput p4, v0, Landroid/net/metrics/DefaultNetworkEvent;->finalScore:I

    :cond_1
    iget p1, v0, Landroid/net/metrics/DefaultNetworkEvent;->transports:I

    if-eqz p1, :cond_2

    iput p1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastTransports:I

    :cond_2
    iget-object p1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEvents:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEventsLog:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    return-void
.end method
