.class public final Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBucketDurationMillis:J

.field public mSnapshot:Landroid/net/NetworkStats;

.field public mSnapshotEndTimeMillis:J

.field public final mTemplate:Landroid/net/NetworkTemplate;

.field public final mWithTags:Z


# direct methods
.method public constructor <init>(Landroid/net/NetworkTemplate;ZJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mTemplate:Landroid/net/NetworkTemplate;

    iput-boolean p2, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mWithTags:Z

    iput-wide p3, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mBucketDurationMillis:J

    new-instance p1, Landroid/net/NetworkStats;

    const-wide/16 p2, 0x0

    const/4 p4, 0x1

    invoke-direct {p1, p2, p3, p4}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object p1, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mSnapshot:Landroid/net/NetworkStats;

    iput-wide p5, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mSnapshotEndTimeMillis:J

    return-void
.end method
