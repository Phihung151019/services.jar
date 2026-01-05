.class public final synthetic Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x4

    const/4 v2, 0x1

    iget v3, v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;->$r8$classId:I

    packed-switch v3, :pswitch_data_0

    iget-object v1, v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    sget-object v2, Lcom/android/server/location/gnss/GnssLocationProvider;->PROPERTIES:Landroid/location/provider/ProviderProperties;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0

    :pswitch_0
    iget-object v3, v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;->f$1:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/location/GnssStatus;

    iget-object v5, v3, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v0

    const-wide/high16 v9, 0x4010000000000000L    # 4.0

    const-wide/16 v11, 0x0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    move/from16 v16, v2

    const-wide v17, 0x408f400000000000L    # 1000.0

    goto/16 :goto_3

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v4}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v13

    invoke-direct {v0, v13}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v13, 0x0

    :goto_1
    invoke-virtual {v4}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v14

    if-ge v13, v14, :cond_3

    invoke-virtual {v4, v13}, Landroid/location/GnssStatus;->getCarrierFrequencyHz(I)F

    move-result v14

    invoke-static {v14}, Lcom/android/server/location/gnss/GnssMetrics;->isL5Sv(F)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v4, v13}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/2addr v13, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v13, v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int/2addr v13, v1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    float-to-double v13, v13

    cmpl-double v13, v13, v11

    if-lez v13, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int/2addr v13, v1

    move/from16 v16, v2

    move-wide v14, v11

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_5

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const-wide v17, 0x408f400000000000L    # 1000.0

    float-to-double v6, v2

    add-double/2addr v14, v6

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_5
    const-wide v17, 0x408f400000000000L    # 1000.0

    div-double/2addr v14, v9

    iget-object v0, v5, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0StatisticsL5:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v0, v14, v15}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    mul-double v14, v14, v17

    iget-object v0, v5, Lcom/android/server/location/gnss/GnssMetrics;->mL5TopFourAverageCn0DbmHzReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v0, v14, v15}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    :goto_3
    invoke-virtual {v4}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v0

    iget-object v2, v5, Lcom/android/server/location/gnss/GnssMetrics;->mGnssPowerMetrics:Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->reportSignalQuality([F)V

    goto :goto_6

    :cond_6
    invoke-virtual {v4}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v0

    new-array v6, v0, [F

    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v4}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v8

    if-ge v7, v8, :cond_7

    invoke-virtual {v4, v7}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_7
    invoke-static {v6}, Ljava/util/Arrays;->sort([F)V

    invoke-virtual {v2, v6}, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->reportSignalQuality([F)V

    if-ge v0, v1, :cond_8

    goto :goto_6

    :cond_8
    add-int/lit8 v1, v0, -0x4

    aget v2, v6, v1

    float-to-double v7, v2

    cmpl-double v2, v7, v11

    if-lez v2, :cond_a

    :goto_5
    if-ge v1, v0, :cond_9

    aget v2, v6, v1

    float-to-double v7, v2

    add-double/2addr v11, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    div-double/2addr v11, v9

    iget-object v0, v5, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0Statistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v0, v11, v12}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    iget-object v0, v5, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0DbmHzReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    mul-double v11, v11, v17

    invoke-virtual {v0, v11, v12}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    :cond_a
    :goto_6
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_7
    invoke-virtual {v4}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v8

    if-ge v0, v8, :cond_e

    invoke-virtual {v4, v0}, Landroid/location/GnssStatus;->usedInFix(I)Z

    move-result v8

    if-eqz v8, :cond_d

    new-instance v8, Landroid/util/Pair;

    invoke-virtual {v4, v0}, Landroid/location/GnssStatus;->getConstellationType(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v0}, Landroid/location/GnssStatus;->getSvid(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v0}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v8

    int-to-float v9, v7

    cmpl-float v8, v8, v9

    if-lez v8, :cond_b

    invoke-virtual {v4, v0}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v7

    float-to-int v7, v7

    :cond_b
    int-to-float v6, v6

    invoke-virtual {v4, v0}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v8

    add-float/2addr v8, v6

    float-to-int v6, v8

    invoke-virtual {v4, v0}, Landroid/location/GnssStatus;->getConstellationType(I)I

    move-result v8

    iget-object v9, v5, Lcom/android/server/location/gnss/GnssMetrics;->mConstellationTypes:[Z

    array-length v10, v9

    if-lt v8, v10, :cond_c

    const-string v9, "Constellation type "

    const-string v10, " is not valid."

    const-string v11, "GnssMetrics"

    invoke-static {v8, v9, v10, v11}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_c
    aput-boolean v16, v9, v8

    :cond_d
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_e
    if-lez v2, :cond_f

    div-int/2addr v6, v2

    :cond_f
    invoke-virtual {v3, v4}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleReportSvStatusSec(Landroid/location/GnssStatus;)V

    iget-object v0, v3, Lcom/android/server/location/gnss/GnssLocationProvider;->mSvCallback:Lcom/android/server/location/gnss/GnssManagerService$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/android/server/location/gnss/GnssManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/sec/SLocationProxy;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/SLocationProxy;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    if-eqz v2, :cond_11

    invoke-virtual {v4}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v9

    new-array v10, v9, [I

    new-array v11, v9, [F

    new-array v12, v9, [F

    new-array v13, v9, [F

    new-array v14, v9, [F

    new-array v15, v9, [F

    const/4 v2, 0x0

    :goto_9
    invoke-virtual {v4}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v8

    if-ge v2, v8, :cond_10

    invoke-virtual {v4, v2}, Landroid/location/GnssStatus;->getSvid(I)I

    move-result v8

    aput v8, v10, v2

    invoke-virtual {v4, v2}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v8

    aput v8, v11, v2

    invoke-virtual {v4, v2}, Landroid/location/GnssStatus;->getElevationDegrees(I)F

    move-result v8

    aput v8, v12, v2

    invoke-virtual {v4, v2}, Landroid/location/GnssStatus;->getAzimuthDegrees(I)F

    move-result v8

    aput v8, v13, v2

    invoke-virtual {v4, v2}, Landroid/location/GnssStatus;->getCarrierFrequencyHz(I)F

    move-result v8

    aput v8, v14, v2

    invoke-virtual {v4, v2}, Landroid/location/GnssStatus;->getBasebandCn0DbHz(I)F

    move-result v8

    aput v8, v15, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_10
    :try_start_1
    iget-object v8, v0, Lcom/android/server/location/gnss/sec/SLocationProxy;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface/range {v8 .. v15}, Lcom/samsung/android/location/ISLocationManager;->onSvStatusChanged(I[I[F[F[F[F[F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SLocationProxy"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_a
    iget-object v0, v3, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->set(III)V

    const/4 v6, 0x0

    :goto_b
    invoke-virtual {v4}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v0

    if-ge v6, v0, :cond_14

    invoke-virtual {v4, v6}, Landroid/location/GnssStatus;->hasCarrierFrequencyHz(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, v5, Lcom/android/server/location/gnss/GnssMetrics;->mNumSvStatus:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v5, Lcom/android/server/location/gnss/GnssMetrics;->mNumSvStatus:I

    iget-wide v0, v5, Lcom/android/server/location/gnss/GnssMetrics;->mSvStatusReports:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, v5, Lcom/android/server/location/gnss/GnssMetrics;->mSvStatusReports:J

    invoke-virtual {v4, v6}, Landroid/location/GnssStatus;->getCarrierFrequencyHz(I)F

    move-result v0

    invoke-static {v0}, Lcom/android/server/location/gnss/GnssMetrics;->isL5Sv(F)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v1, v5, Lcom/android/server/location/gnss/GnssMetrics;->mNumL5SvStatus:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v5, Lcom/android/server/location/gnss/GnssMetrics;->mNumL5SvStatus:I

    iget-wide v7, v5, Lcom/android/server/location/gnss/GnssMetrics;->mL5SvStatusReports:J

    add-long/2addr v7, v2

    iput-wide v7, v5, Lcom/android/server/location/gnss/GnssMetrics;->mL5SvStatusReports:J

    :cond_12
    invoke-virtual {v4, v6}, Landroid/location/GnssStatus;->usedInFix(I)Z

    move-result v1

    if-eqz v1, :cond_13

    iget v1, v5, Lcom/android/server/location/gnss/GnssMetrics;->mNumSvStatusUsedInFix:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v5, Lcom/android/server/location/gnss/GnssMetrics;->mNumSvStatusUsedInFix:I

    iget-wide v7, v5, Lcom/android/server/location/gnss/GnssMetrics;->mSvStatusReportsUsedInFix:J

    add-long/2addr v7, v2

    iput-wide v7, v5, Lcom/android/server/location/gnss/GnssMetrics;->mSvStatusReportsUsedInFix:J

    if-eqz v0, :cond_13

    iget v0, v5, Lcom/android/server/location/gnss/GnssMetrics;->mNumL5SvStatusUsedInFix:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v5, Lcom/android/server/location/gnss/GnssMetrics;->mNumL5SvStatusUsedInFix:I

    iget-wide v0, v5, Lcom/android/server/location/gnss/GnssMetrics;->mL5SvStatusReportsUsedInFix:J

    add-long/2addr v0, v2

    iput-wide v0, v5, Lcom/android/server/location/gnss/GnssMetrics;->mL5SvStatusReportsUsedInFix:J

    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_14
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
