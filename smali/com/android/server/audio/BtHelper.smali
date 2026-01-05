.class public final Lcom/android/server/audio/BtHelper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field public mA2dpCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

.field public mAvrcpAbsVolSupported:Z

.field public mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field public mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

.field public final mBluetoothProfileServiceListener:Lcom/android/server/audio/BtHelper$1;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

.field public mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

.field public mIsBtOffloadEnabled:I

.field public mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

.field public mLeAudioBroadcastCodec:I

.field public mLeAudioCallback:Lcom/android/server/audio/BtHelper$MyLeAudioCallback;

.field public mLeAudioCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

.field public mLeBroadcast:Landroid/bluetooth/BluetoothLeBroadcast;

.field public final mResolvedScoAudioDevices:Ljava/util/Map;

.field public mScoAudioMode:I

.field public mScoAudioState:I

.field public mScoConnectionState:I

.field public mVibratorManagerInternal:Lcom/android/server/vibrator/VibratorManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mResolvedScoAudioDevices:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/audio/BtHelper;->mLeAudioBroadcastCodec:I

    iput-boolean v1, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCallback:Lcom/android/server/audio/BtHelper$MyLeAudioCallback;

    new-instance v0, Lcom/android/server/audio/BtHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/audio/BtHelper$1;-><init>(Lcom/android/server/audio/BtHelper;)V

    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Lcom/android/server/audio/BtHelper$1;

    iput v1, p0, Lcom/android/server/audio/BtHelper;->mIsBtOffloadEnabled:I

    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iput-object p2, p0, Lcom/android/server/audio/BtHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static btHeadsetDeviceToAudioDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/media/AudioDeviceAttributes;
    .locals 6

    const/16 v0, 0x10

    const-string v1, ""

    if-nez p0, :cond_0

    new-instance p0, Landroid/media/AudioDeviceAttributes;

    invoke-direct {p0, v0, v1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v1

    :cond_1
    invoke-static {v2}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v4

    const/16 v5, 0x404

    if-eq v4, v5, :cond_4

    const/16 v5, 0x408

    if-eq v4, v5, :cond_4

    const/16 v5, 0x420

    if-eq v4, v5, :cond_3

    goto :goto_1

    :cond_3
    const/16 v0, 0x40

    goto :goto_1

    :cond_4
    const/16 v0, 0x20

    :cond_5
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "btHeadsetDeviceToAudioDevice btDevice: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " btClass: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_6

    const-string/jumbo v2, "Unknown"

    :cond_6
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " nativeType: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " address: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "AS.BtHelper"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/media/AudioDeviceAttributes;

    invoke-direct {p0, v0, v1, v3}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getBtDeviceCategory(Ljava/lang/String;)I
    .locals 9

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    const/4 v0, 0x0

    if-nez p0, :cond_2

    return v0

    :cond_2
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothDevice;->getMetadata(I)[B

    move-result-object v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v3, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x5

    const/4 v8, 0x3

    sparse-switch v1, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v1, "Carkit"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_3

    :sswitch_1
    const-string/jumbo v1, "Untethered Headset"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v8

    goto :goto_3

    :sswitch_2
    const-string/jumbo v1, "Watch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v7

    goto :goto_3

    :sswitch_3
    const-string/jumbo v1, "Speaker"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v5

    goto :goto_3

    :sswitch_4
    const-string v1, "HearingAid"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v0

    goto :goto_3

    :sswitch_5
    const-string v1, "Default"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_3

    :sswitch_6
    const-string v1, "Headset"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v6

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v1, -0x1

    :goto_3
    if-eqz v1, :cond_e

    if-eq v1, v4, :cond_d

    if-eq v1, v6, :cond_c

    if-eq v1, v8, :cond_c

    if-eq v1, v5, :cond_b

    if-eq v1, v7, :cond_a

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p0

    if-nez p0, :cond_5

    return v0

    :cond_5
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p0

    const/16 v1, 0x404

    if-eq p0, v1, :cond_9

    const/16 v1, 0x414

    if-eq p0, v1, :cond_8

    const/16 v1, 0x418

    if-eq p0, v1, :cond_9

    const/16 v1, 0x41c

    if-eq p0, v1, :cond_8

    const/16 v1, 0x428

    if-eq p0, v1, :cond_7

    const/16 v1, 0x43c

    if-eq p0, v1, :cond_8

    const/16 v1, 0x704

    if-eq p0, v1, :cond_6

    return v0

    :cond_6
    return v7

    :cond_7
    const/4 p0, 0x7

    return p0

    :cond_8
    return v6

    :cond_9
    return v8

    :cond_a
    return v7

    :cond_b
    return v6

    :cond_c
    return v8

    :cond_d
    return v5

    :cond_e
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d5fc59e -> :sswitch_6
        -0x40b391df -> :sswitch_5
        -0x28153a78 -> :sswitch_4
        -0x147f0821 -> :sswitch_3
        0x4f7d4af -> :sswitch_2
        0x6399a2c -> :sswitch_1
        0x77e10aa2 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getTypeFromProfile(IZ)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/16 v0, 0xb

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_3

    const/16 v0, 0x15

    if-eq p0, v0, :cond_2

    const/16 v0, 0x16

    if-ne p0, v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p0, 0x20000000

    return p0

    :cond_0
    const/high16 p0, -0x60000000

    return p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid profile "

    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/high16 p0, 0x8000000

    return p0

    :cond_3
    const p0, 0x20000002

    return p0

    :cond_4
    const/high16 p0, -0x7ffe0000

    return p0

    :cond_5
    const/16 p0, 0x80

    return p0

    :cond_6
    const/16 p0, 0x10

    return p0
.end method

.method public static scoAudioModeToString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string/jumbo v0, "SCO_MODE_("

    const-string v1, ")"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo p0, "SCO_MODE_VR"

    return-object p0

    :cond_1
    const-string/jumbo p0, "SCO_MODE_VIRTUAL_CALL"

    return-object p0

    :cond_2
    const-string/jumbo p0, "SCO_MODE_UNDEFINED"

    return-object p0
.end method


# virtual methods
.method public final broadcastScoConnectionState(I)V
    .locals 7

    const/4 v2, 0x2

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final declared-synchronized checkScoAudioState()V
    .locals 4

    const-string v0, "Exception while getting audio state of "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "AS.BtHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final getBluetoothHeadset()Z
    .locals 8

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, v1, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Lcom/android/server/audio/BtHelper$1;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, p0, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-eqz p0, :cond_1

    const/16 v2, 0xbb8

    :cond_1
    move v7, v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v2, 0x9

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return p0
.end method

.method public final declared-synchronized getCodec(Landroid/bluetooth/BluetoothDevice;I)Landroid/util/Pair;
    .locals 8

    const-string/jumbo v0, "getCodec, null A2DP codec status for device: "

    const-string v1, "Exception while getting status of "

    const-string/jumbo v2, "getCodec, null LE codec status for device: "

    const-string v3, "Exception while getting status of "

    monitor-enter p0

    :try_start_0
    iget v4, p0, Lcom/android/server/audio/BtHelper;->mIsBtOffloadEnabled:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    new-instance p1, Landroid/util/Pair;

    const/high16 p2, 0x200000

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eq p2, v4, :cond_8

    const/16 v0, 0x16

    if-eq p2, v0, :cond_3

    const/16 p1, 0x1a

    if-eq p2, p1, :cond_1

    :try_start_1
    new-instance p1, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mLeAudioBroadcastCodec:I

    const/high16 p2, 0x2b000000

    if-eq p1, p2, :cond_2

    goto :goto_0

    :cond_2
    move v5, v7

    :goto_0
    iput p2, p0, Lcom/android/server/audio/BtHelper;->mLeAudioBroadcastCodec:I

    new-instance p1, Landroid/util/Pair;

    iget p2, p0, Lcom/android/server/audio/BtHelper;->mLeAudioBroadcastCodec:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_3
    :try_start_3
    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    if-eqz p2, :cond_4

    move p2, v5

    goto :goto_1

    :cond_4
    move p2, v7

    :goto_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    if-nez v0, :cond_5

    iput-object v6, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    new-instance p1, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_5
    :try_start_4
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothLeAudio;->getGroupId(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothLeAudio;->getCodecStatus(I)Landroid/bluetooth/BluetoothLeAudioCodecStatus;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_6
    const-string v1, "AS.BtHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v6

    :goto_2
    if-nez v0, :cond_6

    const-string v0, "AS.BtHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v6, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    new-instance p1, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_6
    :try_start_7
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->getOutputCodecConfig()Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    move-result-object p1

    if-nez p1, :cond_7

    iput-object v6, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    new-instance p1, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_7
    :try_start_8
    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v5

    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getCodecType()I

    move-result p1

    invoke-static {p1}, Landroid/media/AudioSystem;->bluetoothLeCodecToAudioFormat(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_9
    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mA2dpCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    if-eqz p2, :cond_9

    move p2, v5

    goto :goto_3

    :cond_9
    move p2, v7

    :goto_3
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-nez v2, :cond_a

    iput-object v6, p0, Lcom/android/server/audio/BtHelper;->mA2dpCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    new-instance p1, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_a
    :try_start_a
    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v2

    :try_start_b
    const-string v3, "AS.BtHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v6

    :goto_4
    if-nez v1, :cond_b

    const-string v1, "AS.BtHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v6, p0, Lcom/android/server/audio/BtHelper;->mA2dpCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    new-instance p1, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_b
    :try_start_c
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p1

    if-nez p1, :cond_c

    iput-object v6, p0, Lcom/android/server/audio/BtHelper;->mA2dpCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    new-instance p1, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_c
    :try_start_d
    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mA2dpCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothCodecConfig;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v5

    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mA2dpCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result p1

    invoke-static {p1}, Landroid/media/AudioSystem;->bluetoothA2dpCodecToAudioFormat(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_5
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    throw p1
.end method

.method public final declared-synchronized getCodecWithFallback(Landroid/bluetooth/BluetoothDevice;IZLjava/lang/String;)Landroid/util/Pair;
    .locals 3

    const-string/jumbo v0, "getCodec DEFAULT from "

    monitor-enter p0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    if-eqz p3, :cond_0

    const/16 p3, 0x16

    if-eq p2, p3, :cond_1

    const/16 p3, 0x1a

    if-eq p2, p3, :cond_1

    :cond_0
    :try_start_0
    new-instance p1, Landroid/util/Pair;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/BtHelper;->getCodec(Landroid/bluetooth/BluetoothDevice;I)Landroid/util/Pair;

    move-result-object p1

    iget-object p3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-nez p3, :cond_4

    sget-object p1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance p3, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " fallback to "

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p2, v1, :cond_2

    const-string/jumbo p4, "SBC"

    goto :goto_0

    :cond_2
    const-string p4, "LC3"

    :goto_0
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    new-instance p1, Landroid/util/Pair;

    if-ne p2, v1, :cond_3

    const/high16 p2, 0x1f000000

    goto :goto_1

    :cond_3
    const/high16 p2, 0x2b000000

    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_4
    monitor-exit p0

    return-object p1

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 12

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v4, 0x0

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->btHeadsetDeviceToAudioDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/media/AudioDeviceAttributes;

    move-result-object v5

    invoke-virtual {v3, v5, v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->handleDeviceConnection(Landroid/media/AudioDeviceAttributes;ZLandroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/server/audio/BtHelper;->mResolvedScoAudioDevices:Ljava/util/Map;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioDeviceAttributes;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-virtual {v3, v5, v4, p1}, Lcom/android/server/audio/AudioDeviceBroker;->handleDeviceConnection(Landroid/media/AudioDeviceAttributes;ZLandroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    move-object v11, v6

    move v6, v5

    move-object v5, v11

    goto :goto_1

    :cond_3
    const/16 v5, 0x40

    const/16 v7, 0x10

    const/16 v8, 0x20

    filled-new-array {v7, v8, v5}, [I

    move-result-object v5

    move v7, v4

    move v8, v7

    :goto_0
    const/4 v9, 0x3

    if-ge v8, v9, :cond_4

    aget v9, v5, v8

    new-instance v10, Landroid/media/AudioDeviceAttributes;

    invoke-direct {v10, v9, v1, v2}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v10, v4, p1}, Lcom/android/server/audio/AudioDeviceBroker;->handleDeviceConnection(Landroid/media/AudioDeviceAttributes;ZLandroid/bluetooth/BluetoothDevice;)Z

    move-result v9

    or-int/2addr v7, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    move-object v5, v6

    move v6, v7

    :goto_1
    new-instance v7, Landroid/media/AudioDeviceAttributes;

    const v8, -0x7ffffff8

    invoke-direct {v7, v8, v1, v2}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7, p2, p1}, Lcom/android/server/audio/AudioDeviceBroker;->handleDeviceConnection(Landroid/media/AudioDeviceAttributes;ZLandroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    move v0, v4

    :goto_2
    if-eqz v0, :cond_7

    if-eqz p2, :cond_6

    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mResolvedScoAudioDevices:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    :cond_6
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mResolvedScoAudioDevices:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return v0
.end method

.method public final declared-synchronized isBluetoothScoOn()Z
    .locals 5

    const-string v0, "Exception while getting audio state of "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "AS.BtHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    :cond_2
    :goto_0
    monitor-exit p0

    return v2

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final declared-synchronized isBluetoothScoSupported()Z
    .locals 5

    const-string/jumbo v0, "setBluetoothScoOn() wrong sco state:"

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v3, 0x3

    const/4 v4, 0x2

    filled-new-array {v4, v2, v3}, [I

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    monitor-exit p0

    return v3

    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4, v1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/16 v4, 0xb

    if-eq v1, v4, :cond_1

    const/16 v4, 0xc

    if-eq v1, v4, :cond_1

    const-string v2, "AS.BtHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mScoAudioState:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v3

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return v2

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized isProfilePoxyConnected(I)Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/16 v2, 0x15

    if-eq p1, v2, :cond_2

    const/16 v2, 0x16

    if-eq p1, v2, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    move v0, v1

    :cond_3
    monitor-exit p0

    return v0

    :cond_4
    :try_start_2
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_5

    move v0, v1

    :cond_5
    monitor-exit p0

    return v0

    :cond_6
    :try_start_3
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_7

    move v0, v1

    :cond_7
    monitor-exit p0

    return v0

    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onBtProfileConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 12

    const-string/jumbo v0, "onBtProfileConnected: Not a valid profile to connect "

    const-string/jumbo v1, "onBtProfileConnected null LE codec status for groupId: "

    const-string v2, "Exception while getting status of "

    const-string/jumbo v3, "onBtProfileConnected: Null BluetoothAdapter when connecting profile: "

    const-string/jumbo v4, "onBtProfileConnected: null proxy for profile: "

    const-string v5, "BT profile "

    monitor-enter p0

    :try_start_0
    sget-object v6, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v7, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " connected to proxy "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v5, "AS.BtHelper"

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v5}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {v6, v7}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    if-nez p2, :cond_0

    const-string p2, "AS.BtHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    const/4 v4, 0x1

    if-eq p1, v4, :cond_13

    const/4 v5, 0x0

    const/16 v6, 0x16

    const/16 v7, 0x15

    const/4 v9, 0x2

    if-eq p1, v9, :cond_8

    const/16 v10, 0xb

    const/16 v11, 0x1a

    if-eq p1, v10, :cond_6

    if-eq p1, v11, :cond_6

    if-eq p1, v7, :cond_4

    if-eq p1, v6, :cond_1

    :try_start_1
    const-string p2, "AS.BtHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothLeAudio;

    iget-object v10, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    if-eqz v0, :cond_3

    iget-object v10, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCallback:Lcom/android/server/audio/BtHelper$MyLeAudioCallback;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v10, :cond_3

    :try_start_4
    invoke-virtual {v0, v10}, Landroid/bluetooth/BluetoothLeAudio;->unregisterCallback(Landroid/bluetooth/BluetoothLeAudio$Callback;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_5
    const-string v10, "AS.BtHelper"

    const-string v11, "Exception while unregistering callback for LE audio"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    check-cast p2, Landroid/bluetooth/BluetoothLeAudio;

    iput-object p2, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    new-instance v0, Lcom/android/server/audio/BtHelper$MyLeAudioCallback;

    invoke-direct {v0, p0}, Lcom/android/server/audio/BtHelper$MyLeAudioCallback;-><init>(Lcom/android/server/audio/BtHelper;)V

    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCallback:Lcom/android/server/audio/BtHelper$MyLeAudioCallback;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v10, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCallback:Lcom/android/server/audio/BtHelper$MyLeAudioCallback;

    invoke-virtual {p2, v0, v10}, Landroid/bluetooth/BluetoothLeAudio;->registerCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeAudio$Callback;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p2

    :try_start_7
    iput-object v5, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCallback:Lcom/android/server/audio/BtHelper$MyLeAudioCallback;

    const-string v0, "AS.BtHelper"

    const-string v10, "Exception while registering callback for LE audio"

    invoke-static {v0, v10, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_4
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothHearingAid;

    iget-object v10, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    :try_start_8
    check-cast p2, Landroid/bluetooth/BluetoothHearingAid;

    iput-object p2, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    goto :goto_1

    :cond_6
    if-ne p1, v11, :cond_7

    check-cast p2, Landroid/bluetooth/BluetoothLeBroadcast;

    iput-object p2, p0, Lcom/android/server/audio/BtHelper;->mLeBroadcast:Landroid/bluetooth/BluetoothLeBroadcast;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_7
    monitor-exit p0

    return-void

    :cond_8
    :try_start_9
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothA2dp;

    iget-object v10, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    :try_start_a
    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    iput-object p2, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    :goto_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    if-nez p2, :cond_a

    const-string p2, "AS.BtHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-void

    :cond_a
    :try_start_b
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    goto/16 :goto_4

    :cond_b
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    if-eq p1, v9, :cond_10

    if-eq p1, v7, :cond_f

    if-eq p1, v6, :cond_c

    const-string p1, "AS.BtHelper"

    const-string p2, "Invalid profile! onBtProfileConnected"

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_c
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothLeAudio;->getGroupId(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothLeAudio;->getCodecStatus(I)Landroid/bluetooth/BluetoothLeAudioCodecStatus;

    move-result-object v5
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_d
    const-string v3, "AS.BtHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-nez v5, :cond_d

    const-string v0, "AS.BtHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", device: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_d
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->getOutputCodecSelectableCapabilities()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-static {v8, v4}, Landroid/media/BluetoothProfileConnectionInfo;->createLeAudioInfo(ZZ)Landroid/media/BluetoothProfileConnectionInfo;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/BtHelper;->postBluetoothActiveDevice(Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;)V

    :cond_e
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->getInputCodecSelectableCapabilities()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_11

    invoke-static {v8, v8}, Landroid/media/BluetoothProfileConnectionInfo;->createLeAudioInfo(ZZ)Landroid/media/BluetoothProfileConnectionInfo;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/BtHelper;->postBluetoothActiveDevice(Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;)V

    goto :goto_3

    :cond_f
    invoke-static {v8}, Landroid/media/BluetoothProfileConnectionInfo;->createHearingAidInfo(Z)Landroid/media/BluetoothProfileConnectionInfo;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/BtHelper;->postBluetoothActiveDevice(Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;)V

    goto :goto_3

    :cond_10
    const/4 p1, -0x1

    invoke-static {v8, p1}, Landroid/media/BluetoothProfileConnectionInfo;->createA2dpInfo(ZI)Landroid/media/BluetoothProfileConnectionInfo;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/BtHelper;->postBluetoothActiveDevice(Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_11
    :goto_3
    monitor-exit p0

    return-void

    :cond_12
    :goto_4
    monitor-exit p0

    return-void

    :cond_13
    :try_start_e
    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {p0, p2}, Lcom/android/server/audio/BtHelper;->onHeadsetProfileConnected(Landroid/bluetooth/BluetoothHeadset;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    monitor-exit p0

    return-void

    :goto_5
    :try_start_f
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onBtProfileDisconnected(I)V
    .locals 6

    const-string/jumbo v0, "onBtProfileDisconnected: Not a valid profile to disconnect "

    const-string/jumbo v1, "onBtProfileDisconnected: Not a profile handled by BtHelper "

    const-string v2, "BT profile "

    monitor-enter p0

    :try_start_0
    sget-object v3, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v4, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " disconnected"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "AS.BtHelper"

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {v3, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_7

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    const/16 v2, 0x1a

    const/16 v4, 0xb

    if-eq p1, v4, :cond_4

    if-eq p1, v2, :cond_3

    const/16 v1, 0x15

    if-eq p1, v1, :cond_2

    const/16 v1, 0x16

    if-eq p1, v1, :cond_0

    const-string v1, "AS.BtHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCallback:Lcom/android/server/audio/BtHelper$MyLeAudioCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothLeAudio;->unregisterCallback(Landroid/bluetooth/BluetoothLeAudio$Callback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "AS.BtHelper"

    const-string v1, "Exception while unregistering callback for LE audio"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    iput-object v3, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    iput-object v3, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCallback:Lcom/android/server/audio/BtHelper$MyLeAudioCallback;

    iput-object v3, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    goto :goto_1

    :cond_2
    iput-object v3, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    goto :goto_1

    :cond_3
    iput v5, p0, Lcom/android/server/audio/BtHelper;->mLeAudioBroadcastCodec:I

    goto :goto_1

    :cond_4
    if-ne p1, v2, :cond_5

    iput-object v3, p0, Lcom/android/server/audio/BtHelper;->mLeBroadcast:Landroid/bluetooth/BluetoothLeBroadcast;

    goto :goto_1

    :cond_5
    if-ne p1, v4, :cond_8

    const-string v0, "AS.BtHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    iput-object v3, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iput-object v3, p0, Lcom/android/server/audio/BtHelper;->mA2dpCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    goto :goto_1

    :cond_7
    iput-object v3, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onHeadsetProfileConnected(Landroid/bluetooth/BluetoothHeadset;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/audio/BtHelper;->onSetBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_1
    const-string p1, "AS.BtHelper"

    const-string/jumbo v1, "onHeadsetProfileConnected: Null BluetoothAdapter"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->checkScoAudioState()V

    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x4

    if-eq p1, v0, :cond_3

    if-eq p1, v1, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    const/4 v4, 0x2

    if-eq p1, v0, :cond_7

    if-eq p1, v1, :cond_4

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_5

    move p1, v3

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall()Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_b

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    if-eqz v0, :cond_9

    if-eq v0, v4, :cond_8

    move p1, v3

    goto :goto_2

    :cond_8
    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    goto :goto_2

    :cond_9
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall()Z

    move-result p1

    :goto_2
    if-eqz p1, :cond_b

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_4

    :cond_a
    :goto_3
    move p1, v3

    :cond_b
    :goto_4
    if-nez p1, :cond_c

    iput v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    invoke-virtual {p0, v3}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_c
    monitor-exit p0

    return-void

    :goto_5
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onScoAudioStateChanged(I)V
    .locals 8

    const-string/jumbo v0, "onScoAudioStateChanged  broadcasting state: "

    const-string v1, "BtHelper.onScoAudioStateChanged, state: "

    const-string v2, "BtHelper.onScoAudioStateChanged, state: "

    const-string/jumbo v3, "onScoAudioStateChanged  state: "

    monitor-enter p0

    :try_start_0
    const-string v4, "AS.BtHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mScoAudioState: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq v1, v6, :cond_0

    if-eq v1, v5, :cond_0

    iput v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoRequested()Z

    move-result v1

    if-eqz v1, :cond_1

    move v3, v7

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v7}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(Ljava/lang/String;Z)V

    move p1, v7

    goto :goto_5

    :pswitch_1
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq p1, v6, :cond_2

    if-eq p1, v5, :cond_2

    iput v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    :cond_2
    :goto_1
    const/4 p1, -0x1

    goto :goto_5

    :pswitch_2
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->muteRingtoneDuringVibration()V

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v3}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(Ljava/lang/String;Z)V

    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-ne p1, v7, :cond_5

    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_5

    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    if-eqz v2, :cond_4

    if-eq v2, v4, :cond_3

    move p1, v3

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall()Z

    move-result p1

    :goto_2
    if-eqz p1, :cond_5

    iput v6, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    move p1, v4

    :goto_3
    move v3, v7

    goto :goto_5

    :cond_5
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq p1, v4, :cond_6

    goto :goto_4

    :cond_6
    move v7, v3

    :goto_4
    iput v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    move p1, v3

    goto :goto_3

    :goto_5
    if-eqz v3, :cond_7

    const-string v1, "AS.BtHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/server/audio/BtHelper;->sendStickyBroadcastToAll(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    monitor-exit p0

    return-void

    :goto_6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSetBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onSetBtScoActiveDevice: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v2, "(null)"

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceSwitch: false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.BtHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object v4, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    const-string/jumbo v3, "setBtScoActiveDevice muteRingtoneDuringVibration"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/android/server/audio/AudioDeviceBroker;->muteRingtoneDuringVibration()V

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/server/audio/BtHelper;->handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onSetBtScoActiveDevice() failed to remove previous device "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_4

    move-object v6, v2

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v5, 0x1

    invoke-virtual {p0, p1, v5}, Lcom/android/server/audio/BtHelper;->handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v5

    if-nez v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onSetBtScoActiveDevice() failed to add new device "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :cond_7
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->resetBluetoothSco()V

    :cond_8
    if-nez v0, :cond_9

    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_9

    invoke-virtual {v4}, Lcom/android/server/audio/AudioDeviceBroker;->resetBtScoOnByApp()V

    :cond_9
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p0, :cond_a

    sget-boolean p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sSplitSoundEnabled:Z

    if-eqz p0, :cond_a

    sput-boolean v3, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sSplitSoundEnabled:Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "l_smart_view_split_sound_enable="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean p1, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sSplitSoundEnabled:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/16 v5, 0xc

    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    :cond_a
    :goto_4
    return-void
.end method

.method public final declared-synchronized onSystemReady()V
    .locals 4

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I

    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->resetBluetoothSco()V

    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->getBluetoothHeadset()Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/server/audio/BtHelper;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Lcom/android/server/audio/BtHelper$1;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Lcom/android/server/audio/BtHelper$1;

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Lcom/android/server/audio/BtHelper$1;

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Lcom/android/server/audio/BtHelper$1;

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Lcom/android/server/audio/BtHelper$1;

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const-class v0, Lcom/android/server/vibrator/VibratorManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibratorManagerInternal;

    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mVibratorManagerInternal:Lcom/android/server/vibrator/VibratorManagerInternal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final postBluetoothActiveDevice(Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;)V
    .locals 3

    new-instance v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;

    const/4 v1, 0x0

    const-string/jumbo v2, "mBluetoothProfileServiceListener"

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;Ljava/lang/String;)V

    const/4 p2, 0x2

    invoke-static {v0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->createBtDeviceInfo(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;I)Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    const/16 v0, 0x16

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    iget-object p2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->isLeAudioDualMode()Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0xacd

    invoke-virtual {p0, p2, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsg(IILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 p2, 0x7

    invoke-virtual {p0, p2, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsg(IILjava/lang/Object;)V

    return-void
.end method

.method public final declared-synchronized requestScoState(II)Z
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    const-string/jumbo v3, "requestScoState: failed to disconnect in state "

    const-string/jumbo v4, "requestScoState: getBluetoothHeadset failed during disconnection, mScoAudioMode="

    const-string/jumbo v5, "requestScoState: failed to connect in state "

    const-string/jumbo v6, "requestScoState: connect to "

    const-string/jumbo v7, "requestScoState: no active device while connecting, mScoAudioMode="

    const-string/jumbo v8, "requestScoState: getBluetoothHeadset failed during connection, mScoAudioMode="

    const-string/jumbo v9, "bluetooth_sco_channel_"

    monitor-enter p0

    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/audio/BtHelper;->checkScoAudioState()V

    const/4 v10, 0x2

    const/16 v12, 0xc

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/4 v11, 0x1

    if-ne v0, v12, :cond_e

    iget v0, v1, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq v0, v15, :cond_0

    invoke-virtual {v1, v10}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    :goto_0
    iget v0, v1, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eqz v0, :cond_4

    if-eq v0, v10, :cond_3

    if-eq v0, v15, :cond_17

    if-eq v0, v14, :cond_2

    if-eq v0, v13, :cond_1

    const-string v0, "AS.BtHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", scoAudioMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iput v11, v1, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto/16 :goto_4

    :cond_2
    iput v15, v1, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    invoke-virtual {v1, v11}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    goto/16 :goto_4

    :cond_3
    invoke-virtual {v1, v11}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    goto/16 :goto_4

    :cond_4
    iput v2, v1, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    const/4 v0, -0x1

    if-ne v2, v0, :cond_6

    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    iget-object v0, v1, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    if-gt v0, v10, :cond_5

    if-gez v0, :cond_6

    :cond_5
    iput v3, v1, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    :cond_6
    iget-object v0, v1, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_8

    invoke-virtual {v1}, Lcom/android/server/audio/BtHelper;->getBluetoothHeadset()Z

    move-result v0

    if-eqz v0, :cond_7

    iput v11, v1, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto/16 :goto_4

    :cond_7
    const-string v0, "AS.BtHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :cond_8
    :try_start_2
    iget-object v2, v1, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_9

    const-string v0, "AS.BtHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :cond_9
    :try_start_3
    iget v3, v1, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    if-eqz v3, :cond_b

    if-eq v3, v10, :cond_a

    const/4 v0, 0x0

    goto :goto_1

    :cond_a
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_1

    :cond_b
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_c

    iput v15, v1, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto/16 :goto_4

    :cond_c
    const-string v0, "AS.BtHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_d

    const-string v3, "(null)"

    goto :goto_2

    :cond_d
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed, mScoAudioMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v0

    :cond_e
    const/16 v5, 0xa

    if-ne v0, v5, :cond_17

    :try_start_4
    iget v0, v1, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq v0, v11, :cond_16

    if-eq v0, v15, :cond_f

    const-string v0, "AS.BtHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", scoAudioMode="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v0

    :cond_f
    :try_start_5
    iget-object v0, v1, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_11

    invoke-virtual {v1}, Lcom/android/server/audio/BtHelper;->getBluetoothHeadset()Z

    move-result v0

    if-eqz v0, :cond_10

    iput v14, v1, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_4

    :cond_10
    const-string v0, "AS.BtHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    invoke-virtual {v1, v0}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v0

    :cond_11
    :try_start_6
    iget-object v2, v1, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_12

    const/4 v3, 0x0

    iput v3, v1, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    invoke-virtual {v1, v3}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    goto :goto_4

    :cond_12
    iget v3, v1, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    if-eqz v3, :cond_14

    if-eq v3, v10, :cond_13

    const/4 v0, 0x0

    goto :goto_3

    :cond_13
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_3

    :cond_14
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall()Z

    move-result v0

    :goto_3
    if-eqz v0, :cond_15

    iput v13, v1, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_4

    :cond_15
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    invoke-virtual {v1, v0}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    goto :goto_4

    :cond_16
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    invoke-virtual {v1, v0}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_17
    :goto_4
    monitor-exit p0

    return v11

    :goto_5
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0
.end method

.method public final resetBluetoothSco()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    invoke-virtual {p0, v0}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->clearA2dpSuspended(Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->clearLeAudioSuspended(Z)V

    const-string/jumbo v1, "resetBluetoothSco"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(Ljava/lang/String;Z)V

    return-void
.end method

.method public final sendStickyBroadcastToAll(Landroid/content/Intent;)V
    .locals 3

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final declared-synchronized setAvrcpAbsoluteVolumeIndex(I)V
    .locals 3

    const-string/jumbo v0, "setAvrcpAbsoluteVolumeIndex index="

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-object p1, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    const-string/jumbo v1, "setAvrcpAbsoluteVolumeIndex: bailing due to null mA2dp"

    invoke-direct {v0, v1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "AS.BtHelper"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {p1, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    if-nez v1, :cond_1

    sget-object p1, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    const-string/jumbo v1, "setAvrcpAbsoluteVolumeIndex: abs vol not supported "

    invoke-direct {v0, v1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "AS.BtHelper"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {p1, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string v1, "AS.BtHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    invoke-direct {v1, p1}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->setAvrcpAbsoluteVolumeIndexExt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final setAvrcpAbsoluteVolumeIndexExt(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    iget-object v1, v0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iget-boolean v3, v0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mDualModeEnabled:Z

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object v3, v0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    iget-object v4, v0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v5, :cond_1

    iget-object v0, v0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "AS.BtHelper"

    const-string/jumbo v1, "No a2dp volume info"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    sget-object v0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->FINE_VOLUME_TABLE:[F

    aget v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Landroid/bluetooth/BluetoothA2dp;->setA2dpMediaVolume(Landroid/bluetooth/BluetoothDevice;FI)V

    return-void

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    sget-object v4, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->FINE_VOLUME_TABLE:[F

    aget v4, v4, v1

    invoke-virtual {v3, v0, v4, v1}, Landroid/bluetooth/BluetoothA2dp;->setA2dpMediaVolume(Landroid/bluetooth/BluetoothDevice;FI)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return-void

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final declared-synchronized setHearingAidVolume(IIZ)V
    .locals 3

    const-string/jumbo v0, "setHearingAidVolume: calling mHearingAid.setVolume idx="

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    if-nez v1, :cond_0

    const-string p1, "AS.BtHelper"

    const-string/jumbo p2, "setHearingAidVolume: null mHearingAid"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    div-int/lit8 v1, p1, 0xa

    const/high16 v2, 0x8000000

    invoke-static {p2, v1, v2}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    move-result p2

    float-to-int p2, p2

    const/16 v1, -0x80

    if-ge p2, v1, :cond_1

    move p2, v1

    :cond_1
    const-string v1, "AS.BtHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " gain="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_2

    sget-object p3, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    new-instance v0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    invoke-direct {v0, p1, p2}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(II)V

    invoke-virtual {p3, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothHearingAid;->setVolume(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    const-string p2, "AS.BtHelper"

    const-string p3, "Exception while setting hearing aid volume"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final declared-synchronized setLeAudioVolume(III)V
    .locals 8

    const-string/jumbo v0, "setLeAudioVolume: calling mLeAudio.setVolume idx="

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    if-nez v1, :cond_0

    const-string p1, "AS.BtHelper"

    const-string/jumbo p2, "setLeAudioVolume: null mLeAudio"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    int-to-double v1, p1

    const-wide v3, 0x406fe00000000000L    # 255.0

    mul-double/2addr v1, v3

    int-to-double v3, p2

    div-double/2addr v1, v3

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    const-string v2, "AS.BtHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " volume="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    new-instance v2, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/16 v3, 0xa

    const/4 v7, 0x0

    move v5, p1

    move v6, p2

    move v4, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothLeAudio;->setVolume(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    :try_start_3
    const-string p2, "AS.BtHelper"

    const-string p3, "Exception while setting LE volume"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final declared-synchronized stopBluetoothSco(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    invoke-direct {v1, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    const/16 p1, 0xa

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/BtHelper;->requestScoState(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
