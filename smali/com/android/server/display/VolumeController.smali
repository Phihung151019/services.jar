.class public final Lcom/android/server/display/VolumeController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mDisplayController:Lcom/android/server/display/WifiDisplayController;

.field public final mDlnaController:Lcom/android/server/display/DlnaController;

.field public final mHandler:Landroid/os/Handler;

.field public final mKeyMap:Ljava/util/Map;

.field public mMaxVolume:I

.field public mMinVolume:I

.field public mMuted:Z

.field public mVolume:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/DlnaController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/VolumeController;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/display/VolumeController;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    iput-object p3, p0, Lcom/android/server/display/VolumeController;->mDlnaController:Lcom/android/server/display/DlnaController;

    new-instance p1, Lcom/android/server/display/VolumeController$1;

    invoke-direct {p1, p0}, Lcom/android/server/display/VolumeController$1;-><init>(Lcom/android/server/display/VolumeController;)V

    iput-object p1, p0, Lcom/android/server/display/VolumeController;->mKeyMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final setVolumeKeyEvent(I)V
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    const-string/jumbo v4, "VOLUME_KEY_DOWN"

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    const-string/jumbo v4, "VOLUME_KEY_UP"

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    const-string/jumbo v4, "VOLUME_MUTE"

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    const-string/jumbo v4, "VOLUME_UNMUTE"

    goto :goto_0

    :cond_3
    const-string v4, ""

    :goto_0
    const-string/jumbo v5, "sendDeviceVolumeKeyEvent : "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "VolumeController"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    iget-object v4, p0, Lcom/android/server/display/VolumeController;->mDlnaController:Lcom/android/server/display/DlnaController;

    iget-object v4, v4, Lcom/android/server/display/DlnaController;->mDevice:Landroid/hardware/display/SemDlnaDevice;

    invoke-virtual {v4}, Landroid/hardware/display/SemDlnaDevice;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/android/server/display/VolumeController;->mKeyMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-instance v0, Lcom/android/server/display/VolumeController$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/display/VolumeController$2;-><init>(Lcom/android/server/display/VolumeController;I)V

    iget-object p0, p0, Lcom/android/server/display/VolumeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    iget-object p0, p0, Lcom/android/server/display/VolumeController;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v4, :cond_8

    const-string/jumbo v4, "vkev"

    if-ne p1, v3, :cond_5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_5
    if-ne p1, v2, :cond_6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_6
    const-string/jumbo v2, "mkev"

    if-ne p1, v1, :cond_7

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, p1}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_7
    if-ne p1, v0, :cond_8

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, p1}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    return-void
.end method
