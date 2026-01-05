.class public final Lcom/android/server/display/DisplayPowerProximityStateController$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerProximityStateController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerProximityStateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController$1;->this$0:Lcom/android/server/display/DisplayPowerProximityStateController;

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController$1;->this$0:Lcom/android/server/display/DisplayPowerProximityStateController;

    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorEnabled:Z

    if-eqz v1, :cond_7

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerProximityStateController;->mClock:Lcom/android/server/display/DisplayPowerProximityStateController$Injector$$ExternalSyntheticLambda0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget p1, p1, v2

    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    const/4 v4, 0x1

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerProximityStateController$1;->this$0:Lcom/android/server/display/DisplayPowerProximityStateController;

    iget v3, v3, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximityThreshold:F

    cmpg-float p1, p1, v3

    if-gez p1, :cond_0

    move p1, v4

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerProximityStateController$1;->this$0:Lcom/android/server/display/DisplayPowerProximityStateController;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[api] onSensorChanged: proximity: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v3, v3, Lcom/android/server/display/DisplayPowerProximityStateController;->mTag:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController$1;->this$0:Lcom/android/server/display/DisplayPowerProximityStateController;

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorEnabled:Z

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    if-nez v3, :cond_1

    if-nez p1, :cond_1

    goto :goto_3

    :cond_1
    if-ne v3, v4, :cond_2

    if-eqz p1, :cond_2

    goto :goto_3

    :cond_2
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v3, 0x3

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWakelockController:Lcom/android/server/display/WakelockController;

    const/16 v6, 0x32

    const/4 v7, -0x1

    if-eqz p1, :cond_5

    iput v4, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    iget p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorPositiveDebounceDelay:I

    if-eq p1, v7, :cond_3

    goto :goto_1

    :cond_3
    move p1, v2

    :goto_1
    int-to-long v7, p1

    add-long/2addr v0, v7

    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIsEarsenseProximity:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIsViewTypeCover:Z

    if-eqz p1, :cond_4

    move v2, v6

    :cond_4
    int-to-long v6, v2

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    invoke-virtual {v5, v3}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    goto :goto_2

    :cond_5
    iput v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    iget p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorNegativeDebounceDelay:I

    if-eq p1, v7, :cond_6

    move v6, p1

    :cond_6
    int-to-long v6, v6

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    invoke-virtual {v5, v3}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    :goto_2
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerProximityStateController;->debounceProximitySensor()V

    :cond_7
    :goto_3
    return-void
.end method
