.class public final Lcom/android/server/am/ActivityManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static sAtm:Lcom/android/server/wm/ActivityTaskManagerService;


# instance fields
.field public final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/am/ActivityManagerService;

    sget-object v1, Lcom/android/server/am/ActivityManagerService$Lifecycle;->sAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, p1, v1}, Lcom/android/server/am/ActivityManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    iput p1, v0, Lcom/android/server/am/ActivityManagerService;->mBootPhase:I

    const/16 v1, 0x1f4

    const/4 v2, 0x4

    if-ne p1, v1, :cond_6

    iget-object p1, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mBatteryHistoryDirectory:Lcom/android/server/power/stats/BatteryHistoryDirectory;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mFileCompressionEnabled:Z

    iget-object v1, p1, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    iget-object v4, p1, Lcom/android/server/am/BatteryStatsService;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    iput-boolean v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mSaveBatteryUsageStatsOnReset:Z

    iput-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    iput-object v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    iput-boolean v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mAccumulateBatteryUsageStats:Z

    iget-object v1, p1, Lcom/android/server/am/BatteryStatsService;->mPowerAttributor:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    invoke-virtual {v0, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(I)V

    invoke-virtual {v1, v3}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(I)V

    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(I)V

    invoke-virtual {v1, v4}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(I)V

    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(I)V

    invoke-virtual {v1, v4}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(I)V

    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/16 v5, 0xf

    invoke-virtual {v0, v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(I)V

    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(I)V

    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(I)V

    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(I)V

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(I)V

    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(I)V

    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(I)V

    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(I)V

    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(I)V

    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(I)V

    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(I)V

    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(I)V

    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(I)V

    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(I)V

    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(I)V

    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(I)V

    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(I)V

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(I)V

    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(I)V

    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(I)V

    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(I)V

    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(I)V

    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(I)V

    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(I)V

    iget-object v1, p1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mPowerManagerFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    iget-object v0, v0, Lcom/android/server/power/feature/PowerManagerFlags;->mMoveWscLoggingToNotifier:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v0}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->isEnabled()Z

    move-result v0

    monitor-enter v1

    :try_start_0
    iput-boolean v0, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mMoveWscLoggingToNotifierEnabled:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->systemServicesReady()V

    iput-boolean v3, p1, Lcom/android/server/am/BatteryStatsService;->mSystemServicesReady:Z

    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, p1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->systemServicesReady(Landroid/content/Context;)V

    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    invoke-virtual {v0}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->systemServicesReady()V

    const-string/jumbo v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    :try_start_1
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/android/server/am/BatteryStatsService;->mActivityChangeObserver:Lcom/android/server/am/BatteryStatsService$1;

    invoke-interface {v0, v2}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mNetworkCallback:Lcom/android/server/am/BatteryStatsService$2;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    const-string v1, "BatteryStatsService"

    const-string v2, "Could not register INetworkManagement event observer "

    invoke-static {v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :goto_2
    iget-object v2, p1, Lcom/android/server/am/BatteryStatsService;->mPowerStatsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    const-class v0, Landroid/power/PowerStatsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/power/PowerStatsInternal;

    iput-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/BatteryStatsService;->populatePowerEntityMaps()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :cond_1
    const-string v0, "BatteryStatsService"

    const-string v1, "Could not register PowerStatsInternal"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    const-class v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    iput-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    iget-object v1, p1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    iput-object v1, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    const-string v1, "DeviceBatteryInfoService"

    const-string/jumbo v2, "systemServicesReady()"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "sembatteryservice-handler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mHandlerThread:Landroid/os/HandlerThread;

    new-instance v2, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;)V

    invoke-virtual {v1, v2}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v1, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;

    iget-object v3, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v3, v2, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mContext:Landroid/content/Context;

    iput-object v1, v2, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mHandler:Landroid/os/Handler;

    iput-object v2, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBluetoothDeviceBatteryManager:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;

    new-instance v2, Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mRegistered:Z

    iput-boolean v4, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mScreenOn:Z

    iput v4, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    iput-boolean v4, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mConnected:Z

    iput v4, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAodShowState:I

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mWatchPackageMap:Ljava/util/HashMap;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mProviderUriMap:Ljava/util/HashMap;

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmListener:Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;

    iput-boolean v4, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmRegistered:Z

    iput-object v3, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mContext:Landroid/content/Context;

    iput-object v1, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mHandler:Landroid/os/Handler;

    iput-object v2, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mWatchBatteryManager:Lcom/samsung/android/server/battery/WatchBatteryManager;

    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    const-string/jumbo v2, "android.intent.action.USER_UNLOCKED"

    invoke-static {v1, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;

    const/4 v6, 0x0

    invoke-direct {v3, v0, v6}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;-><init>(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;I)V

    iget-object v6, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v1, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBluetoothDeviceBatteryManager:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v2, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    iput-object v2, v1, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    const-string/jumbo v2, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    const-string/jumbo v3, "com.samsung.bluetooth.device.action.META_DATA_CHANGED"

    const-string/jumbo v6, "com.samsung.bluetooth.device.action.SMEP_CONNECTION_STATE_CHANGED"

    const-string/jumbo v7, "android.bluetooth.device.action.ALIAS_CHANGED"

    const-string/jumbo v8, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-static {v2, v3, v6, v7, v8}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v2

    const-string/jumbo v3, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$1;

    invoke-direct {v6, v1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$1;-><init>(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;)V

    iget-object v1, v1, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6, v2, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v1, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mWatchBatteryManager:Lcom/samsung/android/server/battery/WatchBatteryManager;

    iget-object v2, v1, Lcom/samsung/android/server/battery/WatchBatteryManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/AlarmManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, v1, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v2, Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;

    invoke-direct {v2, v1}, Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;-><init>(Lcom/samsung/android/server/battery/WatchBatteryManager;)V

    iput-object v2, v1, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmListener:Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;

    new-instance v1, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3;

    iget-object v2, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3;-><init>(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;Landroid/os/Handler;I)V

    iput-object v1, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mDeviceNameObserver:Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3;

    iget-object v1, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_name"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mDeviceNameObserver:Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "broadcastreceiver-handler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBroadcastHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBroadcastHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBroadcastHandler:Landroid/os/Handler;

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-static {v1, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;

    const/4 v6, 0x2

    invoke-direct {v3, v0, v6}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;-><init>(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;I)V

    iget-object v6, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBroadcastHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3;

    iget-object v2, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3;-><init>(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;Landroid/os/Handler;I)V

    iput-object v1, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mAodObserver:Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3;

    iget-object v1, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "aod_show_state"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mAodObserver:Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3;

    invoke-virtual {v1, v2, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    new-instance v0, Lcom/android/server/am/DataConnectionStats;

    iget-object v1, p1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/DataConnectionStats;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iget-object v1, v0, Lcom/android/server/am/DataConnectionStats;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget-object v2, v0, Lcom/android/server/am/DataConnectionStats;->mPhoneStateListener:Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;

    const/16 v3, 0x1c1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/am/DataConnectionStats;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/am/DataConnectionStats;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v1, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/StatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;

    invoke-direct {v1, p1}, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    const/16 v3, 0x2780

    invoke-virtual {v0, v3, v5, v2, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    const/16 v3, 0x2781

    invoke-virtual {v0, v3, v5, v2, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    const/16 v3, 0x277f

    invoke-virtual {v0, v3, v5, v2, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    new-instance v3, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v3}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const-wide/16 v5, 0xbb8

    invoke-virtual {v3, v5, v6}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setTimeoutMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v3

    const/16 v5, 0x27e1

    invoke-virtual {v0, v5, v3, v2, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    iget-object p1, p1, Lcom/android/server/am/BatteryStatsService;->mSystemReady:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-nez p1, :cond_2

    const-class p1, Lcom/android/server/AppStateTracker;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/AppStateTracker;

    iput-object p1, p0, Lcom/android/server/am/ActiveServices;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    :cond_2
    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    new-instance v0, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;-><init>(Lcom/android/server/am/ActiveServices;)V

    invoke-interface {p1, v0}, Lcom/android/server/AppStateTracker;->addBackgroundRestrictedAppListener(Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;)V

    const-class p1, Landroid/appwidget/AppWidgetManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/appwidget/AppWidgetManagerInternal;

    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getAttentionServicePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAllowListWhileInUsePermissionInFgs:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getSystemCaptionsServicePackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAllowListWhileInUsePermissionInFgs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {}, Landroid/app/ForegroundServiceTypePolicy;->getDefaultPolicy()Landroid/app/ForegroundServiceTypePolicy;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v4}, Landroid/app/ForegroundServiceTypePolicy;->getForegroundServiceTypePolicyInfo(II)Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance v0, Lcom/android/server/am/ActiveServices$SystemExemptedFgsTypePermission;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActiveServices$SystemExemptedFgsTypePermission;-><init>(Lcom/android/server/am/ActiveServices;I)V

    invoke-virtual {p1, v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->setCustomPermission(Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;)V

    :cond_5
    invoke-static {}, Landroid/app/ForegroundServiceTypePolicy;->getDefaultPolicy()Landroid/app/ForegroundServiceTypePolicy;

    move-result-object p1

    const/16 v0, 0x20

    invoke-virtual {p1, v0, v4}, Landroid/app/ForegroundServiceTypePolicy;->getForegroundServiceTypePolicyInfo(II)Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    move-result-object p1

    if-eqz p1, :cond_a

    new-instance v0, Lcom/android/server/am/ActiveServices$SystemExemptedFgsTypePermission;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActiveServices$SystemExemptedFgsTypePermission;-><init>(Lcom/android/server/am/ActiveServices;I)V

    invoke-virtual {p1, v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->setCustomPermission(Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;)V

    goto/16 :goto_8

    :goto_4
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_6
    const/16 v1, 0x226

    if-ne p1, v1, :cond_7

    iget-object p0, v0, Lcom/android/server/am/ActivityManagerService;->mBroadcastController:Lcom/android/server/am/BroadcastController;

    iget-object p1, p0, Lcom/android/server/am/BroadcastController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueueImpl;

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mFgConstants:Lcom/android/server/am/BroadcastConstants;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/BroadcastConstants;->startObserving(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBgConstants:Lcom/android/server/am/BroadcastConstants;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/BroadcastConstants;->startObserving(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    new-instance v4, Lcom/android/server/am/BroadcastQueueImpl$1;

    invoke-direct {v4, p0}, Lcom/android/server/am/BroadcastQueueImpl$1;-><init>(Lcom/android/server/am/BroadcastQueueImpl;)V

    const-string/jumbo v7, "android"

    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityManagerService;->registerUidObserverForUids(Landroid/app/IUidObserver;IILjava/lang/String;[I)Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_7
    const/16 v1, 0x258

    if-ne p1, v1, :cond_a

    iget-object p1, v0, Lcom/android/server/am/ActivityManagerService;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    iget-object v1, p1, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p1, Lcom/android/server/PackageWatchdog;->mIsPackagesReady:Z

    iget-object v0, p1, Lcom/android/server/PackageWatchdog;->mHealthCheckController:Lcom/android/server/ExplicitHealthCheckController;

    new-instance v2, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda7;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/PackageWatchdog;I)V

    new-instance v3, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda7;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/PackageWatchdog;I)V

    new-instance v4, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;

    const/4 v5, 0x5

    invoke-direct {v4, p1, v5}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/PackageWatchdog;I)V

    iget-object v5, v0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iget-object v6, v0, Lcom/android/server/ExplicitHealthCheckController;->mPassedConsumer:Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda7;

    if-nez v6, :cond_8

    iget-object v6, v0, Lcom/android/server/ExplicitHealthCheckController;->mSupportedConsumer:Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda7;

    if-nez v6, :cond_8

    iget-object v6, v0, Lcom/android/server/ExplicitHealthCheckController;->mNotifySyncRunnable:Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;

    if-eqz v6, :cond_9

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :cond_8
    :goto_5
    const-string v6, "ExplicitHealthCheckController"

    const-string/jumbo v7, "Resetting health check controller callbacks"

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iput-object v2, v0, Lcom/android/server/ExplicitHealthCheckController;->mPassedConsumer:Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda7;

    iput-object v3, v0, Lcom/android/server/ExplicitHealthCheckController;->mSupportedConsumer:Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda7;

    iput-object v4, v0, Lcom/android/server/ExplicitHealthCheckController;->mNotifySyncRunnable:Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    iget-object v0, p1, Lcom/android/server/PackageWatchdog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/PackageWatchdog;->mOnPropertyChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const-string/jumbo v3, "rollback"

    invoke-static {v3, v0, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    invoke-virtual {p1}, Lcom/android/server/PackageWatchdog;->updateConfigs()V

    new-instance v0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/PackageWatchdog;)V

    iget-object p1, p1, Lcom/android/server/PackageWatchdog;->mConnectivityModuleConnector:Landroid/net/ConnectivityModuleConnector;

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityModuleConnector;->registerHealthListener(Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;)V

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "ActivityManager"

    const-string/jumbo p1, "ThemeHomeDelay: Home launch is not delayable, skipping timeout creation"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_3
    move-exception v0

    move-object p0, v0

    goto :goto_7

    :goto_6
    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw p0

    :goto_7
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw p0

    :cond_a
    :goto_8
    return-void
.end method

.method public final onStart()V
    .locals 3

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$LocalService;

    invoke-direct {v1, v0}, Lcom/android/server/am/BatteryStatsService$LocalService;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    const-class v2, Landroid/os/BatteryStatsInternal;

    invoke-static {v2, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-string/jumbo v1, "batterystats"

    invoke-virtual {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    new-instance v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-direct {v0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;-><init>()V

    const-class v1, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-static {v1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    const-string/jumbo v1, "appops"

    invoke-virtual {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v1, Landroid/app/AppOpsManagerInternal;

    iget-object v2, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsManagerInternal:Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v1, Lcom/android/server/appop/AppOpsService$7;

    invoke-direct {v1, v0}, Lcom/android/server/appop/AppOpsService$7;-><init>(Lcom/android/server/appop/AppOpsService;)V

    const-class v0, Lcom/android/server/appop/AppOpsManagerLocal;

    invoke-static {v0, v1}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v1, Lcom/android/internal/app/procstats/ProcessStatsInternal;

    new-instance v2, Lcom/android/server/am/ProcessStatsService$LocalService;

    invoke-direct {v2, v0}, Lcom/android/server/am/ProcessStatsService$LocalService;-><init>(Lcom/android/server/am/ProcessStatsService;)V

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-string v0, "AppOps"

    const-string v1, "AppOpsService published"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Landroid/app/ActivityManagerInternal;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v0, Lcom/android/server/am/ActivityManagerLocal;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    check-cast v1, Lcom/android/server/am/ActivityManagerLocal;

    invoke-static {v0, v1}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_0
    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    iput-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-class v2, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/uri/UriGrantsManagerInternal;

    iput-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    iget-object v2, v0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, v0, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuThread:Lcom/android/server/am/AppProfiler$ProcessCpuThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :try_start_2
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    return-void

    :catch_0
    move-exception p0

    const-string v0, "ActivityManager"

    const-string v1, "Interrupted wait during start"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v3

    iget-object v7, v2, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, v2, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;-><init>(Lcom/android/server/am/BatteryStatsService;IJI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPrivateSpaceBootCompletedPackages:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_0
    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
