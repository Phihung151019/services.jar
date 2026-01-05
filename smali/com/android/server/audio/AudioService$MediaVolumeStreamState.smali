.class public final Lcom/android/server/audio/AudioService$MediaVolumeStreamState;
.super Lcom/android/server/audio/AudioService$VolumeStreamState;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(ILcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;-><init>(ILcom/android/server/audio/AudioService;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final applyDeviceVolume_syncVSS(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPreventOverheatState:Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

    iget-boolean v1, v0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mState:Z

    if-eqz v1, :cond_0

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "l_volume_prevent_overheat_key;gain"

    invoke-static {v1}, Lcom/samsung/android/media/SemAudioSystem;->getPolicyParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    iput v1, v0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mLimitedVolumeForOverheat:F

    iget-object v1, v0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    iget v0, v0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mUid:I

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->setAppVolumeToNative(I)V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR:Z

    if-eqz v0, :cond_3

    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mExt:Lcom/android/server/audio/AudioServiceExt;

    iget-object v0, v0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/VolumeMonitorService;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndexDividedBy10(I)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-boolean p0, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    iput p1, v0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mBluetoothVolumeIndex:I

    iget-boolean v1, v0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mAvrcpAbsVolSupported:Z

    if-eq v1, p0, :cond_1

    iput-boolean p0, v0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mAvrcpAbsVolSupported:Z

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    monitor-enter v0

    :try_start_1
    iget-boolean v2, v0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z

    if-nez v2, :cond_2

    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, v0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    invoke-virtual {v2, p1}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->setBluetoothVolume(I)V

    if-eqz v1, :cond_3

    iget-object p1, v0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    invoke-virtual {p1, p0}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->setAbsoluteVolumeState(Z)V

    return-void

    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_3
    :goto_3
    return-void
.end method

.method public final setIndex(IILjava/lang/String;Z)Z
    .locals 3

    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_BLE_SET:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDualModeActive()Z

    move-result v0

    const-string/jumbo v1, "isBluetoothDualModeActive="

    const-string v2, "AS.AudioService"

    invoke-static {v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v0, "setA2dpDeviceVolume"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "onSetA2dpSinkConnectionState"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "enforceBluetoothSafeMediaVolume"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->updateIndividualA2dpVolumes(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mSoundDoseHelper:Lcom/android/server/audio/SoundDoseHelper;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/SoundDoseHelper;->getSafeDeviceMediaVolumeIndex(I)I

    move-result v0

    if-le p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mSoundDoseHelper:Lcom/android/server/audio/SoundDoseHelper;

    iget-object v1, v0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_0
    iput v2, v0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateForBlueTooth:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    const-string v2, " disable safe index  volIdx:"

    invoke-static {p1, p3, v2}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-boolean v1, v0, Lcom/android/server/audio/AudioService;->mMuteMediaByVibrateOrSilentMode:Z

    if-eqz v1, :cond_3

    iget v0, v0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    if-ne p2, v1, :cond_3

    sget-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    if-le p1, v0, :cond_3

    const-string/jumbo v0, "muteMediaStreamOfSpeaker"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/audio/AudioService;->mSavedSpeakerMediaIndex:I

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string/jumbo v2, "speaker_media_index"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->setIntValue(ILjava/lang/String;)V

    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method
