.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/audio/AudioService;

    iput p2, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda20;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget-object v2, v0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/audio/AudioService;

    iget v0, v0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda20;->f$1:I

    const-string v3, "APP_LIST_VERSION"

    const v4, 0x1070010

    const-string/jumbo v5, "voip_live_translate_allow"

    const-string/jumbo v6, "SoundAppPolicyManager"

    const-wide/16 v7, 0x100

    const v9, 0x788659ac

    if-le v9, v0, :cond_0

    iget-object v0, v2, Lcom/android/server/audio/AudioService;->mSoundAppPolicyManager:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    iget-object v10, v0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string/jumbo v11, "setDefaultAllowList"

    invoke-static {v7, v8, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    const-string/jumbo v11, "SoundAppPolicy setDefaultWhiteList()"

    invoke-static {v6, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->resetAllowedListTable()V

    const-string/jumbo v11, "bt_game_latency_deny"

    const v12, 0x107000a

    invoke-virtual {v0, v12, v11}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->loadDefaultAllowedPackageList(ILjava/lang/String;)V

    const-string/jumbo v11, "delay_loss_audio_focus"

    const v12, 0x107000b

    invoke-virtual {v0, v12, v11}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->loadDefaultAllowedPackageList(ILjava/lang/String;)V

    const-string/jumbo v11, "karaoke_allow"

    const v12, 0x107000c

    invoke-virtual {v0, v12, v11}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->loadDefaultAllowedPackageList(ILjava/lang/String;)V

    const-string/jumbo v11, "karaoke_listenback_allow"

    const v12, 0x107000d

    invoke-virtual {v0, v12, v11}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->loadDefaultAllowedPackageList(ILjava/lang/String;)V

    const-string/jumbo v11, "media_button_deny"

    const v12, 0x107000e

    invoke-virtual {v0, v12, v11}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->loadDefaultAllowedPackageList(ILjava/lang/String;)V

    const-string/jumbo v11, "virtual_vibration_sound_allowance"

    const v12, 0x107000f

    invoke-virtual {v0, v12, v11}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->loadDefaultAllowedPackageList(ILjava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->loadDefaultAllowedPackageList(ILjava/lang/String;)V

    invoke-virtual {v10, v9, v3}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->setIntValue(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_0
    sget v0, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "SoundAppPolicy APP_LIST_VERSION ="

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v2, Lcom/android/server/audio/AudioService;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v3}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getIntValue(ILjava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AS.AudioService"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v2, Lcom/android/server/audio/AudioService;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getAppList()Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->setBtGameLatencyList(Ljava/util/Hashtable;)V

    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOIP_LIVE_TRANSLATE:Z

    if-eqz v0, :cond_7

    iget-object v0, v2, Lcom/android/server/audio/AudioService;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v9, "LIVE_TRANSLATE_ALLOW_LIST_VERSION"

    const/4 v11, -0x1

    invoke-virtual {v0, v11, v9}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getIntValue(ILjava/lang/String;)I

    move-result v0

    const-string v12, "CallPplicy LIVE_TRANSLATE_ALLOW_LIST_VERSION ="

    invoke-static {v0, v12, v3}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-eq v0, v11, :cond_5

    iget-object v3, v2, Lcom/android/server/audio/AudioService;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    iget-object v0, v3, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mCallPolicyAllowList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_1
    iget-object v11, v3, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v12, "call_policy_category_packages"

    const-string/jumbo v0, "_package"

    const-string/jumbo v13, "_category"

    filled-new-array {v0, v13}, [Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v3, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mCallPolicyAllowList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v14, Landroid/util/Pair;

    invoke-direct {v14, v0, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v14}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v12, v0

    goto :goto_2

    :cond_2
    :goto_1
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :goto_2
    if-eqz v11, :cond_3

    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v12, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v12
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :goto_4
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "initCallPolicyAllowListFromDb error "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "AudioService.DB"

    invoke-static {v0, v11, v12}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_4
    :goto_5
    iget-object v0, v3, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mCallPolicyAllowList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    iget-object v0, v2, Lcom/android/server/audio/AudioService;->mSoundAppPolicyManager:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    iget-object v2, v0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string/jumbo v3, "setDefaultCallPolicyAllowList"

    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_6
    const-string/jumbo v3, "setDefaultCallPolicyAllowList()"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->resetCallPolicyTable()V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v6, v10

    :goto_6
    if-ge v6, v4, :cond_6

    aget-object v7, v3, v6

    invoke-virtual {v2, v7, v5}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putCallPolicyAllowList(Ljava/lang/String;Ljava/lang/String;)V

    add-int/2addr v6, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2, v10, v9}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->setIntValue(ILjava/lang/String;)V

    iput v10, v0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mLiveTranslateAllowListVersion:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_7

    :catchall_3
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_7
    :goto_7
    return-void
.end method
