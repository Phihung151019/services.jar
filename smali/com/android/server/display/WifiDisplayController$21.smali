.class public final Lcom/android/server/display/WifiDisplayController$21;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayController;

.field public final synthetic val$mode:I

.field public final synthetic val$state:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/WifiDisplayController;III)V
    .locals 0

    iput p4, p0, Lcom/android/server/display/WifiDisplayController$21;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    iput p2, p0, Lcom/android/server/display/WifiDisplayController$21;->val$state:I

    iput p3, p0, Lcom/android/server/display/WifiDisplayController$21;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/android/server/display/WifiDisplayController$21;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "status"

    iget v2, p0, Lcom/android/server/display/WifiDisplayController$21;->val$state:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v1, v1, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/server/display/WifiDisplayController$21;->val$mode:I

    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendRemoteDisplayStateChangeEvent state : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/display/WifiDisplayController$21;->val$state:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", event : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/WifiDisplayController$21;->val$mode:I

    const-string/jumbo v3, "WifiDisplayController"

    invoke-static {v0, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "handleWifiDisplayStateBroadcast:: state = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/display/WifiDisplayController$21;->val$state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "ON"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "OFF"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", [VolumeControl] isVolumeControlSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-boolean v1, v1, Lcom/android/server/display/WifiDisplayController;->mIsDisplayVolumeControlSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", disconnectByUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-boolean v1, v1, Lcom/android/server/display/WifiDisplayController;->mDisconnectByUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "WifiDisplayController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "state"

    iget v3, p0, Lcom/android/server/display/WifiDisplayController$21;->val$state:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-boolean v1, v1, Lcom/android/server/display/WifiDisplayController;->mIsDisplayVolumeControlSupported:Z

    const-string/jumbo v3, "isSupportDisplayVolumeControl"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-boolean v1, v1, Lcom/android/server/display/WifiDisplayController;->mDisconnectByUser:Z

    const-string/jumbo v3, "by_user"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-boolean v1, v1, Lcom/android/server/display/WifiDisplayController;->mIsPortraitDisplay:Z

    const-string/jumbo v3, "isPortraitDisplay"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "mode"

    iget v3, p0, Lcom/android/server/display/WifiDisplayController$21;->val$mode:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v1, v1, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-boolean v1, v0, Lcom/android/server/display/WifiDisplayController;->mIsDisplayVolumeControlSupported:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/server/display/WifiDisplayController$21;->val$state:I

    const/16 v4, 0xf

    const/16 v5, 0x19

    const/4 v6, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v6, v5}, Landroid/media/AudioManager;->semGetStreamVolume(II)I

    move-result v1

    iput v1, v0, Lcom/android/server/display/WifiDisplayController;->mPrevMusicStreamVolume:I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v6, v4, v3, v5}, Landroid/media/AudioManager;->semSetStreamVolume(IIII)V

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v6, v5}, Landroid/media/AudioManager;->semGetStreamVolume(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget v2, v1, Lcom/android/server/display/WifiDisplayController;->mPrevMusicStreamVolume:I

    const/4 v7, -0x1

    if-eq v2, v7, :cond_2

    if-ne v0, v4, :cond_2

    iget-object v0, v1, Lcom/android/server/display/WifiDisplayController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v6, v2, v3, v5}, Landroid/media/AudioManager;->semSetStreamVolume(IIII)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    iput v7, v0, Lcom/android/server/display/WifiDisplayController;->mPrevMusicStreamVolume:I

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    iput-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectByUser:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
