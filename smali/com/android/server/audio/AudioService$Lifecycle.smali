.class public final Lcom/android/server/audio/AudioService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mService:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 16

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/audio/AudioService$Lifecycle$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v10

    new-instance v6, Lcom/android/server/audio/DefaultAudioPolicyFacade;

    invoke-direct {v6, v10}, Lcom/android/server/audio/DefaultAudioPolicyFacade;-><init>(Ljava/util/concurrent/Executor;)V

    new-instance v0, Lcom/android/server/audio/AudioService;

    invoke-static {}, Lcom/android/server/audio/AudioSystemAdapter;->getDefaultAdapter()Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/audio/SystemServerAdapter;

    invoke-direct {v3, v1}, Lcom/android/server/audio/SystemServerAdapter;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/server/audio/SettingsAdapter;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, Lcom/android/server/audio/AudioService$AudioVolumeGroupHelper;

    invoke-direct {v5}, Lcom/android/server/audio/AudioVolumeGroupHelperBase;-><init>()V

    const-class v7, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager;

    invoke-static {v1}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v8

    const-class v9, Lcom/android/server/pm/PackageManagerLocal;

    invoke-static {v9}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageManagerLocal;

    invoke-interface {v9}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v9

    :try_start_0
    invoke-interface {v9}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v9}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V

    const-class v9, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/UserManagerInternal;

    const-class v12, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    invoke-static {v12}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    new-instance v12, Lcom/android/server/audio/AudioServerPermissionProvider;

    new-instance v13, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda17;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    new-instance v14, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda18;

    invoke-direct {v14, v9}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/pm/UserManagerInternal;)V

    invoke-direct {v12, v11, v13, v14}, Lcom/android/server/audio/AudioServerPermissionProvider;-><init>(Ljava/util/Collection;Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda17;Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda18;)V

    new-instance v9, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda19;

    const/4 v11, 0x0

    invoke-direct {v9, v11, v12, v6}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda19;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Lcom/android/server/audio/DefaultAudioPolicyFacade$$ExternalSyntheticLambda2;

    invoke-direct {v11, v9}, Lcom/android/server/audio/DefaultAudioPolicyFacade$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Runnable;)V

    iget-object v9, v6, Lcom/android/server/audio/DefaultAudioPolicyFacade;->mServiceHolder:Lcom/android/server/audio/ServiceHolder;

    iget-object v13, v9, Lcom/android/server/audio/ServiceHolder;->mOnStartTasks:Ljava/util/Set;

    check-cast v13, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {v13, v11}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->add(Ljava/lang/Object;)Z

    iget-object v13, v9, Lcom/android/server/audio/ServiceHolder;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/IInterface;

    if-eqz v13, :cond_0

    iget-object v9, v9, Lcom/android/server/audio/ServiceHolder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v14, Lcom/android/server/audio/ServiceHolder$$ExternalSyntheticLambda0;

    const/4 v15, 0x1

    invoke-direct {v14, v11, v13, v15}, Lcom/android/server/audio/ServiceHolder$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Landroid/os/IInterface;I)V

    invoke-interface {v9, v14}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v11, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v9, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v11, "package"

    invoke-virtual {v9, v11}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v11, Lcom/android/server/audio/AudioService$8;

    invoke-direct {v11, v10, v12}, Lcom/android/server/audio/AudioService$8;-><init>(Ljava/util/concurrent/Executor;Lcom/android/server/audio/AudioServerPermissionProvider;)V

    const/4 v13, 0x0

    invoke-virtual {v1, v11, v9, v13, v13}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-object v9, v12

    invoke-direct/range {v0 .. v10}, Lcom/android/server/audio/AudioService;-><init>(Landroid/content/Context;Lcom/android/server/audio/AudioSystemAdapter;Lcom/android/server/audio/SystemServerAdapter;Lcom/android/server/audio/SettingsAdapter;Lcom/android/server/audio/AudioService$AudioVolumeGroupHelper;Lcom/android/server/audio/DefaultAudioPolicyFacade;Landroid/app/AppOpsManager;Landroid/os/PermissionEnforcer;Lcom/android/server/audio/AudioServerPermissionProvider;Ljava/util/concurrent/Executor;)V

    move-object v1, v0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/audio/AudioService$Lifecycle;->mService:Lcom/android/server/audio/AudioService;

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v9, :cond_1

    :try_start_1
    invoke-interface {v9}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 9

    iget-object p0, p0, Lcom/android/server/audio/AudioService$Lifecycle;->mService:Lcom/android/server/audio/AudioService;

    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v2, 0x10

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void

    :cond_0
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_d

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v2, 0xad3

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x7530

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordEventChecker:Lcom/android/server/audio/AudioService$11;

    iput-object v0, p1, Lcom/android/server/audio/RecordingActivityMonitor;->mChecker:Lcom/android/server/audio/AudioService$11;

    :cond_1
    new-instance p1, Lcom/samsung/android/server/audio/AudioGameManager;

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/server/audio/AudioGameManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mAudioGameManager:Lcom/samsung/android/server/audio/AudioGameManager;

    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    sget-object v1, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->sInstance:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    if-nez v1, :cond_2

    new-instance v1, Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/audio/AudioSettingsHelper;)V

    sput-object v1, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->sInstance:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    :cond_2
    sget-object p1, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->sInstance:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundAppPolicyManager:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v0, "APP_LIST_VERSION"

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getIntValue(ILjava/lang/String;)I

    move-result p1

    new-instance v0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/audio/AudioService;I)V

    invoke-static {v0}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/server/audio/PackageListHelper;->sInstance:Lcom/samsung/android/server/audio/PackageListHelper;

    if-nez v0, :cond_3

    new-instance v0, Lcom/samsung/android/server/audio/PackageListHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/audio/PackageListHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/server/audio/PackageListHelper;->sInstance:Lcom/samsung/android/server/audio/PackageListHelper;

    :cond_3
    sget-object p1, Lcom/samsung/android/server/audio/PackageListHelper;->sInstance:Lcom/samsung/android/server/audio/PackageListHelper;

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mPackageListHelper:Lcom/samsung/android/server/audio/PackageListHelper;

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "PackageListHelper"

    const-string/jumbo v3, "initPackageList"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    :goto_0
    iget-object v3, p1, Lcom/samsung/android/server/audio/PackageListHelper;->mAllowedPackageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, p1, Lcom/samsung/android/server/audio/PackageListHelper;->mAllowedPackageList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/samsung/android/server/audio/utils/AudioUtils;->getUidForPackage(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_4

    sget-object v4, Lcom/samsung/android/server/audio/PackageListHelper;->sCategorizer:Lcom/samsung/android/server/audio/AppCategorizer;

    iget-object v5, p1, Lcom/samsung/android/server/audio/PackageListHelper;->mAllowedPackageList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Lcom/samsung/android/server/audio/AppCategorizer;->putPackage(ILjava/lang/String;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_FM_RADIO:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const-string/jumbo v0, "g_fmradio_enable=false"

    invoke-virtual {p1, v0}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    :cond_6
    const/4 p1, 0x2

    invoke-static {p1}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    move v4, v3

    :goto_1
    const/4 v5, 0x1

    if-ge v3, v2, :cond_8

    aget-object v6, v0, v3

    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    if-ne v6, v5, :cond_7

    const-string v4, "AS.AudioService"

    const-string/jumbo v6, "updateReceiverSupported RCV"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mReceiverSupported:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v2, "speaker"

    const-string v3, ""

    invoke-virtual {v0, p1, v3, v2, v5}, Lcom/android/server/audio/AudioDeviceBroker;->updateDeviceQuickConnection(ILjava/lang/String;Ljava/lang/String;Z)V

    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mExt:Lcom/android/server/audio/AudioServiceExt;

    iget-object p1, p1, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/server/audio/VolumeMonitorService;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/VolumeMonitorService;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    iput-object v0, p1, Lcom/samsung/android/server/audio/VolumeMonitorService;->mPlaybackActivityMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    :cond_9
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mExt:Lcom/android/server/audio/AudioServiceExt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_VOIP_SOUND_LOUDER:Z

    const-string/jumbo v0, "l_call_voip_extra_volume_enable="

    iget-object v2, p0, Lcom/android/server/audio/AudioServiceExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    if-eqz p1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/audio/AudioServiceExt;->mVoipExtraVolume:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    :cond_a
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_VOIP_ANTI_HOWLING:Z

    if-eqz p1, :cond_b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioServiceExt;->mVoipAntiHowling:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    :cond_b
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mCoverHelper:Lcom/samsung/android/server/audio/CoverHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v2, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/samsung/android/server/audio/CoverHelper;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.media.action.AUDIOCORE_LOGGING"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x4000000

    invoke-static {p1, v1, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    add-long v4, v3, v5

    const-wide/32 v6, 0x5265c00

    const/4 v3, 0x3

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/android/server/audio/AudioServiceExt;->mAdaptSoundEnabled:I

    invoke-static {p1, v0}, Lcom/samsung/android/server/audio/utils/CoreFxUtils;->setAdaptSound(Landroid/content/Context;I)V

    iget p1, p0, Lcom/android/server/audio/AudioServiceExt;->mUpscalerEnabled:I

    invoke-static {p1}, Lcom/samsung/android/server/audio/utils/CoreFxUtils;->setUpScalerMode(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioServiceExt;->setNbQualityMode(I)V

    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MIC_MODE_FOR_QUICK_PANEL_UI:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt;->mMicModeManager:Lcom/samsung/android/server/audio/MicModeManager;

    if-eqz p1, :cond_c

    iget-object v0, p1, Lcom/samsung/android/server/audio/MicModeManager;->mMicModeType:Lcom/samsung/android/server/audio/MicModeType;

    sget-object v1, Lcom/samsung/android/server/audio/MicModeManager;->mCr:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/audio/MicModeType;->restoreMicMode(Landroid/content/ContentResolver;)V

    const/16 v0, 0x80

    iget-boolean v1, p0, Lcom/android/server/audio/AudioServiceExt;->mVoipAntiHowling:Z

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/server/audio/MicModeManager;->updateState(IZ)V

    :cond_c
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOIP_LIVE_TRANSLATE:Z

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceExt;->restoreLiveTranslator()V

    :cond_d
    return-void
.end method

.method public final onStart()V
    .locals 2

    const-string/jumbo v0, "audio"

    iget-object v1, p0, Lcom/android/server/audio/AudioService$Lifecycle;->mService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
