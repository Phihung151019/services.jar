.class public final Lcom/android/server/location/fudger/LocationFudgerCache;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCache:[J

.field public mCacheSize:I

.field public mDefaultCoarseningLevel:Ljava/lang/Integer;

.field public mLastQueryToLogDensityBasedLocsUsedMs:J

.field public final mLock:Ljava/lang/Object;

.field public final mPopulationDensityProvider:Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

.field public mPosInCache:I


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mLock:Ljava/lang/Object;

    const/16 v0, 0x14

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mCache:[J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mPosInCache:I

    iput v0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mCacheSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mDefaultCoarseningLevel:Ljava/lang/Integer;

    const-wide/32 v0, -0x927c0

    iput-wide v0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mLastQueryToLogDensityBasedLocsUsedMs:J

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mPopulationDensityProvider:Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudgerCache;->asyncFetchDefaultCoarseningLevel()V

    return-void
.end method


# virtual methods
.method public final asyncFetchDefaultCoarseningLevel()V
    .locals 2

    new-instance v0, Lcom/android/server/location/fudger/LocationFudgerCache$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/fudger/LocationFudgerCache$1;-><init>(Lcom/android/server/location/fudger/LocationFudgerCache;)V

    iget-object p0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mPopulationDensityProvider:Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    new-instance v1, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$1;

    invoke-direct {v1, v0}, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$1;-><init>(Lcom/android/server/location/fudger/LocationFudgerCache$1;)V

    invoke-interface {p0, v1}, Lcom/android/server/servicewatcher/ServiceWatcher;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    return-void
.end method

.method public final hasDefaultValue()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mDefaultCoarseningLevel:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final logDensityBasedLocsUsed(JIZZ)V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mLastQueryToLogDensityBasedLocsUsedMs:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    :cond_0
    iput-wide p1, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mLastQueryToLogDensityBasedLocsUsedMs:J

    const/16 p0, 0x3eb

    invoke-static {p0, p4, p5, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZZI)V

    return-void
.end method
