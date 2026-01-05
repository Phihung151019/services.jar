.class public final Lcom/android/server/display/WifiDisplayController$38;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/media/RemoteDisplay$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    return-void
.end method


# virtual methods
.method public final onDisplayChanged(Landroid/view/Surface;III)V
    .locals 9

    const-string/jumbo v0, "onDisplayChanged, width : "

    const-string v1, ", height : "

    const-string/jumbo v2, "WifiDisplayController"

    invoke-static {p2, p3, v0, v1, v2}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object p0, v3, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz p0, :cond_0

    iget-object p0, v3, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz p0, :cond_0

    iget-object v4, v3, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v4, :cond_0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    :cond_0
    return-void
.end method

.method public final onDisplayConnected(Landroid/view/Surface;IIIILjava/lang/String;)V
    .locals 14

    move/from16 v5, p2

    move/from16 v6, p3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_17

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_17

    const-string/jumbo v0, "onDisplayConnected, width : "

    const-string v2, " , height : "

    const-string v3, " , flags : "

    invoke-static {v5, v6, v0, v2, v3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v8, p4, 0x1

    if-eqz v8, :cond_0

    const-string/jumbo v3, "SECURE"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v3, p4, 0x2

    if-eqz v3, :cond_1

    const-string v3, "LANDSCAPE"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v9, p4, 0x4

    if-eqz v9, :cond_2

    const-string/jumbo v3, "PORTRAIT_90"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v10, p4, 0x8

    if-eqz v10, :cond_3

    const-string/jumbo v3, "PORTRAIT_270"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit8 v3, p4, 0x10

    if-eqz v3, :cond_4

    const-string v3, "AUDIO_ONLY"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    and-int/lit8 v3, p4, 0x20

    if-eqz v3, :cond_5

    const-string v4, "HIGH_RESOLUTION_SUPPORT"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    and-int/lit8 v4, p4, 0x40

    if-eqz v4, :cond_6

    const-string v7, "DMR_SUPPORT"

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nOpened RTSP connection with Wifi display: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v2, v2, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const-string/jumbo v11, "WifiDisplayController"

    invoke-static {v0, v2, v11}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v0, v2}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v2

    const/4 v12, 0x6

    invoke-virtual {v2, v12}, Landroid/hardware/display/WifiDisplay;->setState(I)V

    iget-object v7, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {v7}, Landroid/hardware/display/SemWifiDisplayConfig;->getFlags()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/hardware/display/WifiDisplay;->setFlags(I)V

    iget-object v7, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {v7}, Landroid/hardware/display/SemWifiDisplayConfig;->getMode()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/hardware/display/WifiDisplay;->setMode(I)V

    iget-object v7, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {v7}, Landroid/hardware/display/SemWifiDisplayConfig;->getMode()I

    move-result v7

    if-nez v7, :cond_8

    if-eqz v4, :cond_7

    const-string/jumbo v4, "wfd_sec_dmr_support"

    const-string/jumbo v7, "enable"

    invoke-virtual {v2, v4, v7}, Landroid/hardware/display/WifiDisplay;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz v3, :cond_8

    const-string/jumbo v3, "high_resolution_mode"

    const-string/jumbo v4, "support"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/display/WifiDisplay;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayConfig;->getConnectionType()I

    move-result v0

    const/4 v13, 0x2

    if-ne v0, v13, :cond_9

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->getSamsungDeviceType()I

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v2, v12}, Landroid/hardware/display/WifiDisplay;->setSamsungDeviceType(I)V

    :cond_9
    move-object v3, v2

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object v4, p1

    move/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-nez v9, :cond_b

    if-eqz v10, :cond_a

    goto :goto_0

    :cond_a
    move v7, v4

    goto :goto_1

    :cond_b
    :goto_0
    move v7, v2

    :goto_1
    iput-boolean v7, v0, Lcom/android/server/display/WifiDisplayController;->mIsPortraitDisplay:Z

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mWfdUibcManager:Lcom/samsung/android/wfd/WFDUibcManager;

    int-to-float v5, v5

    int-to-float v6, v6

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/wfd/WFDUibcManager;->setUIBCNegotiagedResolution(FF)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    iput-boolean v2, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    iget-object v5, v0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Lcom/android/server/display/WifiDisplayController$6;

    invoke-virtual {v5, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v5, v0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/display/WifiDisplayController$29;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v2, v7}, Lcom/android/server/display/WifiDisplayController$29;-><init>(Lcom/android/server/display/WifiDisplayController;ZI)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0, v13}, Lcom/android/server/display/WifiDisplayController;->sendEventToSemDeviceStatusListener(I)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/server/display/WifiDisplayController;->mParameterList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v5, v0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    move-object/from16 v6, p6

    invoke-static {v0, v5, v6}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mparseParametersFromEngine(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;Ljava/lang/String;)Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getParameters()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v6, v6, Lcom/android/server/display/WifiDisplayController;->mParameterList:Ljava/util/List;

    new-instance v7, Landroid/hardware/display/SemWifiDisplayParameter;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v7, v9, v5}, Landroid/hardware/display/SemWifiDisplayParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v5, v0, Lcom/android/server/display/WifiDisplayController;->mParameterList:Ljava/util/List;

    :try_start_0
    iget-object v6, v0, Lcom/android/server/display/WifiDisplayController;->mCallback:Landroid/hardware/display/IWifiDisplayConnectionCallback;

    if-eqz v6, :cond_d

    invoke-interface {v6, v5}, Landroid/hardware/display/IWifiDisplayConnectionCallback;->onSuccess(Ljava/util/List;)V

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/server/display/WifiDisplayController;->mCallback:Landroid/hardware/display/IWifiDisplayConnectionCallback;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string v0, "Failed to onSuccess"

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_3
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v5, v0, Lcom/android/server/display/WifiDisplayController;->mParameterList:Ljava/util/List;

    invoke-static {v0, v5}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$msendWifiDisplayParameterEvent(Lcom/android/server/display/WifiDisplayController;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->sendWifiDisplayVolumeSupportChangedBroadcast()V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-boolean v5, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    if-eqz v5, :cond_e

    iget-object v5, v0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayAdapter$14;

    iget-object v6, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    move/from16 v7, p5

    invoke-virtual {v0, v6, v7}, Lcom/android/server/display/WifiDisplayController;->getSessionInfo(Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v0

    iget-object v6, v5, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v6, v6, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v6

    :try_start_1
    iget-object v5, v5, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput-object v0, v5, Lcom/android/server/display/WifiDisplayAdapter;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    invoke-virtual {v5}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    monitor-exit v6

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_e
    :goto_4
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayConfig;->isInitiateMirroringMode()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v5, v0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/display/WifiDisplayController$6;

    const/4 v7, 0x5

    invoke-direct {v6, v7, v0}, Lcom/android/server/display/WifiDisplayController$6;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_f
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayConfig;->getConnectionType()I

    move-result v0

    if-eq v0, v13, :cond_10

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->getSamsungDeviceType()I

    move-result v0

    if-ne v0, v12, :cond_14

    :cond_10
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "registerCallback. ret: "

    :try_start_2
    iget-object v5, v0, Lcom/android/server/display/WifiDisplayController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-nez v5, :cond_11

    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->getGMSBinder()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_11

    invoke-static {v5}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/display/WifiDisplayController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_6

    :cond_11
    :goto_5
    iget-object v5, v0, Lcom/android/server/display/WifiDisplayController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-eqz v5, :cond_13

    invoke-interface {v5}, Lcom/samsung/android/game/IGameManagerService;->identifyForegroundApp()I

    move-result v5

    if-ne v5, v2, :cond_12

    const-string/jumbo v5, "Set low latency mode"

    invoke-static {v11, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "lowl"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v5, v6}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_12
    iget-object v5, v0, Lcom/android/server/display/WifiDisplayController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mGameCallback:Lcom/android/server/display/WifiDisplayController$32;

    invoke-interface {v5, v0}, Lcom/samsung/android/game/IGameManagerService;->registerCallback(Lcom/samsung/android/game/IGameManagerCallback;)Z

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_13
    const-string/jumbo v0, "failed to get game manager"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :goto_6
    const-string/jumbo v3, "registerCallback failed."

    invoke-static {v0, v3, v11}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    const-string/jumbo v0, "android.samsung.media.action.AUDIO_MODE"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v5, v3, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    iget-object v6, v3, Lcom/android/server/display/WifiDisplayController;->mAudioModeChangedReceiver:Lcom/android/server/display/WifiDisplayController$20;

    iget-object v3, v3, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    const/4 v9, 0x0

    move-object/from16 p3, v0

    move-object/from16 p5, v3

    move-object p1, v5

    move-object/from16 p2, v6

    move/from16 p6, v7

    move-object/from16 p4, v9

    invoke-virtual/range {p1 .. p6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v3, v0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    iget-object v5, v0, Lcom/android/server/display/WifiDisplayController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getMode()I

    move-result v5

    invoke-static {v0, v3, v5}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$msendVoipModeMessageIfNecessary(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;I)V

    :cond_14
    if-nez v8, :cond_15

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v3, v3, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const v5, 0x103012b

    invoke-direct {v0, v3, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v3, 0x10410d0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_15
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayConfig;->getMode()I

    move-result v0

    if-nez v0, :cond_16

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "package"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v4, v3, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    iget-object v5, v3, Lcom/android/server/display/WifiDisplayController;->mSmartMirroringStoppedReceiver:Lcom/android/server/display/WifiDisplayController$20;

    iget-object v3, v3, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object/from16 p3, v0

    move-object/from16 p5, v3

    move-object p1, v4

    move-object/from16 p2, v5

    move/from16 p6, v6

    move-object/from16 p4, v7

    invoke-virtual/range {p1 .. p6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    :cond_16
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v3, v0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->getMode()I

    move-result v3

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/display/WifiDisplayController$21;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v2, v3, v6}, Lcom/android/server/display/WifiDisplayController$21;-><init>(Lcom/android/server/display/WifiDisplayController;III)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onDisplayConnected wifidisplay "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v1, v1, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    return-void
.end method

.method public final onDisplayDisconnected()V
    .locals 6

    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "onDisplayDisconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v2, v1, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/display/WifiDisplayController$29;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v1, v4, v5}, Lcom/android/server/display/WifiDisplayController$29;-><init>(Lcom/android/server/display/WifiDisplayController;ZI)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v2, v1, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-ne v2, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Closed RTSP connection with Wifi display: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v2, v2, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v1, v1, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayConfig;->isInitiateMirroringMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v2, v1, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    iget-object v1, v1, Lcom/android/server/display/WifiDisplayController;->mInitiateReceiver:Lcom/android/server/display/WifiDisplayController$20;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo v1, "unregisterReceiver:: mInitiateReceiver not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v2, v1, Lcom/android/server/display/WifiDisplayController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-eqz v2, :cond_2

    iget-object v3, v1, Lcom/android/server/display/WifiDisplayController;->mGameCallback:Lcom/android/server/display/WifiDisplayController$32;

    invoke-interface {v2, v3}, Lcom/samsung/android/game/IGameManagerService;->unregisterCallback(Lcom/samsung/android/game/IGameManagerCallback;)Z

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/display/WifiDisplayController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v2, "mGameManagerService.unregisterCallback error"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v2, v1, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    iget-object v1, v1, Lcom/android/server/display/WifiDisplayController;->mAudioModeChangedReceiver:Lcom/android/server/display/WifiDisplayController$20;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    const-string/jumbo v1, "unregisterReceiver:: mAudioModeChangedReceiver not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v2, v1, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    iget-object v1, v1, Lcom/android/server/display/WifiDisplayController;->mSmartMirroringStoppedReceiver:Lcom/android/server/display/WifiDisplayController$20;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    const-string/jumbo v1, "unregisterReceiver:: mSmartMirroringStoppedReceiver not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {p0, v4}, Lcom/android/server/display/WifiDisplayController;->sendEventToSemDeviceStatusListener(I)V

    return-void
.end method

.method public final onDisplayError(I)V
    .locals 6

    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "onDisplayError"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v2, v1, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/display/WifiDisplayController$29;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v1, v4, v5}, Lcom/android/server/display/WifiDisplayController$29;-><init>(Lcom/android/server/display/WifiDisplayController;ZI)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const-string p1, "HDCP Key is no written"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {p0, v1}, Lcom/android/server/display/WifiDisplayController;->handleConnectionFailure(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$misVpnConnected(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v2, v1, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_4

    iget-object v1, v1, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-ne v2, v1, :cond_4

    const/4 v1, 0x7

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    const-string p1, "HDCP connection error"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {p0, v1}, Lcom/android/server/display/WifiDisplayController;->handleConnectionFailure(I)V

    return-void

    :cond_1
    const/4 v3, 0x6

    if-ne p1, v3, :cond_2

    const-string/jumbo p1, "Playback session initialization failed or died"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/server/display/WifiDisplayController;->handleConnectionFailure(I)V

    return-void

    :cond_2
    if-ne p1, v1, :cond_3

    const-string/jumbo p1, "RTSP sink request/response time out"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/server/display/WifiDisplayController;->handleConnectionFailure(I)V

    return-void

    :cond_3
    const-string/jumbo v1, "Lost RTSP connection with Wifi display due to error "

    const-string v3, ": "

    invoke-static {p1, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v1, v1, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {p0, v2}, Lcom/android/server/display/WifiDisplayController;->handleConnectionFailure(I)V

    :cond_4
    return-void
.end method
