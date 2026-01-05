.class public Lcom/android/server/location/LocationManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mService:Lcom/android/server/location/LocationManagerService;

.field public final mSystemInjector:Lcom/android/server/location/LocationManagerService$SystemInjector;

.field public final mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    invoke-direct {v0, p1}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    new-instance v1, Lcom/android/server/location/LocationManagerService$SystemInjector;

    invoke-direct {v1, p1, v0}, Lcom/android/server/location/LocationManagerService$SystemInjector;-><init>(Landroid/content/Context;Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;)V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mSystemInjector:Lcom/android/server/location/LocationManagerService$SystemInjector;

    new-instance v0, Lcom/android/server/location/LocationManagerService;

    invoke-direct {v0, p1, v1}, Lcom/android/server/location/LocationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/location/LocationManagerService$SystemInjector;)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mService:Lcom/android/server/location/LocationManagerService;

    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v2, 0x1f4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v2, :cond_9

    iget-object v2, v0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mSystemInjector:Lcom/android/server/location/LocationManagerService$SystemInjector;

    monitor-enter v2

    :try_start_0
    iget-object v1, v2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-class v6, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v6, v1, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    new-instance v7, Lcom/android/server/location/injector/SystemUserInfoHelper$$ExternalSyntheticLambda0;

    invoke-direct {v7, v1}, Lcom/android/server/location/injector/SystemUserInfoHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;)V

    invoke-virtual {v6, v7}, Lcom/android/server/pm/UserManagerInternal;->addUserVisibilityListener(Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    monitor-exit v1

    iget-object v1, v2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    iget-object v6, v1, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v6, v1, Lcom/android/server/location/injector/SystemAppOpsHelper;->mContext:Landroid/content/Context;

    const-class v7, Landroid/app/AppOpsManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v6, v1, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    new-instance v7, Lcom/android/server/location/injector/SystemAppOpsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v7, v1}, Lcom/android/server/location/injector/SystemAppOpsHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/injector/SystemAppOpsHelper;)V

    invoke-virtual {v6, v4, v3, v5, v7}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V

    iget-object v6, v1, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    new-instance v7, Lcom/android/server/location/injector/SystemAppOpsHelper$1;

    invoke-direct {v7, v1}, Lcom/android/server/location/injector/SystemAppOpsHelper$1;-><init>(Lcom/android/server/location/injector/SystemAppOpsHelper;)V

    const/16 v1, 0x3a

    invoke-virtual {v6, v1, v3, v4, v7}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V

    :goto_0
    iget-object v1, v2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    iget-boolean v6, v1, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mInited:Z

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    iget-object v6, v1, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    new-instance v7, Lcom/android/server/location/injector/SystemLocationPermissionsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v7, v1}, Lcom/android/server/location/injector/SystemLocationPermissionsHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/injector/SystemLocationPermissionsHelper;)V

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    iput-boolean v5, v1, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mInited:Z

    :goto_1
    iget-object v1, v2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    invoke-virtual {v1}, Lcom/android/server/location/injector/SystemSettingsHelper;->onSystemReady()V

    iget-object v1, v2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppForegroundHelper:Lcom/android/server/location/injector/SystemAppForegroundHelper;

    iget-object v6, v1, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    iget-object v6, v1, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mContext:Landroid/content/Context;

    const-class v7, Landroid/app/ActivityManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v6, v1, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mActivityManager:Landroid/app/ActivityManager;

    new-instance v7, Lcom/android/server/location/injector/SystemAppForegroundHelper$$ExternalSyntheticLambda0;

    invoke-direct {v7, v1}, Lcom/android/server/location/injector/SystemAppForegroundHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/injector/SystemAppForegroundHelper;)V

    const/16 v1, 0x7d

    invoke-virtual {v6, v7, v1}, Landroid/app/ActivityManager;->addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I)V

    :goto_2
    iget-object v1, v2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    iget-boolean v6, v1, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mReady:Z

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    const-class v6, Landroid/os/PowerManagerInternal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManagerInternal;

    invoke-virtual {v6, v5, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    iget-object v6, v1, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mContext:Landroid/content/Context;

    const-class v7, Landroid/os/PowerManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/os/PowerManager;->getLocationPowerSaveMode()I

    move-result v6

    iput v6, v1, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mLocationPowerSaveMode:I

    iput-boolean v5, v1, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mReady:Z

    :goto_3
    iget-object v1, v2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mScreenInteractiveHelper:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

    iget-boolean v6, v1, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mReady:Z

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v10, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v10, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/android/server/location/injector/SystemScreenInteractiveHelper$1;

    invoke-direct {v8, v1}, Lcom/android/server/location/injector/SystemScreenInteractiveHelper$1;-><init>(Lcom/android/server/location/injector/SystemScreenInteractiveHelper;)V

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v12

    const/4 v11, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iput-boolean v5, v1, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mReady:Z

    :goto_4
    iget-object v1, v2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mDeviceStationaryHelper:Lcom/android/server/location/injector/SystemDeviceStationaryHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v6, Lcom/android/server/DeviceIdleInternal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/DeviceIdleInternal;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v6, v1, Lcom/android/server/location/injector/SystemDeviceStationaryHelper;->mDeviceIdle:Lcom/android/server/DeviceIdleInternal;

    iget-object v1, v2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mDeviceIdleHelper:Lcom/android/server/location/injector/SystemDeviceIdleHelper;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iput-boolean v5, v1, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mSystemReady:Z

    iget-object v6, v1, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mContext:Landroid/content/Context;

    const-class v7, Landroid/os/PowerManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v6, v1, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->onRegistrationStateChanged()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    monitor-exit v1

    iget-object v1, v2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mEmergencyCallHelper:Lcom/android/server/location/injector/SystemEmergencyHelper;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/server/location/injector/SystemEmergencyHelper;->onSystemReady()V

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_5
    :goto_5
    iput-boolean v5, v2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSystemReady:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v2

    iget-object v0, v0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v5, v4}, [I

    move-result-object v2

    new-instance v6, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v1, v2, v6}, Landroid/app/AppOpsManager;->startWatchingNoted([ILandroid/app/AppOpsManager$OnOpNotedListener;)V

    :cond_6
    iget-object v1, v0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/nsflp/NSLocationMonitor;

    iget-object v2, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v6, "com.sec.feature.nsflp"

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v7, "NSLocationMonitor"

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v2

    iget-object v4, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    iput-boolean v5, v4, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHasNsflpFeature:Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "NS-FLP Feature available, nsFlpFeatureLevel = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "Try to bind NSMonitorService"

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.sec.location.nsflp2"

    const-string/jumbo v5, "com.sec.location.nsflp2.nsmonitor.NSMonitorService"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    iget-object v5, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mMonitorServiceConnection:Lcom/android/server/location/nsflp/NSLocationMonitor$2;

    const v6, 0x4000001

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object v2, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    iget-object v4, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mLocationPowerSaveModeChangedListener:Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda0;

    iget-object v2, v2, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceIdleHelper:Lcom/android/server/location/injector/SystemDeviceIdleHelper;

    iget-object v4, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceIdleListener:Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda2;

    invoke-virtual {v2, v4}, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->addListener(Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda2;)V

    iget-object v2, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceStationaryHelper:Lcom/android/server/location/injector/SystemDeviceStationaryHelper;

    iget-object v4, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mStationaryListener:Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda1;

    iget-object v5, v2, Lcom/android/server/location/injector/SystemDeviceStationaryHelper;->mDeviceIdle:Lcom/android/server/DeviceIdleInternal;

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    goto :goto_6

    :cond_7
    const/4 v5, 0x0

    :goto_6
    invoke-static {v5}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_5
    iget-object v2, v2, Lcom/android/server/location/injector/SystemDeviceStationaryHelper;->mDeviceIdle:Lcom/android/server/DeviceIdleInternal;

    invoke-interface {v2, v4}, Lcom/android/server/DeviceIdleInternal;->registerStationaryListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v2, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/location/nsflp/NSLocationMonitor$1;

    invoke-direct {v4, v1}, Lcom/android/server/location/nsflp/NSLocationMonitor$1;-><init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v6, "com.samsung.intent.action.BIG_DATA_INFO"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v5, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_7

    :catchall_1
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_8
    const-string/jumbo v2, "Not binding the MonitorService"

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    iput-boolean v4, v1, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHasNsflpFeature:Z

    :goto_7
    iget-object v1, v0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/LocationManagerService$SystemInjector;

    iget-object v1, v1, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    new-instance v2, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/LocationManagerService;)V

    iget-object v1, v1, Lcom/android/server/location/injector/SystemAppOpsHelper;->mMockLocationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, v0, Lcom/android/server/location/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v1, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/location/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v1, Lcom/android/server/location/LocationManagerService$1;

    invoke-direct {v1, v0}, Lcom/android/server/location/LocationManagerService$1;-><init>(Lcom/android/server/location/LocationManagerService;)V

    iget-object v2, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Handler;)V

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.android.location.mock.delete"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/location/LocationManagerService$2;

    invoke-direct {v6, v0}, Lcom/android/server/location/LocationManagerService$2;-><init>(Lcom/android/server/location/LocationManagerService;)V

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v10, v0, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v0

    :goto_8
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v0

    :cond_9
    const/16 v2, 0x258

    if-ne v1, v2, :cond_31

    iget-object v1, v0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mService:Lcom/android/server/location/LocationManagerService;

    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isChinaCarrier()Z

    move-result v0

    const/high16 v2, 0x180000

    if-eqz v0, :cond_13

    iget-object v9, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "com.android.location.service.v3.NetworkLocationProvider"

    const-string/jumbo v10, "network"

    new-instance v6, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    const v7, 0x1110189

    const v8, 0x1040398

    invoke-direct/range {v6 .. v11}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;-><init>(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher;->checkServiceResolves()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_9

    :cond_a
    move-object v6, v3

    :goto_9
    const-string/jumbo v9, "LocationManagerService"

    if-eqz v6, :cond_b

    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v11, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/LocationManagerService$SystemInjector;

    iget-object v13, v1, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    invoke-direct {v0, v11, v12, v10, v13}, Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;)V

    invoke-virtual {v1, v0, v6}, Lcom/android/server/location/LocationManagerService;->addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    goto :goto_a

    :cond_b
    const-string/jumbo v0, "no network location provider found"

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v10, "com.android.location.service.FusedLocationProvider"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v5

    const-string/jumbo v2, "Unable to find a direct boot aware fused location provider"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v15, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v16, "fused"

    new-instance v12, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    const v14, 0x104036f

    move v13, v7

    move-object/from16 v17, v10

    invoke-direct/range {v12 .. v17}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;-><init>(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v2, v12, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v2}, Lcom/android/server/servicewatcher/ServiceWatcher;->checkServiceResolves()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_b

    :cond_c
    move-object v12, v3

    :goto_b
    if-eqz v12, :cond_d

    new-instance v2, Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v6, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/LocationManagerService$SystemInjector;

    iget-object v10, v1, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    invoke-direct {v2, v6, v7, v0, v10}, Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;)V

    invoke-virtual {v1, v2, v12}, Lcom/android/server/location/LocationManagerService;->addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    goto :goto_c

    :cond_d
    const-string/jumbo v0, "no fused location provider found"

    invoke-static {v9, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;

    invoke-direct {v2, v0, v4}, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;-><init>(Landroid/content/Context;I)V

    iget-object v0, v2, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher;->checkServiceResolves()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v6, v2, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v6}, Lcom/android/server/servicewatcher/ServiceWatcher;->register()V

    :cond_e
    if-eqz v0, :cond_f

    goto :goto_d

    :cond_f
    move-object v2, v3

    :goto_d
    iput-object v2, v1, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;

    if-nez v2, :cond_10

    const-string/jumbo v0, "no geocoder provider found"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :try_start_a
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/LocationManagerService$SystemInjector;

    iget-object v0, v0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    iget-object v6, v1, Lcom/android/server/location/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v2, v4}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v6

    iget-object v7, v0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    if-eqz v7, :cond_11

    move v7, v5

    goto :goto_e

    :cond_11
    move v7, v4

    :goto_e
    invoke-static {v7}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_0

    :try_start_b
    iget-object v10, v0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v11, 0x18

    invoke-virtual {v10, v11, v6, v2}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_12

    iget-object v0, v0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v11, v6, v2, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_f

    :catchall_4
    move-exception v0

    goto :goto_10

    :cond_12
    :goto_f
    :try_start_c
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_16

    :goto_10
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    const-string/jumbo v0, "NameNotFoundException package: "

    invoke-static {v0, v2, v9}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_13
    iget-object v13, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "network"

    const-string/jumbo v15, "com.android.location.service.v3.NetworkLocationProvider"

    new-instance v10, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    const v11, 0x1110188

    const v12, 0x1040397

    invoke-direct/range {v10 .. v15}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;-><init>(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v10, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher;->checkServiceResolves()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_11

    :cond_14
    move-object v10, v3

    :goto_11
    if-eqz v10, :cond_15

    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v6, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/LocationManagerService$SystemInjector;

    const-string/jumbo v8, "network"

    iget-object v9, v1, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;)V

    invoke-virtual {v1, v0, v10}, Lcom/android/server/location/LocationManagerService;->addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    goto :goto_12

    :cond_15
    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v6, "no network location provider found"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "com.android.location.service.FusedLocationProvider"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v5

    const-string/jumbo v2, "Unable to find a direct boot aware fused location provider"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "fused"

    const-string/jumbo v9, "com.android.location.service.FusedLocationProvider"

    new-instance v6, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    const v10, 0x1110179

    const v11, 0x104036f

    const v12, 0x11101be

    invoke-direct/range {v6 .. v12}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)V

    iget-object v0, v6, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher;->checkServiceResolves()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_13

    :cond_16
    move-object v6, v3

    :goto_13
    if-eqz v6, :cond_17

    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v2, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/LocationManagerService$SystemInjector;

    const-string/jumbo v8, "fused"

    iget-object v9, v1, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    invoke-direct {v0, v2, v7, v8, v9}, Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;)V

    invoke-virtual {v1, v0, v6}, Lcom/android/server/location/LocationManagerService;->addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    goto :goto_14

    :cond_17
    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v2, "no fused location provider found"

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;

    invoke-direct {v2, v0}, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;-><init>(Landroid/content/Context;)V

    iget-object v0, v2, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher;->checkServiceResolves()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v6, v2, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v6}, Lcom/android/server/servicewatcher/ServiceWatcher;->register()V

    :cond_18
    if-eqz v0, :cond_19

    goto :goto_15

    :cond_19
    move-object v2, v3

    :goto_15
    iput-object v2, v1, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;

    if-nez v2, :cond_1a

    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v2, "no geocoder provider found"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    :goto_16
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v2, "android.hardware.location"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->getInstance()Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isLsiGnss()Z

    move-result v2

    if-eqz v2, :cond_1b

    new-instance v2, Lcom/android/server/location/gnss/sec/GnssHalStatus;

    invoke-direct {v2}, Lcom/android/server/location/gnss/sec/GnssHalStatus;-><init>()V

    const-wide/16 v6, 0x1388

    invoke-virtual {v2, v6, v7}, Lcom/android/server/location/gnss/sec/GnssHalStatus;->triggerCheckingHalStatus(J)V

    goto :goto_17

    :cond_1b
    move-object v2, v3

    :goto_17
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->isSupported()Z

    move-result v6

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Lcom/android/server/location/gnss/sec/GnssHalStatus;->updateHalStatusChecked()V

    :cond_1c
    const/4 v2, -0x1

    if-eqz v0, :cond_21

    if-eqz v6, :cond_21

    new-instance v0, Lcom/android/server/location/gnss/GnssConfiguration;

    iget-object v6, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Lcom/android/server/location/gnss/GnssConfiguration;-><init>(Landroid/content/Context;)V

    iget-object v6, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/LocationManagerService$SystemInjector;

    invoke-static {v6, v7, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->create(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/GnssConfiguration;)Lcom/android/server/location/gnss/hal/GnssNative;

    move-result-object v0

    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->getInstance()Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isLsiGnss()Z

    move-result v6

    if-eqz v6, :cond_1d

    new-instance v6, Lcom/android/server/location/gnss/sec/GnssHalStatus;

    invoke-direct {v6}, Lcom/android/server/location/gnss/sec/GnssHalStatus;-><init>()V

    const-wide/16 v7, 0x3a98

    invoke-virtual {v6, v7, v8}, Lcom/android/server/location/gnss/sec/GnssHalStatus;->triggerCheckingHalStatus(J)V

    goto :goto_18

    :cond_1d
    move-object v6, v3

    :goto_18
    new-instance v7, Lcom/android/server/location/gnss/GnssManagerService;

    iget-object v8, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/LocationManagerService$SystemInjector;

    invoke-direct {v7, v8, v9, v0}, Lcom/android/server/location/gnss/GnssManagerService;-><init>(Landroid/content/Context;Lcom/android/server/location/LocationManagerService$SystemInjector;Lcom/android/server/location/gnss/hal/GnssNative;)V

    iput-object v7, v1, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v6, :cond_1e

    invoke-virtual {v6}, Lcom/android/server/location/gnss/sec/GnssHalStatus;->updateHalStatusChecked()V

    :cond_1e
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    iget-object v6, v0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    monitor-enter v6

    :try_start_d
    iget-object v7, v6, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/android/server/location/gnss/GnssLocationProvider$2;

    const/4 v0, 0x0

    invoke-direct {v8, v6, v0}, Lcom/android/server/location/gnss/GnssLocationProvider$2;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v10, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v10, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v12, v6, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, v6, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v7, "location_mode"

    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    new-instance v8, Lcom/android/server/location/gnss/GnssLocationProvider$3;

    iget-object v9, v6, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, v6, v9}, Lcom/android/server/location/gnss/GnssLocationProvider$3;-><init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;Landroid/os/Handler;)V

    invoke-virtual {v0, v7, v5, v8, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, v6, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda5;

    const/4 v8, 0x1

    invoke-direct {v7, v6, v8}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;I)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, v6, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v7, v6, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssSatelliteBlocklistHelper:Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda12;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v7}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda12;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    monitor-exit v6

    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x111029d

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v7, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "gps"

    const-string/jumbo v9, "android.location.provider.action.GNSS_PROVIDER"

    new-instance v6, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    const v10, 0x111017f

    const v11, 0x1040376

    const v12, 0x11101c0

    invoke-direct/range {v6 .. v12}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)V

    iget-object v0, v6, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher;->checkServiceResolves()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_19

    :cond_1f
    move-object v6, v3

    :goto_19
    if-nez v6, :cond_20

    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    iget-object v6, v0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    goto :goto_1a

    :cond_20
    new-instance v7, Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v8, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/LocationManagerService$SystemInjector;

    const-string/jumbo v10, "gps_hardware"

    const-string/jumbo v0, "android.permission.LOCATION_HARDWARE"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/4 v11, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;Ljava/util/Collection;)V

    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    iget-object v0, v0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    invoke-virtual {v1, v7, v0}, Lcom/android/server/location/LocationManagerService;->addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    :goto_1a
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v7, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/LocationManagerService$SystemInjector;

    const-string/jumbo v9, "gps"

    iget-object v10, v1, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;)V

    invoke-virtual {v1, v0, v6}, Lcom/android/server/location/LocationManagerService;->addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    goto :goto_1b

    :catchall_5
    move-exception v0

    :try_start_e
    monitor-exit v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v0

    :cond_21
    :goto_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

    invoke-direct {v8, v0}, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;-><init>(Landroid/content/Context;)V

    iget-object v0, v8, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher;->checkServiceResolves()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v9, v8, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v9}, Lcom/android/server/servicewatcher/ServiceWatcher;->register()V

    :cond_22
    if-eqz v0, :cond_23

    goto :goto_1c

    :cond_23
    move-object v8, v3

    :goto_1c
    invoke-virtual {v1, v8}, Lcom/android/server/location/LocationManagerService;->setProxyPopulationDensityProvider(Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    long-to-int v0, v8

    iget-object v6, v1, Lcom/android/server/location/LocationManagerService;->mPopulationDensityProvider:Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

    if-nez v6, :cond_24

    const-string/jumbo v6, "LocationManagerService"

    const-string/jumbo v7, "no population density provider found"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    iget-object v6, v1, Lcom/android/server/location/LocationManagerService;->mPopulationDensityProvider:Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

    if-nez v6, :cond_25

    move v6, v5

    goto :goto_1d

    :cond_25
    move v6, v4

    :goto_1d
    const/16 v7, 0x3ea

    invoke-static {v7, v6, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZI)V

    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mPopulationDensityProvider:Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

    if-eqz v0, :cond_26

    new-instance v6, Lcom/android/server/location/fudger/LocationFudgerCache;

    invoke-direct {v6, v0}, Lcom/android/server/location/fudger/LocationFudgerCache;-><init>(Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;)V

    invoke-virtual {v1, v6}, Lcom/android/server/location/LocationManagerService;->setLocationFudgerCache(Lcom/android/server/location/fudger/LocationFudgerCache;)V

    :cond_26
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/location/HardwareActivityRecognitionProxy;

    invoke-direct {v6, v0}, Lcom/android/server/location/HardwareActivityRecognitionProxy;-><init>(Landroid/content/Context;)V

    iget-object v0, v6, Lcom/android/server/location/HardwareActivityRecognitionProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher;->checkServiceResolves()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v7, v6, Lcom/android/server/location/HardwareActivityRecognitionProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v7}, Lcom/android/server/servicewatcher/ServiceWatcher;->register()V

    :cond_27
    if-eqz v0, :cond_28

    goto :goto_1e

    :cond_28
    move-object v6, v3

    :goto_1e
    if-nez v6, :cond_29

    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v6, "unable to bind ActivityRecognitionProxy"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_2c

    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    iget-object v6, v6, Lcom/android/server/location/gnss/GnssManagerService;->mGnssGeofenceProxy:Lcom/android/server/location/gnss/GnssGeofenceProxy;

    new-instance v7, Lcom/android/server/location/geofence/GeofenceProxy;

    invoke-direct {v7, v0, v6}, Lcom/android/server/location/geofence/GeofenceProxy;-><init>(Landroid/content/Context;Lcom/android/server/location/gnss/GnssGeofenceProxy;)V

    iget-object v6, v7, Lcom/android/server/location/geofence/GeofenceProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v6}, Lcom/android/server/servicewatcher/ServiceWatcher;->checkServiceResolves()Z

    move-result v6

    if-eqz v6, :cond_2a

    iget-object v8, v7, Lcom/android/server/location/geofence/GeofenceProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v8}, Lcom/android/server/servicewatcher/ServiceWatcher;->register()V

    new-instance v8, Landroid/content/Intent;

    const-class v9, Landroid/hardware/location/GeofenceHardwareService;

    invoke-direct {v8, v0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v9, Lcom/android/server/location/geofence/GeofenceProxy$GeofenceProxyServiceConnection;

    invoke-direct {v9, v7}, Lcom/android/server/location/geofence/GeofenceProxy$GeofenceProxyServiceConnection;-><init>(Lcom/android/server/location/geofence/GeofenceProxy;)V

    sget-object v10, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v9, v5, v10}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    :cond_2a
    if-eqz v6, :cond_2b

    move-object v3, v7

    :cond_2b
    if-nez v3, :cond_2c

    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v3, "unable to bind to GeofenceProxy"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1070178

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    move v6, v4

    :goto_1f
    if-ge v6, v3, :cond_2d

    aget-object v7, v0, v6

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/location/provider/ProviderProperties$Builder;

    invoke-direct {v9}, Landroid/location/provider/ProviderProperties$Builder;-><init>()V

    aget-object v10, v7, v5

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/location/provider/ProviderProperties$Builder;->setHasNetworkRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/location/provider/ProviderProperties$Builder;->setHasSatelliteRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v9

    const/4 v10, 0x3

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/location/provider/ProviderProperties$Builder;->setHasCellRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v9

    const/4 v10, 0x4

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/location/provider/ProviderProperties$Builder;->setHasMonetaryCost(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v9

    const/4 v10, 0x5

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/location/provider/ProviderProperties$Builder;->setHasAltitudeSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v9

    const/4 v10, 0x6

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/location/provider/ProviderProperties$Builder;->setHasSpeedSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v9

    const/4 v10, 0x7

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/location/provider/ProviderProperties$Builder;->setHasBearingSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v9

    const/16 v10, 0x8

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/location/provider/ProviderProperties$Builder;->setPowerUsage(I)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v9

    const/16 v10, 0x9

    aget-object v7, v7, v10

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v9, v7}, Landroid/location/provider/ProviderProperties$Builder;->setAccuracy(I)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/location/provider/ProviderProperties$Builder;->build()Landroid/location/provider/ProviderProperties;

    move-result-object v7

    invoke-virtual {v1, v8}, Lcom/android/server/location/LocationManagerService;->getOrAddLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object v8

    new-instance v9, Lcom/android/server/location/provider/MockLocationProvider;

    iget-object v10, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/location/util/identity/CallerIdentity;->fromContext(Landroid/content/Context;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v10

    sget-object v11, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {v9, v7, v10, v11}, Lcom/android/server/location/provider/MockLocationProvider;-><init>(Landroid/location/provider/ProviderProperties;Landroid/location/util/identity/CallerIdentity;Ljava/util/Set;)V

    invoke-virtual {v8, v9}, Lcom/android/server/location/provider/LocationProviderManager;->setMockProvider(Lcom/android/server/location/provider/MockLocationProvider;)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1f

    :cond_2d
    const-string/jumbo v3, "sec_location"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v0

    const-string/jumbo v5, "LocationManagerService"

    if-nez v0, :cond_2e

    const-string/jumbo v0, "sLocation is null"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :cond_2e
    sput-object v0, Lcom/android/server/location/LocationManagerService;->mISLocationManager:Lcom/samsung/android/location/ISLocationManager;

    :try_start_f
    new-instance v6, Lcom/android/server/location/LocationManagerService$3;

    invoke-direct {v6, v1}, Lcom/android/server/location/LocationManagerService$3;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-interface {v0, v6}, Lcom/samsung/android/location/ISLocationManager;->setSystemCallV1(Lcom/samsung/android/location/ISLocationSystemCallV1;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto :goto_20

    :catchall_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_30

    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    iget-object v1, v0, Lcom/android/server/location/gnss/GnssManagerService;->mSLocationProxy:Lcom/android/server/location/gnss/sec/SLocationProxy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/location/gnss/sec/SLocationProxy;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    iget-object v3, v0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    if-eqz v3, :cond_2f

    new-instance v6, Lcom/android/server/location/gnss/GnssManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v6, v1}, Lcom/android/server/location/gnss/GnssManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/sec/SLocationProxy;)V

    iput-object v6, v3, Lcom/android/server/location/gnss/GnssLocationProvider;->mSvCallback:Lcom/android/server/location/gnss/GnssManagerService$$ExternalSyntheticLambda0;

    :cond_2f
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusProvider;

    if-eqz v0, :cond_30

    new-instance v3, Lcom/android/server/location/gnss/GnssManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/server/location/gnss/GnssManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/sec/SLocationProxy;)V

    iput-object v3, v0, Lcom/android/server/location/gnss/GnssStatusProvider;->mOnStatusChanged:Lcom/android/server/location/gnss/GnssManagerService$$ExternalSyntheticLambda0;

    :cond_30
    :try_start_10
    sget-object v0, Lcom/android/server/location/LocationManagerService;->mISLocationManager:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v0, v2, v4}, Lcom/samsung/android/location/ISLocationManager;->notifyAppForeground(IZ)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    goto :goto_21

    :catchall_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    :goto_21
    return-void
.end method

.method public final onStart()V
    .locals 2

    const-string/jumbo v0, "location"

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Landroid/location/LocationManager;->invalidateLocalLocationEnabledCaches()V

    invoke-static {}, Landroid/location/LocationManager;->disableLocalLocationEnabledCaches()V

    return-void
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "u"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "LocationManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    const/4 v2, 0x2

    invoke-interface {v1, p1, v2}, Lcom/android/server/location/injector/UserInfoHelper$UserListener;->onUserChanged(II)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/server/location/LocationManagerService;->mISLocationManager:Lcom/samsung/android/location/ISLocationManager;

    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->logLocationEnabledState()V

    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->logEmergencyState()V

    return-void
.end method

.method public final onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "u"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " stopped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    const/4 v1, 0x3

    invoke-interface {v0, p1, v1}, Lcom/android/server/location/injector/UserInfoHelper$UserListener;->onUserChanged(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 7

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p2

    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->getUserManager()Landroid/os/UserManager;

    move-result-object v3

    if-eqz v3, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_1
    invoke-virtual {v3, p2}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "current user changed from u"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to u"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "LocationManagerService"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/server/location/eventlog/LocationEventLog$UserSwitchedEvent;

    invoke-direct {v5, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog$UserSwitchedEvent;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog$1(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    array-length v4, v0

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_2

    aget v6, v0, v5

    invoke-interface {p2, v6, v2}, Lcom/android/server/location/injector/UserInfoHelper$UserListener;->onUserChanged(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    array-length p2, v3

    move v0, v1

    :goto_3
    if-ge v0, p2, :cond_4

    aget v4, v3, v0

    invoke-interface {p1, v4, v2}, Lcom/android/server/location/injector/UserInfoHelper$UserListener;->onUserChanged(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catchall_1
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
