.class public final synthetic Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v1, "brightness_throttling_data"

    const/4 v2, 0x0

    const-string/jumbo v3, "display_manager"

    invoke-interface {v0, v3, v1, v2}, Landroid/provider/DeviceConfigInterface;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataPointMapper:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda0;

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataSetMapper:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda1;

    invoke-static {v0, v1, v2}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->parseDeviceConfigMap(Ljava/lang/String;Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataOverride:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->recalculateActiveData$1()V

    return-void
.end method
