.class public final Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssMetrics;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssMetrics;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    return-void
.end method


# virtual methods
.method public final onPullAtom(ILjava/util/List;)I
    .locals 38

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v2, 0x275a

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2775

    if-ne v1, v2, :cond_1

    iget-object v0, v0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    iget-object v0, v0, Lcom/android/server/location/gnss/GnssMetrics;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->requestPowerStatsBlocking()Lcom/android/server/location/gnss/GnssPowerStats;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/16 v4, 0xa

    new-array v5, v4, [D

    iget-object v6, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mOtherModesEnergyMilliJoule:[D

    array-length v7, v6

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v6, v3, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v6, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mElapsedRealtimeUncertaintyNanos:D

    double-to-long v6, v6

    iget-wide v8, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mTotalEnergyMilliJoule:D

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v8, v10

    double-to-long v8, v8

    iget-wide v12, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mSinglebandTrackingModeEnergyMilliJoule:D

    mul-double/2addr v12, v10

    double-to-long v12, v12

    iget-wide v14, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mMultibandTrackingModeEnergyMilliJoule:D

    mul-double/2addr v14, v10

    double-to-long v14, v14

    move/from16 p0, v2

    move v4, v3

    iget-wide v2, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mSinglebandAcquisitionModeEnergyMilliJoule:D

    mul-double/2addr v2, v10

    double-to-long v2, v2

    move/from16 v17, v4

    move-object/from16 v16, v5

    iget-wide v4, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mMultibandAcquisitionModeEnergyMilliJoule:D

    mul-double/2addr v4, v10

    double-to-long v4, v4

    aget-wide v18, v16, v17

    move-wide/from16 v20, v10

    mul-double v10, v18, v20

    double-to-long v10, v10

    aget-wide v18, v16, p0

    mul-double v0, v18, v20

    double-to-long v0, v0

    const/16 v18, 0x2

    aget-wide v18, v16, v18

    move-wide/from16 v22, v0

    mul-double v0, v18, v20

    double-to-long v0, v0

    const/16 v18, 0x3

    aget-wide v18, v16, v18

    move-wide/from16 v24, v0

    mul-double v0, v18, v20

    double-to-long v0, v0

    const/16 v18, 0x4

    aget-wide v18, v16, v18

    move-wide/from16 v26, v0

    mul-double v0, v18, v20

    double-to-long v0, v0

    const/16 v18, 0x5

    aget-wide v18, v16, v18

    move-wide/from16 v28, v0

    mul-double v0, v18, v20

    double-to-long v0, v0

    const/16 v18, 0x6

    aget-wide v18, v16, v18

    move-wide/from16 v30, v0

    mul-double v0, v18, v20

    double-to-long v0, v0

    const/16 v18, 0x7

    aget-wide v18, v16, v18

    move-wide/from16 v32, v0

    mul-double v0, v18, v20

    double-to-long v0, v0

    const/16 v18, 0x8

    aget-wide v18, v16, v18

    move-wide/from16 v34, v0

    mul-double v0, v18, v20

    double-to-long v0, v0

    const/16 v18, 0x9

    aget-wide v18, v16, v18

    move-wide/from16 v36, v0

    mul-double v0, v18, v20

    double-to-long v0, v0

    move-wide/from16 v18, v10

    move-wide v10, v2

    move-wide v2, v6

    move-wide v6, v12

    move-wide v12, v4

    move-wide v4, v8

    move-wide v8, v14

    move-wide/from16 v14, v18

    move-wide/from16 v18, v34

    move/from16 v34, v17

    move-wide/from16 v16, v22

    move-wide/from16 v22, v28

    move-wide/from16 v28, v18

    move-wide/from16 v18, v24

    move-wide/from16 v20, v26

    move-wide/from16 v24, v30

    move-wide/from16 v26, v32

    move-wide/from16 v30, v36

    move-wide/from16 v32, v0

    move/from16 v1, p1

    move-object/from16 v0, p2

    invoke-static/range {v1 .. v33}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJJJJJJJJJJJJJ)Landroid/util/StatsEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v34

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Unknown tagId = "

    invoke-static {v1, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move/from16 v34, v3

    iget-object v0, v0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    iget-object v2, v0, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getLongSum()J

    move-result-wide v5

    iget-object v2, v0, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixMilliSReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getLongSum()J

    move-result-wide v9

    iget-object v2, v0, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMetersReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getLongSum()J

    move-result-wide v13

    iget-object v2, v0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0DbmHzReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v15

    move-object/from16 v16, v2

    int-to-long v1, v15

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getLongSum()J

    move-result-wide v16

    iget-object v15, v0, Lcom/android/server/location/gnss/GnssMetrics;->mL5TopFourAverageCn0DbmHzReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    move-wide/from16 v18, v1

    invoke-virtual {v15}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v15}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getLongSum()J

    move-result-wide v20

    move-wide/from16 v22, v1

    iget-wide v1, v0, Lcom/android/server/location/gnss/GnssMetrics;->mSvStatusReports:J

    move-wide/from16 v24, v1

    iget-wide v1, v0, Lcom/android/server/location/gnss/GnssMetrics;->mSvStatusReportsUsedInFix:J

    move-wide/from16 v26, v1

    iget-wide v1, v0, Lcom/android/server/location/gnss/GnssMetrics;->mL5SvStatusReports:J

    move-wide/from16 v28, v1

    iget-wide v0, v0, Lcom/android/server/location/gnss/GnssMetrics;->mL5SvStatusReportsUsedInFix:J

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move-wide v8, v9

    move-wide v10, v11

    move-wide v12, v13

    move-wide/from16 v14, v18

    move-wide/from16 v18, v22

    move-wide/from16 v22, v24

    move-wide/from16 v24, v26

    move-wide/from16 v26, v28

    move-wide/from16 v28, v0

    move/from16 v1, p1

    move-object/from16 v0, p2

    invoke-static/range {v1 .. v29}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJJJJJJJJJJJ)Landroid/util/StatsEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v34
.end method
