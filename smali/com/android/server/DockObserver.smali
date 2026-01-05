.class public final Lcom/android/server/DockObserver;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mActualDockState:I

.field public mActualUsbpdIds:Ljava/lang/String;

.field public final mAllowTheaterModeWakeFromDock:Z

.field public final mCcicObserver:Lcom/android/server/DockObserver$2;

.field public final mDeviceProvisionedObserver:Lcom/android/server/DockObserver$DeviceProvisionedObserver;

.field public final mExtconStateConfigs:Ljava/util/List;

.field public final mExtconUEventObserver:Lcom/android/server/DockObserver$1;

.field public final mHandler:Landroid/os/Handler;

.field public final mKeepDreamingWhenUnplugging:Z

.field public mLastUeventDevice:I

.field public final mLock:Ljava/lang/Object;

.field public final mLogRecent:Lcom/android/server/DockObserver$LogRecent;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mPreviousDockState:I

.field public mReportedDockState:I

.field public mReportedUsbpdIds:Ljava/lang/String;

.field public mSystemReady:Z

.field public mUpdatesStopped:Z

.field public mUsbpdIds:Ljava/lang/String;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iput v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    iput v0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/DockObserver;->mLastUeventDevice:I

    new-instance v1, Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/DockObserver$1;

    invoke-direct {v3, p0}, Lcom/android/server/DockObserver$1;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v3, p0, Lcom/android/server/DockObserver;->mExtconUEventObserver:Lcom/android/server/DockObserver$1;

    new-instance v3, Lcom/android/server/DockObserver$2;

    invoke-direct {v3, p0}, Lcom/android/server/DockObserver$2;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v3, p0, Lcom/android/server/DockObserver;->mCcicObserver:Lcom/android/server/DockObserver$2;

    const-string/jumbo v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    const-string v4, "DockObserver"

    invoke-virtual {v3, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11101dd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/DockObserver;->mKeepDreamingWhenUnplugging:Z

    new-instance v3, Lcom/android/server/DockObserver$DeviceProvisionedObserver;

    invoke-direct {v3, p0, v1}, Lcom/android/server/DockObserver$DeviceProvisionedObserver;-><init>(Lcom/android/server/DockObserver;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/DockObserver;->mDeviceProvisionedObserver:Lcom/android/server/DockObserver$DeviceProvisionedObserver;

    new-instance v1, Lcom/android/server/DockObserver$LogRecent;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput v0, v1, Lcom/android/server/DockObserver$LogRecent;->mCurrentUeventLogIndex:I

    iput v0, v1, Lcom/android/server/DockObserver$LogRecent;->mCurrentReportLogIndex:I

    const/16 v3, 0xa

    new-array v4, v3, [J

    iput-object v4, v1, Lcom/android/server/DockObserver$LogRecent;->uEventTime:[J

    new-array v4, v3, [I

    iput-object v4, v1, Lcom/android/server/DockObserver$LogRecent;->uEventType:[I

    new-array v4, v3, [J

    iput-object v4, v1, Lcom/android/server/DockObserver$LogRecent;->reportTime:[J

    new-array v4, v3, [I

    iput-object v4, v1, Lcom/android/server/DockObserver$LogRecent;->report:[I

    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, v1, Lcom/android/server/DockObserver$LogRecent;->uEventUsbpdIds:[Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v1, Lcom/android/server/DockObserver$LogRecent;->reportUsbpdIds:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$LogRecent;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x10700f5

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v3, p1

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p1, v4

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/server/DockObserver$ExtconStateConfig;

    aget-object v7, v5, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v6, v7}, Lcom/android/server/DockObserver$ExtconStateConfig;-><init>(I)V

    move v7, v2

    :goto_1
    array-length v8, v5

    if-ge v7, v8, :cond_1

    aget-object v8, v5, v7

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    iget-object v9, v6, Lcom/android/server/DockObserver$ExtconStateConfig;->keyValuePairs:Ljava/util/List;

    aget-object v10, v8, v0

    aget-object v8, v8, v2

    invoke-static {v10, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key-value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v5, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :goto_2
    const-string v1, "DockObserver"

    const-string v2, "Could not parse extcon state config"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    iput-object v1, p0, Lcom/android/server/DockObserver;->mExtconStateConfigs:Ljava/util/List;

    const-string p1, "DOCK"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getExtconInfoForTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    const-string v2, "DockObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found extcon info devPath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getDevicePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", statePath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mName:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "/sys/class/extcon/%s/state"

    invoke-static {v5, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p1, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mName:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "/sys/class/extcon/%s/state"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/DockObserver$ExtconStateProvider;->fromFile(Ljava/lang/String;)Lcom/android/server/DockObserver$ExtconStateProvider;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/DockObserver;->setDockStateFromProviderLocked(Lcom/android/server/DockObserver$ExtconStateProvider;)V

    iget v2, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iput v2, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    iget-object v2, p0, Lcom/android/server/DockObserver;->mExtconUEventObserver:Lcom/android/server/DockObserver$1;

    invoke-virtual {v2, p1}, Lcom/android/server/ExtconUEventObserver;->startObserving(Lcom/android/server/ExtconUEventObserver$ExtconInfo;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_3
    const-string p1, "DockObserver"

    const-string/jumbo v2, "No extcon dock device found in this kernel."

    invoke-static {p1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance p1, Lcom/android/server/DockObserver$DockObserverLocalService;

    invoke-direct {p1, p0}, Lcom/android/server/DockObserver$DockObserverLocalService;-><init>(Lcom/android/server/DockObserver;)V

    const-class v1, Lcom/android/server/DockObserver$DockObserverLocalService;

    invoke-static {v1, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    iget p1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    if-nez p1, :cond_4

    const/16 p1, 0x400

    :try_start_2
    new-array v1, p1, [C

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/sys/class/sec/ccic/usbpd_ids"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v2, v1, v0, p1}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DockObserver;->mUsbpdIds:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    new-array v1, p1, [C

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/sys/class/sec/ccic/usbpd_type"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    invoke-virtual {v2, v1, v0, p1}, Ljava/io/FileReader;->read([CII)I

    move-result p1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v0, p1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    iget p1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iput p1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    goto :goto_5

    :catch_1
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    throw p1

    :catchall_2
    move-exception p1

    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    throw p1
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :goto_4
    const-string v0, "DockObserver"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catch_2
    const-string p1, "DockObserver"

    const-string/jumbo v0, "This kernel does not have ccic dock station support"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_5
    iget-object p0, p0, Lcom/android/server/DockObserver;->mCcicObserver:Lcom/android/server/DockObserver$2;

    const-string p1, "DEVPATH=/devices/virtual/sec/ccic"

    invoke-virtual {p0, p1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    return-void

    :goto_6
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 2

    const/16 v0, 0x226

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    iget-object v0, p0, Lcom/android/server/DockObserver;->mDeviceProvisionedObserver:Lcom/android/server/DockObserver$DeviceProvisionedObserver;

    invoke-virtual {v0}, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->updateRegistration()V

    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Lcom/android/server/DockObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/DockObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/DockObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 2

    new-instance v0, Lcom/android/server/DockObserver$BinderService;

    invoke-direct {v0, p0}, Lcom/android/server/DockObserver$BinderService;-><init>(Lcom/android/server/DockObserver;)V

    const-string v1, "DockObserver"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final setActualDockStateLocked(I)V
    .locals 3

    iput p1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iget-object v0, p0, Lcom/android/server/DockObserver;->mUsbpdIds:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/DockObserver;->mActualUsbpdIds:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$LogRecent;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/DockObserver$LogRecent;->log(IILjava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    :cond_1
    return-void
.end method

.method public setDockStateFromProviderForTesting(Lcom/android/server/DockObserver$ExtconStateProvider;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DockObserver;->setDockStateFromProviderLocked(Lcom/android/server/DockObserver$ExtconStateProvider;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setDockStateFromProviderLocked(Lcom/android/server/DockObserver$ExtconStateProvider;)V
    .locals 11

    iget-object v0, p1, Lcom/android/server/DockObserver$ExtconStateProvider;->mState:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "DOCK"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/DockObserver;->mExtconStateConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DockObserver$ExtconStateConfig;

    iget-object v4, v2, Lcom/android/server/DockObserver$ExtconStateConfig;->keyValuePairs:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v7, v1

    move v6, v3

    :cond_1
    if-ge v7, v5, :cond_3

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Landroid/util/Pair;

    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, p1, Lcom/android/server/DockObserver$ExtconStateProvider;->mState:Ljava/util/Map;

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v3

    goto :goto_0

    :cond_2
    move v6, v1

    :goto_0
    if-nez v6, :cond_1

    :cond_3
    if-eqz v6, :cond_0

    iget p1, v2, Lcom/android/server/DockObserver$ExtconStateConfig;->extraStateValue:I

    move v1, p1

    goto :goto_1

    :cond_4
    move v1, v3

    :cond_5
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    return-void
.end method

.method public final setDockStateLocked(I)V
    .locals 4

    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eq p1, v0, :cond_3

    iput p1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/16 v0, 0x1d6

    invoke-static {v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    iget-object p1, p0, Lcom/android/server/DockObserver;->mActualUsbpdIds:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/DockObserver;->mReportedUsbpdIds:Ljava/lang/String;

    iget-boolean p1, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/server/DockObserver;->mKeepDreamingWhenUnplugging:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "theater_mode_on"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0x12

    const-string/jumbo v3, "android.server:DOCK"

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v0, Lcom/android/server/DockObserver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/DockObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/DockObserver;)V

    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method
