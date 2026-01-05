.class public final Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;
.super Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssMeasurementsProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssMeasurementsProvider;Landroid/location/GnssMeasurementRequest;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssMeasurementsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;-><init>(Lcom/android/server/location/gnss/GnssListenerMultiplexer;Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V

    return-void
.end method


# virtual methods
.method public final onActive()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    iget-object v0, v0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    const/16 v2, 0x2a

    invoke-virtual {v0, v2, v1}, Lcom/android/server/location/injector/SystemAppOpsHelper;->startOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)V

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->updateGnssListener()V

    return-void
.end method

.method public final onInactive()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    iget-object v0, v0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    const/16 v2, 0x2a

    invoke-virtual {v0, v2, v1}, Lcom/android/server/location/injector/SystemAppOpsHelper;->finishOp(ILandroid/location/util/identity/CallerIdentity;)V

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->updateGnssListener()V

    return-void
.end method

.method public final onRegister()V
    .locals 7

    invoke-super {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->onRegister()V

    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mRequest:Ljava/lang/Object;

    check-cast v2, Landroid/location/GnssMeasurementRequest;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v1, v2}, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;-><init>(ZLandroid/location/util/identity/CallerIdentity;Landroid/location/GnssMeasurementRequest;)V

    invoke-virtual {v0, v3}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog$1(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/server/location/eventlog/LocationEventLog;->getGnssMeasurementAggregateStats(Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;

    move-result-object v0

    invoke-virtual {v2}, Landroid/location/GnssMeasurementRequest;->getIntervalMillis()I

    move-result v1

    int-to-long v5, v1

    invoke-virtual {v2}, Landroid/location/GnssMeasurementRequest;->isFullTracking()Z

    move-result v1

    monitor-enter v0

    :try_start_0
    iget v2, v0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mAddedRequestCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mAddedRequestCount:I

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mAddedTimeLastUpdateRealtimeMs:J

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    iput-boolean v4, v0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mHasFullTracking:Z

    goto :goto_1

    :cond_1
    iput-boolean v4, v0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mHasDutyCycling:Z

    :goto_1
    iget-wide v1, v0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mFastestIntervalMs:J

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mFastestIntervalMs:J

    iget-wide v1, v0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mSlowestIntervalMs:J

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mSlowestIntervalMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    new-instance v0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onUnregister()V
    .locals 5

    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;-><init>(ZLandroid/location/util/identity/CallerIdentity;Landroid/location/GnssMeasurementRequest;)V

    invoke-virtual {v0, v2}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog$1(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/server/location/eventlog/LocationEventLog;->getGnssMeasurementAggregateStats(Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->updateTotals()V

    iget v1, v0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mAddedRequestCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mAddedRequestCount:I

    if-ltz v1, :cond_0

    move v3, v2

    :cond_0
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-super {p0}, Lcom/android/server/location/listeners/BinderListenerRegistration;->onUnregister()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
