.class public final Lcom/android/server/location/eventlog/LocationEventLog;
.super Lcom/android/server/location/eventlog/LocalEventLog;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;


# instance fields
.field public final mAggregateStats:Landroid/util/ArrayMap;

.field public final mGnssMeasAggregateStats:Landroid/util/ArrayMap;

.field public final mLocationsLog:Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog;

    invoke-direct {v0}, Lcom/android/server/location/eventlog/LocationEventLog;-><init>()V

    sput-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x258

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocalEventLog;-><init>(I)V

    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mAggregateStats:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mGnssMeasAggregateStats:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lcom/android/server/location/eventlog/LocalEventLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mLocationsLog:Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;

    return-void
.end method


# virtual methods
.method public final addLog$1(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/location/eventlog/LocalEventLog;->addLog(JLjava/lang/Object;)V

    return-void
.end method

.method public final getAggregateStats(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mAggregateStats:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mAggregateStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iget-object p0, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mAggregateStats:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p2}, Landroid/location/util/identity/CallerIdentity;->forAggregation(Landroid/location/util/identity/CallerIdentity;)Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    if-nez p1, :cond_1

    new-instance p1, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p1, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mFastestIntervalMs:J

    const-wide/16 v2, 0x0

    iput-wide v2, p1, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mSlowestIntervalMs:J

    invoke-virtual {v1, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v0

    return-object p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getGnssMeasurementAggregateStats(Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mGnssMeasAggregateStats:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Landroid/location/util/identity/CallerIdentity;->forAggregation(Landroid/location/util/identity/CallerIdentity;)Landroid/location/util/identity/CallerIdentity;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mGnssMeasAggregateStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, v1, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mFastestIntervalMs:J

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mSlowestIntervalMs:J

    iget-object p0, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mGnssMeasAggregateStats:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final iterate(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v7, v0, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Lcom/android/server/location/eventlog/LocationEventLog$$ExternalSyntheticLambda0;

    move-object v5, p1

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/location/eventlog/LocationEventLog$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/StringBuilder;JLjava/util/function/Consumer;)V

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mLocationsLog:Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;

    filled-new-array {p0, p1}, [Lcom/android/server/location/eventlog/LocalEventLog;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/server/location/eventlog/LocalEventLog;->iterate(Lcom/android/server/location/eventlog/LocationEventLog$$ExternalSyntheticLambda0;[Lcom/android/server/location/eventlog/LocalEventLog;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final logProviderClientForeground(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V
    .locals 3

    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;-><init>(Ljava/lang/String;ZLandroid/location/util/identity/CallerIdentity;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog$1(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog;->getAggregateStats(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    iget p1, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedRequestCount:I

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget p1, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mForegroundRequestCount:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mForegroundRequestCount:I

    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mForegroundTimeLastUpdateRealtimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final logProviderDeliveredLocations(Ljava/lang/String;ILandroid/location/util/identity/CallerIdentity;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mLocationsLog:Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/location/eventlog/LocationEventLog$ProviderDeliverLocationEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderDeliverLocationEvent;-><init>(Ljava/lang/String;ILandroid/location/util/identity/CallerIdentity;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/location/eventlog/LocalEventLog;->addLog(JLjava/lang/Object;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p0, p1, p3}, Lcom/android/server/location/eventlog/LocationEventLog;->getAggregateStats(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    move-result-object p1

    monitor-enter p1

    :try_start_1
    iget p0, p1, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mDeliveredLocationCount:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p1, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mDeliveredLocationCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
