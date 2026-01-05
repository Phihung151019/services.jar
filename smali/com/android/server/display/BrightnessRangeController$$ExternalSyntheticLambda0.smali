.class public final synthetic Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;
.implements Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHdrBrightnessFromSdr(FF)F
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayDeviceConfig;->getHdrBrightnessFromSdr(FF)F

    move-result p0

    return p0
.end method

.method public onChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->run()V

    return-void
.end method
