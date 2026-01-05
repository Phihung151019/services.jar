.class public final synthetic Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;

.field public final synthetic f$1:I

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;IF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;

    iput p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda6;->f$1:I

    iput p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda6;->f$2:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda6;->f$1:I

    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda6;->f$2:F

    iget v2, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevel:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v1, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevelChanged:Z

    iput v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevel:I

    iput p0, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentAvgPowerConsumed:F

    iget-object p0, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;->throttlingLevels:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    :goto_1
    if-ge v4, v5, :cond_2

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v4, v4, 0x1

    check-cast v7, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;

    iget v8, v7, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;->thermalStatus:I

    if-gt v8, v1, :cond_2

    iget v6, v7, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;->powerQuotaMilliWatts:F

    goto :goto_1

    :cond_1
    move v6, v2

    :cond_2
    iget-object p0, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    if-nez p0, :cond_3

    return-void

    :cond_3
    cmpl-float p0, v6, v2

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez p0, :cond_6

    iget p0, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentBrightness:F

    invoke-static {p0}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result p0

    if-eqz p0, :cond_4

    iget p0, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentAvgPowerConsumed:F

    cmpl-float v2, p0, v6

    if-lez v2, :cond_4

    div-float/2addr v6, p0

    iget p0, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentBrightness:F

    mul-float v1, v6, p0

    goto :goto_2

    :cond_4
    iget-boolean p0, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevelChanged:Z

    if-eqz p0, :cond_6

    iget p0, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevel:I

    iget-object v2, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    if-nez p0, :cond_5

    iget-object p0, v2, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPmicMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p0, :cond_6

    invoke-interface {p0, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 p0, 0x0

    iput-object p0, v2, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPmicMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_2

    :cond_5
    iget-object p0, v2, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPmicMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    if-nez p0, :cond_6

    invoke-virtual {v2}, Lcom/android/server/display/brightness/clamper/PmicMonitor;->start()V

    :cond_6
    :goto_2
    iget-object p0, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    if-eqz p0, :cond_7

    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->brightnessLowestCapAllowed:F

    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_7
    iget p0, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mBrightnessCap:F

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Power clamper changing current brightness cap mBrightnessCap: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mBrightnessCap:F

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " to target brightness cap:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " for current screen brightness: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentBrightness:F

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "\nPower clamper changed state: thermalStatus:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevel:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mCurrentThermalLevelChanged:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevelChanged:Z

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mCurrentAvgPowerConsumed:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentAvgPowerConsumed:F

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mCustomAnimationRateSec:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCustomAnimationRateDeviceConfig:F

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "BrightnessPowerClamper"

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mBrightnessCap:F

    iget p0, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCustomAnimationRateDeviceConfig:F

    iput p0, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCustomAnimationRateSec:F

    iget-object p0, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    return-void

    :cond_8
    const/high16 p0, -0x40800000    # -1.0f

    iput p0, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCustomAnimationRateSec:F

    return-void
.end method
