.class public final Lcom/android/server/display/WifiDisplayController$37;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/media/RemoteDisplay$NativeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    return-void
.end method


# virtual methods
.method public final onNotify(ILjava/lang/String;)V
    .locals 11

    const-string/jumbo v0, "isMute"

    const-string/jumbo v1, "curVol"

    const-string/jumbo v2, "maxVol"

    const-string/jumbo v3, "minVol"

    const-string v4, "    onNotify received : NOTIFY_SUPPORT_UIBC = "

    const-string v5, "    onNotify received : NOTIFY_SUPPORT_INITIATE_MIRRORING = "

    const-string v6, "    onNotify received: [VolumeControl] NOTIFY_DISPLAY_VOLUME_SUPPORT = "

    const/4 v7, 0x1

    const-string/jumbo v8, "WifiDisplayController"

    if-eq p1, v7, :cond_11

    const/4 v9, 0x2

    if-eq p1, v9, :cond_10

    const/4 v9, 0x3

    if-eq p1, v9, :cond_f

    const/4 v10, 0x7

    if-eq p1, v10, :cond_c

    const/16 v10, 0x28

    if-eq p1, v10, :cond_b

    const/16 v5, 0x32

    if-eq p1, v5, :cond_a

    const/16 v5, 0x3c

    const/4 v10, 0x0

    if-eq p1, v5, :cond_9

    const/16 v5, 0x46

    if-eq p1, v5, :cond_8

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_7

    const/16 v0, 0x64

    if-eq p1, v0, :cond_6

    const/16 v0, 0x9

    if-eq p1, v0, :cond_4

    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    const-string/jumbo p0, "onNotify Error,  msg : "

    invoke-static {p1, p0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string p2, "    onNotify received : NOTIFY_ROTATION_CHANGED = "

    invoke-static {p1, p2, v8}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    if-nez p1, :cond_1

    const/16 v0, 0x8

    :cond_1
    iget-object v2, p2, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/display/WifiDisplayController$21;

    const/4 v4, 0x1

    invoke-direct {v3, p2, v0, v1, v4}, Lcom/android/server/display/WifiDisplayController$21;-><init>(Lcom/android/server/display/WifiDisplayController;III)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance p2, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.intent.action.ROTATION_CHANGED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "rotation"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "updateDisplayDevice"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    if-eq p1, v7, :cond_3

    if-ne p1, v9, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdUibcManager:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-virtual {p0, v10}, Lcom/samsung/android/wfd/WFDUibcManager;->setPortraitMode(Z)V

    return-void

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdUibcManager:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-virtual {p0, v7}, Lcom/samsung/android/wfd/WFDUibcManager;->setPortraitMode(Z)V

    return-void

    :cond_4
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v0, "UibcAvailable"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p2, Lcom/android/server/display/WifiDisplayController;->mIsUibcAvailable:Z

    const-string/jumbo p2, "UibcSamsungMobile"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-boolean v0, v0, Lcom/android/server/display/WifiDisplayController;->mIsUibcAvailable:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isSamsungMobile = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v8, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-boolean v0, p2, Lcom/android/server/display/WifiDisplayController;->mIsUibcAvailable:Z

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/android/server/display/WifiDisplayController;->mWfdUibcManager:Lcom/samsung/android/wfd/WFDUibcManager;

    iget-object p2, p2, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-virtual {p2}, Landroid/hardware/display/SemWifiDisplayConfig;->getMode()I

    move-result p2

    invoke-virtual {v0, v10, p2}, Lcom/samsung/android/wfd/WFDUibcManager;->start(ZI)Z

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdUibcManager:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wfd/WFDUibcManager;->setSinkDevice(Z)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_5
    iget-object p0, p2, Lcom/android/server/display/WifiDisplayController;->mWfdUibcManager:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-virtual {p0, v10}, Lcom/samsung/android/wfd/WFDUibcManager;->stop(Z)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_6
    const-string p1, "    onNotify received : NOTIFY_NOT_DEFINED : "

    invoke-static {p1, p2, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-static {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mparseParametersFromEngine(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$msendWifiDisplayParameterEvent(Lcom/android/server/display/WifiDisplayController;Ljava/util/List;)V

    return-void

    :cond_7
    const-string p1, "    onNotify received : NOTIFY_SWTICH_TCP_FOR_DEMO"

    invoke-static {v8, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget p1, p0, Lcom/android/server/display/WifiDisplayController;->mTransportMode:I

    if-eq p1, v7, :cond_12

    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mTransportMode:I

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo p2, "tcp"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_8
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    invoke-virtual {p2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v8, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/display/WifiDisplayController$7;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/display/WifiDisplayController$7;-><init>(Lcom/android/server/display/WifiDisplayController;Ljava/lang/Object;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p0, "    onNotify received :  NOTIFY_DISPLAY_VOLUME_STATUS"

    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_9
    :try_start_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v0, "isSupportDisplayVolumeControl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p2, Lcom/android/server/display/WifiDisplayController;->mIsDisplayVolumeControlSupported:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-boolean p2, p2, Lcom/android/server/display/WifiDisplayController;->mIsDisplayVolumeControlSupported:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {p1}, Lcom/android/server/display/WifiDisplayController;->sendWifiDisplayVolumeSupportChangedBroadcast()V

    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-boolean p2, p1, Lcom/android/server/display/WifiDisplayController;->mIsDisplayVolumeControlSupported:Z

    if-eqz p2, :cond_12

    iget-object p1, p1, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getState()I

    move-result p1

    if-ne p1, v7, :cond_12

    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object p2, p1, Lcom/android/server/display/WifiDisplayController;->mAudioManager:Landroid/media/AudioManager;

    const/16 v0, 0x19

    invoke-virtual {p2, v9, v0}, Landroid/media/AudioManager;->semGetStreamVolume(II)I

    move-result p2

    iput p2, p1, Lcom/android/server/display/WifiDisplayController;->mPrevMusicStreamVolume:I

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mAudioManager:Landroid/media/AudioManager;

    const/16 p1, 0xf

    invoke-virtual {p0, v9, p1, v10, v0}, Landroid/media/AudioManager;->semSetStreamVolume(IIII)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_a
    const-string p1, "    onNotify received : NOTIFY_SCREEN_WAKE_UP"

    invoke-static {v8, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/display/WifiDisplayController$6;

    const/4 v0, 0x5

    invoke-direct {p2, v0, p0}, Lcom/android/server/display/WifiDisplayController$6;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_b
    :try_start_3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v0, "isSupportInitiatedMirroring"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p2, Lcom/android/server/display/WifiDisplayController;->mIsSupportInitiateMirroring:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-boolean p0, p0, Lcom/android/server/display/WifiDisplayController;->mIsSupportInitiateMirroring:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_c
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    rem-int/lit8 v0, p1, 0x2

    iput v0, p2, Lcom/android/server/display/WifiDisplayController;->mTransportMode:I

    const-string/jumbo p2, "UDP"

    const-string/jumbo v1, "TCP"

    if-ne v0, v7, :cond_d

    move-object v0, v1

    goto :goto_3

    :cond_d
    move-object v0, p2

    :goto_3
    const-string v2, "    onNotify received : NOTIFY_TRANSPORT_MODE,  mTransportMode = "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gt p1, v7, :cond_12

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget p1, p0, Lcom/android/server/display/WifiDisplayController;->mTransportMode:I

    if-ne p1, v7, :cond_e

    move-object p2, v1

    :cond_e
    const-string/jumbo p1, "sendBroadcastTransportMode mode : "

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    const-string/jumbo p2, "com.samsung.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x4000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "CONNECTION_MODE"

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mTransportMode:I

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_f
    const-string p1, "    onNotify received : NOTIFY_WFD_ENGINE_PAUSE"

    invoke-static {v8, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    const-string/jumbo p2, "com.sec.android.smartview.WFD_ENGINE_PAUSE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_10
    const-string p1, "    onNotify received : NOTIFY_WFD_ENGINE_RESUME"

    invoke-static {v8, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    const-string/jumbo p2, "com.sec.android.smartview.WFD_ENGINE_RESUME"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_11
    :try_start_4
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo p2, "renameAvailable"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    return-void

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_4
    return-void
.end method
