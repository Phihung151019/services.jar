.class public final Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    const-string/jumbo p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    :cond_0
    return-void

    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onReceive "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string/jumbo p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    iget-boolean p1, p1, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mRestart:Z

    if-eqz p1, :cond_5

    const-string p1, "***** Restarting Bluetooth *****"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    iput-boolean v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mRestart:Z

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto/16 :goto_1

    :cond_1
    const-string/jumbo v0, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo p1, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Z)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getEDM$2()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getEDM$2()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result p2

    goto :goto_0

    :cond_2
    move p2, v2

    :goto_0
    if-nez p2, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->setBluetoothAllowedSystemUI(IZ)V

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDesktopConnectivityEnabled(Z)Z

    move-result p0

    if-nez p0, :cond_5

    const-string/jumbo p0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothDevice;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result p1

    const/16 p2, 0x100

    if-ne p1, p2, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Unpair this bluetooth computer(ACL CONNECTED) : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
