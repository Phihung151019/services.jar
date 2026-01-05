.class public final Lcom/android/server/location/fudger/LocationFudgerCache$2;
.super Landroid/location/provider/IS2CellIdsCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/fudger/LocationFudgerCache;

.field public final synthetic val$startTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/location/fudger/LocationFudgerCache;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/fudger/LocationFudgerCache$2;->this$0:Lcom/android/server/location/fudger/LocationFudgerCache;

    iput-wide p2, p0, Lcom/android/server/location/fudger/LocationFudgerCache$2;->val$startTime:J

    invoke-direct {p0}, Landroid/location/provider/IS2CellIdsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError()V
    .locals 4

    const-string/jumbo v0, "LocationFudgerCache"

    const-string/jumbo v1, "could not get population density"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/location/fudger/LocationFudgerCache$2;->val$startTime:J

    sub-long/2addr v0, v2

    long-to-int p0, v0

    const/16 v0, 0x3ec

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIZ)V

    return-void
.end method

.method public final onResult([J)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/location/fudger/LocationFudgerCache$2;->val$startTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x3ec

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIZ)V

    iget-object p0, p0, Lcom/android/server/location/fudger/LocationFudgerCache$2;->this$0:Lcom/android/server/location/fudger/LocationFudgerCache;

    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    array-length v1, p1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v3, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mCacheSize:I

    add-int/2addr v3, v1

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mCacheSize:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mCache:[J

    iget v4, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mPosInCache:I

    aget-wide v5, p1, v1

    aput-wide v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    rem-int/2addr v4, v2

    iput v4, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mPosInCache:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
