.class public final synthetic Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/input/BatteryController$DeviceMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/BatteryController$DeviceMonitor;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/input/BatteryController$DeviceMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/input/BatteryController$DeviceMonitor;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;

    iget-object v0, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->mValidityTimeoutCallback:Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda3;

    iget-object p0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mState:Lcom/android/server/input/BatteryController$State;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/input/BatteryController$State;

    invoke-direct {v0, p0}, Lcom/android/server/input/BatteryController$State;-><init>(Landroid/hardware/input/IInputDeviceBatteryState;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/input/BatteryController$State;

    iget p0, p0, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    invoke-direct {v0, p0}, Lcom/android/server/input/BatteryController$State;-><init>(I)V

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/input/BatteryController$State;

    iget-object p0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mState:Lcom/android/server/input/BatteryController$State;

    invoke-direct {v0, p0}, Lcom/android/server/input/BatteryController$State;-><init>(Landroid/hardware/input/IInputDeviceBatteryState;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
