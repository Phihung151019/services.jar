.class public final Lcom/android/server/audio/BtHelper$MyLeAudioCallback;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/bluetooth/BluetoothLeAudio$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/BtHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/BtHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/BtHelper$MyLeAudioCallback;->this$0:Lcom/android/server/audio/BtHelper;

    return-void
.end method


# virtual methods
.method public final onCodecConfigChanged(ILandroid/bluetooth/BluetoothLeAudioCodecStatus;)V
    .locals 0

    return-void
.end method

.method public final onGroupNodeAdded(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 7

    iget-object p0, p0, Lcom/android/server/audio/BtHelper$MyLeAudioCallback;->this$0:Lcom/android/server/audio/BtHelper;

    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v2, 0x2

    const/4 v6, 0x0

    const/16 v1, 0x39

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final onGroupNodeRemoved(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 7

    iget-object p0, p0, Lcom/android/server/audio/BtHelper$MyLeAudioCallback;->this$0:Lcom/android/server/audio/BtHelper;

    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v2, 0x2

    const/4 v6, 0x0

    const/16 v1, 0x39

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final onGroupStatusChanged(II)V
    .locals 7

    iget-object p0, p0, Lcom/android/server/audio/BtHelper$MyLeAudioCallback;->this$0:Lcom/android/server/audio/BtHelper;

    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v2, 0x2

    const/4 v6, 0x0

    const/16 v1, 0x39

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method
