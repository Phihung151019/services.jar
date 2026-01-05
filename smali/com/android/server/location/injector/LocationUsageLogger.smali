.class public final Lcom/android/server/location/injector/LocationUsageLogger;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mApiUsageLogHourlyCount:I

.field public mLastApiUsageLogHour:J


# direct methods
.method public static bucketizeProvider(Ljava/lang/String;)I
    .locals 1

    const-string/jumbo v0, "network"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string/jumbo v0, "gps"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-string/jumbo v0, "passive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-string/jumbo v0, "fused"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final declared-synchronized hitApiUsageLogCap()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/location/injector/LocationUsageLogger;->mLastApiUsageLogHour:J

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    iput-wide v0, p0, Lcom/android/server/location/injector/LocationUsageLogger;->mLastApiUsageLogHour:J

    iput v3, p0, Lcom/android/server/location/injector/LocationUsageLogger;->mApiUsageLogHourlyCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v3

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/server/location/injector/LocationUsageLogger;->mApiUsageLogHourlyCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/16 v2, 0x3c

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/injector/LocationUsageLogger;->mApiUsageLogHourlyCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v0, v2, :cond_1

    move v3, v1

    :cond_1
    monitor-exit p0

    return v3

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V
    .locals 26

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/location/injector/LocationUsageLogger;->hitApiUsageLogCap()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_e

    :cond_0
    const/4 v0, 0x1

    if-nez p6, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez p9, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v2, :cond_3

    const/4 v9, 0x0

    goto :goto_2

    :cond_3
    invoke-static/range {p5 .. p5}, Lcom/android/server/location/injector/LocationUsageLogger;->bucketizeProvider(Ljava/lang/String;)I

    move-result v4

    move v9, v4

    :goto_2
    if-eqz v2, :cond_4

    const/4 v10, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual/range {p6 .. p6}, Landroid/location/LocationRequest;->getQuality()I

    move-result v4

    move v10, v4

    :goto_3
    const/4 v6, 0x5

    const-wide/32 v7, 0x36ee80

    const-wide/32 v11, 0x927c0

    const-wide/32 v13, 0xea60

    const/4 v15, 0x6

    const/16 v16, 0x4

    if-eqz v2, :cond_5

    const/16 v17, 0x0

    goto :goto_4

    :cond_5
    invoke-virtual/range {p6 .. p6}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    cmp-long v19, v17, v19

    if-gez v19, :cond_6

    move/from16 v17, v0

    goto :goto_4

    :cond_6
    const-wide/16 v19, 0x1388

    cmp-long v19, v17, v19

    if-gez v19, :cond_7

    const/16 v17, 0x2

    goto :goto_4

    :cond_7
    cmp-long v19, v17, v13

    if-gez v19, :cond_8

    const/16 v17, 0x3

    goto :goto_4

    :cond_8
    cmp-long v19, v17, v11

    if-gez v19, :cond_9

    move/from16 v17, v16

    goto :goto_4

    :cond_9
    cmp-long v17, v17, v7

    if-gez v17, :cond_a

    move/from16 v17, v6

    goto :goto_4

    :cond_a
    move/from16 v17, v15

    :goto_4
    const/high16 v18, 0x42c80000    # 100.0f

    const/16 v19, 0x0

    if-eqz v2, :cond_b

    const/16 v20, 0x0

    goto :goto_5

    :cond_b
    invoke-virtual/range {p6 .. p6}, Landroid/location/LocationRequest;->getMinUpdateDistanceMeters()F

    move-result v20

    cmpg-float v21, v20, v19

    if-gtz v21, :cond_c

    move/from16 v20, v0

    goto :goto_5

    :cond_c
    cmpl-float v21, v20, v19

    if-lez v21, :cond_d

    cmpg-float v20, v20, v18

    if-gtz v20, :cond_d

    const/16 v20, 0x2

    goto :goto_5

    :cond_d
    const/16 v20, 0x3

    :goto_5
    if-eqz v2, :cond_e

    const-wide/16 v21, 0x0

    move-wide/from16 v4, v21

    goto :goto_6

    :cond_e
    invoke-virtual/range {p6 .. p6}, Landroid/location/LocationRequest;->getMaxUpdates()I

    move-result v1

    int-to-long v4, v1

    :goto_6
    move/from16 v1, p1

    if-nez v2, :cond_15

    if-ne v1, v0, :cond_f

    goto :goto_8

    :cond_f
    invoke-virtual/range {p6 .. p6}, Landroid/location/LocationRequest;->getDurationMillis()J

    move-result-wide v22

    const-wide v24, 0x7fffffffffffffffL

    cmp-long v2, v22, v24

    if-nez v2, :cond_10

    move v2, v15

    goto :goto_7

    :cond_10
    const-wide/16 v24, 0x4e20

    cmp-long v2, v22, v24

    if-gez v2, :cond_11

    move v2, v0

    goto :goto_7

    :cond_11
    cmp-long v2, v22, v13

    if-gez v2, :cond_12

    const/4 v2, 0x2

    goto :goto_7

    :cond_12
    cmp-long v2, v22, v11

    if-gez v2, :cond_13

    const/4 v2, 0x3

    goto :goto_7

    :cond_13
    cmp-long v2, v22, v7

    if-gez v2, :cond_14

    move/from16 v2, v16

    goto :goto_7

    :cond_14
    move v2, v6

    :goto_7
    move/from16 v7, p2

    goto :goto_9

    :cond_15
    :goto_8
    const/4 v2, 0x0

    goto :goto_7

    :goto_9
    if-ne v7, v6, :cond_16

    move/from16 v8, v16

    move/from16 v16, v0

    goto :goto_a

    :cond_16
    if-eqz p8, :cond_17

    move/from16 v8, v16

    const/16 v16, 0x3

    goto :goto_a

    :cond_17
    if-eqz p7, :cond_18

    move/from16 v8, v16

    const/16 v16, 0x2

    goto :goto_a

    :cond_18
    move/from16 v8, v16

    const/16 v16, 0x0

    :goto_a
    if-eqz v3, :cond_19

    const/16 v21, 0x0

    goto :goto_b

    :cond_19
    invoke-virtual/range {p9 .. p9}, Landroid/location/Geofence;->getRadius()F

    move-result v3

    cmpg-float v11, v3, v19

    if-gez v11, :cond_1a

    const/4 v3, 0x7

    move/from16 v21, v3

    goto :goto_b

    :cond_1a
    cmpg-float v11, v3, v18

    if-gez v11, :cond_1b

    move/from16 v21, v0

    goto :goto_b

    :cond_1b
    const/high16 v11, 0x43480000    # 200.0f

    cmpg-float v11, v3, v11

    if-gez v11, :cond_1c

    const/16 v21, 0x2

    goto :goto_b

    :cond_1c
    const/high16 v11, 0x43960000    # 300.0f

    cmpg-float v11, v3, v11

    if-gez v11, :cond_1d

    const/16 v21, 0x3

    goto :goto_b

    :cond_1d
    const/high16 v11, 0x447a0000    # 1000.0f

    cmpg-float v11, v3, v11

    if-gez v11, :cond_1e

    move/from16 v21, v8

    goto :goto_b

    :cond_1e
    const v8, 0x461c4000    # 10000.0f

    cmpg-float v3, v3, v8

    if-gez v3, :cond_1f

    move/from16 v21, v6

    goto :goto_b

    :cond_1f
    move/from16 v21, v15

    :goto_b
    if-eqz p10, :cond_20

    move/from16 v18, v0

    :goto_c
    move-wide v13, v4

    goto :goto_d

    :cond_20
    const/16 v18, 0x3

    goto :goto_c

    :goto_d
    const/16 v5, 0xd2

    move-object/from16 v8, p3

    move-object/from16 v19, p4

    move v6, v1

    move v15, v2

    move/from16 v11, v17

    move/from16 v12, v20

    move/from16 v17, v21

    invoke-static/range {v5 .. v19}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IIIIJIIIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LocationManagerService"

    const-string v2, "Failed to log API usage to statsd."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public final logLocationApiUsage(ILjava/lang/String;)V
    .locals 16

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/location/injector/LocationUsageLogger;->hitApiUsageLogCap()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/android/server/location/injector/LocationUsageLogger;->bucketizeProvider(Ljava/lang/String;)I

    move-result v5

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v3, 0x5

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v1, 0xd2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move/from16 v2, p1

    invoke-static/range {v1 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IIIIJIIIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LocationManagerService"

    const-string v2, "Failed to log API usage to statsd."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
