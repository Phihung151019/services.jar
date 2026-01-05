.class public final Lcom/android/server/display/brightness/clamper/LightSensorController$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/brightness/clamper/LightSensorController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightness/clamper/LightSensorController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController$1;->this$0:Lcom/android/server/display/brightness/clamper/LightSensorController;

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController$1;->this$0:Lcom/android/server/display/brightness/clamper/LightSensorController;

    iget-object v2, v1, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Lcom/android/server/display/brightness/clamper/LightSensorController;->mInjector:Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/LightSensorController$1;->this$0:Lcom/android/server/display/brightness/clamper/LightSensorController;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget p1, p1, v5

    iget-object v2, v2, Lcom/android/server/display/brightness/clamper/LightSensorController;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->addValue(JF)V

    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController$1;->this$0:Lcom/android/server/display/brightness/clamper/LightSensorController;

    iget-object p1, p1, Lcom/android/server/display/brightness/clamper/LightSensorController;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->getEstimate(J)F

    move-result p1

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController$1;->this$0:Lcom/android/server/display/brightness/clamper/LightSensorController;

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensorListener:Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;

    check-cast p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1;

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1$$ExternalSyntheticLambda0;-><init>(F)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
