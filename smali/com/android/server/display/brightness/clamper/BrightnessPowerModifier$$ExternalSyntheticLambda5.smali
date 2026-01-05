.class public final synthetic Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda5;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPmicMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/PmicMonitor;->start()V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v1, "power_throttling_data"

    const/4 v2, 0x0

    const-string/jumbo v3, "display_manager"

    invoke-interface {v0, v3, v1, v2}, Landroid/provider/DeviceConfigInterface;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mDataPointMapper:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda0;

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mDataSetMapper:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda1;

    invoke-static {v0, v1, v2}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->parseDeviceConfigMap(Ljava/lang/String;Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataOverride:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->recalculateActiveData()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
