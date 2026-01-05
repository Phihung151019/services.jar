.class public final Lcom/android/server/input/AmbientKeyboardBacklightController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static final DEBUG:Z

.field public static final HYSTERESIS_THRESHOLD:I = 0x2

.field public static final sAmbientControllerLock:Ljava/lang/Object;


# instance fields
.field public final mAmbientKeyboardBacklightListeners:Ljava/util/List;

.field public final mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

.field public final mContext:Landroid/content/Context;

.field public mCurrentBrightnessStepIndex:I

.field public mCurrentDefaultDisplayUniqueId:Ljava/lang/String;

.field public final mHandler:Landroid/os/Handler;

.field public mHysteresisCount:I

.field public mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

.field public mLightSensor:Landroid/hardware/Sensor;

.field public mSmoothedLux:I

.field public mSmoothedLuxAtLastAdjustment:I

.field public final mSmoothingConstant:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "KbdBacklightController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/AmbientKeyboardBacklightController;->DEBUG:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/input/AmbientKeyboardBacklightController;->sAmbientControllerLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mAmbientKeyboardBacklightListeners:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    iput-object p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    new-instance v2, Lcom/android/server/input/AmbientKeyboardBacklightController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/input/AmbientKeyboardBacklightController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/AmbientKeyboardBacklightController;)V

    invoke-direct {v1, p2, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x107009f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    const v1, 0x10700a0

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    const v2, 0x10700a1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    array-length v3, p2

    array-length v4, v1

    if-ne v3, v4, :cond_6

    array-length v3, v1

    array-length v4, v2

    if-ne v3, v4, :cond_6

    array-length v3, p2

    new-array v4, v3, [Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    iput-object v4, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    move v4, v0

    :goto_0
    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    if-ge v4, v3, :cond_2

    aget v7, v2, v4

    if-gez v7, :cond_0

    goto :goto_1

    :cond_0
    move v6, v7

    :goto_1
    aget v7, v1, v4

    if-gez v7, :cond_1

    goto :goto_2

    :cond_1
    move v5, v7

    :goto_2
    iget-object v7, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    new-instance v8, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    aget v9, p2, v4

    invoke-direct {v8, v9, v6, v5}, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;-><init>(III)V

    aput-object v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    array-length v1, p2

    if-eqz v1, :cond_5

    aget-object v0, p2, v0

    iget v0, v0, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;->mDecreaseLuxThreshold:I

    if-ne v0, v5, :cond_5

    const/4 v0, 0x1

    sub-int/2addr v1, v0

    aget-object p2, p2, v1

    iget p2, p2, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;->mIncreaseLuxThreshold:I

    if-ne p2, v6, :cond_5

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    const v1, 0x10500ee

    invoke-virtual {p1, v1, p2, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    iput p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothingConstant:F

    float-to-double p1, p1

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-lez v0, :cond_4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, p1, v0

    if-gtz p1, :cond_4

    sget-boolean p1, Lcom/android/server/input/AmbientKeyboardBacklightController;->DEBUG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Brightness steps: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Smoothing constant = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothingConstant:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KbdBacklightController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "The config files for auto keyboard backlight brightness must contain smoothing constant in range (0.0, 1.0]."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "The config files for auto keyboard backlight brightness must contain arrays of length > 0 and have -1 or Integer.MIN_VALUE as lower bound for decrease thresholds and -1 or Integer.MAX_VALUE as upper bound for increase thresholds"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "The config files for auto keyboard backlight brightness must contain arrays of equal lengths"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addSensorListener(Landroid/hardware/Sensor;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;->IMMEDIATE:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    iput-object v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    iput v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLuxAtLastAdjustment:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mCurrentBrightnessStepIndex:I

    iget-object v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, p1, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    sget-boolean p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "KbdBacklightController"

    const-string/jumbo p1, "Registering ALS listener"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final getAmbientLightSensor(Landroid/hardware/display/DisplayManagerInternal$AmbientLightSensorData;)Landroid/hardware/Sensor;
    .locals 2

    iget-object p0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/SensorManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/hardware/SensorManager;

    sget-boolean v0, Lcom/android/server/input/AmbientKeyboardBacklightController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ambient Light sensor data: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KbdBacklightController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p1, Landroid/hardware/display/DisplayManagerInternal$AmbientLightSensorData;->sensorType:Ljava/lang/String;

    iget-object p1, p1, Landroid/hardware/display/DisplayManagerInternal$AmbientLightSensorData;->sensorName:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {p0, v0, p1, v1}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/Sensor;

    move-result-object p0

    return-object p0
.end method

.method public final handleDisplayChange()V
    .locals 6

    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    sget-object v3, Lcom/android/server/input/AmbientKeyboardBacklightController;->sAmbientControllerLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mCurrentDefaultDisplayUniqueId:Ljava/lang/String;

    iget-object v5, v2, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-boolean v4, Lcom/android/server/input/AmbientKeyboardBacklightController;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "KbdBacklightController"

    const-string v5, "Default display changed: resetting the light sensor"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, v2, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mCurrentDefaultDisplayUniqueId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mAmbientKeyboardBacklightListeners:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {p0, v2}, Lcom/android/server/input/AmbientKeyboardBacklightController;->removeSensorListener(Landroid/hardware/Sensor;)V

    :cond_3
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getAmbientLightSensorData(I)Landroid/hardware/display/DisplayManagerInternal$AmbientLightSensorData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/input/AmbientKeyboardBacklightController;->getAmbientLightSensor(Landroid/hardware/display/DisplayManagerInternal$AmbientLightSensorData;)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mLightSensor:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mAmbientKeyboardBacklightListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {p0, v0}, Lcom/android/server/input/AmbientKeyboardBacklightController;->addSensorListener(Landroid/hardware/Sensor;)V

    :cond_4
    monitor-exit v3

    return-void

    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onDisplayAdded(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/input/AmbientKeyboardBacklightController;->handleDisplayChange()V

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/input/AmbientKeyboardBacklightController;->handleDisplayChange()V

    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/input/AmbientKeyboardBacklightController;->handleDisplayChange()V

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    const-string v2, "KbdBacklightController"

    if-gez v1, :cond_0

    const-string/jumbo p0, "Light sensor doesn\'t have valid value"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    sget-object v3, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;->IMMEDIATE:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    if-ne v1, v3, :cond_1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothingConstant:F

    mul-float/2addr p1, v1

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v1

    iget v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    int-to-float v1, v1

    mul-float/2addr v4, v1

    add-float/2addr v4, p1

    float-to-int p1, v4

    iput p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    :goto_0
    sget-boolean p1, Lcom/android/server/input/AmbientKeyboardBacklightController;->DEBUG:Z

    if-eqz p1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Current smoothed lux from ALS = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    invoke-static {v1, v4, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    sget-object v4, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;->STABLE:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    if-eq v1, v3, :cond_3

    iget v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    iget v5, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLuxAtLastAdjustment:I

    if-ne v1, v5, :cond_3

    iput-object v4, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    return-void

    :cond_3
    iget v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mCurrentBrightnessStepIndex:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v5, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    array-length v5, v5

    iget v6, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    iget v7, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLuxAtLastAdjustment:I

    if-le v6, v7, :cond_7

    iget-object v6, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    if-eq v6, v3, :cond_5

    sget-object v7, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;->INCREASING:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    if-eq v6, v7, :cond_5

    if-eqz p1, :cond_4

    const-string p1, "ALS transitioned to brightness increasing state"

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput-object v7, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    iput v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    :cond_5
    :goto_1
    if-ge v1, v5, :cond_b

    iget p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    iget-object v6, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;->mIncreaseLuxThreshold:I

    if-ge p1, v6, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    if-ge v6, v7, :cond_b

    iget-object v5, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    if-eq v5, v3, :cond_9

    sget-object v6, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;->DECREASING:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    if-eq v5, v6, :cond_9

    if-eqz p1, :cond_8

    const-string p1, "ALS transitioned to brightness decreasing state"

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iput-object v6, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    iput v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    :cond_9
    :goto_2
    if-ltz v1, :cond_b

    iget p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    iget-object v5, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;->mDecreaseLuxThreshold:I

    if-le p1, v5, :cond_a

    goto :goto_3

    :cond_a
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    if-ne p1, v3, :cond_c

    iput v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mCurrentBrightnessStepIndex:I

    iget p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    iput p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLuxAtLastAdjustment:I

    iput-object v4, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    iput v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    iget-object p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    aget-object p1, p1, v1

    iget p1, p1, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;->mBrightnessValue:I

    iget-object v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_c
    iget p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mCurrentBrightnessStepIndex:I

    if-ne v1, p1, :cond_d

    goto :goto_4

    :cond_d
    iget p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    const/4 v3, 0x1

    add-int/2addr p1, v3

    iput p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    sget-boolean p1, Lcom/android/server/input/AmbientKeyboardBacklightController;->DEBUG:Z

    if-eqz p1, :cond_e

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "Incremented hysteresis count to "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " (lux went from "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLuxAtLastAdjustment:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    const-string v5, ")"

    invoke-static {v4, v5, v2, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_e
    iget p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    const/4 v2, 0x2

    if-lt p1, v2, :cond_f

    iput v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mCurrentBrightnessStepIndex:I

    iget p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    iput p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLuxAtLastAdjustment:I

    iput v3, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    iget-object p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    aget-object p1, p1, v1

    iget p1, p1, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;->mBrightnessValue:I

    iget-object v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_f
    :goto_4
    return-void
.end method

.method public final removeSensorListener(Landroid/hardware/Sensor;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    sget-boolean p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "KbdBacklightController"

    const-string/jumbo p1, "Unregistering ALS listener"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
