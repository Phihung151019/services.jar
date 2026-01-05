.class public final synthetic Lcom/android/server/display/AutomaticBrightnessController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/AutomaticBrightnessController;

.field public final synthetic f$1:Landroid/hardware/SensorEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/hardware/SensorEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/AutomaticBrightnessController;

    iput-object p2, p0, Lcom/android/server/display/AutomaticBrightnessController$$ExternalSyntheticLambda1;->f$1:Landroid/hardware/SensorEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$$ExternalSyntheticLambda1;->f$1:Landroid/hardware/SensorEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iput-object p0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mInjectedLuxEvent:Landroid/hardware/SensorEvent;

    invoke-virtual {v0, p0}, Lcom/android/server/display/AutomaticBrightnessController;->onSensorChangedInternal(Landroid/hardware/SensorEvent;)V

    return-void

    :cond_0
    iget-object p0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mInjectedLuxEvent:Landroid/hardware/SensorEvent;

    if-eqz p0, :cond_1

    iget-object p0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastRealLuxEventDuringInjection:Landroid/hardware/SensorEvent;

    invoke-virtual {v0, p0}, Lcom/android/server/display/AutomaticBrightnessController;->onSensorChangedInternal(Landroid/hardware/SensorEvent;)V

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mInjectedLuxEvent:Landroid/hardware/SensorEvent;

    :cond_1
    return-void
.end method
