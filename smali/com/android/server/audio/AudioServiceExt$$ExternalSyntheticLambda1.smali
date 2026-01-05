.class public final synthetic Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget v0, p0, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const-string v0, "AS.AudioServiceExt"

    const-string/jumbo v2, "performSoftReset start"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v2, v0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "delete from audio_settings"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "delete from device_addr"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "delete from app_volume"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "delete from selectedpkg"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "resetTable error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "AudioService.DB"

    invoke-static {v0, v2, v3}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioServiceExt;->mAllSoundMute:I

    const-string/jumbo v2, "all_sound_off"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceExt;->setAllSoundMute()V

    const-string/jumbo v2, "master_mono"

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "volume_monitor"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput v0, p0, Lcom/android/server/audio/AudioServiceExt;->mVolumeMonitorValue:I

    iget-object v2, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/server/audio/VolumeMonitorService;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/VolumeMonitorService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/audio/VolumeMonitorService;->resetByDataClear()V

    :cond_0
    iput v0, p0, Lcom/android/server/audio/AudioServiceExt;->mAdaptSoundEnabled:I

    const-string/jumbo v2, "hearing_musiccheck"

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v2, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/audio/AudioServiceExt;->mAdaptSoundEnabled:I

    invoke-static {v2, v4}, Lcom/samsung/android/server/audio/utils/CoreFxUtils;->setAdaptSound(Landroid/content/Context;I)V

    iput v0, p0, Lcom/android/server/audio/AudioServiceExt;->mUpscalerEnabled:I

    const-string/jumbo v2, "k2hd_effect"

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget v2, p0, Lcom/android/server/audio/AudioServiceExt;->mUpscalerEnabled:I

    invoke-static {v2}, Lcom/samsung/android/server/audio/utils/CoreFxUtils;->setUpScalerMode(I)V

    const-string/jumbo v2, "sound_alive_effect"

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v2, "tube_amp_effect"

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v2, "adjust_media_volume_only"

    invoke-static {}, Lcom/samsung/android/server/audio/FactoryUtils;->isFactoryMode()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v2, p0, Lcom/android/server/audio/AudioServiceExt;->mService:Lcom/android/server/audio/AudioService;

    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mVolumeSteps:[I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v4, "sec_volume_steps"

    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    if-eqz v2, :cond_2

    sput v0, Lcom/android/server/audio/AudioServiceExt;->mKaraokeListenbackEnabled:I

    const-string/jumbo v2, "headphone_monitoring"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioServiceExt;->setNbQualityMode(I)V

    const-string/jumbo v2, "personalise_call_sound_soft"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/audio/AudioServiceExt;->mMainBalance:F

    iget-object v4, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v5, "master_balance"

    invoke-static {v4, v5, v2, v3}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    iget-object v4, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v5, "speaker_balance"

    invoke-static {v4, v5, v2, v3}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_VOIP_SOUND_LOUDER:Z

    if-eqz v2, :cond_3

    iput-boolean v0, p0, Lcom/android/server/audio/AudioServiceExt;->mVoipExtraVolume:Z

    iget-object v2, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v3, "voip_extra_volume"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_VOIP_ANTI_HOWLING:Z

    if-eqz v2, :cond_4

    iput-boolean v0, p0, Lcom/android/server/audio/AudioServiceExt;->mVoipAntiHowling:Z

    iget-object v2, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v3, "voip_anti_howling"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    const-string/jumbo v2, "multisound_state"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "multisound_app"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v2, "multisound_devicetype"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MIC_MODE_FOR_QUICK_PANEL_UI:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "call_mic_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "voip_call_mic_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mService:Lcom/android/server/audio/AudioService;

    const-string v1, "AS.AudioService.performSoftReset"

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_e

    const/4 v4, 0x6

    if-ne v2, v4, :cond_6

    goto/16 :goto_5

    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService;->getVssForStreamOrDefault(I)Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v10

    sget-object v5, Lcom/android/server/audio/AudioService;->sStreamVolumeAlias:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    const/4 v12, 0x3

    if-ne v5, v12, :cond_7

    if-eq v2, v12, :cond_7

    goto/16 :goto_5

    :cond_7
    monitor-enter v10

    move v13, v0

    :goto_2
    :try_start_1
    iget-object v5, v10, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v13, v5, :cond_d

    iget-object v5, v10, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    invoke-virtual {v5, v13}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    sget-object v5, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aget v5, v5, v2

    if-ne v2, v12, :cond_8

    const v6, 0x400008c

    and-int/2addr v6, v8

    if-eqz v6, :cond_8

    const/16 v5, 0x8

    :cond_8
    if-ne v2, v12, :cond_9

    const v6, 0x8000

    and-int/2addr v6, v8

    if-eqz v6, :cond_9

    const/16 v5, 0xf

    :cond_9
    iget-object v6, v10, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    mul-int/lit8 v5, v5, 0xa

    invoke-virtual {v6, v8, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->put(II)V

    invoke-virtual {v10, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    add-int/lit8 v5, v1, -0x1

    :goto_3
    if-ltz v5, :cond_c

    if-ne v5, v4, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {p0, v5}, Lcom/android/server/audio/AudioService;->getVssForStreamOrDefault(I)Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v6

    iget v7, v10, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v5, v7, :cond_b

    sget-object v7, Lcom/android/server/audio/AudioService;->sStreamVolumeAlias:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v5, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    iget v9, v10, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v7, v9, :cond_b

    invoke-virtual {p0, v5}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :cond_b
    :goto_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_c
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v9, 0x0

    const/16 v11, 0x1f4

    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_d
    monitor-exit v10

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :goto_6
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_e
    const-string p0, "AS.AudioServiceExt"

    const-string/jumbo v0, "performSoftReset end"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/server/audio/AudioServiceExt;

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    sget-boolean v0, Lcom/samsung/android/server/audio/utils/SoundAliveUtils;->sIsSoundAliveExist:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    goto :goto_8

    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v3, "com.sec.android.app.soundalive.compatibility.SAContentProvider"

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_10

    goto :goto_7

    :cond_10
    move v2, v1

    :goto_7
    sput-boolean v2, Lcom/samsung/android/server/audio/utils/SoundAliveUtils;->sIsSoundAliveExist:Z

    :goto_8
    if-nez v2, :cond_11

    goto :goto_9

    :cond_11
    const-string/jumbo v0, "reset concert hall from sound assistant data cleared"

    const-string v2, "AS.SoundAliveUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "content://com.sec.android.app.soundalive.compatibility.SAContentProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "CONCERT_HALL_EFFECT"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    move-object p0, v0

    const-string/jumbo v0, "resetConcertHall"

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
