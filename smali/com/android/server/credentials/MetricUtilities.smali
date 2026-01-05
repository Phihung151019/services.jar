.class public abstract Lcom/android/server/credentials/MetricUtilities;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEFAULT_REPEATED_INT_32:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/credentials/MetricUtilities;->DEFAULT_REPEATED_INT_32:[I

    return-void
.end method

.method public static generateMetricKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMetricTimestampDifferenceMicroseconds(JJ)I
    .locals 5

    sub-long v0, p0, p2

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    const-string v4, "CredentialManager"

    if-lez v2, :cond_0

    const-string p0, "Input timestamps are too far apart and unsupported, falling back to default int"

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    cmp-long p0, p0, p2

    if-gez p0, :cond_1

    const-string/jumbo p0, "The timestamps aren\'t in expected order, falling back to default int"

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const-wide/16 p0, 0x3e8

    div-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method public static getPackageUid(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t find uid for "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CredentialManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static logApiCalledAggregateCandidate(Lcom/android/server/credentials/metrics/CandidateAggregateMetric;I)V
    .locals 23

    move-object/from16 v0, p0

    :try_start_0
    iget v1, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mSessionIdProvider:I

    iget-boolean v3, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mQueryReturned:Z

    iget v4, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mNumProviders:I

    iget-wide v5, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mMinProviderTimestampNanoseconds:J

    iget-wide v7, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mServiceBeganTimeNanoseconds:J

    invoke-static {v5, v6, v7, v8}, Lcom/android/server/credentials/MetricUtilities;->getMetricTimestampDifferenceMicroseconds(JJ)I

    move-result v5

    iget-wide v6, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mMaxProviderTimestampNanoseconds:J

    iget-wide v8, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mServiceBeganTimeNanoseconds:J

    invoke-static {v6, v7, v8, v9}, Lcom/android/server/credentials/MetricUtilities;->getMetricTimestampDifferenceMicroseconds(JJ)I

    move-result v6

    iget-object v2, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAggregateCollectiveQuery:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    invoke-virtual {v2}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    move-result-object v7

    iget-object v2, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAggregateCollectiveQuery:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    invoke-virtual {v2}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseCounts()[I

    move-result-object v8

    iget-object v2, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAggregateCollectiveQuery:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    invoke-virtual {v2}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntries()[I

    move-result-object v9

    iget-object v2, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAggregateCollectiveQuery:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    invoke-virtual {v2}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntryCounts()[I

    move-result-object v10

    iget v11, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mTotalQueryFailures:I

    iget-object v2, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mExceptionCountQuery:Ljava/util/Map;

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v12, v2, [Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mExceptionCountQuery:Ljava/util/Map;

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v12}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mExceptionCountQuery:Ljava/util/Map;

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v13, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    const/4 v14, 0x2

    invoke-direct {v13, v14}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v2, v13}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v13

    iget-object v2, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAggregateCollectiveAuth:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    invoke-virtual {v2}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    move-result-object v14

    iget-object v2, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAggregateCollectiveAuth:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    invoke-virtual {v2}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseCounts()[I

    move-result-object v15

    iget-object v2, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAggregateCollectiveAuth:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    invoke-virtual {v2}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntries()[I

    move-result-object v16

    iget-object v2, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAggregateCollectiveAuth:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    invoke-virtual {v2}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntryCounts()[I

    move-result-object v17

    iget-object v2, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mExceptionCountAuth:Ljava/util/Map;

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move/from16 v18, v1

    iget-object v1, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mExceptionCountAuth:Ljava/util/Map;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mExceptionCountAuth:Ljava/util/Map;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    move-object/from16 v19, v2

    new-instance v2, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    move/from16 v20, v3

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    iget v2, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mNumAuthEntriesTapped:I

    iget-boolean v0, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAuthReturned:Z

    move/from16 v22, v0

    const/16 v0, 0x29b

    move/from16 v3, v20

    move-object/from16 v20, v1

    move/from16 v1, v18

    const/16 v18, 0x0

    move/from16 v21, v2

    move/from16 v2, p1

    invoke-static/range {v0 .. v22}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIII[Ljava/lang/String;[I[I[II[Ljava/lang/String;[I[Ljava/lang/String;[I[I[II[Ljava/lang/String;[IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Unexpected error during total candidate metric logging: "

    const-string v2, "CredentialManager"

    invoke-static {v0, v1, v2}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logApiCalledAuthenticationMetric(Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;I)V
    .locals 12

    :try_start_0
    iget v1, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mSessionIdProvider:I

    iget v3, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mProviderUid:I

    iget-object v0, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mAuthEntryCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mAuthEntryCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseCounts()[I

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mAuthEntryCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntries()[I

    move-result-object v6

    iget-object v0, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mAuthEntryCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntryCounts()[I

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mFrameworkException:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mHasException:Z

    iget v10, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mProviderStatus:I

    iget-boolean v11, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mAuthReturned:Z

    const/16 v0, 0x29e

    move v2, p1

    invoke-static/range {v0 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII[Ljava/lang/String;[I[I[ILjava/lang/String;ZIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string/jumbo p1, "Unexpected error during candidate auth metric logging: "

    const-string v0, "CredentialManager"

    invoke-static {p0, p1, v0}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logApiCalledCandidateGetMetric(ILjava/util/Map;)V
    .locals 7

    :try_start_0
    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/credentials/ProviderSession;

    iget-object v0, v0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    iget-object v0, v0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    iget v2, v0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mSessionIdProvider:I

    iget v4, v0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mCandidateUid:I

    iget-object v1, v0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    move-result-object v5

    iget-object v0, v0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseCounts()[I

    move-result-object v6

    const/16 v1, 0x29d

    move v3, p0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII[Ljava/lang/String;[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string/jumbo p1, "Unexpected error during candidate get metric logging: "

    const-string v0, "CredentialManager"

    invoke-static {p0, p1, v0}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static logApiCalledCandidatePhase(Ljava/util/Map;ILcom/android/server/credentials/metrics/InitialPhaseMetric;)V
    .locals 29

    move-object/from16 v0, p2

    :try_start_0
    move-object/from16 v1, p0

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v7, v2, [I

    new-array v8, v2, [I

    new-array v9, v2, [I

    new-array v10, v2, [I

    new-array v11, v2, [Z

    new-array v12, v2, [I

    new-array v14, v2, [I

    new-array v15, v2, [I

    new-array v13, v2, [I

    new-array v3, v2, [I

    new-array v4, v2, [I

    new-array v5, v2, [Ljava/lang/String;

    new-array v2, v2, [Z

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/16 p0, 0x0

    move/from16 v17, p0

    move/from16 v18, v17

    move-object/from16 v16, v4

    const/4 v4, -0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v6, v19

    check-cast v6, Lcom/android/server/credentials/ProviderSession;

    iget-object v6, v6, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    iget-object v6, v6, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    move-object/from16 v19, v1

    const/4 v1, -0x1

    if-ne v4, v1, :cond_0

    iget v4, v6, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mSessionIdProvider:I

    :cond_0
    if-nez v17, :cond_1

    iget-boolean v1, v6, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mQueryReturned:Z

    move/from16 v17, v1

    :cond_1
    iget v1, v6, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mCandidateUid:I

    aput v1, v7, v18

    move-object/from16 v23, v2

    iget-wide v1, v6, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mStartQueryTimeNanoseconds:J

    move-wide/from16 v21, v1

    iget-wide v1, v6, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mServiceBeganTimeNanoseconds:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v24, v21, v1

    const-wide/16 v25, 0x3e8

    move-wide/from16 v27, v1

    const-string/jumbo v1, "The timestamp is before service started, falling back to default int"

    const-string v2, "CandidateProviderMetric"

    if-gez v24, :cond_2

    :try_start_1
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v24, v3

    move/from16 v27, v4

    const/4 v3, -0x1

    goto :goto_1

    :cond_2
    sub-long v21, v21, v27

    move-object/from16 v24, v3

    move/from16 v27, v4

    div-long v3, v21, v25

    long-to-int v3, v3

    :goto_1
    aput v3, v8, v18

    iget-wide v3, v6, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mQueryFinishTimeNanoseconds:J

    move-wide/from16 v21, v3

    iget-wide v3, v6, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mServiceBeganTimeNanoseconds:J

    cmp-long v28, v21, v3

    if-gez v28, :cond_3

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_2

    :cond_3
    sub-long v3, v21, v3

    div-long v3, v3, v25

    long-to-int v1, v3

    :goto_2
    aput v1, v9, v18

    iget v1, v6, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mProviderQueryStatus:I

    aput v1, v10, v18

    iget-boolean v1, v6, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mHasException:Z

    aput-boolean v1, v11, v18

    iget-object v1, v6, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    iget-object v1, v1, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->mEntryCounts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->sum()I

    move-result v1

    aput v1, v12, v18

    iget-object v1, v6, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    sget-object v2, Lcom/android/server/credentials/metrics/EntryEnum;->CREDENTIAL_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    invoke-virtual {v1, v2}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getCountForEntry(Lcom/android/server/credentials/metrics/EntryEnum;)I

    move-result v1

    aput v1, v14, v18

    iget-object v1, v6, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    aput v1, v15, v18

    iget-object v1, v6, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    sget-object v2, Lcom/android/server/credentials/metrics/EntryEnum;->ACTION_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    invoke-virtual {v1, v2}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getCountForEntry(Lcom/android/server/credentials/metrics/EntryEnum;)I

    move-result v1

    aput v1, v13, v18

    iget-object v1, v6, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    sget-object v2, Lcom/android/server/credentials/metrics/EntryEnum;->AUTHENTICATION_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    invoke-virtual {v1, v2}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getCountForEntry(Lcom/android/server/credentials/metrics/EntryEnum;)I

    move-result v1

    aput v1, v24, v18

    iget-object v1, v6, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    sget-object v2, Lcom/android/server/credentials/metrics/EntryEnum;->REMOTE_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    invoke-virtual {v1, v2}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getCountForEntry(Lcom/android/server/credentials/metrics/EntryEnum;)I

    move-result v1

    aput v1, v16, v18

    iget-object v1, v6, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mFrameworkException:Ljava/lang/String;

    aput-object v1, v5, v18

    aput-boolean p0, v23, v18

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move/from16 v4, v27

    goto/16 :goto_0

    :cond_4
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    iget-boolean v1, v0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mOriginSpecified:Z

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getUniqueRequestStrings()[Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getUniqueRequestCounts()[I

    move-result-object v21

    iget v0, v0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mApiName:I

    const/16 v3, 0x28c

    move/from16 v6, v17

    move-object/from16 v17, v24

    const/16 v24, 0x0

    move/from16 v22, v0

    move/from16 v19, v1

    move-object/from16 v18, v5

    move/from16 v5, p1

    invoke-static/range {v3 .. v24}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZ[I[I[I[I[Z[I[I[I[I[I[I[Ljava/lang/String;Z[Ljava/lang/String;[II[ZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Unexpected error during candidate provider uid metric emit: "

    const-string v2, "CredentialManager"

    invoke-static {v0, v1, v2}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logApiCalledFinalPhase(Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;Ljava/util/List;II)V
    .locals 31

    move-object/from16 v0, p0

    :try_start_0
    move-object/from16 v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v3, v2, [I

    new-array v2, v2, [I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;

    iget v8, v7, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->mEntryEnum:I

    aput v8, v3, v5

    iget v7, v7, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->mProviderUid:I

    aput v7, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget v4, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mSessionIdProvider:I

    iget-boolean v6, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiReturned:Z

    iget v7, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mChosenUid:I

    iget-wide v8, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mQueryStartTimeNanoseconds:J

    invoke-virtual {v0, v8, v9}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v8

    iget-wide v9, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mQueryEndTimeNanoseconds:J

    invoke-virtual {v0, v9, v10}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v9

    iget-wide v10, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiCallStartTimeNanoseconds:J

    invoke-virtual {v0, v10, v11}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v10

    iget-wide v11, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiCallEndTimeNanoseconds:J

    invoke-virtual {v0, v11, v12}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v11

    iget-wide v12, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mFinalFinishTimeNanoseconds:J

    invoke-virtual {v0, v12, v13}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v12

    iget v13, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mChosenProviderStatus:I

    iget-boolean v14, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mHasException:Z

    sget-object v15, Lcom/android/server/credentials/MetricUtilities;->DEFAULT_REPEATED_INT_32:[I

    iget-object v1, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntries()[I

    move-result-object v24

    iget-object v1, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntryCounts()[I

    move-result-object v25

    iget-object v1, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    move-result-object v26

    iget-object v1, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseCounts()[I

    move-result-object v27

    iget-object v1, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mFrameworkException:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mChosenClassType:Ljava/lang/String;

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v29, 0x0

    move-object/from16 v21, v3

    const/16 v3, 0x28d

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    move/from16 v23, p2

    move/from16 v5, p3

    move-object/from16 v30, v0

    move-object/from16 v28, v1

    move-object/from16 v22, v2

    invoke-static/range {v3 .. v30}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIIIIIIIZ[IIIIII[I[II[I[I[Ljava/lang/String;[ILjava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Unexpected error during final provider uid emit: "

    const-string v2, "CredentialManager"

    invoke-static {v0, v1, v2}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logApiCalledInitialPhase(Lcom/android/server/credentials/metrics/InitialPhaseMetric;I)V
    .locals 14

    :try_start_0
    iget v1, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mApiName:I

    iget v2, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mCallerUid:I

    iget v3, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mSessionIdCaller:I

    iget-wide v5, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mCredentialServiceStartedTimeNanoseconds:J

    iget-object v0, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mRequestCounts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getUniqueRequestStrings()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getUniqueRequestCounts()[I

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mOriginSpecified:Z

    iget v11, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mAutofillSessionId:I

    iget v12, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mAutofillRequestId:I

    const/16 v0, 0x28b

    const/4 v13, 0x0

    move v4, p1

    invoke-static/range {v0 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIJI[Ljava/lang/String;[IZIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string/jumbo p1, "Unexpected error during initial metric emit: "

    const-string v0, "CredentialManager"

    invoke-static {p0, p1, v0}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logApiCalledNoUidFinal(Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;Ljava/util/List;II)V
    .locals 27

    move-object/from16 v0, p0

    :try_start_0
    move-object/from16 v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v3, v2, [I

    new-array v2, v2, [I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;

    iget v7, v7, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->mEntryEnum:I

    aput v7, v3, v5

    const/4 v7, -0x1

    aput v7, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget v4, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mSessionIdCaller:I

    iget-boolean v6, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiReturned:Z

    iget-wide v7, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mQueryStartTimeNanoseconds:J

    invoke-virtual {v0, v7, v8}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v7

    iget-wide v8, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mQueryEndTimeNanoseconds:J

    invoke-virtual {v0, v8, v9}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v8

    iget-wide v9, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiCallStartTimeNanoseconds:J

    invoke-virtual {v0, v9, v10}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v9

    iget-wide v10, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiCallEndTimeNanoseconds:J

    invoke-virtual {v0, v10, v11}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v10

    iget-wide v11, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mFinalFinishTimeNanoseconds:J

    invoke-virtual {v0, v11, v12}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v11

    iget v12, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mChosenProviderStatus:I

    iget-boolean v13, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mHasException:Z

    iget-object v1, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntries()[I

    move-result-object v14

    iget-object v1, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntryCounts()[I

    move-result-object v15

    iget-object v1, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    move-result-object v16

    iget-object v1, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseCounts()[I

    move-result-object v17

    iget-object v1, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mFrameworkException:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mOemUiUid:I

    move-object/from16 v18, v1

    iget v1, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mFallbackUiUid:I

    move/from16 v24, v1

    iget-object v1, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mOemUiUsageStatus:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->getLoggingInt()I

    move-result v25

    iget-object v0, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mChosenClassType:Ljava/lang/String;

    move-object/from16 v19, v3

    const/16 v3, 0x29c

    const/16 v22, 0x0

    move/from16 v21, p2

    move-object/from16 v26, v0

    move-object/from16 v20, v2

    move/from16 v23, v5

    move/from16 v5, p3

    invoke-static/range {v3 .. v26}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIIIIIIZ[I[I[Ljava/lang/String;[ILjava/lang/String;[I[IIZIIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Unexpected error during final no uid metric logging: "

    const-string v2, "CredentialManager"

    invoke-static {v0, v1, v2}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logApiCalledSimpleV2(Lcom/android/server/credentials/metrics/ApiName;Lcom/android/server/credentials/metrics/ApiStatus;I)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/ApiName;->getMetricCode()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result p1

    const/16 v0, 0x29f

    invoke-static {v0, p0, p2, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "Unexpected error during simple v2 metric logging: "

    const-string p2, "CredentialManager"

    invoke-static {p0, p1, p2}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
