.class public final Lcom/android/server/ibs/IntelligentBatterySaverService;
.super Landroid/os/IIntelligentBatterySaverService$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static mIBSEnable:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public final mIBSDexoptManager:Lcom/android/server/ibs/IntelligentBatterySaverDexoptManager;

.field public final mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

.field public final mIBSGoogleAppPolicy:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

.field public final mIBSLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

.field public final mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

.field public final mIBSScpmManager:Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

.field public final mServiceHandler:Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;

.field public final mSleepModeLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

.field public final mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    invoke-direct {p0}, Landroid/os/IIntelligentBatterySaverService$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "sys.config.ibs.enable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSEnable:Z

    new-instance v3, Landroid/os/HandlerThread;

    const-string v0, "IntelligentBatterySaverService"

    const/4 v7, 0x1

    invoke-direct {v3, v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    sget-boolean v0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSEnable:Z

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mServiceHandler:Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;

    const-class v1, Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->sInstance:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-boolean v10, v2, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIsUsed:Z

    new-instance v4, Landroid/util/LocalLog;

    const/16 v5, 0xbb8

    invoke-direct {v4, v5}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v4, v2, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIBSLog:Landroid/util/LocalLog;

    sput-object v2, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->sInstance:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_3

    :cond_0
    :goto_0
    sget-object v4, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->sInstance:Lcom/android/server/ibs/IntelligentBatterySaverLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iput-object v4, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    new-instance v5, Lcom/android/server/ibs/IntelligentBatterySaverSurvey;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v5, Lcom/android/server/ibs/IntelligentBatterySaverSurvey;->mBigdataEnable:Z

    iput-object p1, v5, Lcom/android/server/ibs/IntelligentBatterySaverSurvey;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/ibs/IntelligentBatterySaverGather;

    invoke-direct {v6, p1, p0}, Lcom/android/server/ibs/IntelligentBatterySaverGather;-><init>(Landroid/content/Context;Lcom/android/server/ibs/IntelligentBatterySaverService;)V

    new-instance v11, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, v11}, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;)V

    iput-object v1, v11, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mRunnable:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda0;

    iput-object p1, v11, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mContext:Landroid/content/Context;

    iput-object v0, v11, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;

    iput-object p0, v11, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mIBSService:Lcom/android/server/ibs/IntelligentBatterySaverService;

    new-instance v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;Lcom/android/server/ibs/IntelligentBatterySaverLogger;Lcom/android/server/ibs/IntelligentBatterySaverSurvey;Lcom/android/server/ibs/IntelligentBatterySaverGather;)V

    iput-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    new-instance p1, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    invoke-direct {p1, v2, v3}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSGoogleAppPolicy:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    invoke-static {v2}, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSScpmManager:Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3}, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverService;I)V

    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverService;I)V

    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;

    invoke-direct {v0, v6}, Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverGather;)V

    iput-object v0, v6, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mReceiver:Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, v6, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "display"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, v6, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v0, v11, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mSettingsObserver:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;

    invoke-direct {v0, v11}, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;)V

    iput-object v0, v11, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mSettingsObserver:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "ibs_switch"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;

    const/4 v5, 0x0

    invoke-direct {v4, v11, v0, v5}, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string/jumbo v3, "ibs_start_hour"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;

    const/4 v5, 0x1

    invoke-direct {v4, v11, v0, v5}, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string/jumbo v3, "ibs_start_minute"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;

    const/4 v5, 0x2

    invoke-direct {v4, v11, v0, v5}, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string/jumbo v3, "ibs_end_hour"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;

    const/4 v5, 0x3

    invoke-direct {v4, v11, v0, v5}, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string/jumbo v3, "ibs_end_minute"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;

    const/4 v5, 0x4

    invoke-direct {v4, v11, v0, v5}, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    invoke-virtual {v11}, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->updateSwitchSetting()V

    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "display"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "sensor"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10e0048

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v3, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v0, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionSensor:Landroid/hardware/Sensor;

    :cond_2
    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1110040

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x1a

    invoke-virtual {v0, v3, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionSensor:Landroid/hardware/Sensor;

    :cond_3
    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x11

    invoke-virtual {v0, v3, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionSensor:Landroid/hardware/Sensor;

    :cond_4
    const-string/jumbo v0, "com.android.vending"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v3, "NameNotFoundException"

    const-string v4, "IntelligentBatterySaverGoogleAppPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "addPackageNameGoogleAppsList pkg= com.android.vendingvalue = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p1, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mLockGoogleAppsList:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-object v5, p1, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v6, p1, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0, v10}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "IntelligentBatterySaverGoogleAppPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    invoke-virtual {v0, v9, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyReceiver;

    invoke-direct {v0, p1}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyReceiver;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;)V

    const-string/jumbo v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkService:Landroid/os/INetworkManagementService;

    goto :goto_4

    :goto_2
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :goto_3
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    :cond_5
    move-object v2, p1

    :cond_6
    :goto_4
    new-instance p1, Lcom/android/server/ibs/sqd/IbsQuickDim;

    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/server/ibs/sqd/IbsQuickDim;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IbsQuickDim"

    invoke-direct {v0, v1, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    iget-object v3, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;-><init>(Lcom/android/server/ibs/sqd/IbsQuickDim;Landroid/os/Looper;)V

    iput-object v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    iget-object v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    :try_start_6
    const-string/jumbo v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mPowerService:Landroid/os/IPowerManager;

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mPointerEventListener:Lcom/android/server/ibs/sqd/IbsQuickDim$2;

    invoke-virtual {v0, v3, v10}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    const-string v3, "Exception - registerPointerEventListener"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBlockUnDimUidSet:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mAllowDimUidSet:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mDimEnableSet:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mAllowDimPkgSet:Landroid/util/ArraySet;

    iget-object v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "screen_off_timeout"

    const v4, 0xea60

    const/4 v5, -0x2

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    int-to-long v11, v0

    iput-wide v11, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mScreenOffTimeoutSetting:J

    iget-object v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "intelligent_sleep_mode"

    invoke-static {v0, v4, v10, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_7
    move v7, v10

    :goto_6
    iput-boolean v7, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSmartStayEnabledSetting:Z

    iget-object v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "screen_brightness"

    invoke-static {v0, v6, v10, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBrightness:I

    new-instance v0, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;

    iget-object v5, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    invoke-direct {v0, p1, v5}, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;-><init>(Lcom/android/server/ibs/sqd/IbsQuickDim;Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;)V

    iput-object v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSettingsObserver:Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;

    new-instance v0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;

    invoke-direct {v0, p1}, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;-><init>(Lcom/android/server/ibs/sqd/IbsQuickDim;)V

    iput-object v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->receiver:Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;

    iget-object v5, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mContext:Landroid/content/Context;

    iget-object v7, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mFilter:Landroid/content/IntentFilter;

    const/4 v9, 0x2

    invoke-virtual {v5, v0, v7, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->receiver:Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;

    iget-object v7, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mPkgFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v5, v7, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSettingsObserver:Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;

    invoke-virtual {v0, v3, v10, v5, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSettingsObserver:Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;

    invoke-virtual {v0, v3, v10, v4, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSettingsObserver:Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;

    invoke-virtual {v0, v3, v10, v4, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v0, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    iget-object v3, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "SQD_whilte_list"

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v5, v9}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v5, v0, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;-><init>(Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;I)V

    iput-object v3, v0, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->mBlockDataOperator:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;

    new-instance v3, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;-><init>(Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;I)V

    iput-object v3, v0, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->mAllowDataOperator:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;

    iput-object v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    :try_start_7
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v3, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mProcessObserver:Lcom/android/server/ibs/sqd/IbsQuickDim$3;

    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    const-string/jumbo v3, "RemoteException - registerProcessObserver"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_7
    iget-object v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    new-instance v1, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p1}, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    if-nez v0, :cond_8

    const-string/jumbo v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    if-eqz v0, :cond_8

    move-object v5, v0

    :cond_8
    iput-object v5, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    sget-object p1, Lcom/android/server/ibs/sleepmode/SleepModeLogger$SleepModeLoggerHolder;->INSTANCE:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModeLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-direct {v0, v2, v1, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;Lcom/android/server/ibs/sleepmode/SleepModeLogger;)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    new-instance p1, Lcom/android/server/ibs/IntelligentBatterySaverDexoptManager;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSDexoptManager:Lcom/android/server/ibs/IntelligentBatterySaverDexoptManager;

    :try_start_8
    const-class p0, Lcom/android/server/art/ArtManagerLocal;

    invoke-static {p0}, Lcom/android/server/LocalManagerRegistry;->getManagerOrThrow(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/art/ArtManagerLocal;

    iput-object p0, p1, Lcom/android/server/ibs/IntelligentBatterySaverDexoptManager;->mArtManagerLocal:Lcom/android/server/art/ArtManagerLocal;

    const-class p0, Lcom/android/server/pm/PackageManagerLocal;

    invoke-static {p0}, Lcom/android/server/LocalManagerRegistry;->getManagerOrThrow(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageManagerLocal;

    iput-object p0, p1, Lcom/android/server/ibs/IntelligentBatterySaverDexoptManager;->mPackageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;
    :try_end_8
    .catch Lcom/android/server/LocalManagerRegistry$ManagerNotFoundException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "failed to get local manager "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IntelligentBatterySaverDexoptManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    return-void
.end method


# virtual methods
.method public final addScreenQuickDimApp(Ljava/lang/String;I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " addScreenQuickDimApp uid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IbsQuickDim"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mAllowDimUidSet:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mAllowDimUidSet:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mAllowDimPkgSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mAllowDimPkgSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    invoke-virtual {v3, v2}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->getDataOperator(I)Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;

    move-result-object v3

    const-string/jumbo v4, "PackageName = ?"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    const-string/jumbo v0, "PackageName"

    invoke-static {v0, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v0, "Uid"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    invoke-virtual {p2, v2}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->getDataOperator(I)Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;->insert(Landroid/content/ContentValues;)J

    move-result-wide p1

    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    iget-object v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mDimSetRunnable:Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mDimSetRunnable:Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda0;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, " ret = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    cmp-long p0, p1, v0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final addSqdBlockList(ILjava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " addBlockList uid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IbsQuickDim"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBlockUnDimUidSet:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBlockUnDimUidSet:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string/jumbo v0, "PackageName"

    invoke-static {v0, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "Uid"

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->getDataOperator(I)Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;->insert(Landroid/content/ContentValues;)J

    move-result-wide v2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, " ret = "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    cmp-long p0, v2, v0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return p1
.end method

.method public final dexoptPackages(Ljava/util/List;)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSDexoptManager:Lcom/android/server/ibs/IntelligentBatterySaverDexoptManager;

    invoke-virtual {p0, p1}, Lcom/android/server/ibs/IntelligentBatterySaverDexoptManager;->dexoptPackages(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "android.permission.DUMP"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Permission Denial: can\'t dump IntelligentBatterySaverService from pid="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " without permission android.permission.DUMP"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-boolean p1, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSEnable:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz p1, :cond_4

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "IBS Version: 1.0"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "IntelligentBatterySaverFastDrainPolicy "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "get current mSysState :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSysState:I

    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getBatteryCapacity :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    if-nez v4, :cond_1

    new-instance v4, Lcom/android/internal/os/PowerProfile;

    iget-object v5, p1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v4, p1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    :cond_1
    iget-object v4, p1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v4}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    array-length v3, p3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    aget-object v3, p3, v1

    const-string/jumbo v4, "ibs"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, p3, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "set new mSysState :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->setSysState(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "get updated mSysState :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSysState:I

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSGoogleAppPolicy:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "IntelligentBatterySaverGoogleAppPolicy "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v1

    :goto_0
    iget-object v4, p1, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    const-string/jumbo v4, "SCPM GoogleApps uid "

    const-string/jumbo v5, "is "

    invoke-static {v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "SCPM GoogleApps stats "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    iget-boolean v3, p1, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIsUsed:Z

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v3, "IntelligentBatterySaverLogger history Log:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIBSLog:Landroid/util/LocalLog;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, p2, v3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_4
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    if-eqz p1, :cond_6

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "SQD Version: 1.0"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "SQD swich status : "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "UI on-off : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mUiControlEnabled:Z

    const-string/jumbo v5, "mCharging : "

    invoke-static {v3, v4, p2, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mCharging:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mSQDPowerSave : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQDPowerSave:F

    const-string/jumbo v5, "policy status : "

    invoke-static {v3, v4, p2, v5}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "block List:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBlockUnDimUidSet:Landroid/util/ArraySet;

    new-instance v4, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda2;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p2}, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    const-string/jumbo v3, "allow List:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mAllowDimUidSet:Landroid/util/ArraySet;

    new-instance v4, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda2;

    invoke-direct {v4, v5, p2}, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    array-length v3, p3

    if-le v3, v0, :cond_6

    aget-object v3, p3, v1

    const-string/jumbo v4, "sqd_swich"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    aget-object v3, p3, v0

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iput-boolean v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mUiControlEnabled:Z

    goto :goto_1

    :cond_5
    iput-boolean v1, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mUiControlEnabled:Z

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSScpmManager:Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    if-eqz p1, :cond_7

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "IntelligentBatterySaverScpmManager adapt to scpm v2 "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IBS \'s mPolicyControlSwitch:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPolicyControlSwitch:I

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModeLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p3}, Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSDexoptManager:Lcom/android/server/ibs/IntelligentBatterySaverDexoptManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p2, p3, v0}, Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final getGain()[J
    .locals 5

    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    iget v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQDPowerSave:F

    float-to-long v0, v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mChargingFinishTime:J

    const/4 p0, 0x2

    new-array p0, p0, [J

    const/4 v4, 0x0

    aput-wide v2, p0, v4

    const/4 v2, 0x1

    aput-wide v0, p0, v2

    return-object p0
.end method

.method public final getOperationHistory()Landroid/os/Bundle;
    .locals 8

    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "SleepModePolicyController"

    const-string/jumbo v1, "getOperationHistory"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pref_sleep_mode_trigger_time_key"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pref_sleep_mode_cancel_time_key"

    invoke-static {v4, v5, v2, v3}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v6, v0, v2

    if-eqz v6, :cond_0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pref_sleep_mode_policy_state_key"

    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v7, "sleep_mode_pref"

    invoke-virtual {v2, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    iput v6, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "bundle_start_time_key"

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v0, "bundle_end_time_key"

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->testState(I)Z

    move-result v0

    const-string/jumbo v1, "bundle_psm_key"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->testState(I)Z

    move-result v0

    const-string/jumbo v1, "bundle_gps_key"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->testState(I)Z

    move-result v0

    const-string/jumbo v1, "bundle_bt_key"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->testState(I)Z

    move-result v0

    const-string/jumbo v1, "bundle_wifi_key"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->testState(I)Z

    move-result v0

    const-string/jumbo v1, "bundle_nearby_key"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->testState(I)Z

    move-result v0

    const-string/jumbo v1, "bundle_master_sync_key"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->testState(I)Z

    move-result v0

    const-string/jumbo v1, "bundle_notification_key"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->testState(I)Z

    move-result p0

    const-string/jumbo v0, "bundle_camera_flash_notification_key"

    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getScreenQuickDimApps()Ljava/util/Map;
    .locals 4

    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->getDataOperator(I)Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p0}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;->query(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PackageName"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Uid"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "_"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    return-object v0
.end method

.method public final getSleepTime()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->getSleepTime()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final getSqdBlockList()Ljava/util/Map;
    .locals 4

    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->getDataOperator(I)Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p0}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;->query(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PackageName"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Uid"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "_"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    return-object v0
.end method

.method public final isEnableSerive()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isEnableSerive: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSleepModeEnabled:Z

    const-string/jumbo v2, "SleepModePolicyController"

    invoke-static {v2, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSleepModeEnabled:Z

    return p0
.end method

.method public final isSqdSupport()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    if-nez v3, :cond_0

    if-nez v3, :cond_0

    const-string/jumbo v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    :cond_0
    iget-object v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    if-eqz v3, :cond_1

    const-string/jumbo v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    const/16 v3, 0x3f5

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public final isSqdUiControlEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    iget-boolean p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mUiControlEnabled:Z

    return p0
.end method

.method public final removeScreenQuickDimApp(Ljava/lang/String;I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " removeScreenQuickDimApp uid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IbsQuickDim"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mAllowDimUidSet:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mAllowDimUidSet:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object p2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mAllowDimPkgSet:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mAllowDimPkgSet:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_1
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->getDataOperator(I)Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;

    move-result-object p2

    const-string/jumbo v2, "PackageName = ?"

    invoke-virtual {p2, v2, p1}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    iget-object v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mDimSetRunnable:Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda0;

    invoke-virtual {p2, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mDimSetRunnable:Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda0;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p2, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    const-string p0, " ret = "

    invoke-static {p1, p0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    if-eq p1, p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final removeSqdBlockList(ILjava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " removeBlockList uid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IbsQuickDim"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBlockUnDimUidSet:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBlockUnDimUidSet:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->getDataOperator(I)Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;

    move-result-object p0

    const-string/jumbo v0, "PackageName = ? AND Uid = ?"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const-string p1, " ret = "

    invoke-static {p0, p1, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    if-eq p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return p2
.end method

.method public final setRubinEvent(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->setRubinEvent(Ljava/lang/String;)V

    return-void
.end method

.method public final setSarrUiControlEnable(Z)V
    .locals 0

    return-void
.end method

.method public final setSleepModeEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->setSleepModeEnable(Z)V

    return-void
.end method

.method public final setSleepTime(JJ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->setSleepTime(JJ)V

    return-void
.end method

.method public final setSqdUiControlEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->setUicontrolEnable(Z)V

    return-void
.end method
