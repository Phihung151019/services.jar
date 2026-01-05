.class public final synthetic Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/BatteryController$DeviceMonitor;

.field public final synthetic f$1:I

.field public final synthetic f$2:[B


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/BatteryController$DeviceMonitor;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/input/BatteryController$DeviceMonitor;

    iput p2, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda5;->f$1:I

    iput-object p3, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda5;->f$2:[B

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/input/BatteryController$DeviceMonitor;

    iget v1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda5;->f$1:I

    iget-object p0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda5;->f$2:[B

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p0, v1}, Lcom/android/server/input/BatteryController$DeviceMonitor;->updateBluetoothMetadataState(J[BI)V

    return-void
.end method
