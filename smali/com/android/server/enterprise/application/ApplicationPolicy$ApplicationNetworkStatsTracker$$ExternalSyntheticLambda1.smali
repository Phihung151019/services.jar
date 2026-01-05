.class public final synthetic Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    iput p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    iget v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda1;->f$1:I

    iget p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda1;->f$2:I

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/application/NetworkStats;

    if-ne p0, v3, :cond_2

    iget-wide v0, p2, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->txByte:J

    iget-wide v2, p1, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    iget-wide v0, p2, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->rxByte:J

    iget-wide v2, p1, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    return-void

    :cond_2
    iget-wide v0, p2, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->txByte:J

    iget-wide v2, p1, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    iget-wide v0, p2, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->rxByte:J

    iget-wide v2, p1, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    return-void

    :cond_3
    new-instance v1, Lcom/samsung/android/knox/application/NetworkStats;

    invoke-direct {v1}, Lcom/samsung/android/knox/application/NetworkStats;-><init>()V

    iput v2, v1, Lcom/samsung/android/knox/application/NetworkStats;->uid:I

    if-ne p0, v3, :cond_4

    iget-wide v2, p2, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->txByte:J

    iput-wide v2, v1, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    iget-wide v2, p2, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->rxByte:J

    iput-wide v2, v1, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    iget-object p0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    iget-wide v2, p2, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->txByte:J

    iput-wide v2, v1, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    iget-wide v2, p2, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->rxByte:J

    iput-wide v2, v1, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    iget-object p0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
