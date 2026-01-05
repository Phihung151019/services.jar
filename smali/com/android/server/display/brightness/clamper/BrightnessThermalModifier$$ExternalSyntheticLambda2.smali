.class public final synthetic Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;

.field public final synthetic f$1:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;

    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    invoke-virtual {v0, p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->setDisplayData(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->recalculateActiveData$1()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    invoke-virtual {v0, p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->setDisplayData(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    iget-object p0, v0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v1, "brightness_throttling_data"

    const/4 v2, 0x0

    const-string/jumbo v3, "display_manager"

    invoke-interface {p0, v3, v1, v2}, Landroid/provider/DeviceConfigInterface;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-object v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataPointMapper:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda0;

    iget-object v2, v0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataSetMapper:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda1;

    invoke-static {p0, v1, v2}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->parseDeviceConfigMap(Ljava/lang/String;Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/Map;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataOverride:Ljava/util/Map;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
