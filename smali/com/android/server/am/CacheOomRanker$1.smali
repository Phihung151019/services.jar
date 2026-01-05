.class public final Lcom/android/server/am/CacheOomRanker$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/CacheOomRanker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/CacheOomRanker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    iget-object v0, v0, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "use_oom_re_ranking"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    const-string/jumbo v2, "use_oom_re_ranking"

    const-string/jumbo v3, "activity_manager"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/am/CacheOomRanker;->mUseOomReRanking:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_1
    const-string/jumbo v2, "oom_re_ranking_number_to_re_rank"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    invoke-virtual {v1}, Lcom/android/server/am/CacheOomRanker;->updateNumberToReRank()V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "oom_re_ranking_preserve_top_n_apps"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "oom_re_ranking_preserve_top_n_apps"

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Found negative value for preserveTopNApps, setting to default: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "OomAdjuster"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_1
    iput v4, v1, Lcom/android/server/am/CacheOomRanker;->mPreserveTopNApps:I

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "oom_re_ranking_rss_use_frequent_rss"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v1, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "oom_re_ranking_rss_use_frequent_rss"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/am/CacheOomRanker;->mUseFrequentRss:Z

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "oom_re_ranking_rss_update_rate_ms"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v1, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    const-string/jumbo v2, "activity_manager"

    const-string/jumbo v3, "oom_re_ranking_rss_update_rate_ms"

    const-wide/16 v4, 0x2710

    invoke-static {v2, v3, v4, v5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/CacheOomRanker;->mRssUpdateRateMs:J

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v2, "oom_re_ranking_lru_weight"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v1, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    const-string/jumbo v2, "oom_re_ranking_lru_weight"

    const-string/jumbo v3, "activity_manager"

    const v4, 0x3eb33333    # 0.35f

    invoke-static {v3, v2, v4}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v2

    iput v2, v1, Lcom/android/server/am/CacheOomRanker;->mLruWeight:F

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v2, "oom_re_ranking_uses_weight"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v1, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    const-string/jumbo v2, "oom_re_ranking_uses_weight"

    const-string/jumbo v3, "activity_manager"

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v3, v2, v4}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v2

    iput v2, v1, Lcom/android/server/am/CacheOomRanker;->mUsesWeight:F

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v2, "oom_re_ranking_rss_weight"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    const-string/jumbo v2, "oom_re_ranking_rss_weight"

    const-string/jumbo v3, "activity_manager"

    const v4, 0x3e19999a    # 0.15f

    invoke-static {v3, v2, v4}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v2

    iput v2, v1, Lcom/android/server/am/CacheOomRanker;->mRssWeight:F

    goto/16 :goto_0

    :cond_9
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
