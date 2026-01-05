.class public final synthetic Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Hashtable;

.field public final synthetic f$1:Ljava/util/Hashtable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda0;->f$0:Ljava/util/Hashtable;

    iput-object p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda0;->f$1:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda0;->f$0:Ljava/util/Hashtable;

    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda0;->f$1:Ljava/util/Hashtable;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/samsung/android/knox/application/NetworkStats;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/application/NetworkStats;

    new-instance v1, Lcom/samsung/android/knox/application/NetworkStats;

    invoke-direct {v1}, Lcom/samsung/android/knox/application/NetworkStats;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/knox/application/NetworkStats;->uid:I

    iget-wide v2, p2, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    iget-wide v4, v0, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    iget-wide v2, p2, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    iget-wide v4, v0, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    iget-wide v2, p2, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    iget-wide v4, v0, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    iget-wide v2, p2, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    iget-wide v4, v0, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    invoke-virtual {p0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
