.class public Lcom/android/server/location/fudger/LocationFudger;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field static final OFFSET_UPDATE_INTERVAL_MS:J = 0x36ee80L

.field public static final OLD_WEIGHT:D

.field public static final S2_CELL_AVG_EDGE_PER_LEVEL:[F


# instance fields
.field public final mAccuracyM:F

.field public mCachedCoarseLocation:Landroid/location/Location;

.field public mCachedCoarseLocationResult:Landroid/location/LocationResult;

.field public mCachedFineLocation:Landroid/location/Location;

.field public mCachedFineLocationResult:Landroid/location/LocationResult;

.field public final mClock:Ljava/time/Clock;

.field public mLatitudeOffsetM:D

.field public mLocationFudgerCache:Lcom/android/server/location/fudger/LocationFudgerCache;

.field public mLongitudeOffsetM:D

.field public mNextUpdateRealtimeMs:J

.field public final mRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x3feff8a0902de00dL    # 0.9991

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/server/location/fudger/LocationFudger;->OLD_WEIGHT:D

    const/16 v0, 0xf

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/location/fudger/LocationFudger;->S2_CELL_AVG_EDGE_PER_LEVEL:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x4610108f
        0x4590108f
        0x451010a4
        0x449010a4
        0x441010a4    # 576.26f
        0x439010a4    # 288.13f
        0x43100f5c    # 144.06f
        0x42900f5c    # 72.03f
        0x4210147b    # 36.02f
        0x41a651ec    # 20.79f
        0x41100000    # 9.0f
        0x40a1999a    # 5.05f
        0x40100000    # 2.25f
        0x3f90a3d7    # 1.13f
        0x3f11eb85    # 0.57f
    .end array-data
.end method

.method public constructor <init>(FLjava/time/Clock;Ljava/util/Random;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mLocationFudgerCache:Lcom/android/server/location/fudger/LocationFudgerCache;

    iput-object p2, p0, Lcom/android/server/location/fudger/LocationFudger;->mClock:Ljava/time/Clock;

    iput-object p3, p0, Lcom/android/server/location/fudger/LocationFudger;->mRandom:Ljava/util/Random;

    const/high16 p3, 0x43480000    # 200.0f

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/server/location/fudger/LocationFudger;->mAccuracyM:F

    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudger;->nextRandomOffset()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mLatitudeOffsetM:D

    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudger;->nextRandomOffset()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mLongitudeOffsetM:D

    invoke-virtual {p2}, Ljava/time/Clock;->millis()J

    move-result-wide p1

    const-wide/32 v0, 0x36ee80

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/location/fudger/LocationFudger;->mNextUpdateRealtimeMs:J

    return-void
.end method

.method public static wrapLongitude(D)D
    .locals 4

    const-wide v0, 0x4076800000000000L    # 360.0

    rem-double/2addr p0, v0

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v2, p0, v2

    if-ltz v2, :cond_0

    sub-double/2addr p0, v0

    :cond_0
    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_1

    add-double/2addr p0, v0

    :cond_1
    return-wide p0
.end method


# virtual methods
.method public final createCoarse(Landroid/location/Location;)Landroid/location/Location;
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Lcom/android/server/location/fudger/LocationFudger;->mCachedFineLocation:Landroid/location/Location;

    if-eq v0, v2, :cond_f

    iget-object v2, v1, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocation:Landroid/location/Location;

    if-ne v0, v2, :cond_0

    goto/16 :goto_c

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    monitor-enter p0

    :try_start_1
    iget-object v2, v1, Lcom/android/server/location/fudger/LocationFudger;->mClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/android/server/location/fudger/LocationFudger;->mNextUpdateRealtimeMs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    monitor-exit p0

    goto :goto_0

    :cond_1
    :try_start_2
    sget-wide v4, Lcom/android/server/location/fudger/LocationFudger;->OLD_WEIGHT:D

    iget-wide v6, v1, Lcom/android/server/location/fudger/LocationFudger;->mLatitudeOffsetM:D

    mul-double/2addr v6, v4

    invoke-virtual {v1}, Lcom/android/server/location/fudger/LocationFudger;->nextRandomOffset()D

    move-result-wide v8

    const-wide v10, 0x3f9eb851eb851eb8L    # 0.03

    mul-double/2addr v8, v10

    add-double/2addr v8, v6

    iput-wide v8, v1, Lcom/android/server/location/fudger/LocationFudger;->mLatitudeOffsetM:D

    iget-wide v6, v1, Lcom/android/server/location/fudger/LocationFudger;->mLongitudeOffsetM:D

    mul-double/2addr v4, v6

    invoke-virtual {v1}, Lcom/android/server/location/fudger/LocationFudger;->nextRandomOffset()D

    move-result-wide v6

    mul-double/2addr v6, v10

    add-double/2addr v6, v4

    iput-wide v6, v1, Lcom/android/server/location/fudger/LocationFudger;->mLongitudeOffsetM:D

    const-wide/32 v4, 0x36ee80

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/location/fudger/LocationFudger;->mNextUpdateRealtimeMs:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    monitor-exit p0

    :goto_0
    new-instance v7, Landroid/location/Location;

    invoke-direct {v7, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v7}, Landroid/location/Location;->removeBearing()V

    invoke-virtual {v7}, Landroid/location/Location;->removeSpeed()V

    invoke-virtual {v7}, Landroid/location/Location;->removeAltitude()V

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    const-wide v5, 0x40567fffda36a676L    # 89.999990990991

    cmpl-double v8, v3, v5

    if-lez v8, :cond_2

    move-wide v3, v5

    :cond_2
    const-wide v8, -0x3fa9800025c9598aL    # -89.999990990991

    cmpg-double v10, v3, v8

    if-gez v10, :cond_3

    move-wide v3, v8

    :cond_3
    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/android/server/location/fudger/LocationFudger;->wrapLongitude(D)D

    move-result-wide v10

    iget-wide v12, v1, Lcom/android/server/location/fudger/LocationFudger;->mLongitudeOffsetM:D

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmpl-double v16, v14, v16

    const-wide v17, 0x40fb198000000000L    # 111000.0

    if-nez v16, :cond_4

    const-wide v12, 0x3f1a36e2eb1c432dL    # 1.0E-4

    goto :goto_1

    :cond_4
    div-double v12, v12, v17

    div-double/2addr v12, v14

    :goto_1
    invoke-static {v12, v13}, Lcom/android/server/location/fudger/LocationFudger;->wrapLongitude(D)D

    move-result-wide v12

    add-double v22, v12, v10

    iget-wide v10, v1, Lcom/android/server/location/fudger/LocationFudger;->mLatitudeOffsetM:D

    div-double v10, v10, v17

    cmpl-double v12, v10, v5

    if-lez v12, :cond_5

    goto :goto_2

    :cond_5
    move-wide v5, v10

    :goto_2
    cmpg-double v10, v5, v8

    if-gez v10, :cond_6

    goto :goto_3

    :cond_6
    move-wide v8, v5

    :goto_3
    add-double v20, v8, v3

    monitor-enter p0

    :try_start_3
    iget-object v8, v1, Lcom/android/server/location/fudger/LocationFudger;->mLocationFudgerCache:Lcom/android/server/location/fudger/LocationFudgerCache;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    iget v3, v1, Lcom/android/server/location/fudger/LocationFudger;->mAccuracyM:F

    if-eqz v8, :cond_e

    invoke-virtual {v8}, Lcom/android/server/location/fudger/LocationFudgerCache;->hasDefaultValue()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v8}, Lcom/android/server/location/fudger/LocationFudgerCache;->hasDefaultValue()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v8}, Lcom/android/server/location/fudger/LocationFudgerCache;->asyncFetchDefaultCoarseningLevel()V

    :cond_7
    iget-object v4, v8, Lcom/android/server/location/fudger/LocationFudgerCache;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v3, 0x0

    :goto_4
    :try_start_4
    iget v5, v8, Lcom/android/server/location/fudger/LocationFudgerCache;->mCacheSize:I

    if-ge v3, v5, :cond_9

    iget-object v5, v8, Lcom/android/server/location/fudger/LocationFudgerCache;->mCache:[J

    aget-wide v5, v5, v3

    move-wide/from16 v23, v22

    move-wide/from16 v21, v20

    move-wide/from16 v19, v5

    invoke-static/range {v19 .. v24}, Lcom/android/internal/location/geometry/S2CellIdUtils;->containsLatLngDegrees(JDD)Z

    move-result v5

    move-wide/from16 v20, v21

    move-wide/from16 v22, v23

    if-eqz v5, :cond_8

    iget-object v2, v8, Lcom/android/server/location/fudger/LocationFudgerCache;->mCache:[J

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    monitor-exit v4

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_a

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_5
    iget-object v3, v8, Lcom/android/server/location/fudger/LocationFudgerCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    iget-object v4, v8, Lcom/android/server/location/fudger/LocationFudgerCache;->mDefaultCoarseningLevel:Ljava/lang/Integer;

    if-nez v4, :cond_a

    monitor-exit v3

    const/4 v11, 0x0

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_9

    :cond_a
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v11, v4

    :goto_6
    if-nez v2, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Lcom/android/server/location/fudger/LocationFudgerCache$2;

    invoke-direct {v4, v8, v2, v3}, Lcom/android/server/location/fudger/LocationFudgerCache$2;-><init>(Lcom/android/server/location/fudger/LocationFudgerCache;J)V

    iget-object v2, v8, Lcom/android/server/location/fudger/LocationFudgerCache;->mPopulationDensityProvider:Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

    iget-object v2, v2, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    new-instance v19, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$2;

    move-object/from16 v24, v4

    invoke-direct/range {v19 .. v24}, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$2;-><init>(DDLcom/android/server/location/fudger/LocationFudgerCache$2;)V

    move-object/from16 v3, v19

    invoke-interface {v2, v3}, Lcom/android/server/servicewatcher/ServiceWatcher;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/location/fudger/LocationFudgerCache;->logDensityBasedLocsUsed(JIZZ)V

    :goto_7
    move v6, v11

    move-wide/from16 v2, v20

    move-wide/from16 v4, v22

    goto :goto_8

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/location/fudger/LocationFudgerCache;->logDensityBasedLocsUsed(JIZZ)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getLevel(J)I

    move-result v11

    goto :goto_7

    :goto_8
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/fudger/LocationFudger;->snapToCenterOfS2Cell(DDI)[D

    move-result-object v2

    move v11, v6

    invoke-virtual {v1, v11}, Lcom/android/server/location/fudger/LocationFudger;->getS2CellApproximateEdge(I)F

    move-result v3

    move-object v4, v2

    const/4 v2, 0x0

    goto :goto_b

    :goto_9
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :goto_a
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    :cond_c
    move-wide/from16 v5, v22

    invoke-virtual {v8}, Lcom/android/server/location/fudger/LocationFudgerCache;->hasDefaultValue()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v8}, Lcom/android/server/location/fudger/LocationFudgerCache;->asyncFetchDefaultCoarseningLevel()V

    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v11, -0x1

    move-wide/from16 v14, v20

    const/4 v2, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/location/fudger/LocationFudgerCache;->logDensityBasedLocsUsed(JIZZ)V

    invoke-virtual {v1, v14, v15, v5, v6}, Lcom/android/server/location/fudger/LocationFudger;->snapToGrid(DD)[D

    move-result-object v4

    goto :goto_b

    :cond_e
    move-wide/from16 v14, v20

    move-wide/from16 v5, v22

    const/4 v2, 0x0

    invoke-virtual {v1, v14, v15, v5, v6}, Lcom/android/server/location/fudger/LocationFudger;->snapToGrid(DD)[D

    move-result-object v4

    :goto_b
    aget-wide v5, v4, v2

    invoke-virtual {v7, v5, v6}, Landroid/location/Location;->setLatitude(D)V

    const/4 v2, 0x1

    aget-wide v4, v4, v2

    invoke-virtual {v7, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    invoke-virtual {v7}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v7, v2}, Landroid/location/Location;->setAccuracy(F)V

    monitor-enter p0

    :try_start_8
    iput-object v0, v1, Lcom/android/server/location/fudger/LocationFudger;->mCachedFineLocation:Landroid/location/Location;

    iput-object v7, v1, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocation:Landroid/location/Location;

    monitor-exit p0

    return-object v7

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_d

    :cond_f
    :goto_c
    :try_start_b
    iget-object v0, v1, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocation:Landroid/location/Location;

    monitor-exit p0

    return-object v0

    :goto_d
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v0
.end method

.method public getS2CellApproximateEdge(I)F
    .locals 1

    sget-object p0, Lcom/android/server/location/fudger/LocationFudger;->S2_CELL_AVG_EDGE_PER_LEVEL:[F

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p0

    if-lt p1, v0, :cond_1

    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    :cond_1
    :goto_0
    aget p0, p0, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float/2addr p0, p1

    return p0
.end method

.method public final nextRandomOffset()D
    .locals 6

    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    iget p0, p0, Lcom/android/server/location/fudger/LocationFudger;->mAccuracyM:F

    float-to-double v2, p0

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    div-double/2addr v2, v4

    mul-double/2addr v2, v0

    return-wide v2
.end method

.method public snapToCenterOfS2Cell(DDI)[D
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/location/geometry/S2CellIdUtils;->fromLatLngDegrees(DD)J

    move-result-wide p0

    invoke-static {p0, p1, p5}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getParent(JI)J

    move-result-wide p0

    const/4 p2, 0x2

    new-array p2, p2, [D

    fill-array-data p2, :array_0

    invoke-static {p0, p1, p2}, Lcom/android/internal/location/geometry/S2CellIdUtils;->toLatLngDegrees(J[D)[D

    return-object p2

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public final snapToGrid(DD)[D
    .locals 11

    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    const/4 v4, 0x1

    aput-wide v2, v0, v4

    iget p0, p0, Lcom/android/server/location/fudger/LocationFudger;->mAccuracyM:F

    float-to-double v5, p0

    const-wide v7, 0x40fb198000000000L    # 111000.0

    div-double/2addr v5, v7

    div-double v7, p1, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-double v7, v7

    mul-double/2addr v7, v5

    const-wide v9, 0x40567fffda36a676L    # 89.999990990991

    cmpl-double p0, v7, v9

    if-lez p0, :cond_0

    move-wide v7, v9

    :cond_0
    const-wide v9, -0x3fa9800025c9598aL    # -89.999990990991

    cmpg-double p0, v7, v9

    if-gez p0, :cond_1

    move-wide v7, v9

    :cond_1
    aput-wide v7, v0, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    cmpl-double p2, p0, v2

    if-nez p2, :cond_2

    const-wide p0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    goto :goto_0

    :cond_2
    div-double p0, v5, p0

    :goto_0
    div-double/2addr p3, p0

    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    long-to-double p2, p2

    mul-double/2addr p2, p0

    invoke-static {p2, p3}, Lcom/android/server/location/fudger/LocationFudger;->wrapLongitude(D)D

    move-result-wide p0

    aput-wide p0, v0, v4

    return-object v0
.end method
