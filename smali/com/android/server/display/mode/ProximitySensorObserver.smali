.class public final Lcom/android/server/display/mode/ProximitySensorObserver;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

.field public final mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

.field public mIsProxActive:Z

.field public final mSensorObserverLock:Ljava/lang/Object;

.field public final mVotesStorage:Lcom/android/server/display/mode/VotesStorage;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/VotesStorage;Lcom/android/server/display/mode/DisplayModeDirector$Injector;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mIsProxActive:Z

    iput-object p1, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    iput-object p2, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    return-void
.end method


# virtual methods
.method public final observe()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    check-cast v0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    check-cast v0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lcom/android/server/sensors/SensorService$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sensors/SensorService$LocalService;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "executor must not be null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/sensors/SensorService$ProximityListenerProxy;

    invoke-direct {v2, v1, p0}, Lcom/android/server/sensors/SensorService$ProximityListenerProxy;-><init>(Ljava/util/concurrent/Executor;Lcom/android/server/display/mode/ProximitySensorObserver;)V

    iget-object v1, v0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    iget-object v1, v1, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v3, v0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    iget-object v3, v3, Lcom/android/server/sensors/SensorService;->mProximityListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    iget-object v3, v3, Lcom/android/server/sensors/SensorService;->mProximityListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, p0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    iget-object v2, v2, Lcom/android/server/sensors/SensorService;->mProximityListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v0, v0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    iget-wide v2, v0, Lcom/android/server/sensors/SensorService;->mPtr:J

    invoke-static {v2, v3}, Lcom/android/server/sensors/SensorService;->-$$Nest$smregisterProximityActiveListenerNative(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    check-cast v1, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    invoke-virtual {v1}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplays()[Landroid/view/Display;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    check-cast v7, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/view/Display;->getState()I

    move-result v4

    invoke-static {v4}, Landroid/view/Display;->isDozeState(I)Z

    move-result v4

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    check-cast v0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    const-wide/16 v2, 0x7

    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    return-void

    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_2
    :try_start_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "listener already registered"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final onDisplayAdded(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    check-cast v0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v0

    invoke-static {v0}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {p0}, Lcom/android/server/display/mode/ProximitySensorObserver;->recalculateVotesLocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onDisplayChanged(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    iget-object v3, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    move-object v4, v3

    check-cast v4, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    invoke-virtual {v4}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    check-cast v3, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Landroid/view/Display;->getState()I

    move-result v3

    invoke-static {v3}, Landroid/view/Display;->isDozeState(I)Z

    move-result v3

    :goto_0
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v2, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-eq v1, p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/display/mode/ProximitySensorObserver;->recalculateVotesLocked()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onDisplayRemoved(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    invoke-virtual {p0}, Lcom/android/server/display/mode/ProximitySensorObserver;->recalculateVotesLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onProximityActive(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mIsProxActive:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mIsProxActive:Z

    invoke-virtual {p0}, Lcom/android/server/display/mode/ProximitySensorObserver;->recalculateVotesLocked()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final recalculateVotesLocked()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    check-cast v0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    iget-boolean v4, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mIsProxActive:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const-string/jumbo v6, "android.sensor.proximity"

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/display/DisplayManagerInternal;->getRefreshRateForDisplayAndSensor(ILjava/lang/String;Ljava/lang/String;)Landroid/view/SurfaceControl$RefreshRateRange;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v5, v4, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iget v4, v4, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    invoke-static {v5, v4}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/CombinedVote;

    move-result-object v5

    :cond_0
    iget-object v4, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v6, 0x1a

    invoke-virtual {v4, v3, v6, v5}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
