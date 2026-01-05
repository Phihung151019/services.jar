.class public final Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy$RealInjector;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy$Injector;


# virtual methods
.method public final getScreenOffBrightnessSensor(Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayDeviceConfig;)Landroid/hardware/Sensor;
    .locals 1

    iget-object p0, p2, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensor:Lcom/android/server/display/config/SensorData;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p2, p0, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2, p0, v0}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/Sensor;

    move-result-object p0

    return-object p0
.end method

.method public final getScreenOffBrightnessSensorController(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/os/Handler;Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;[ILcom/android/server/display/BrightnessMappingStrategy;)Lcom/android/server/display/ScreenOffBrightnessSensorController;
    .locals 0

    new-instance p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;

    invoke-direct/range {p0 .. p6}, Lcom/android/server/display/ScreenOffBrightnessSensorController;-><init>(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/os/Handler;Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;[ILcom/android/server/display/BrightnessMappingStrategy;)V

    return-object p0
.end method
