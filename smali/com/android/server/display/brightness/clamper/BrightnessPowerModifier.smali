.class public Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceDataListener;
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DeviceConfigListener;


# instance fields
.field public mApplied:Z

.field public mBrightnessCap:F

.field public final mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

.field public final mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

.field public mCurrentAvgPowerConsumed:F

.field public mCurrentBrightness:F

.field public mCurrentThermalLevel:I

.field public mCurrentThermalLevelChanged:Z

.field public mCustomAnimationRateDeviceConfig:F

.field public mCustomAnimationRateSec:F

.field public mDataId:Ljava/lang/String;

.field public final mDataPointMapper:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda0;

.field public final mDataSetMapper:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda1;

.field public final mHandler:Landroid/os/Handler;

.field public final mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

.field public mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

.field public mPowerThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

.field public mPowerThrottlingDataFromDDC:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

.field public mPowerThrottlingDataOverride:Ljava/util/Map;

.field public final mThermalLevelListener:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;

.field public mUniqueDisplayId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$Injector;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;F)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataOverride:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataFromDDC:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevel:I

    iput-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevelChanged:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentAvgPowerConsumed:F

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mUniqueDisplayId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mDataId:Ljava/lang/String;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCustomAnimationRateSec:F

    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCustomAnimationRateDeviceConfig:F

    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mDataPointMapper:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mDataSetMapper:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda1;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mBrightnessCap:F

    iput-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mApplied:Z

    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    iput p5, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentBrightness:F

    move-object p3, p4

    check-cast p3, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    iget-object p3, p3, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object p3, p3, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    if-eqz p3, :cond_0

    iget p3, p3, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->customAnimationRate:F

    iput p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCustomAnimationRateDeviceConfig:F

    :cond_0
    new-instance p3, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;

    invoke-direct {p3, p0, p2}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mThermalLevelListener:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;

    new-instance p5, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda2;

    invoke-direct {p5, p0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;)V

    iget-object p3, p3, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mThermalService:Landroid/os/IThermalService;

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    iget v1, v0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->pollingWindowMaxMillis:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/server/display/brightness/clamper/PmicMonitor;

    iget v0, v0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->pollingWindowMinMillis:I

    invoke-direct {p1, p5, p3, v1, v0}, Lcom/android/server/display/brightness/clamper/PmicMonitor;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda2;Landroid/os/IThermalService;II)V

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    new-instance p1, Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    new-instance p1, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda3;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p4, p3}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;I)V

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final apply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Lcom/android/server/display/DisplayBrightnessState$Builder;)V
    .locals 2

    iget p1, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mMaxBrightness:F

    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mBrightnessCap:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    iput v0, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mMaxBrightness:F

    iget p1, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    const/4 v0, 0x2

    iput v0, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessMaxReason:I

    iget-object v0, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    const/16 v1, 0x8

    invoke-virtual {v0, p1, v1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    iget-boolean p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mApplied:Z

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCustomAnimationRateSec:F

    iput p1, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mCustomAnimationRate:F

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCustomAnimationRateSec:F

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mApplied:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mApplied:Z

    :goto_0
    iget p1, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    iput p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentBrightness:F

    return-void
.end method

.method public final applyStateChange(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;)V
    .locals 1

    iget v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mBrightnessCap:F

    cmpl-float v0, v0, p0

    if-lez v0, :cond_0

    iput p0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    const/4 p0, 0x2

    iput p0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightnessReason:I

    :cond_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "BrightnessPowerClamper:"

    const-string v1, "  mCurrentAvgPowerConsumed="

    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentAvgPowerConsumed:F

    const-string v2, "  mUniqueDisplayId="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mUniqueDisplayId:Ljava/lang/String;

    const-string v2, "  mCurrentThermalLevel="

    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevel:I

    const-string v2, "  mCurrentThermalLevelChanged="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevelChanged:Z

    const-string v2, "  mPowerThrottlingDataFromDDC="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataFromDDC:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    if-nez v1, :cond_0

    const-string/jumbo v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "  mBrightnessCap: "

    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mBrightnessCap:F

    const-string v2, "  mApplied: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mApplied:Z

    invoke-static {v0, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mThermalLevelListener:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "  ThermalLevelObserver:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "    mStarted: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mStarted:Z

    invoke-static {v0, p0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public final onDeviceConfigChanged()V
    .locals 2

    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;I)V

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onDisplayChanged(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 2

    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;I)V

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final recalculateActiveData()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mUniqueDisplayId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mDataId:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataOverride:Ljava/util/Map;

    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mDataId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataFromDDC:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPmicMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPmicMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    :goto_0
    return-void
.end method

.method public final setAmbientLux(F)V
    .locals 0

    return-void
.end method

.method public final setDisplayData(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;)V
    .locals 2

    check-cast p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    iget-object v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mUniqueDisplayId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mUniqueDisplayId:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mPowerThrottlingDataId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mDataId:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v1, p1, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingDataMapByThrottlingId:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataFromDDC:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    if-nez v0, :cond_0

    const-string/jumbo v0, "default"

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mDataId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Power throttling data is missing for powerThrottlingDataId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mDataId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessPowerClamper"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p1, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    return-void
.end method

.method public final shouldListenToLightSensor()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final stop()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    iget-object v0, v0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mThermalLevelListener:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;

    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mStarted:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {v0, p0}, Landroid/os/IThermalService;->unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mStarted:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BrightnessPowerClamper"

    const-string v2, "Failed to unregister thermal status listener"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mThermalService:Landroid/os/IThermalService;

    :goto_1
    return-void
.end method
