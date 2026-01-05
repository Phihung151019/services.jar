.class public final Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;


# instance fields
.field public final mInjector:Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy$Injector;

.field public mIsDisplayEnabled:Z

.field public mLeadDisplayId:I

.field mScreenOffBrightnessSensor:Landroid/hardware/Sensor;

.field public mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy$RealInjector;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mInjector:Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy$Injector;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "AutoBrightnessFallbackStrategy:"

    const-string v1, "  mLeadDisplayId="

    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mLeadDisplayId:I

    const-string v2, "  mIsDisplayEnabled="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mIsDisplayEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, " "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    invoke-virtual {p0, v0}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->dump(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "AutoBrightnessFallbackStrategy"

    return-object p0
.end method

.method public final getReason()I
    .locals 0

    const/16 p0, 0x9

    return p0
.end method

.method public final setupAutoBrightnessFallbackSensor(Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Handler;Lcom/android/server/display/BrightnessMappingStrategy;ZI)V
    .locals 7

    iput-boolean p5, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mIsDisplayEnabled:Z

    iput p6, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mLeadDisplayId:I

    iget-object p5, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz p5, :cond_0

    const/4 p6, 0x0

    invoke-virtual {p5, p6}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->setLightSensorEnabled(Z)V

    const/4 p5, 0x0

    iput-object p5, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mInjector:Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy$Injector;

    invoke-interface {v0, p1, p2}, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy$Injector;->getScreenOffBrightnessSensor(Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayDeviceConfig;)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mScreenOffBrightnessSensor:Landroid/hardware/Sensor;

    iget-object v5, p2, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensorValueToLux:[I

    if-eqz v2, :cond_1

    if-eqz v5, :cond_1

    new-instance v4, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;

    const/4 p2, 0x0

    invoke-direct {v4, p2}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;-><init>(I)V

    move-object v1, p1

    move-object v3, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy$Injector;->getScreenOffBrightnessSensorController(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/os/Handler;Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;[ILcom/android/server/display/BrightnessMappingStrategy;)Lcom/android/server/display/ScreenOffBrightnessSensorController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    :cond_1
    return-void
.end method

.method public final strategySelectionPostProcessor(Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v0, :cond_2

    iget-object v1, p1, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    iget-boolean v2, p1, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mIsAutoBrightnessEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mIsDisplayEnabled:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_1

    iget-boolean p1, p1, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mAllowAutoBrightnessWhileDozingConfig:Z

    if-nez p1, :cond_1

    :cond_0
    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mLeadDisplayId:I

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->setLightSensorEnabled(Z)V

    :cond_2
    return-void
.end method

.method public final updateBrightness(Lcom/android/server/display/brightness/StrategyExecutionRequest;)Lcom/android/server/display/DisplayBrightnessState;
    .locals 2

    iget-object p0, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    invoke-virtual {p0}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->getAutomaticScreenBrightness()F

    move-result p0

    new-instance v0, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v0}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    const/16 v1, 0x9

    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(FI)V

    new-instance v1, Lcom/android/server/display/DisplayBrightnessState$Builder;

    invoke-direct {v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;-><init>()V

    iput p0, v1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    iput-object v0, v1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    const-string v0, "AutoBrightnessFallbackStrategy"

    iput-object v0, v1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mCurrentScreenBrightness:F

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput-boolean p0, v1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mShouldUpdateScreenBrightnessSetting:Z

    new-instance p0, Lcom/android/server/display/DisplayBrightnessState;

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayBrightnessState;-><init>(Lcom/android/server/display/DisplayBrightnessState$Builder;)V

    return-object p0
.end method
