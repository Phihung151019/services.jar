.class public final synthetic Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/BatteryController$State;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/BatteryController$State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/input/BatteryController$State;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/input/BatteryController$State;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/android/server/input/BatteryController$ListenerRecord;

    sget-boolean p1, Lcom/android/server/input/BatteryController;->DEBUG:Z

    iget-object p1, p2, Lcom/android/server/input/BatteryController$ListenerRecord;->mMonitoredDevices:Ljava/util/Set;

    iget v0, p0, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p1, Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2, p0}, Lcom/android/server/input/BatteryController;->notifyBatteryListener(Lcom/android/server/input/BatteryController$ListenerRecord;Lcom/android/server/input/BatteryController$State;)V

    :cond_0
    return-void
.end method
