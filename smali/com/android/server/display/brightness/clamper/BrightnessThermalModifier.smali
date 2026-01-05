.class public Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;
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

.field public mDataId:Ljava/lang/String;

.field public final mDataPointMapper:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda0;

.field public final mDataSetMapper:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda1;

.field public final mHandler:Landroid/os/Handler;

.field public final mThermalStatusObserver:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;

.field public mThermalThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

.field public mThermalThrottlingDataFromDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

.field public mThermalThrottlingDataOverride:Ljava/util/Map;

.field public mThrottlingStatus:I

.field public mUniqueDisplayId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$Injector;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataOverride:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataFromDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mUniqueDisplayId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataId:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThrottlingStatus:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mBrightnessCap:F

    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mApplied:Z

    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataPointMapper:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataSetMapper:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda1;

    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    new-instance p3, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$Injector;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalStatusObserver:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;

    new-instance p1, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda2;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p4, p3}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;I)V

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final apply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Lcom/android/server/display/DisplayBrightnessState$Builder;)V
    .locals 4

    iget p1, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mMaxBrightness:F

    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mBrightnessCap:F

    cmpl-float p1, p1, v0

    const/4 v1, 0x0

    if-lez p1, :cond_1

    iput v0, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mMaxBrightness:F

    iget p1, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    const/4 v0, 0x1

    iput v0, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessMaxReason:I

    iget-object v2, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    const/16 v3, 0x8

    invoke-virtual {v2, p1, v3}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    iget-boolean p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mApplied:Z

    if-nez p1, :cond_0

    iput-boolean v1, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsSlowChange:Z

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mApplied:Z

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mApplied:Z

    return-void
.end method

.method public final applyStateChange(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;)V
    .locals 1

    iget v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mBrightnessCap:F

    cmpl-float v0, v0, p0

    if-lez v0, :cond_0

    iput p0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    const/4 p0, 0x1

    iput p0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightnessReason:I

    :cond_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "BrightnessThermalClamper:"

    const-string v1, "  mThrottlingStatus: "

    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThrottlingStatus:I

    const-string v2, "  mUniqueDisplayId: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mUniqueDisplayId:Ljava/lang/String;

    const-string v2, "  mDataId: "

    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataId:Ljava/lang/String;

    const-string v2, "  mDataOverride: "

    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataOverride:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mDataFromDeviceConfig: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataFromDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mDataActive: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mBrightnessCap:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mBrightnessCap:F

    const-string v2, "  mApplied:"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mApplied:Z

    invoke-static {v0, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalStatusObserver:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "  ThermalStatusObserver:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "    mStarted: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mStarted:Z

    const-string v2, "    mObserverTempSensor: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mObserverTempSensor:Lcom/android/server/display/config/SensorData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    if-eqz p0, :cond_0

    const-string p0, "    ThermalService available"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "    ThermalService not available"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final onDeviceConfigChanged()V
    .locals 1

    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;)V

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onDisplayChanged(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 2

    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;I)V

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final recalculateActiveData$1()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mUniqueDisplayId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataId:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataOverride:Ljava/util/Map;

    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataFromDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->recalculateBrightnessCap$1()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final recalculateBrightnessCap$1()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;->throttlingLevels:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;

    iget v5, v4, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;->thermalStatus:I

    iget v6, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThrottlingStatus:I

    if-gt v5, v6, :cond_0

    iget v1, v4, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;->brightness:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mBrightnessCap:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mBrightnessCap:F

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    :cond_1
    return-void
.end method

.method public final setAmbientLux(F)V
    .locals 0

    return-void
.end method

.method public final setDisplayData(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 3

    iget-object v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mUniqueDisplayId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mUniqueDisplayId:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mThermalThrottlingDataId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataId:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    :goto_0
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataFromDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    const-string v1, "BrightnessThermalClamper"

    if-nez v0, :cond_1

    const-string/jumbo v0, "default"

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Thermal throttling data is missing for thermalThrottlingDataId="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p1, Lcom/android/server/display/DisplayDeviceConfig;->mTempSensor:Lcom/android/server/display/config/SensorData;

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalStatusObserver:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;

    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mStarted:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mObserverTempSensor:Lcom/android/server/display/config/SensorData;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mObserverTempSensor:Lcom/android/server/display/config/SensorData;

    iget-object p1, p1, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string/jumbo p0, "Thermal status observer already started"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->stopObserving()V

    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->registerThermalListener()V

    return-void

    :cond_4
    :goto_1
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mObserverTempSensor:Lcom/android/server/display/config/SensorData;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->registerThermalListener()V

    return-void
.end method

.method public final shouldListenToLightSensor()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final stop()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalStatusObserver:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->stopObserving()V

    return-void
.end method
