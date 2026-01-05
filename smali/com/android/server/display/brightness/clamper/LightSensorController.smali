.class public Lcom/android/server/display/brightness/clamper/LightSensorController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;

.field public mLightSensor:Landroid/hardware/Sensor;

.field public final mLightSensorEventListener:Lcom/android/server/display/brightness/clamper/LightSensorController$1;

.field public final mLightSensorListener:Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;

.field public final mLightSensorRate:I

.field public mRegisteredLightSensor:Landroid/hardware/Sensor;

.field public final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "LightSensorController"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/brightness/clamper/LightSensorController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;Landroid/content/res/Resources;Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    new-instance v0, Lcom/android/server/display/brightness/clamper/LightSensorController$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/brightness/clamper/LightSensorController$1;-><init>(Lcom/android/server/display/brightness/clamper/LightSensorController;)V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensorEventListener:Lcom/android/server/display/brightness/clamper/LightSensorController$1;

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p1, 0x10e0045

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensorRate:I

    const-string/jumbo p1, "LightSensorController"

    invoke-static {p2, p1}, Lcom/android/server/display/utils/AmbientFilterFactory;->createBrightnessFilter(Landroid/content/res/Resources;Ljava/lang/String;)Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;

    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensorListener:Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;

    iput-object p4, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mInjector:Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;

    return-void
.end method


# virtual methods
.method public final stop()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensorEventListener:Lcom/android/server/display/brightness/clamper/LightSensorController$1;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;

    iget-object v0, v0, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->mBuffer:Lcom/android/server/display/utils/RollingBuffer;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    iput v1, v0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    iput v1, v0, Lcom/android/server/display/utils/RollingBuffer;->mEnd:I

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensorListener:Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;

    check-cast p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1;

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1$$ExternalSyntheticLambda0;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1$$ExternalSyntheticLambda0;-><init>(F)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    sget-boolean p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string/jumbo p0, "LightSensorController"

    const-string/jumbo v0, "stop"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
