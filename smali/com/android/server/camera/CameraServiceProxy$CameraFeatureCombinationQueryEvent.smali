.class public final Lcom/android/server/camera/CameraServiceProxy$CameraFeatureCombinationQueryEvent;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/camera/CameraServiceProxy$CameraEvent;


# instance fields
.field public mFeatureCombinationStats:Landroid/hardware/CameraFeatureCombinationStats;


# virtual methods
.method public final logSelf()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraFeatureCombinationQueryEvent;->mFeatureCombinationStats:Landroid/hardware/CameraFeatureCombinationStats;

    iget v1, v0, Landroid/hardware/CameraFeatureCombinationStats;->mStatus:I

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/16 v3, 0xa

    if-eq v1, v3, :cond_0

    move v10, v2

    goto :goto_1

    :cond_0
    :goto_0
    move v10, v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :goto_1
    if-ne v10, v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unknown feature combination query status code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraFeatureCombinationQueryEvent;->mFeatureCombinationStats:Landroid/hardware/CameraFeatureCombinationStats;

    iget p0, p0, Landroid/hardware/CameraFeatureCombinationStats;->mStatus:I

    const-string v1, "CameraService_proxy"

    invoke-static {v0, p0, v1}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_2
    iget v5, v0, Landroid/hardware/CameraFeatureCombinationStats;->mUid:I

    iget-object v6, v0, Landroid/hardware/CameraFeatureCombinationStats;->mCameraId:Ljava/lang/String;

    iget v7, v0, Landroid/hardware/CameraFeatureCombinationStats;->mQueryType:I

    iget-wide v8, v0, Landroid/hardware/CameraFeatureCombinationStats;->mFeatureCombination:J

    const/16 v4, 0x384

    invoke-static/range {v4 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IJI)V

    return-void
.end method
