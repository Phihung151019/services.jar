.class public Lcom/android/server/display/brightness/clamper/BrightnessClamperController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mClamperChangeListenerExternal:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

.field public final mDeviceConfigListeners:Ljava/util/List;

.field public final mDeviceConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

.field public final mDisplayDeviceDataListeners:Ljava/util/List;

.field public mDisplayState:I

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mHandler:Landroid/os/Handler;

.field public final mLightSensorController:Lcom/android/server/display/brightness/clamper/LightSensorController;

.field public final mLightSensorListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1;

.field public final mModifiers:Ljava/util/List;

.field public mModifiersAggregatedState:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

.field public final mOnPropertiesChangedListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda4;

.field public volatile mStarted:Z

.field public final mStatefulModifiers:Ljava/util/List;

.field public final mUserSwitchListeners:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda0;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/hardware/SensorManager;F)V
    .locals 9

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$Injector;

    invoke-direct {v1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$Injector;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$Injector;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/hardware/SensorManager;F)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$Injector;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/hardware/SensorManager;F)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p6

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v9, 0x1

    iput v9, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDisplayState:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDisplayDeviceDataListeners:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mStatefulModifiers:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mUserSwitchListeners:Ljava/util/List;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDeviceConfigListeners:Ljava/util/List;

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

    invoke-direct {v1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiersAggregatedState:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

    sget v1, Lcom/android/server/display/brightness/BrightnessUtils;->sScreenExtendedBrightnessRangeMaximum:F

    new-instance v4, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1;

    invoke-direct {v4, v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;)V

    iput-object v4, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1;

    const/4 v11, 0x0

    iput-boolean v11, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mStarted:Z

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDeviceConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    iput-object v3, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/brightness/clamper/LightSensorController;

    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v6, Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    move-object/from16 v5, p2

    move-object/from16 v2, p7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/brightness/clamper/LightSensorController;-><init>(Landroid/hardware/SensorManager;Landroid/content/res/Resources;Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;)V

    move-object v12, v1

    move-object v3, v5

    iput-object v12, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorController:Lcom/android/server/display/brightness/clamper/LightSensorController;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mClamperChangeListenerExternal:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    new-instance v13, Landroid/os/HandlerExecutor;

    invoke-direct {v13, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v13, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;)V

    new-instance v4, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, v1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda0;)V

    new-instance v14, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda2;

    invoke-direct {v14, v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;)V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;

    new-instance v2, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$Injector;

    invoke-direct {v2}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$Injector;-><init>()V

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$Injector;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v8, Lcom/android/server/display/feature/DisplayManagerFlags;->mBrightnessWearBedtimeModeClamperFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;

    new-instance v2, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$Injector;

    invoke-direct {v2}, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$Injector;-><init>()V

    move-object v5, v4

    move-object v6, v7

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$Injector;Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$WearBedtimeModeData;)V

    move-object v4, v5

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, v8, Lcom/android/server/display/feature/DisplayManagerFlags;->mPowerThrottlingClamperFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v7, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v1, v1, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;

    new-instance v2, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$Injector;

    invoke-direct {v2}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$Injector;-><init>()V

    move-object/from16 v3, p2

    move/from16 v6, p8

    move-object v5, v7

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$Injector;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;F)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object/from16 v3, p2

    move-object v5, v7

    move-object/from16 v7, p5

    :goto_0
    new-instance v1, Lcom/android/server/display/brightness/clamper/DisplayDimModifier;

    iget v2, v5, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayId:I

    invoke-direct {v1, v7, v2}, Lcom/android/server/display/brightness/clamper/DisplayDimModifier;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/server/display/brightness/clamper/SecBrightnessLowPowerModeModifier;

    invoke-direct {v1}, Lcom/android/server/display/brightness/clamper/BrightnessModifier;-><init>()V

    iput-object v14, v1, Lcom/android/server/display/brightness/clamper/SecBrightnessLowPowerModeModifier;->mDisplayStateSupplier:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda2;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v8, Lcom/android/server/display/feature/DisplayManagerFlags;->mEvenDimmerFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v5, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v2, v1, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v2, :cond_2

    new-instance v2, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;

    invoke-direct {v2, v3, v4, v7, v1}, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;-><init>(Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iput-object v15, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda3;

    invoke-direct {v1, v11, v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;)V

    iput-object v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mOnPropertiesChangedListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda4;

    iget-object v2, v5, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v2, v2, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/config/SensorData;

    iget v3, v5, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayId:I

    if-nez v3, :cond_3

    const/4 v11, 0x5

    :cond_3
    iget-object v3, v12, Lcom/android/server/display/brightness/clamper/LightSensorController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, v12, Lcom/android/server/display/brightness/clamper/LightSensorController;->mInjector:Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    iget-object v4, v2, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    invoke-static {v3, v4, v2, v11}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/Sensor;

    move-result-object v2

    :goto_1
    iput-object v2, v12, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v3, "display_manager"

    invoke-interface {v2, v3, v13, v1}, Landroid/provider/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    :cond_5
    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->adjustLightSensorSubscription()V

    iput-boolean v9, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mStarted:Z

    return-void
.end method


# virtual methods
.method public final adjustLightSensorSubscription()V
    .locals 5

    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDisplayState:I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorController:Lcom/android/server/display/brightness/clamper/LightSensorController;

    if-ne v0, v1, :cond_4

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, v2, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    iget-object v0, v2, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensor:Landroid/hardware/Sensor;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object p0, v2, Lcom/android/server/display/brightness/clamper/LightSensorController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, v2, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensorEventListener:Lcom/android/server/display/brightness/clamper/LightSensorController$1;

    iget v3, v2, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensorRate:I

    mul-int/lit16 v3, v3, 0x3e8

    iget-object v4, v2, Lcom/android/server/display/brightness/clamper/LightSensorController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, v0, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    :cond_1
    iget-object p0, v2, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_2

    invoke-virtual {v2}, Lcom/android/server/display/brightness/clamper/LightSensorController;->stop()V

    :cond_2
    iget-object p0, v2, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensor:Landroid/hardware/Sensor;

    iput-object p0, v2, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    sget-boolean p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string/jumbo p0, "LightSensorController"

    const-string/jumbo v0, "restart"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {v2}, Lcom/android/server/display/brightness/clamper/LightSensorController;->stop()V

    return-void
.end method

.method public final clamp(Lcom/android/server/display/DisplayBrightnessState;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;FZI)Lcom/android/server/display/DisplayBrightnessState;
    .locals 0

    iput p5, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDisplayState:I

    invoke-static {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->from(Lcom/android/server/display/DisplayBrightnessState;)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object p1

    iput-boolean p4, p1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsSlowChange:Z

    iput p3, p1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->adjustLightSensorSubscription()V

    const/4 p3, 0x0

    :goto_0
    iget-object p4, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p3, p4, :cond_0

    iget-object p4, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;

    invoke-interface {p4, p2, p1}, Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;->apply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Lcom/android/server/display/DisplayBrightnessState$Builder;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/server/display/DisplayBrightnessState;

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayBrightnessState;-><init>(Lcom/android/server/display/DisplayBrightnessState$Builder;)V

    return-object p0
.end method
