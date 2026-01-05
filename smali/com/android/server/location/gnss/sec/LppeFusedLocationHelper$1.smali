.class public final Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$1;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$1;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    iget-boolean v2, v2, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsFlpRequested:Z

    if-nez v2, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "fused"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v2, "LocationX"

    const-string v3, "LPPeFusedLocationListener : FUSED_PROVIDER"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$1;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "LPPe handleUpdateLPPeFLPLocation"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/location/Location;->hasAltitude()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    or-int/lit8 v4, v4, 0x1

    invoke-virtual {v1}, Landroid/location/Location;->hasSpeed()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x4

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    or-int/2addr v4, v6

    invoke-virtual {v1}, Landroid/location/Location;->hasBearing()Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x8

    goto :goto_2

    :cond_3
    move v6, v5

    :goto_2
    or-int/2addr v4, v6

    invoke-virtual {v1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x10

    goto :goto_3

    :cond_4
    move v6, v5

    :goto_3
    or-int/2addr v4, v6

    invoke-virtual {v1}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v6

    const/16 v7, 0x20

    if-eqz v6, :cond_5

    move v6, v7

    goto :goto_4

    :cond_5
    move v6, v5

    :goto_4
    or-int/2addr v4, v6

    invoke-virtual {v1}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0x40

    goto :goto_5

    :cond_6
    move v6, v5

    :goto_5
    or-int/2addr v4, v6

    invoke-virtual {v1}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x80

    goto :goto_6

    :cond_7
    move v6, v5

    :goto_6
    or-int/2addr v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, " location total flag : "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v1}, Landroid/location/Location;->hasAltitude()Z

    move-result v6

    if-eqz v6, :cond_8

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-virtual {v1, v6}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    goto :goto_7

    :cond_8
    const-wide v8, 0x4133880000000000L    # 1280000.0

    invoke-virtual {v1, v8, v9}, Landroid/location/Location;->setAltitude(D)V

    or-int/lit8 v4, v4, 0x2

    const/high16 v6, 0x437f0000    # 255.0f

    invoke-virtual {v1, v6}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    :goto_7
    or-int/2addr v4, v7

    :cond_9
    move v7, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, " Vertical Accuracy : "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", Horizontal Accuracy : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v12

    invoke-virtual {v1}, Landroid/location/Location;->getSpeed()F

    move-result v14

    invoke-virtual {v1}, Landroid/location/Location;->getBearing()F

    move-result v15

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v16

    invoke-virtual {v1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v17

    invoke-virtual {v1}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v18

    invoke-virtual {v1}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v19

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v20

    iget-object v6, v3, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual/range {v6 .. v21}, Lcom/android/server/location/gnss/hal/GnssNative;->injectFlpLocation(IDDDFFFFFFJ)V

    iput-boolean v5, v3, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsFlpRequested:Z

    iget-object v1, v0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$1;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    iget-object v2, v1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mFlpTimeout:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda0;

    if-eqz v2, :cond_a

    iget-object v1, v1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$1;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mFlpTimeout:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda0;

    :cond_a
    :goto_8
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
