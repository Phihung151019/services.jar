.class public final Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;
.super Lcom/android/server/am/compaction/AggregatedCompactionStats;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mSourceType:Lcom/android/server/am/CachedAppOptimizer$CompactSource;


# direct methods
.method public constructor <init>(Lcom/android/server/am/CachedAppOptimizer$CompactSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;->mSourceType:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    return-void
.end method
