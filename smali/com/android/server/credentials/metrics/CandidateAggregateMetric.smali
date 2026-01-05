.class public final Lcom/android/server/credentials/metrics/CandidateAggregateMetric;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAggregateCollectiveAuth:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

.field public mAggregateCollectiveQuery:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

.field public mAuthReturned:Z

.field public final mExceptionCountAuth:Ljava/util/Map;

.field public final mExceptionCountQuery:Ljava/util/Map;

.field public mMaxProviderTimestampNanoseconds:J

.field public mMinProviderTimestampNanoseconds:J

.field public mNumAuthEntriesTapped:I

.field public mNumProviders:I

.field public mQueryReturned:Z

.field public mServiceBeganTimeNanoseconds:J

.field public final mSessionIdProvider:I

.field public mTotalQueryFailures:I


# direct methods
.method public constructor <init>(I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mQueryReturned:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mServiceBeganTimeNanoseconds:J

    iput v0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mNumProviders:I

    iput-boolean v0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAuthReturned:Z

    iput v0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mNumAuthEntriesTapped:I

    new-instance v3, Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    sget-object v4, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v3, v4, v4}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    iput-object v3, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAggregateCollectiveQuery:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    new-instance v3, Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    invoke-direct {v3, v4, v4}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    iput-object v3, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAggregateCollectiveAuth:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    iput-wide v1, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mMinProviderTimestampNanoseconds:J

    iput-wide v1, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mMaxProviderTimestampNanoseconds:J

    iput v0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mTotalQueryFailures:I

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mExceptionCountQuery:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mExceptionCountAuth:Ljava/util/Map;

    iput p1, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mSessionIdProvider:I

    return-void
.end method


# virtual methods
.method public final collectAverages(Ljava/util/Map;)V
    .locals 14

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iput v0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mNumProviders:I

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide v3, 0x7fffffffffffffffL

    const-wide/high16 v5, -0x8000000000000000L

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/credentials/ProviderSession;

    iget-object v7, v7, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    iget-object v7, v7, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    iget v11, v7, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mCandidateUid:I

    if-ne v11, v10, :cond_1

    iget v7, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mNumProviders:I

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mNumProviders:I

    goto :goto_0

    :cond_1
    iget-wide v10, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mServiceBeganTimeNanoseconds:J

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_2

    iget-wide v10, v7, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mServiceBeganTimeNanoseconds:J

    iput-wide v10, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mServiceBeganTimeNanoseconds:J

    :cond_2
    iget-boolean v10, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mQueryReturned:Z

    if-nez v10, :cond_4

    iget-boolean v10, v7, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mQueryReturned:Z

    if-eqz v10, :cond_3

    goto :goto_1

    :cond_3
    move v10, v9

    goto :goto_2

    :cond_4
    :goto_1
    move v10, v8

    :goto_2
    iput-boolean v10, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mQueryReturned:Z

    iget-object v10, v7, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    iget-object v11, v10, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->mResponseCounts:Ljava/util/Map;

    invoke-static {v11}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->combineTypeCountMaps(Ljava/util/Map;Ljava/util/Map;)V

    iget-object v10, v10, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->mEntryCounts:Ljava/util/Map;

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->combineTypeCountMaps(Ljava/util/Map;Ljava/util/Map;)V

    iget-wide v10, v7, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mStartQueryTimeNanoseconds:J

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iget-wide v10, v7, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mQueryFinishTimeNanoseconds:J

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget v10, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mTotalQueryFailures:I

    iget-boolean v11, v7, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mHasException:Z

    add-int/2addr v10, v11

    iput v10, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mTotalQueryFailures:I

    iget-object v10, v7, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mFrameworkException:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mExceptionCountQuery:Ljava/util/Map;

    iget-object v7, v7, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mFrameworkException:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v11, v10

    check-cast v11, Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v7, v9}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v10, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    iput-wide v3, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mMinProviderTimestampNanoseconds:J

    iput-wide v5, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mMaxProviderTimestampNanoseconds:J

    new-instance v2, Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    invoke-direct {v2, v0, v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    iput-object v2, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAggregateCollectiveQuery:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/credentials/ProviderSession;

    iget-object v2, v2, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    iget-object v2, v2, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mBrowsedAuthenticationMetric:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v9

    :cond_7
    :goto_3
    if-ge v4, v3, :cond_6

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;

    iget v6, v5, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mProviderUid:I

    if-ne v6, v10, :cond_8

    goto :goto_3

    :cond_8
    iget v6, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mNumAuthEntriesTapped:I

    add-int/2addr v6, v8

    iput v6, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mNumAuthEntriesTapped:I

    iget-boolean v6, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAuthReturned:Z

    if-nez v6, :cond_a

    iget-boolean v6, v5, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mAuthReturned:Z

    if-eqz v6, :cond_9

    goto :goto_4

    :cond_9
    move v6, v9

    goto :goto_5

    :cond_a
    :goto_4
    move v6, v8

    :goto_5
    iput-boolean v6, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAuthReturned:Z

    iget-object v6, v5, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mAuthEntryCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    iget-object v7, v6, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->mResponseCounts:Ljava/util/Map;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->combineTypeCountMaps(Ljava/util/Map;Ljava/util/Map;)V

    iget-object v6, v6, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->mEntryCounts:Ljava/util/Map;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->combineTypeCountMaps(Ljava/util/Map;Ljava/util/Map;)V

    iget v6, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mTotalQueryFailures:I

    iget-boolean v7, v5, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mHasException:Z

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mTotalQueryFailures:I

    iget-object v5, v5, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mFrameworkException:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mExceptionCountQuery:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v11, v6

    check-cast v11, Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v5, v7}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_b
    new-instance p1, Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    invoke-direct {p1, v0, v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    iput-object p1, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAggregateCollectiveAuth:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    return-void
.end method
