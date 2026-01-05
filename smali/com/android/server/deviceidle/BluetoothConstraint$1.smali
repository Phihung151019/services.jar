.class public final Lcom/android/server/deviceidle/BluetoothConstraint$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/deviceidle/BluetoothConstraint;


# direct methods
.method public constructor <init>(Lcom/android/server/deviceidle/BluetoothConstraint;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/deviceidle/BluetoothConstraint$1;->this$0:Lcom/android/server/deviceidle/BluetoothConstraint;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string/jumbo p1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/deviceidle/BluetoothConstraint$1;->this$0:Lcom/android/server/deviceidle/BluetoothConstraint;

    iget-object p0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mLocalService:Lcom/android/server/DeviceIdleInternal;

    const-string/jumbo p1, "bluetooth"

    invoke-interface {p0, p1}, Lcom/android/server/DeviceIdleInternal;->exitIdle(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/deviceidle/BluetoothConstraint$1;->this$0:Lcom/android/server/deviceidle/BluetoothConstraint;

    iget-object p1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-static {p1}, Lcom/android/server/deviceidle/BluetoothConstraint;->isBluetoothConnected(Landroid/bluetooth/BluetoothManager;)Z

    move-result p1

    iget-boolean p2, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mConnected:Z

    if-eq p1, p2, :cond_1

    iput-boolean p1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mConnected:Z

    iget-object p1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mLocalService:Lcom/android/server/DeviceIdleInternal;

    iget-boolean p2, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mConnected:Z

    invoke-interface {p1, p0, p2}, Lcom/android/server/DeviceIdleInternal;->onConstraintStateChanged(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V

    :cond_1
    return-void
.end method
