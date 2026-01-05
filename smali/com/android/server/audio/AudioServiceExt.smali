.class public final Lcom/android/server/audio/AudioServiceExt;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static mKaraokeListenbackEnabled:I


# instance fields
.field public mAdaptSoundEnabled:I

.field public mAllSoundMute:I

.field public final mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

.field public final mBroadcastHandlerThread:Landroid/os/HandlerThread;

.field public mCallTranslationMode:Z

.field public final mContext:Landroid/content/Context;

.field public final mCoverHelper:Lcom/samsung/android/server/audio/CoverHelper;

.field public final mCr:Landroid/content/ContentResolver;

.field public mDesktopModeHelper:Lcom/samsung/android/server/audio/DesktopModeHelper;

.field public mDvfsHelper:Lcom/samsung/android/server/audio/DvfsHelper;

.field public mExtraVolume:Z

.field public mIsBikeMode:Z

.field public mIsPttCallVolumeEnabled:Z

.field public final mLiveTranslatorManager:Lcom/samsung/android/server/audio/LiveTranslatorManager;

.field public mMainBalance:F

.field public mMainMono:I

.field public final mMicModeManager:Lcom/samsung/android/server/audio/MicModeManager;

.field public mNbQualityMode:I

.field public final mOmcRingtoneManager:Lcom/samsung/android/server/audio/OmcRingtoneManager;

.field public mPhoneStateHelper:Lcom/samsung/android/server/audio/PhoneStateHelper;

.field public final mReceiver:Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;

.field public final mResetSettingsReceiver:Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;

.field public mScreenCall:Z

.field public final mService:Lcom/android/server/audio/AudioService;

.field public final mSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

.field public final mSfxHelper:Lcom/android/server/audio/SoundEffectsHelper;

.field public mUpscalerEnabled:I

.field public mVideoCallMonsterSoundMode:I

.field public mVideoCallVoiceEffectMode:I

.field public mVoiceCallMonsterSoundMode:I

.field public mVoiceRxControlMode:I

.field public mVoiceTxControlMode:I

.field public mVoipAntiHowling:Z

.field public mVoipExtraVolume:Z

.field public mVolumeMonitorValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioSystemAdapter;Lcom/samsung/android/server/audio/AudioSettingsHelper;Lcom/android/server/audio/SoundEffectsHelper;Lcom/samsung/android/server/audio/MicModeManager;Lcom/samsung/android/server/audio/LiveTranslatorManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioServiceExt;I)V

    iput-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mReceiver:Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;

    new-instance v0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioServiceExt;I)V

    iput-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mResetSettingsReceiver:Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioServiceExt;->mScreenCall:Z

    iput-boolean v0, p0, Lcom/android/server/audio/AudioServiceExt;->mCallTranslationMode:Z

    iput v0, p0, Lcom/android/server/audio/AudioServiceExt;->mVoiceTxControlMode:I

    iput v0, p0, Lcom/android/server/audio/AudioServiceExt;->mVoiceRxControlMode:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/audio/AudioServiceExt;->mVoiceCallMonsterSoundMode:I

    iput v1, p0, Lcom/android/server/audio/AudioServiceExt;->mVideoCallMonsterSoundMode:I

    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VIDEO_CALL_VOICE_DEFAULT_EFFECT:Z

    if-eqz v2, :cond_0

    const/16 v1, 0x64

    :cond_0
    iput v1, p0, Lcom/android/server/audio/AudioServiceExt;->mVideoCallVoiceEffectMode:I

    iput-boolean v0, p0, Lcom/android/server/audio/AudioServiceExt;->mVoipExtraVolume:Z

    iput-boolean v0, p0, Lcom/android/server/audio/AudioServiceExt;->mVoipAntiHowling:Z

    iput-boolean v0, p0, Lcom/android/server/audio/AudioServiceExt;->mExtraVolume:Z

    iput-boolean v0, p0, Lcom/android/server/audio/AudioServiceExt;->mIsPttCallVolumeEnabled:Z

    iput v0, p0, Lcom/android/server/audio/AudioServiceExt;->mVolumeMonitorValue:I

    iput-object p1, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/audio/AudioServiceExt;->mService:Lcom/android/server/audio/AudioService;

    iput-object p3, p0, Lcom/android/server/audio/AudioServiceExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    iput-object p4, p0, Lcom/android/server/audio/AudioServiceExt;->mSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    iput-object p5, p0, Lcom/android/server/audio/AudioServiceExt;->mSfxHelper:Lcom/android/server/audio/SoundEffectsHelper;

    iput-object p6, p0, Lcom/android/server/audio/AudioServiceExt;->mMicModeManager:Lcom/samsung/android/server/audio/MicModeManager;

    iput-object p7, p0, Lcom/android/server/audio/AudioServiceExt;->mLiveTranslatorManager:Lcom/samsung/android/server/audio/LiveTranslatorManager;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    new-instance p3, Landroid/os/HandlerThread;

    const-string p4, "AudioServiceExt Broadcast"

    invoke-direct {p3, p4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/server/audio/AudioServiceExt;->mBroadcastHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->start()V

    sget-object p3, Lcom/samsung/android/server/audio/OmcRingtoneManager;->sInstance:Lcom/samsung/android/server/audio/OmcRingtoneManager;

    if-nez p3, :cond_1

    new-instance p3, Lcom/samsung/android/server/audio/OmcRingtoneManager;

    invoke-direct {p3}, Lcom/samsung/android/server/audio/OmcRingtoneManager;-><init>()V

    sput-object p3, Lcom/samsung/android/server/audio/OmcRingtoneManager;->sInstance:Lcom/samsung/android/server/audio/OmcRingtoneManager;

    :cond_1
    sget-object p3, Lcom/samsung/android/server/audio/OmcRingtoneManager;->sInstance:Lcom/samsung/android/server/audio/OmcRingtoneManager;

    iput-object p3, p0, Lcom/android/server/audio/AudioServiceExt;->mOmcRingtoneManager:Lcom/samsung/android/server/audio/OmcRingtoneManager;

    invoke-static {}, Lcom/samsung/android/server/audio/CoverHelper;->getInstance()Lcom/samsung/android/server/audio/CoverHelper;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/audio/AudioServiceExt;->mCoverHelper:Lcom/samsung/android/server/audio/CoverHelper;

    const-string/jumbo p3, "personalise_call_sound_soft"

    invoke-static {p2, p3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lcom/android/server/audio/AudioServiceExt;->mNbQualityMode:I

    sget-boolean p3, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_VOIP_SOUND_LOUDER:Z

    const/4 p4, 0x1

    if-eqz p3, :cond_3

    const-string/jumbo p3, "voip_extra_volume"

    invoke-static {p2, p3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    if-eqz p3, :cond_2

    move p3, p4

    goto :goto_0

    :cond_2
    move p3, v0

    :goto_0
    iput-boolean p3, p0, Lcom/android/server/audio/AudioServiceExt;->mVoipExtraVolume:Z

    :cond_3
    sget-boolean p3, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_VOIP_ANTI_HOWLING:Z

    if-eqz p3, :cond_5

    const-string/jumbo p3, "voip_anti_howling"

    invoke-static {p2, p3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    if-eqz p3, :cond_4

    move p3, p4

    goto :goto_1

    :cond_4
    move p3, v0

    :goto_1
    iput-boolean p3, p0, Lcom/android/server/audio/AudioServiceExt;->mVoipAntiHowling:Z

    :cond_5
    const-string/jumbo p3, "hearing_musiccheck"

    const/4 p5, -0x2

    invoke-static {p2, p3, v0, p5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p3

    iput p3, p0, Lcom/android/server/audio/AudioServiceExt;->mAdaptSoundEnabled:I

    const-string/jumbo p3, "k2hd_effect"

    invoke-static {p2, p3, v0, p5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p3

    iput p3, p0, Lcom/android/server/audio/AudioServiceExt;->mUpscalerEnabled:I

    sget-boolean p3, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BIKE_MODE:Z

    if-eqz p3, :cond_7

    const-string/jumbo p3, "isBikeMode"

    invoke-static {p2, p3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    if-ne p3, p4, :cond_6

    move p3, p4

    goto :goto_2

    :cond_6
    move p3, v0

    :goto_2
    iput-boolean p3, p0, Lcom/android/server/audio/AudioServiceExt;->mIsBikeMode:Z

    :cond_7
    sget-boolean p3, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    if-eqz p3, :cond_8

    const-string/jumbo p3, "headphone_monitoring"

    invoke-static {p2, p3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    sput p3, Lcom/android/server/audio/AudioServiceExt;->mKaraokeListenbackEnabled:I

    :cond_8
    sget-boolean p3, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR:Z

    if-eqz p3, :cond_a

    const-string/jumbo p3, "volume_monitor"

    invoke-static {p2, p3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/android/server/audio/AudioServiceExt;->mVolumeMonitorValue:I

    invoke-static {p1}, Lcom/samsung/android/server/audio/VolumeMonitorService;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/VolumeMonitorService;

    move-result-object p1

    iget p0, p0, Lcom/android/server/audio/AudioServiceExt;->mVolumeMonitorValue:I

    if-ne p0, p4, :cond_9

    move v0, p4

    :cond_9
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->setVolumeMonitorOnOff(Z)V

    :cond_a
    return-void
.end method

.method public static getIntValueFromString(ILjava/lang/String;)I
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    const-string v0, "AS.AudioServiceExt"

    const-string/jumbo v1, "NumberFormatException"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p0
.end method


# virtual methods
.method public final restoreLiveTranslator()V
    .locals 5

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mLiveTranslatorManager:Lcom/samsung/android/server/audio/LiveTranslatorManager;

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mIsVoiceCapable:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v1, "voip_translator_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    sget-object v0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v3, "voip_translator_package"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "restoreVoipTranslator enabled = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "LiveTranslatorManager"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/audio/LiveTranslatorManager;->setVoipTranslator(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public final setAllSoundMute()V
    .locals 2

    iget v0, p0, Lcom/android/server/audio/AudioServiceExt;->mAllSoundMute:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "true"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "false"

    :goto_0
    const-string/jumbo v1, "l_all_sound_mute_enable="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/audio/AudioServiceExt;->mAllSoundMute:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "persist.audio.allsoundmute"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setNbQualityMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioServiceExt;->mNbQualityMode:I

    if-lez p1, :cond_0

    const-string/jumbo p0, "l_call_nb_quality_enable=true"

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo p0, "l_call_nb_quality_enable=false"

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method public final setSystemSettingForSoundAssistant(ILjava/lang/String;)V
    .locals 6

    const-string/jumbo v0, "sound_balance"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "mono_audio_db"

    if-nez v1, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "adjust_media_volume_only"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_1

    add-int/lit8 v0, p1, -0x32

    int-to-float v0, v0

    const/high16 v2, 0x42480000    # 50.0f

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v5, "master_balance"

    invoke-static {v2, v5, v0, v1}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "master_mono"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    invoke-static {v0, p2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->setIntValue(ILjava/lang/String;)V

    return-void

    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final updateCallGuardInfo(IIZ)V
    .locals 3

    const-string/jumbo v0, "callguard: mode("

    const-string v1, "), pid("

    const-string v2, "), skipSet("

    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioServiceExt"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    const-string/jumbo v1, "l_guard_call_mode"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object p1

    const-string/jumbo v0, "l_guard_call_mode_calling_pid"

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object p1

    const-string/jumbo p2, "l_guard_call_mode_skip"

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    return-void
.end method

.method public final updateThemeSound(IZ)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v1, "theme_touch_sound"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "system_sound"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceExt;->mSfxHelper:Lcom/android/server/audio/SoundEffectsHelper;

    if-eqz v1, :cond_7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    if-nez p0, :cond_0

    iget-object p0, v1, Lcom/android/server/audio/SoundEffectsHelper;->mThemeTouchSoundPath:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    iput-object v0, v1, Lcom/android/server/audio/SoundEffectsHelper;->mThemeTouchSoundPath:Ljava/lang/String;

    :goto_0
    move p0, v3

    goto :goto_1

    :cond_0
    iget-object p0, v1, Lcom/android/server/audio/SoundEffectsHelper;->mThemeTouchSoundPath:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    iput-object v2, v1, Lcom/android/server/audio/SoundEffectsHelper;->mThemeTouchSoundPath:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move p0, v7

    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iput-object p1, v1, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    const-string/jumbo v0, "Open_theme"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, v1, Lcom/android/server/audio/SoundEffectsHelper;->mPrevSystemSoundFromSoundTheme:Ljava/lang/String;

    :cond_2
    :goto_2
    move p1, v3

    goto :goto_3

    :cond_3
    iget-object p1, v1, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iput-object v2, v1, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/audio/SoundEffectsHelper;->mPrevSystemSoundFromSoundTheme:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move p1, v7

    :goto_3
    if-nez p2, :cond_5

    if-nez p0, :cond_5

    if-eqz p1, :cond_7

    :cond_5
    iput-boolean v3, v1, Lcom/android/server/audio/SoundEffectsHelper;->mUpdateSystemSound:Z

    iget-object p0, v1, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    if-nez p0, :cond_6

    const/4 v5, 0x0

    const/16 v6, 0x12c

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/SoundEffectsHelper;->sendMsg(IIILcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;I)V

    :cond_6
    iget-object p0, v1, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    invoke-virtual {p0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    if-nez p0, :cond_7

    const/4 v5, 0x0

    const/16 v6, 0x12c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/SoundEffectsHelper;->sendMsg(IIILcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;I)V

    :cond_7
    return-void
.end method
