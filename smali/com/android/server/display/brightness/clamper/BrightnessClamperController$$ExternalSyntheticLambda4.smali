.class public final synthetic Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDeviceConfigListeners:Ljava/util/List;

    new-instance p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda6;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda6;-><init>(I)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
