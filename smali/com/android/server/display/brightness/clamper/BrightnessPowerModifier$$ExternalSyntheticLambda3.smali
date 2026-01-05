.class public final synthetic Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;

.field public final synthetic f$1:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;

    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;

    check-cast p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    invoke-virtual {v0, p0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->setDisplayData(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;)V

    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->recalculateActiveData()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;

    invoke-virtual {v0, p0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->setDisplayData(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;)V

    iget-object p0, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v1, "power_throttling_data"

    const/4 v2, 0x0

    const-string/jumbo v3, "display_manager"

    invoke-interface {p0, v3, v1, v2}, Landroid/provider/DeviceConfigInterface;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-object v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mDataPointMapper:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda0;

    iget-object v2, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mDataSetMapper:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda1;

    invoke-static {p0, v1, v2}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->parseDeviceConfigMap(Ljava/lang/String;Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/Map;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataOverride:Ljava/util/Map;

    iget-object p0, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->pollingWindowMaxMillis:I

    iget v2, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->pollingWindowMinMillis:I

    const-string v3, " msec."

    const-string v4, "Brightness power max polling window:"

    const-string v5, "BrightnessPowerClamper"

    if-gt v1, v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    iget v1, v1, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->pollingWindowMaxMillis:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " msec, should be greater than brightness min polling window:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    iget v0, v0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->pollingWindowMinMillis:I

    :goto_0
    invoke-static {v0, v3, v5, p0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_1
    rem-int/2addr v1, v2

    if-eqz v1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    iget v1, v1, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->pollingWindowMaxMillis:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " msec, is not divisible by brightness min polling window:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    iget v0, v0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->pollingWindowMinMillis:I

    goto :goto_0

    :cond_2
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->customAnimationRate:F

    iput p0, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCustomAnimationRateDeviceConfig:F

    iget-object p0, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mThermalLevelListener:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;

    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mStarted:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mThermalService:Landroid/os/IThermalService;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x3

    :try_start_0
    invoke-interface {v0, p0, v1}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mStarted:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "Failed to register thermal status listener"

    invoke-static {v5, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
