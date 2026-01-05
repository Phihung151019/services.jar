.class public final synthetic Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    check-cast p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceDataListener;

    invoke-interface {p1, p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceDataListener;->onDisplayChanged(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

    check-cast p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;

    invoke-interface {p1, p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;->applyStateChange(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;)V

    return-void

    :pswitch_1
    check-cast p0, Landroid/util/IndentingPrintWriter;

    check-cast p1, Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;

    invoke-interface {p1, p0}, Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;->dump(Ljava/io/PrintWriter;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    check-cast p1, Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceDataListener;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceDataListener;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDisplayDeviceDataListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    instance-of v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mStatefulModifiers:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    instance-of v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$UserSwitchListener;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$UserSwitchListener;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mUserSwitchListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    instance-of v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DeviceConfigListener;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DeviceConfigListener;

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDeviceConfigListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
