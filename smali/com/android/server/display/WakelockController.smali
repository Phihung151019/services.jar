.class public final Lcom/android/server/display/WakelockController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEBUG:Z

.field static final WAKE_LOCK_MAX:I = 0x8


# instance fields
.field public final mDisplayId:I

.field public final mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field public mHasProximityDebounced:Z

.field public mIsEarlyWakeupRequested:Z

.field public mIsOverrideDozeScreenStateAcquired:Z

.field public mIsProximityNegativeAcquired:Z

.field public mIsProximityPositiveAcquired:Z

.field public mIsRefreshRateRequested:Z

.field public final mLock:Ljava/lang/Object;

.field public mOnStateChangedPending:Z

.field public final mSuspendBlockerIdEarlyWakeup:Ljava/lang/String;

.field public final mSuspendBlockerIdOnStateChanged:Ljava/lang/String;

.field public final mSuspendBlockerIdProxDebounce:Ljava/lang/String;

.field public final mSuspendBlockerIdProxNegative:Ljava/lang/String;

.field public final mSuspendBlockerIdProxPositive:Ljava/lang/String;

.field public final mSuspendBlockerIdRefreshRate:Ljava/lang/String;

.field public final mSuspendBlockerIdUnfinishedBusiness:Ljava/lang/String;

.field public final mSuspendBlockerOverrideDozeScreenState:Ljava/lang/String;

.field public final mTag:Ljava/lang/String;

.field public mUnfinishedBusiness:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "WakelockController"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/WakelockController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(ILandroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/WakelockController;->mLock:Ljava/lang/Object;

    iput p1, p0, Lcom/android/server/display/WakelockController;->mDisplayId:I

    const-string/jumbo v0, "WakelockController["

    const-string/jumbo v1, "]"

    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WakelockController;->mTag:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    const-string/jumbo p2, "["

    const-string/jumbo v0, "]unfinished business"

    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdUnfinishedBusiness:Ljava/lang/String;

    const-string/jumbo v0, "]override doze screen state"

    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerOverrideDozeScreenState:Ljava/lang/String;

    const-string/jumbo v0, "]on state changed"

    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdOnStateChanged:Ljava/lang/String;

    const-string/jumbo v0, "]prox positive"

    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxPositive:Ljava/lang/String;

    const-string/jumbo v0, "]prox negative"

    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxNegative:Ljava/lang/String;

    const-string/jumbo v0, "]prox debounce"

    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxDebounce:Ljava/lang/String;

    const-string/jumbo v0, "]vrr ramp animation"

    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdRefreshRate:Ljava/lang/String;

    const-string/jumbo v0, "]early wakeup"

    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdEarlyWakeup:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final acquireWakelock(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Invalid wakelock attempted to be acquired"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-boolean p1, p0, Lcom/android/server/display/WakelockController;->mIsEarlyWakeupRequested:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdEarlyWakeup:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mIsEarlyWakeupRequested:Z

    return v1

    :pswitch_1
    iget-boolean p1, p0, Lcom/android/server/display/WakelockController;->mIsRefreshRateRequested:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdRefreshRate:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mIsRefreshRateRequested:Z

    return v1

    :pswitch_2
    iget-boolean p1, p0, Lcom/android/server/display/WakelockController;->mUnfinishedBusiness:Z

    if-nez p1, :cond_4

    sget-boolean p1, Lcom/android/server/display/WakelockController;->DEBUG:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mTag:Ljava/lang/String;

    const-string/jumbo v0, "Unfinished business..."

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdUnfinishedBusiness:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mUnfinishedBusiness:Z

    return v1

    :pswitch_3
    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/display/WakelockController;->mIsOverrideDozeScreenStateAcquired:Z

    if-nez v2, :cond_2

    sget-boolean v0, Lcom/android/server/display/WakelockController;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mTag:Ljava/lang/String;

    const-string v2, "Acquiring suspend blocker to override the doze screen state..."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerOverrideDozeScreenState:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mIsOverrideDozeScreenStateAcquired:Z

    move v0, v1

    :cond_2
    monitor-exit p1

    return v0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_4
    iget-boolean p1, p0, Lcom/android/server/display/WakelockController;->mOnStateChangedPending:Z

    if-nez p1, :cond_4

    sget-boolean p1, Lcom/android/server/display/WakelockController;->DEBUG:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mTag:Ljava/lang/String;

    const-string/jumbo v0, "State Changed..."

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdOnStateChanged:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mOnStateChangedPending:Z

    return v1

    :pswitch_5
    iget-boolean p1, p0, Lcom/android/server/display/WakelockController;->mHasProximityDebounced:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxDebounce:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mHasProximityDebounced:Z

    return v1

    :pswitch_6
    iget-boolean p1, p0, Lcom/android/server/display/WakelockController;->mIsProximityNegativeAcquired:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxNegative:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mIsProximityNegativeAcquired:Z

    return v1

    :pswitch_7
    iget-boolean p1, p0, Lcom/android/server/display/WakelockController;->mIsProximityPositiveAcquired:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxPositive:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mIsProximityPositiveAcquired:Z

    return v1

    :cond_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSuspendBlockerOnStateChangedId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdOnStateChanged:Ljava/lang/String;

    return-object p0
.end method

.method public getSuspendBlockerOverrideDozeScreenState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerOverrideDozeScreenState:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSuspendBlockerProxDebounceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxDebounce:Ljava/lang/String;

    return-object p0
.end method

.method public getSuspendBlockerProxNegativeId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxNegative:Ljava/lang/String;

    return-object p0
.end method

.method public getSuspendBlockerProxPositiveId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxPositive:Ljava/lang/String;

    return-object p0
.end method

.method public getSuspendBlockerUnfinishedBusinessId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdUnfinishedBusiness:Ljava/lang/String;

    return-object p0
.end method

.method public hasProximitySensorDebounced()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/WakelockController;->mHasProximityDebounced:Z

    return p0
.end method

.method public hasUnfinishedBusiness()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/WakelockController;->mUnfinishedBusiness:Z

    return p0
.end method

.method public isEarlyWakeupRequested()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/WakelockController;->mIsEarlyWakeupRequested:Z

    return p0
.end method

.method public isOnStateChangedPending()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/WakelockController;->mOnStateChangedPending:Z

    return p0
.end method

.method public isOverrideDozeScreenStateAcquired()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WakelockController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/display/WakelockController;->mIsOverrideDozeScreenStateAcquired:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isProximityNegativeAcquired()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/WakelockController;->mIsProximityNegativeAcquired:Z

    return p0
.end method

.method public isProximityPositiveAcquired()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/WakelockController;->mIsProximityPositiveAcquired:Z

    return p0
.end method

.method public isRefreshRateRequested()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/WakelockController;->mIsRefreshRateRequested:Z

    return p0
.end method

.method public final releaseWakelock()V
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/server/display/WakelockController;->releaseWakelockInternal(I)Z

    return-void
.end method

.method public final releaseWakelockInternal(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Invalid wakelock attempted to be released"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-boolean p1, p0, Lcom/android/server/display/WakelockController;->mIsEarlyWakeupRequested:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdEarlyWakeup:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mIsEarlyWakeupRequested:Z

    return v0

    :pswitch_1
    iget-boolean p1, p0, Lcom/android/server/display/WakelockController;->mIsRefreshRateRequested:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdRefreshRate:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mIsRefreshRateRequested:Z

    return v0

    :pswitch_2
    iget-boolean p1, p0, Lcom/android/server/display/WakelockController;->mUnfinishedBusiness:Z

    if-eqz p1, :cond_3

    sget-boolean p1, Lcom/android/server/display/WakelockController;->DEBUG:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mTag:Ljava/lang/String;

    const-string v2, "Finished business..."

    invoke-static {p1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdUnfinishedBusiness:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mUnfinishedBusiness:Z

    return v0

    :pswitch_3
    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/display/WakelockController;->mIsOverrideDozeScreenStateAcquired:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/android/server/display/WakelockController;->DEBUG:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/display/WakelockController;->mTag:Ljava/lang/String;

    const-string v3, "Finished overriding doze screen state..."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v3, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerOverrideDozeScreenState:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mIsOverrideDozeScreenStateAcquired:Z

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    monitor-exit p1

    return v0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_4
    iget-boolean p1, p0, Lcom/android/server/display/WakelockController;->mOnStateChangedPending:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdOnStateChanged:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mOnStateChangedPending:Z

    return v0

    :pswitch_5
    iget-boolean p1, p0, Lcom/android/server/display/WakelockController;->mHasProximityDebounced:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxDebounce:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mHasProximityDebounced:Z

    return v0

    :pswitch_6
    iget-boolean p1, p0, Lcom/android/server/display/WakelockController;->mIsProximityNegativeAcquired:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxNegative:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mIsProximityNegativeAcquired:Z

    return v0

    :pswitch_7
    iget-boolean p1, p0, Lcom/android/server/display/WakelockController;->mIsProximityPositiveAcquired:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/display/WakelockController;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v2, p0, Lcom/android/server/display/WakelockController;->mSuspendBlockerIdProxPositive:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/display/WakelockController;->mIsProximityPositiveAcquired:Z

    return v0

    :cond_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
