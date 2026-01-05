.class public final Lcom/android/server/input/WirelessKeyboardMouseShare$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;


# direct methods
.method public constructor <init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const-string/jumbo p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-boolean p2, p2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInitialized:Z

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_8

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v3, p2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v3, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    iput-object v3, p2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    :cond_0
    const-string/jumbo p2, "WirelessKeyboardMouseShare"

    const-string v3, "BluetoothAdapter.ACTION_STATE_CHANGED enabled, initializing"

    invoke-static {p2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v4, v3, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wireless_keyboard_setting_repository"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_4

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "initializing : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v6, v4, v5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    array-length v6, v4

    const/4 v7, 0x3

    if-ge v6, v7, :cond_2

    goto :goto_4

    :cond_2
    aget-object v4, v4, v5

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v5, v0

    :goto_0
    const/4 v6, 0x4

    if-ge v5, v6, :cond_7

    array-length v6, v4

    add-int/2addr v6, v0

    if-ge v5, v6, :cond_7

    add-int/lit8 v6, v5, -0x1

    aget-object v6, v4, v6

    const-string v7, ""

    if-eq v6, v7, :cond_6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    iget-object v7, v3, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    iget-object v8, v3, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "bonded bt device : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p2, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_1

    :cond_5
    const-string/jumbo v8, "not exist bonded device : "

    invoke-static {v8, v6, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v1

    :goto_1
    aput-object v9, v7, v5

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v6, v3, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aput-object v1, v6, v5

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    :goto_4
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iput-boolean v0, p2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInitialized:Z

    :cond_8
    const/16 p2, 0xc

    if-ne p1, p2, :cond_9

    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-boolean v1, p2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedToTurnOnBT:Z

    if-eqz v1, :cond_9

    iput-boolean v2, p2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedToTurnOnBT:Z

    iput-boolean v0, p2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNotiTurnOnBT:Z

    invoke-virtual {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->startHIDDevice()V

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    return-void

    :cond_9
    const/16 p2, 0xa

    if-ne p1, p2, :cond_b

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->stopHIDDevice()V

    return-void

    :cond_a
    const-string/jumbo p2, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToastDialog:Lcom/android/server/input/ToastDialog;

    iget-object p1, p0, Lcom/android/server/input/ToastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/server/input/ToastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    :cond_b
    return-void
.end method
