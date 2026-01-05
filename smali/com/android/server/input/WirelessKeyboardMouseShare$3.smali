.class public final Lcom/android/server/input/WirelessKeyboardMouseShare$3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;


# direct methods
.method public constructor <init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$3;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo p1, "WirelessKeyboardMouseShare"

    const-string/jumbo v0, "Profile proxy connected"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$3;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    check-cast p2, Landroid/bluetooth/BluetoothHidDevice;

    iput-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 0

    const/16 p0, 0x13

    if-eq p1, p0, :cond_0

    return-void

    :cond_0
    const-string/jumbo p0, "WirelessKeyboardMouseShare"

    const-string/jumbo p1, "Profile proxy disconnected"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
