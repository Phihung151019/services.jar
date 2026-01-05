.class public final Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioServiceExt;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioServiceExt;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v3, "theme_touch_sound"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p1, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v3, "system_sound"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_0
    iget-object v0, p1, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v3, "hearing_musiccheck"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p1, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v3, "k2hd_effect"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BIKE_MODE:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v3, "isBikeMode"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_1
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v1, "headphone_monitoring"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v1, "volume_monitor"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_3
    iget-object p1, p1, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v0, "external_display_audio_output"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 11

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/android/server/audio/AudioServiceExt;->updateThemeSound(IZ)V

    :cond_0
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    iget-object p1, p1, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v1, "hearing_musiccheck"

    const/4 v2, -0x2

    invoke-static {p1, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    iget-object v1, v1, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v3, "k2hd_effect"

    invoke-static {v1, v3, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    iget v3, v2, Lcom/android/server/audio/AudioServiceExt;->mAdaptSoundEnabled:I

    if-eq v3, p1, :cond_1

    iput p1, v2, Lcom/android/server/audio/AudioServiceExt;->mAdaptSoundEnabled:I

    iget-object v1, v2, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/samsung/android/server/audio/utils/CoreFxUtils;->setAdaptSound(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    iget p1, v2, Lcom/android/server/audio/AudioServiceExt;->mUpscalerEnabled:I

    if-eq p1, v1, :cond_2

    iput v1, v2, Lcom/android/server/audio/AudioServiceExt;->mUpscalerEnabled:I

    invoke-static {v1}, Lcom/samsung/android/server/audio/utils/CoreFxUtils;->setUpScalerMode(I)V

    :cond_2
    :goto_0
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BIKE_MODE:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    iget-object v2, p1, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "isBikeMode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    iput-boolean v2, p1, Lcom/android/server/audio/AudioServiceExt;->mIsBikeMode:Z

    :cond_4
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    iget-object p1, p1, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "headphone_monitoring"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/android/server/audio/AudioServiceExt;->mKaraokeListenbackEnabled:I

    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    iget-object p1, p1, Lcom/android/server/audio/AudioServiceExt;->mService:Lcom/android/server/audio/AudioService;

    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    iget-object v2, p1, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v3, p1, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v0

    move v6, v5

    move v7, v6

    :cond_5
    :goto_2
    if-ge v7, v4, :cond_7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    invoke-virtual {v8}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->isActiveConfiguration()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v8, v8, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    invoke-virtual {v8}, Landroid/media/AudioRecordingConfiguration;->getClientUid()I

    move-result v8

    iget-object v9, p1, Lcom/android/server/audio/RecordingActivityMonitor;->mPackMan:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    array-length v9, v8

    if-lez v9, :cond_5

    iget-object v9, p1, Lcom/android/server/audio/RecordingActivityMonitor;->mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    aget-object v8, v8, v0

    const-string/jumbo v10, "karaoke_listenback_allow"

    invoke-virtual {v9, v8, v10}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->checkAppCategory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_7
    if-lez v5, :cond_8

    if-nez v6, :cond_8

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget p1, Lcom/android/server/audio/AudioServiceExt;->mKaraokeListenbackEnabled:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "l_effect_listenback_key;state="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    :try_start_1
    monitor-exit v2

    goto :goto_4

    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_9
    :goto_4
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    iget-object p1, p1, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "volume_monitor"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v2, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    iget v3, v2, Lcom/android/server/audio/AudioServiceExt;->mVolumeMonitorValue:I

    if-eq v3, p1, :cond_b

    iput p1, v2, Lcom/android/server/audio/AudioServiceExt;->mVolumeMonitorValue:I

    iget-object v2, v2, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/server/audio/VolumeMonitorService;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/VolumeMonitorService;

    move-result-object v2

    if-ne p1, v1, :cond_a

    move v0, v1

    :cond_a
    invoke-virtual {v2, v0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->setVolumeMonitorOnOff(Z)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/VolumeMonitorService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->resetByDataClear()V

    :cond_b
    return-void
.end method
