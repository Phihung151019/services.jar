.class public final Lcom/android/server/display/ScreenOffBrightnessSensorController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field public final mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;

.field public final mHandler:Landroid/os/Handler;

.field public mLastSensorValue:I

.field public final mLightSensor:Landroid/hardware/Sensor;

.field public mRegistered:Z

.field public mSensorDisableTime:J

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public final mSensorValueToLux:[I


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/os/Handler;Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;[ILcom/android/server/display/BrightnessMappingStrategy;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mLastSensorValue:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mSensorDisableTime:J

    iput-object p1, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object p2, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mLightSensor:Landroid/hardware/Sensor;

    iput-object p3, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;

    iput-object p5, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mSensorValueToLux:[I

    iput-object p6, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string/jumbo v0, "Screen Off Brightness Sensor Controller:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "----------------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "registered="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mRegistered:Z

    const-string/jumbo v2, "lastSensorValue="

    invoke-static {p1, v1, v0, v2}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mLastSensorValue:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getAutomaticScreenBrightness()F
    .locals 6

    iget v0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mLastSensorValue:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mSensorValueToLux:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mSensorDisableTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x5dc

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mSensorValueToLux:[I

    iget v2, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mLastSensorValue:I

    aget v0, v0, v2

    if-gez v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    int-to-float v0, v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(Ljava/lang/String;FI)F

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mLastSensorValue:I

    :cond_0
    return-void
.end method

.method public final setLightSensorEnabled(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mRegistered:Z

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mRegistered:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mLastSensorValue:I

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mRegistered:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mRegistered:Z

    iget-object p1, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mSensorDisableTime:J

    :cond_1
    return-void
.end method
