.class public final Lcom/android/server/display/AutomaticBrightnessController$3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onAccuracyChanged$com$android$server$display$AutomaticBrightnessController$3(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method private final onAccuracyChanged$com$android$server$display$AutomaticBrightnessController$4(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->$r8$classId:I

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInjectedLuxEvent:Landroid/hardware/SensorEvent;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastRealLuxEventDuringInjection:Landroid/hardware/SensorEvent;

    move-object p1, v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->onSensorChangedInternal(Landroid/hardware/SensorEvent;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-boolean v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v1, v1, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget v1, v1, Lcom/android/server/display/AutomaticBrightnessController;->mProximityThreshold:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    :goto_0
    move p1, v3

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v1, v1, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const v2, 0x10068

    if-ne v1, v2, :cond_2

    const/high16 v1, 0x41a80000    # 21.0f

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[api] onSensorChanged: proximity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutomaticBrightnessController"

    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorEnabled:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingProximity:I

    if-nez v1, :cond_3

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    if-ne v1, v3, :cond_4

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_5

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingProximity:I

    goto :goto_2

    :cond_5
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingProximity:I

    :goto_2
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mOnProximityChangedRunnable:Lcom/android/server/display/AutomaticBrightnessController$1;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
