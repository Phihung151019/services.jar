.class public final Lcom/android/server/display/WifiDisplayAdapter$9;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field public final synthetic val$callback:Landroid/hardware/display/IWifiDisplayConnectionCallback;

.field public final synthetic val$wifidisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/SemWifiDisplayConfig;Landroid/hardware/display/IWifiDisplayConnectionCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput-object p2, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->val$wifidisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    iput-object p3, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->val$callback:Landroid/hardware/display/IWifiDisplayConnectionCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->val$wifidisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->val$callback:Landroid/hardware/display/IWifiDisplayConnectionCallback;

    iput-object p0, v1, Lcom/android/server/display/WifiDisplayController;->mCallback:Landroid/hardware/display/IWifiDisplayConnectionCallback;

    iput-object v0, v1, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "requestConnect:: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayConfig;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "WifiDisplayController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v1, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayConfig;->getConnectionType()I

    move-result p0

    const/4 v7, 0x1

    if-ne p0, v7, :cond_0

    iget-object p0, v1, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayConfig;->getP2pMacAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/server/display/WifiDisplayController;->requestConnect(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, v1, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayConfig;->getConnectionType()I

    move-result p0

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eq p0, v2, :cond_1

    iget-object p0, v1, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayConfig;->getConnectionType()I

    move-result p0

    if-ne p0, v3, :cond_5

    :cond_1
    new-instance p0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    iget-object v2, v1, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplayConfig;->getMode()I

    move-result v2

    if-ne v2, v3, :cond_2

    iget-object v2, v1, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplayConfig;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplayConfig;->getP2pMacAddress()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplayConfig;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iput-object p0, v1, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object p0, v1, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {v3}, Landroid/hardware/display/SemWifiDisplayConfig;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const-string v4, "DIRECT-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const-string v3, "Broadcom"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x216a

    goto :goto_1

    :cond_3
    const/16 p0, 0x1c44

    :goto_1
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    iget-boolean p0, v1, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    iput-boolean p0, v1, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    :cond_4
    iget-object p0, v1, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1, p0}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v2

    const/4 p0, 0x6

    invoke-virtual {v2, p0}, Landroid/hardware/display/WifiDisplay;->setState(I)V

    iget-object p0, v1, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayConfig;->getFlags()I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/hardware/display/WifiDisplay;->setFlags(I)V

    iget-object p0, v1, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayConfig;->getMode()I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/hardware/display/WifiDisplay;->setMode(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    invoke-virtual {v1, v7}, Lcom/android/server/display/WifiDisplayController;->sendEventToSemDeviceStatusListener(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Listening for RTSP connection from Wifi display via AP : "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {p0, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/display/WifiDisplayController;->remoteDisplayListener:Lcom/android/server/display/WifiDisplayController$38;

    iget-object v5, v1, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object p0, v1, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayController;->getEngineParameters()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/display/WifiDisplayController;->mNativeListener:Lcom/android/server/display/WifiDisplayController$37;

    invoke-static/range {v3 .. v8}, Landroid/media/RemoteDisplay;->listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Landroid/media/RemoteDisplay$NativeListener;)Landroid/media/RemoteDisplay;

    move-result-object p0

    iput-object p0, v1, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    iget-object p0, v1, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v0, v1, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Lcom/android/server/display/WifiDisplayController$6;

    const-wide/16 v1, 0x7530

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method
