.class public final Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayMcfManager;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayMcfManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const-string/jumbo v2, "WifiDisplayMcfManager"

    const/4 v3, 0x1

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->initialize()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->unbindMcfAdapter()V

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->unbindBleAdvertiserService()V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->unbindBleAdvertiserService()V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    if-nez v1, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-interface {v1, v3}, Lcom/samsung/android/mcf/McfBleAdapter;->isNetworkEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->tryStartScanBleScanner()V

    return-void

    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->bindMcfAdapter()V

    return-void

    :pswitch_4
    iget-boolean p1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsBounded:Z

    if-nez p1, :cond_3

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "bindBleAdvertiserService, mIsBounded : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsBounded:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "com.samsung.android.smartmirroring"

    const-string/jumbo v1, "com.samsung.android.smartmirroring.ble.BleAdvertiserService"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "wfd_sec_mirroring_uuid"

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->getInitiatedMirroringUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mConnection:Lcom/android/server/display/WifiDisplayMcfManager$1;

    invoke-virtual {v0, p1, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_3
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7530

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->unbindMcfAdapter()V

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->unbindBleAdvertiserService()V

    return-void

    :pswitch_6
    const-class v0, Lcom/samsung/android/mcf/McfAdapter;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mcf/McfAdapter;

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    :try_start_0
    const-string p1, ""

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    if-eqz v0, :cond_8

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleAdapterCallback:Lcom/android/server/display/WifiDisplayMcfManager$2;

    const/16 v5, 0x26

    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/mcf/McfAdapter;->getBleAdapter(ILcom/samsung/android/mcf/ble/BleAdapterCallback;)Lcom/samsung/android/mcf/McfBleAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    if-eqz v0, :cond_7

    invoke-interface {v0, v3}, Lcom/samsung/android/mcf/McfBleAdapter;->isNetworkEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->tryStartScanBleScanner()V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->retryStartScanBleScanner()V

    goto :goto_2

    :cond_7
    const-string/jumbo p1, "handleMcfAdapterServiceConnected mMcfBleAdapter null"

    goto :goto_2

    :cond_8
    const-string/jumbo p1, "handleMcfAdapterServiceConnected mMcfAdapter null"

    :goto_2
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_3
    const-string/jumbo p1, "handleMcfAdapterServiceConnected Exception:"

    invoke-static {p0, p1, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    if-eqz v0, :cond_a

    if-ne v1, p1, :cond_a

    invoke-interface {v0, v3}, Lcom/samsung/android/mcf/McfBleAdapter;->isNetworkEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string/jumbo p1, "handleMcfServiceStateChanged - BLE NETWORK is enabled"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->initialize()V

    return-void

    :cond_9
    const-string/jumbo p1, "handleMcfServiceStateChanged - BLE NETWORK is not enabled. Need to unbind"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->unbindMcfAdapter()V

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->unbindBleAdvertiserService()V

    :cond_a
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
