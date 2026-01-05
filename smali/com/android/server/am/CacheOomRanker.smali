.class public Lcom/android/server/am/CacheOomRanker;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final CACHE_USE_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;

.field static final DEFAULT_OOM_RE_RANKING_LRU_WEIGHT:F = 0.35f

.field static final DEFAULT_OOM_RE_RANKING_NUMBER_TO_RE_RANK:I = 0x8

.field static final DEFAULT_OOM_RE_RANKING_RSS_WEIGHT:F = 0.15f

.field static final DEFAULT_OOM_RE_RANKING_USES_WEIGHT:F = 0.5f

.field static final DEFAULT_PRESERVE_TOP_N_APPS:I = 0x3

.field static final DEFAULT_RSS_UPDATE_RATE_MS:J = 0x2710L

.field static final DEFAULT_USE_FREQUENT_RSS:Z = true

.field static final KEY_OOM_RE_RANKING_LRU_WEIGHT:Ljava/lang/String; = "oom_re_ranking_lru_weight"

.field static final KEY_OOM_RE_RANKING_NUMBER_TO_RE_RANK:Ljava/lang/String; = "oom_re_ranking_number_to_re_rank"

.field static final KEY_OOM_RE_RANKING_PRESERVE_TOP_N_APPS:Ljava/lang/String; = "oom_re_ranking_preserve_top_n_apps"

.field static final KEY_OOM_RE_RANKING_RSS_UPDATE_RATE_MS:Ljava/lang/String; = "oom_re_ranking_rss_update_rate_ms"

.field static final KEY_OOM_RE_RANKING_RSS_WEIGHT:Ljava/lang/String; = "oom_re_ranking_rss_weight"

.field static final KEY_OOM_RE_RANKING_USES_WEIGHT:Ljava/lang/String; = "oom_re_ranking_uses_weight"

.field static final KEY_OOM_RE_RANKING_USE_FREQUENT_RSS:Ljava/lang/String; = "oom_re_ranking_rss_use_frequent_rss"

.field static final KEY_USE_OOM_RE_RANKING:Ljava/lang/String; = "use_oom_re_ranking"

.field public static final LAST_ACTIVITY_TIME_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;

.field public static final LAST_RSS_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;

.field public static final RSS_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;

.field public static final SCORED_PROCESS_RECORD_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;


# instance fields
.field public mLruPositions:[I

.field mLruWeight:F

.field public final mOnFlagsChangedListener:Lcom/android/server/am/CacheOomRanker$1;

.field public final mPhenotypeFlagLock:Ljava/lang/Object;

.field mPreserveTopNApps:I

.field public final mProcessDependencies:Lcom/android/server/am/CacheOomRanker$ProcessDependencies;

.field public final mProfilerLock:Ljava/lang/Object;

.field mRssUpdateRateMs:J

.field mRssWeight:F

.field public mScoredProcessRecords:[Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field mUseFrequentRss:Z

.field public mUseOomReRanking:Z

.field mUsesWeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/CacheOomRanker$RssComparator;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/server/am/CacheOomRanker$RssComparator;-><init>(I)V

    sput-object v0, Lcom/android/server/am/CacheOomRanker;->SCORED_PROCESS_RECORD_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;

    new-instance v0, Lcom/android/server/am/CacheOomRanker$RssComparator;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/am/CacheOomRanker$RssComparator;-><init>(I)V

    sput-object v0, Lcom/android/server/am/CacheOomRanker;->CACHE_USE_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;

    new-instance v0, Lcom/android/server/am/CacheOomRanker$RssComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/CacheOomRanker$RssComparator;-><init>(I)V

    sput-object v0, Lcom/android/server/am/CacheOomRanker;->RSS_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;

    new-instance v0, Lcom/android/server/am/CacheOomRanker$RssComparator;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/server/am/CacheOomRanker$RssComparator;-><init>(I)V

    sput-object v0, Lcom/android/server/am/CacheOomRanker;->LAST_RSS_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;

    new-instance v0, Lcom/android/server/am/CacheOomRanker$RssComparator;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/server/am/CacheOomRanker$RssComparator;-><init>(I)V

    sput-object v0, Lcom/android/server/am/CacheOomRanker;->LAST_ACTIVITY_TIME_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/CacheOomRanker$ProcessDependencies;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/CacheOomRanker;->mUseOomReRanking:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mPreserveTopNApps:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/CacheOomRanker;->mUseFrequentRss:Z

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/android/server/am/CacheOomRanker;->mRssUpdateRateMs:J

    const v0, 0x3eb33333    # 0.35f

    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mLruWeight:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mUsesWeight:F

    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mRssWeight:F

    new-instance v0, Lcom/android/server/am/CacheOomRanker$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/CacheOomRanker$1;-><init>(Lcom/android/server/am/CacheOomRanker;)V

    iput-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mOnFlagsChangedListener:Lcom/android/server/am/CacheOomRanker$1;

    iput-object p1, p0, Lcom/android/server/am/CacheOomRanker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object p1, p1, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/am/CacheOomRanker;->mProfilerLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/am/CacheOomRanker;->mProcessDependencies:Lcom/android/server/am/CacheOomRanker$ProcessDependencies;

    return-void
.end method

.method public static addToScore([Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;F)V
    .locals 4

    const/4 v0, 0x1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-object v1, p0, v0

    iget v2, v1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->score:F

    int-to-float v3, v0

    mul-float/2addr v3, p1

    add-float/2addr v3, v2

    iput v3, v1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->score:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getNumberToReRank()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/CacheOomRanker;->mScoredProcessRecords:[Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    array-length p0, p0

    return p0
.end method

.method public final updateNumberToReRank()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->getNumberToReRank()I

    move-result v0

    const-string/jumbo v1, "oom_re_ranking_number_to_re_rank"

    const/16 v2, 0x8

    const-string/jumbo v3, "activity_manager"

    invoke-static {v3, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v1, :cond_1

    new-array v0, v1, [Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    iput-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mScoredProcessRecords:[Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/CacheOomRanker;->mScoredProcessRecords:[Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    new-instance v3, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mLruPositions:[I

    :cond_1
    return-void
.end method
