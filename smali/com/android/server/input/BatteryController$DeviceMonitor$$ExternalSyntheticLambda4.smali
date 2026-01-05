.class public final synthetic Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/BatteryController$DeviceMonitor;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/BatteryController$DeviceMonitor;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/input/BatteryController$DeviceMonitor;

    iput p2, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda4;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/input/BatteryController$DeviceMonitor;

    iget p0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda4;->f$1:I

    check-cast p1, Ljava/lang/Long;

    iput p0, v0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothBatteryLevel:I

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    iput-wide p0, v0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothEventTime:J

    return-void
.end method
