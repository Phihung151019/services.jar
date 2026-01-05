.class public final Lcom/android/server/am/compaction/CompactionStatsManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static sInstance:Lcom/android/server/am/compaction/CompactionStatsManager;


# instance fields
.field public final mCompactionStatsHistory:Ljava/util/LinkedList;

.field mLastCompactionStats:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/compaction/SingleCompactionStats;",
            ">;"
        }
    .end annotation
.end field

.field public final mPerProcessCompactStats:Ljava/util/LinkedHashMap;

.field public final mPerSourceCompactStats:Ljava/util/EnumMap;

.field public mTotalCompactionDowngrades:J

.field public final mTotalCompactionsCancelled:Ljava/util/EnumMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mPerProcessCompactStats:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mPerSourceCompactStats:Ljava/util/EnumMap;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mTotalCompactionsCancelled:Ljava/util/EnumMap;

    new-instance v0, Lcom/android/server/am/compaction/CompactionStatsManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/compaction/CompactionStatsManager$1;-><init>(Lcom/android/server/am/compaction/CompactionStatsManager;)V

    iput-object v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/android/server/am/compaction/CompactionStatsManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/compaction/CompactionStatsManager$2;-><init>(Lcom/android/server/am/compaction/CompactionStatsManager;)V

    iput-object v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mCompactionStatsHistory:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 9
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    const-string v0, " Per-Process Compaction Stats"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mPerProcessCompactStats:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "-----"

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v5, Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;->mProcessName:Ljava/lang/String;

    invoke-static {p1, v8, v6, v7}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v6, v5, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactPerformed:J

    add-long/2addr v1, v6

    iget-wide v6, v5, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactPerformed:J

    add-long/2addr v3, v6

    invoke-virtual {v5, p1}, Lcom/android/server/am/compaction/AggregatedCompactionStats;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, " Per-Source Compaction Stats"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mPerSourceCompactStats:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v5, Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;->mSourceType:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Lcom/android/server/am/compaction/AggregatedCompactionStats;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Total Compactions Performed by profile: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " some, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " full"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Total compactions downgraded: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mTotalCompactionDowngrades:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "Total compactions cancelled by reason: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mTotalCompactionsCancelled:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mTotalCompactionsCancelled:Ljava/util/EnumMap;

    invoke-virtual {v3, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, " System Compaction Memory Stats"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Compactions Performed: 0"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Total Memory Freed (KB): 0"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "    Avg Mem Freed per Compact (KB): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  Tracking last compaction stats for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " processes."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Last Compaction per process stats:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    (ProcessName,Source,DeltaAnonRssKBs,ZramConsumedKBs,AnonMemFreedKBs,SwapEfficiency,CompactEfficiency,CompactCost(ms/MB),procState,oomAdj,oomAdjReason)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/compaction/SingleCompactionStats;

    invoke-virtual {v2, p1}, Lcom/android/server/am/compaction/SingleCompactionStats;->dump(Ljava/io/PrintWriter;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "Last 20 Compactions Stats:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mCompactionStatsHistory:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/compaction/SingleCompactionStats;

    invoke-virtual {v0, p1}, Lcom/android/server/am/compaction/SingleCompactionStats;->dump(Ljava/io/PrintWriter;)V

    goto :goto_4

    :cond_4
    return-void
.end method

.method public final getLastCompactionStats(I)Lcom/android/server/am/compaction/SingleCompactionStats;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/compaction/SingleCompactionStats;

    return-object p0
.end method

.method public getLastCompactionStats()Ljava/util/LinkedHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/compaction/SingleCompactionStats;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public final getPerProcessAggregatedCompactStat(Ljava/lang/String;)Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mPerProcessCompactStats:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;

    invoke-direct {v0, p1}, Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mPerProcessCompactStats:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getPerSourceAggregatedCompactStat(Lcom/android/server/am/CachedAppOptimizer$CompactSource;)Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mPerSourceCompactStats:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;

    invoke-direct {v0, p1}, Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;-><init>(Lcom/android/server/am/CachedAppOptimizer$CompactSource;)V

    iget-object p0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mPerSourceCompactStats:Ljava/util/EnumMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final logCompactionThrottled(ILcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0, p2}, Lcom/android/server/am/compaction/CompactionStatsManager;->getPerSourceAggregatedCompactStat(Lcom/android/server/am/CachedAppOptimizer$CompactSource;)Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;

    move-result-object p2

    invoke-virtual {p0, p3}, Lcom/android/server/am/compaction/CompactionStatsManager;->getPerProcessAggregatedCompactStat(Ljava/lang/String;)Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;

    move-result-object p0

    const-wide/16 v0, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x1

    if-eq p1, p3, :cond_3

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    const/4 p3, 0x3

    if-eq p1, p3, :cond_1

    const/4 p3, 0x4

    if-eq p1, p3, :cond_0

    return-void

    :cond_0
    iget-wide v2, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsRSSThrottled:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsRSSThrottled:J

    iget-wide p0, p2, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsRSSThrottled:J

    add-long/2addr p0, v0

    iput-wide p0, p2, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsRSSThrottled:J

    return-void

    :cond_1
    iget-wide v2, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsMiscThrottled:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsMiscThrottled:J

    iget-wide p0, p2, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsMiscThrottled:J

    add-long/2addr p0, v0

    iput-wide p0, p2, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsMiscThrottled:J

    return-void

    :cond_2
    iget-wide v2, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsTimeThrottled:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsTimeThrottled:J

    iget-wide p0, p2, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsTimeThrottled:J

    add-long/2addr p0, v0

    iput-wide p0, p2, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsTimeThrottled:J

    return-void

    :cond_3
    iget-wide v2, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsOomAdjThrottled:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsOomAdjThrottled:J

    iget-wide p0, p2, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsOomAdjThrottled:J

    add-long/2addr p0, v0

    iput-wide p0, p2, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsOomAdjThrottled:J

    return-void

    :cond_4
    iget-wide v2, p2, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsNoPidThrottled:J

    add-long/2addr v2, v0

    iput-wide v2, p2, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsNoPidThrottled:J

    iget-wide p1, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsNoPidThrottled:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsNoPidThrottled:J

    return-void
.end method

.method public final logFullCompactionPerformed(Lcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;JJJJJ[JIIIIIZ)V
    .locals 26

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/compaction/CompactionStatsManager;->getPerSourceAggregatedCompactStat(Lcom/android/server/am/CachedAppOptimizer$CompactSource;)Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;

    move-result-object v1

    move-object/from16 v12, p2

    invoke-virtual {v0, v12}, Lcom/android/server/am/compaction/CompactionStatsManager;->getPerProcessAggregatedCompactStat(Ljava/lang/String;)Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;

    move-result-object v13

    iget-wide v2, v1, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactPerformed:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactPerformed:J

    iget-wide v2, v13, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactPerformed:J

    add-long/2addr v2, v4

    iput-wide v2, v13, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactPerformed:J

    const-wide/16 v2, 0x0

    cmp-long v4, p3, v2

    if-lez v4, :cond_0

    move-wide/from16 v14, p3

    goto :goto_0

    :cond_0
    move-wide v14, v2

    :goto_0
    cmp-long v4, p5, v2

    if-lez v4, :cond_1

    move-wide/from16 v16, p5

    goto :goto_1

    :cond_1
    move-wide/from16 v16, v2

    :goto_1
    cmp-long v4, p7, v2

    if-lez v4, :cond_2

    move-wide/from16 v18, p7

    :goto_2
    move-wide/from16 v20, p9

    move-wide/from16 v22, p11

    goto :goto_3

    :cond_2
    move-wide/from16 v18, v2

    goto :goto_2

    :goto_3
    invoke-virtual/range {v13 .. v23}, Lcom/android/server/am/compaction/AggregatedCompactionStats;->addMemStats(JJJJJ)V

    move-wide v2, v14

    move-wide/from16 v4, v16

    move-wide/from16 v6, v18

    move-wide/from16 v8, v20

    move-wide/from16 v10, v22

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/compaction/AggregatedCompactionStats;->addMemStats(JJJJJ)V

    new-instance v2, Lcom/android/server/am/compaction/SingleCompactionStats;

    move-object/from16 v4, p1

    move-object/from16 v3, p13

    move/from16 v18, p16

    move/from16 v19, p17

    move-wide v10, v6

    move-object v5, v12

    move-wide v6, v14

    move-wide/from16 v8, v16

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move/from16 v16, p14

    move/from16 v17, p15

    invoke-direct/range {v2 .. v19}, Lcom/android/server/am/compaction/SingleCompactionStats;-><init>([JLcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;JJJJJIIII)V

    move-wide v14, v6

    move-wide/from16 v16, v8

    iget-object v1, v0, Lcom/android/server/am/compaction/CompactionStatsManager;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-static/range {p18 .. p18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/am/compaction/CompactionStatsManager;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-static/range {p18 .. p18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/server/am/compaction/CompactionStatsManager;->mCompactionStatsHistory:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    if-nez p19, :cond_3

    sget-object v0, Lcom/android/server/am/compaction/SingleCompactionStats;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    move-wide/from16 v18, v14

    const/16 v14, 0x1eb

    iget v0, v2, Lcom/android/server/am/compaction/SingleCompactionStats;->mCpuTimeMillis:F

    move-wide/from16 v23, p9

    move/from16 v25, p16

    move/from16 v15, p17

    move/from16 v22, v0

    move-wide/from16 v20, v16

    move/from16 v16, p14

    move/from16 v17, p15

    invoke-static/range {v14 .. v25}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIJJFJI)V

    :cond_3
    return-void
.end method

.method public reinit()V
    .locals 0

    new-instance p0, Lcom/android/server/am/compaction/CompactionStatsManager;

    invoke-direct {p0}, Lcom/android/server/am/compaction/CompactionStatsManager;-><init>()V

    sput-object p0, Lcom/android/server/am/compaction/CompactionStatsManager;->sInstance:Lcom/android/server/am/compaction/CompactionStatsManager;

    return-void
.end method
