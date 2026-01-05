.class public final Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public isDriving:Z

.field public mDriveCount:I

.field public mPrevLocation:Landroid/location/Location;


# virtual methods
.method public final getFilteredLocation(Landroid/location/Location;)Landroid/location/Location;
    .locals 9

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->mPrevLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->mPrevLocation:Landroid/location/Location;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    const v1, 0x40b1c28f    # 5.555f

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, ", just return"

    const-string/jumbo v4, "VSFilter"

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Current speed="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->isDriving:Z

    iput v2, p0, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->mDriveCount:I

    iput-object v1, p0, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->mPrevLocation:Landroid/location/Location;

    return-object p1

    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->mPrevLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x7d0

    cmp-long v0, v5, v7

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Current time="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", Previous time="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->mPrevLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->isDriving:Z

    iput v2, p0, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->mDriveCount:I

    iput-object v1, p0, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->mPrevLocation:Landroid/location/Location;

    return-object p1

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->isDriving:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Not driving yet, cnt="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->mDriveCount:I

    invoke-static {v0, v1, v4}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->mDriveCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->mDriveCount:I

    const/4 v2, 0x5

    if-lt v0, v2, :cond_4

    iput-boolean v1, p0, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->isDriving:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->mPrevLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x408554ca

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_4

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Driving. original speed="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", set to="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v0}, Landroid/location/Location;->setSpeed(F)V

    :cond_4
    :goto_0
    iput-object p1, p0, Lcom/android/server/location/gnss/sec/VelocitySmoothingFilter;->mPrevLocation:Landroid/location/Location;

    return-object p1
.end method
