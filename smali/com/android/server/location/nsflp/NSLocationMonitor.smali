.class public final Lcom/android/server/location/nsflp/NSLocationMonitor;
.super Landroid/location/INSLocationCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final MONITOR_SERVICE_LOCK:Ljava/lang/Object;


# instance fields
.field public mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public final mConnectedHistory:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public mCrashCount:I

.field public mCrashTime:J

.field public mDeviceActivityDuration:I

.field public mDeviceActivityMode:I

.field public mDeviceActivityRegistered:Z

.field public final mDeviceIdleHelper:Lcom/android/server/location/injector/SystemDeviceIdleHelper;

.field public final mDeviceIdleListener:Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda2;

.field public final mDeviceStationaryHelper:Lcom/android/server/location/injector/SystemDeviceStationaryHelper;

.field public final mDisconnectedHistory:Ljava/util/ArrayList;

.field public mEnableFeatureDeviceActivity:Z

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mForegroundNotificationList:Ljava/util/Map;

.field public final mHandler:Landroid/os/Handler;

.field public mHqmManager:Landroid/os/ISemHqmManager;

.field public final mInjector:Lcom/android/server/location/LocationManagerService$SystemInjector;

.field public mIsStationary:Z

.field public mLocationManagerInternal:Landroid/location/LocationManagerInternal;

.field public final mLocationPowerSaveModeChangedListener:Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda0;

.field public final mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

.field public final mLooper:Landroid/os/Looper;

.field public mMonitorService:Landroid/location/INSLocationManager;

.field public final mMonitorServiceConnection:Lcom/android/server/location/nsflp/NSLocationMonitor$2;

.field public final mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

.field public final mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

.field public final mNetworkLock:Ljava/lang/Object;

.field public final mNotificationListener:Lcom/android/server/location/nsflp/NSLocationMonitor$4;

.field public mNsUtLogger:Lcom/android/server/location/nsflp/NSUtLogger;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field public mRegisteredNotificationListener:Z

.field public mRequestToUpdate:Z

.field public final mSemContextListener:Lcom/android/server/location/nsflp/NSLocationMonitor$5;

.field public mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

.field public mSimCount:I

.field public mSimSubId:[I

.field public final mStationaryListener:Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda1;

.field public final mSubscriptionListener:Lcom/android/server/location/nsflp/NSLocationMonitor$3;

.field public mSupportAlgorithm:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

.field public mSupportHqm:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

.field public final mSystemRunningTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/location/nsflp/NSLocationMonitor;->MONITOR_SERVICE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/LocationManagerService$SystemInjector;)V
    .locals 2

    invoke-direct {p0}, Landroid/location/INSLocationCallback$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mConnectedHistory:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDisconnectedHistory:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mMonitorService:Landroid/location/INSLocationManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mRegisteredNotificationListener:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mForegroundNotificationList:Ljava/util/Map;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNetworkLock:Ljava/lang/Object;

    sget-object v1, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->NOT_SUPPORT:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    iput-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSupportAlgorithm:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    sget-object v1, Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;->UNKNOWN:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    iput-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSupportHqm:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    new-instance v1, Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V

    iput-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mLocationPowerSaveModeChangedListener:Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda0;

    new-instance v1, Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V

    iput-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mStationaryListener:Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda1;

    new-instance v1, Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V

    iput-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceIdleListener:Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda2;

    iput v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mCrashCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mCrashTime:J

    new-instance v0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/nsflp/NSLocationMonitor$2;-><init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mMonitorServiceConnection:Lcom/android/server/location/nsflp/NSLocationMonitor$2;

    new-instance v0, Lcom/android/server/location/nsflp/NSLocationMonitor$3;

    invoke-direct {v0, p0}, Lcom/android/server/location/nsflp/NSLocationMonitor$3;-><init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSubscriptionListener:Lcom/android/server/location/nsflp/NSLocationMonitor$3;

    new-instance v0, Lcom/android/server/location/nsflp/NSLocationMonitor$4;

    invoke-direct {v0, p0}, Lcom/android/server/location/nsflp/NSLocationMonitor$4;-><init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNotificationListener:Lcom/android/server/location/nsflp/NSLocationMonitor$4;

    new-instance v0, Lcom/android/server/location/nsflp/NSLocationMonitor$5;

    invoke-direct {v0, p0}, Lcom/android/server/location/nsflp/NSLocationMonitor$5;-><init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextListener:Lcom/android/server/location/nsflp/NSLocationMonitor$5;

    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mInjector:Lcom/android/server/location/LocationManagerService$SystemInjector;

    sget-object p1, Lcom/android/server/location/nsflp/NSLocationThread;->sInstance:Lcom/android/server/location/nsflp/NSLocationThread;

    const-class p1, Lcom/android/server/location/nsflp/NSLocationThread;

    monitor-enter p1

    :try_start_0
    invoke-static {}, Lcom/android/server/location/nsflp/NSLocationThread;->ensureThreadLocked()V

    sget-object v0, Lcom/android/server/location/nsflp/NSLocationThread;->sHandler:Landroid/os/Handler;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mLooper:Landroid/os/Looper;

    const-class v0, Lcom/android/server/location/nsflp/NSLocationThread;

    monitor-enter v0

    :try_start_1
    invoke-static {}, Lcom/android/server/location/nsflp/NSLocationThread;->ensureThreadLocked()V

    sget-object p1, Lcom/android/server/location/nsflp/NSLocationThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p1, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    iget-object p1, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSystemRunningTime:J

    iget-object p1, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    iget-object p1, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mDeviceIdleHelper:Lcom/android/server/location/injector/SystemDeviceIdleHelper;

    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceIdleHelper:Lcom/android/server/location/injector/SystemDeviceIdleHelper;

    iget-object p1, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mDeviceStationaryHelper:Lcom/android/server/location/injector/SystemDeviceStationaryHelper;

    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceStationaryHelper:Lcom/android/server/location/injector/SystemDeviceStationaryHelper;

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public static isCallerNsflp()Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x1395

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final disableDeviceActivity(Lcom/android/server/location/nsflp/NSLocationMonitor$DEVICE_ACTIVITY_ERROR_CODE;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->setFeatureDeviceActivity(Z)Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "code"

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object p1, Landroid/location/LocationConstants$STATE_TYPE;->DEVICE_ACTIVITY_ERROR:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void
.end method

.method public final getActiveRequests(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 26

    move-object/from16 v0, p1

    invoke-static {}, Lcom/android/server/location/nsflp/NSLocationMonitor;->isCallerNsflp()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    const/16 v19, 0x0

    goto/16 :goto_3

    :cond_1
    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mInjector:Lcom/android/server/location/LocationManagerService$SystemInjector;

    iget-object v1, v1, Lcom/android/server/location/LocationManagerService$SystemInjector;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mRegistrationMap:Ljava/util/Map;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string/jumbo v5, "NSLocationProviderHelper"

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    iget-object v6, v4, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v4}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v7

    invoke-virtual {v7}, Landroid/location/LocationRequest;->getQuality()I

    move-result v8

    invoke-virtual {v6}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v10

    invoke-virtual {v6}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v6

    const/16 v11, 0x64

    if-ne v8, v11, :cond_3

    const/4 v11, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v4}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isForeground()Z

    move-result v13

    iget-object v14, v4, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mListenerId:Ljava/lang/String;

    move-object/from16 p0, v3

    invoke-virtual {v7}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v2

    move/from16 v16, v13

    invoke-virtual {v7}, Landroid/location/LocationRequest;->getMinUpdateIntervalMillis()J

    move-result-wide v12

    move-object/from16 v17, v5

    move/from16 v18, v6

    invoke-virtual {v7}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v5

    iget-boolean v15, v4, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isListenerType:Z

    move/from16 v20, v10

    move/from16 v21, v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual {v4}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isPermitted()Z

    move-result v4

    invoke-virtual {v7}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result v7

    if-eqz v0, :cond_4

    if-eqz v14, :cond_4

    if-eqz v9, :cond_4

    move-object/from16 v22, v1

    new-instance v1, Lcom/android/server/location/nsflp/LocationRequestInfo;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move/from16 v23, v7

    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/location/nsflp/LocationRequestInfo;->isPassive:Z

    move-wide/from16 v24, v5

    move v6, v4

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/android/server/location/nsflp/LocationRequestInfo;->lastUpdateTime:J

    iput-object v9, v1, Lcom/android/server/location/nsflp/LocationRequestInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    iput-object v7, v1, Lcom/android/server/location/nsflp/LocationRequestInfo;->versionName:Ljava/lang/String;

    iput-object v14, v1, Lcom/android/server/location/nsflp/LocationRequestInfo;->listenerId:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/location/nsflp/LocationRequestInfo;->provider:Ljava/lang/String;

    iput v8, v1, Lcom/android/server/location/nsflp/LocationRequestInfo;->quality:I

    iput-wide v10, v1, Lcom/android/server/location/nsflp/LocationRequestInfo;->requestTime:J

    iput-wide v4, v1, Lcom/android/server/location/nsflp/LocationRequestInfo;->backgroundTime:J

    iput-wide v2, v1, Lcom/android/server/location/nsflp/LocationRequestInfo;->interval:J

    iput-wide v12, v1, Lcom/android/server/location/nsflp/LocationRequestInfo;->minUpdateInterval:J

    move-wide/from16 v2, v24

    iput-wide v2, v1, Lcom/android/server/location/nsflp/LocationRequestInfo;->maxWaitTime:J

    const/4 v7, 0x0

    iput v7, v1, Lcom/android/server/location/nsflp/LocationRequestInfo;->requester:I

    move/from16 v2, v16

    iput-boolean v2, v1, Lcom/android/server/location/nsflp/LocationRequestInfo;->isForeground:Z

    const v2, 0x7fffffff

    iput v2, v1, Lcom/android/server/location/nsflp/LocationRequestInfo;->numUpdates:I

    move/from16 v2, v20

    iput v2, v1, Lcom/android/server/location/nsflp/LocationRequestInfo;->uid:I

    move/from16 v2, v18

    iput v2, v1, Lcom/android/server/location/nsflp/LocationRequestInfo;->pid:I

    iput-boolean v15, v1, Lcom/android/server/location/nsflp/LocationRequestInfo;->isListenerType:Z

    iput-boolean v6, v1, Lcom/android/server/location/nsflp/LocationRequestInfo;->isAllowed:Z

    move/from16 v2, v23

    iput-boolean v2, v1, Lcom/android/server/location/nsflp/LocationRequestInfo;->isSettingsByPass:Z

    move/from16 v11, v21

    iput-boolean v11, v1, Lcom/android/server/location/nsflp/LocationRequestInfo;->isHighPowerRequest:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onActiveRequestSync, added "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v17

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v2

    move-object/from16 v1, v22

    goto/16 :goto_1

    :cond_4
    move v6, v4

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "New requestInfo mandatory fields are null,PackageName="

    const-string v3, "/ListenerId="

    const-string v4, "/Provider="

    invoke-static {v2, v9, v3, v14, v4}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/isAllowed="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    move-object v2, v3

    move-object v3, v5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onActiveRequestSync, size="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_0

    :cond_6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "provider"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "activeRequests"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v1

    :goto_3
    return-object v19
.end method

.method public final getCrashCount()I
    .locals 0

    iget p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mCrashCount:I

    return p0
.end method

.method public final getCrashTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mCrashTime:J

    return-wide v0
.end method

.method public final getUidState(II)Landroid/os/Bundle;
    .locals 4

    invoke-static {}, Lcom/android/server/location/nsflp/NSLocationMonitor;->isCallerNsflp()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mInjector:Lcom/android/server/location/LocationManagerService$SystemInjector;

    iget-object v0, v0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mNSPermissionHelper:Lcom/android/server/location/nsflp/NSPermissionHelper;

    iget-object v0, v0, Lcom/android/server/location/nsflp/NSPermissionHelper;->mUidObserver:Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver;

    iget-object v0, v0, Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver;->mUidState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;

    if-nez v0, :cond_1

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget v2, v0, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;->state:I

    const-string/jumbo v3, "procState"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, v0, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;->capability:I

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const-string/jumbo v0, "hasLocationCapability"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    move-result p0

    const-string/jumbo p1, "permissionLevel"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1
.end method

.method public final isLocationEnabled(I)Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/nsflp/NSLocationMonitor;->isCallerNsflp()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mInjector:Lcom/android/server/location/LocationManagerService$SystemInjector;

    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper;->isLocationEnabled(I)Z

    move-result p0

    return p0
.end method

.method public final isProviderEnabled(Ljava/lang/String;I)Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/nsflp/NSLocationMonitor;->isCallerNsflp()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    if-nez v0, :cond_1

    const-class v0, Landroid/location/LocationManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManagerInternal;

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    :cond_1
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1, p2}, Landroid/location/LocationManagerInternal;->isProviderEnabledForUser(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final noteGpsOp(II)V
    .locals 4

    invoke-static {}, Lcom/android/server/location/nsflp/NSLocationMonitor;->isCallerNsflp()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-string/jumbo v1, "NSLocationMonitor"

    if-nez v0, :cond_1

    const-string/jumbo v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-nez v0, :cond_1

    const-string p0, "Failed to get batterystats"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v0, "noteGpsOp, mode="

    const-string v2, " ("

    const-string v3, ")"

    invoke-static {p1, p2, v0, v2, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p0, p2}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V

    return-void

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p0, p2}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V

    return-void

    :cond_3
    const/4 p2, 0x3

    if-ne p1, p2, :cond_4

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p0}, Lcom/android/internal/app/IBatteryStats;->noteResetGps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "Failed to call noteGpsOp"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public final notifyCrash(J)V
    .locals 1

    iget v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mCrashCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mCrashCount:I

    iput-wide p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mCrashTime:J

    return-void
.end method

.method public final registerDeviceActivityDetector(IIZ)V
    .locals 8

    const-string/jumbo v0, "Success registerDeviceActivityDetector, mode : "

    iget-boolean v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mEnableFeatureDeviceActivity:Z

    const-string/jumbo v2, "NSLocationMonitor"

    if-nez v1, :cond_0

    const-string p0, "Failed registerDeviceActivityDetector"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceActivityRegistered:Z

    const-string v3, ", requestToUpdate : "

    const-string v4, ", duration : "

    const/16 v5, 0x36

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceActivityDuration:I

    if-ne v1, p2, :cond_1

    iget v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceActivityMode:I

    if-ne v1, p1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mRequestToUpdate:Z

    if-ne v1, p3, :cond_1

    const-string p0, "Already registered same attribute, mode : "

    invoke-static {p1, p2, p0, v4, v3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object v6, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextListener:Lcom/android/server/location/nsflp/NSLocationMonitor$5;

    invoke-virtual {v1, v6, v5}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object v6, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextListener:Lcom/android/server/location/nsflp/NSLocationMonitor$5;

    iget-object v7, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mLooper:Landroid/os/Looper;

    invoke-virtual {v1, v6, v5, v7}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILandroid/os/Looper;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;-><init>(IIZ)V

    iget-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object v3, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextListener:Lcom/android/server/location/nsflp/NSLocationMonitor$5;

    invoke-virtual {v1, v3, v5, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceActivityRegistered:Z

    iput p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceActivityMode:I

    iput p2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceActivityDuration:I

    iput-boolean p3, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mRequestToUpdate:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Exception is occurred while registerDeviceActivityDetector, "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public final requestToUpdateDeviceActivityDetector()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mEnableFeatureDeviceActivity:Z

    const-string/jumbo v1, "NSLocationMonitor"

    if-nez v0, :cond_0

    const-string p0, "Failed updateDeviceActivityDetector"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextListener:Lcom/android/server/location/nsflp/NSLocationMonitor$5;

    const/16 v2, 0x36

    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->requestToUpdate(Lcom/samsung/android/hardware/context/SemContextListener;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception is occurred while updateDeviceActivityDetector, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final sendLogToHqm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    invoke-static {}, Lcom/android/server/location/nsflp/NSLocationMonitor;->isCallerNsflp()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSupportHqm:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    sget-object v1, Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;->UNKNOWN:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    sget-object v2, Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;->NOT_SUPPORT:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mHqmManager:Landroid/os/ISemHqmManager;

    if-nez v0, :cond_2

    const-string v0, "HqmManagerService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ISemHqmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISemHqmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mHqmManager:Landroid/os/ISemHqmManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;->SUPPORT:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSupportHqm:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    :cond_2
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSupportHqm:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    const-string/jumbo v1, "NSLocationMonitor"

    if-ne v0, v2, :cond_3

    const-string p0, "HQM not supported device"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mHqmManager:Landroid/os/ISemHqmManager;

    const-string v4, "GNSS"

    const-string/jumbo v6, "ph"

    const-string v7, "0.0"

    const-string/jumbo v8, "sec"

    const-string v11, ""

    const/4 v3, 0x0

    move-object v5, p1

    move-object v9, p2

    move-object v10, p3

    invoke-interface/range {v2 .. v11}, Landroid/os/ISemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed logging big data for GNSS"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public final sendStationaryInfo(Z)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "stationary"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object p1, Landroid/location/LocationConstants$STATE_TYPE;->MOTION_STATE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void
.end method

.method public final setFeatureDeviceActivity(Z)Z
    .locals 3

    const-string/jumbo v0, "NSLocationMonitor"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "scontext"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/hardware/context/SemContextManager;

    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-nez p1, :cond_0

    const-string/jumbo p1, "semContextManager is null"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mEnableFeatureDeviceActivity:Z

    return v1

    :cond_0
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v1, 0x36

    invoke-virtual {p1, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mEnableFeatureDeviceActivity:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setFeatureDeviceActivity, isAvailable, "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mEnableFeatureDeviceActivity:Z

    invoke-static {v0, p1, v1}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mEnableFeatureDeviceActivity:Z

    return p0

    :cond_1
    iget-boolean p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mIsStationary:Z

    if-eqz p1, :cond_2

    iput-boolean v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mIsStationary:Z

    invoke-virtual {p0, v1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->sendStationaryInfo(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->unregisterDeviceActivityDetector()V

    const-string/jumbo p1, "setFeatureDeviceActivity, false"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mEnableFeatureDeviceActivity:Z

    const/4 p0, 0x1

    return p0
.end method

.method public final setMotionPowerSaveMode(Z)V
    .locals 5

    const-string/jumbo v0, "setMotionPowerSaveMode, "

    invoke-static {}, Lcom/android/server/location/nsflp/NSLocationMonitor;->isCallerNsflp()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    const-string/jumbo v3, "NSLocationMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mInjector:Lcom/android/server/location/LocationManagerService$SystemInjector;

    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->notifyMotionPowerSaveModeChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final unregisterDeviceActivityDetector()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mEnableFeatureDeviceActivity:Z

    const-string/jumbo v1, "NSLocationMonitor"

    if-nez v0, :cond_0

    const-string p0, "Failed unregisterDeviceActivityDetector"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceActivityRegistered:Z

    if-nez v0, :cond_1

    const-string p0, "Already unregistered DeviceActivityDetector"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object v2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextListener:Lcom/android/server/location/nsflp/NSLocationMonitor$5;

    const/16 v3, 0x36

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    const-string/jumbo v0, "Success unregisterDeviceActivityDetector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception is occurred while unregisterDeviceActivityDetector, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mIsStationary:Z

    iput-boolean v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceActivityRegistered:Z

    iput v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceActivityMode:I

    iput v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceActivityDuration:I

    iput-boolean v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mRequestToUpdate:Z

    return-void
.end method

.method public final updateBackgroundThrottlingAllowlist(Ljava/util/List;)V
    .locals 2

    invoke-static {}, Lcom/android/server/location/nsflp/NSLocationMonitor;->isCallerNsflp()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mInjector:Lcom/android/server/location/LocationManagerService$SystemInjector;

    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageAllowlistByNsflp:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const-string/jumbo v0, "LocationManagerService"

    if-nez p1, :cond_1

    const-string/jumbo p0, "Null package is updated, so just clear"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageAllowlistByNsflp:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "location setting is changed by nsflp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;->onSettingChanged(I)V

    goto :goto_0

    :cond_2
    :goto_1
    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object p0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "FreecessController"

    const-string/jumbo v1, "setGPSAllowList"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/am/FreecessController;->mGpsDefaultAllowList:Ljava/util/List;

    return-void
.end method

.method public final writeUtLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/android/server/location/nsflp/NSLocationMonitor;->isCallerNsflp()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNsUtLogger:Lcom/android/server/location/nsflp/NSUtLogger;

    if-nez v0, :cond_1

    const-string/jumbo v0, "NS_UT_LOGGER_THREAD"

    invoke-static {v0}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/nsflp/NSUtLogger;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/location/nsflp/NSUtLogger;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNsUtLogger:Lcom/android/server/location/nsflp/NSUtLogger;

    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcom/android/server/location/nsflp/NSUtLogger$LogInfo;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput p1, v1, Lcom/android/server/location/nsflp/NSUtLogger$LogInfo;->type:I

    iput-object p2, v1, Lcom/android/server/location/nsflp/NSUtLogger$LogInfo;->path:Ljava/lang/String;

    iput-object p3, v1, Lcom/android/server/location/nsflp/NSUtLogger$LogInfo;->data:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNsUtLogger:Lcom/android/server/location/nsflp/NSUtLogger;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
