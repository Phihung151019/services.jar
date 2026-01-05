.class public final Lcom/android/server/display/mode/DisplayModeDirector;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAlwaysRespectAppRequest:Z

.field public final mAppRequestObserver:Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;

.field public mAppSupportedModesByDisplay:Landroid/util/SparseArray;

.field public mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

.field public mCommittedDeviceState:I

.field public final mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

.field public final mContext:Landroid/content/Context;

.field public mDefaultDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field public mDefaultModeByDisplay:Landroid/util/SparseArray;

.field public mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;

.field public final mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

.field public mDeviceState:I

.field public mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

.field public final mDisplayDeviceConfigProvider:Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda5;

.field public final mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final mDisplayObserver:Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;

.field public final mExternalDisplaysConnected:Ljava/util/Set;

.field public final mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

.field public final mHasArrSupport:Landroid/util/SparseBooleanArray;

.field public final mHasArrSupportFlagEnabled:Z

.field public final mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

.field public final mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

.field public final mIsDisplayResolutionRangeVotingEnabled:Z

.field public final mIsDisplaysRefreshRatesSynchronizationEnabled:Z

.field public final mIsExternalDisplayLimitModeEnabled:Z

.field public final mIsUserPreferredModeVoteEnabled:Z

.field public final mLock:Ljava/lang/Object;

.field public mLoggingEnabled:Z

.field public final mModeChangeObserver:Lcom/android/server/display/mode/ModeChangeObserver;

.field public mModeSwitchingType:I

.field public final mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

.field public final mSensorObserver:Lcom/android/server/display/mode/ProximitySensorObserver;

.field public final mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

.field public final mSkinThermalStatusObserver:Lcom/android/server/display/mode/SkinThermalStatusObserver;

.field public mSupportedModesByDisplay:Landroid/util/SparseArray;

.field public final mSupportsFrameRateOverride:Z

.field public final mSystemRequestObserver:Lcom/android/server/display/mode/SystemRequestObserver;

.field public final mUdfpsObserver:Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

.field public final mVotesStatsReporter:Lcom/android/server/display/mode/VotesStatsReporter;

.field public final mVotesStorage:Lcom/android/server/display/mode/VotesStorage;


# direct methods
.method public static -$$Nest$mgetMaxRefreshRateLocked(Lcom/android/server/display/mode/DisplayModeDirector;I)F
    .locals 4

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/Display$Mode;

    array-length p1, p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v3

    cmpl-float v3, v3, v0

    if-lez v3, :cond_0

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda5;)V
    .locals 11

    new-instance v2, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    invoke-direct {v2, p1}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mExternalDisplaysConnected:Ljava/util/Set;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    if-nez v0, :cond_0

    move v0, v7

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    iput v7, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mCommittedDeviceState:I

    iput v7, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDeviceState:I

    iget-object v0, p3, Lcom/android/server/display/feature/DisplayManagerFlags;->mExternalDisplayLimitModeState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsDisplayResolutionRangeVotingEnabled:Z

    iget-object v0, p3, Lcom/android/server/display/feature/DisplayManagerFlags;->mExternalDisplayLimitModeState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsUserPreferredModeVoteEnabled:Z

    iget-object v0, p3, Lcom/android/server/display/feature/DisplayManagerFlags;->mExternalDisplayLimitModeState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsExternalDisplayLimitModeEnabled:Z

    iget-object v0, p3, Lcom/android/server/display/feature/DisplayManagerFlags;->mExternalDisplayLimitModeState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsDisplaysRefreshRatesSynchronizationEnabled:Z

    invoke-virtual {p3}, Lcom/android/server/display/feature/DisplayManagerFlags;->isBackUpSmoothDisplayAndForcePeakRefreshRateEnabled()Z

    iget-object v0, p3, Lcom/android/server/display/feature/DisplayManagerFlags;->mHasArrSupport:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHasArrSupportFlagEnabled:Z

    iput-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iput-object p4, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigProvider:Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda5;

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    new-instance p4, Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p4, p0, v0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    iput-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    new-instance p4, Lcom/android/server/display/mode/VotesStatsReporter;

    const-string/jumbo v8, "ro.surface_flinger.enable_frame_rate_override"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/sysprop/SurfaceFlingerProperties;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v9}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p4, v0}, Lcom/android/server/display/mode/VotesStatsReporter;-><init>(Z)V

    iput-object p4, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStatsReporter:Lcom/android/server/display/mode/VotesStatsReporter;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHasArrSupport:Landroid/util/SparseBooleanArray;

    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;

    invoke-direct {v0, p0, p3}, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;

    new-instance v0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    new-instance v10, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    invoke-direct {v10, p0}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;)V

    iput-object v10, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    move-object v1, p0

    move-object v3, p2

    move-object v5, p3

    move-object v4, v2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;Lcom/android/server/display/mode/DisplayModeDirector$Injector;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    move-object p0, v2

    move-object p1, v3

    move-object v2, v4

    move-object p2, v5

    iput-object v0, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    const/4 p3, 0x0

    iput-object p3, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

    invoke-direct {v0, v1}, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;)V

    iput-object v0, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

    new-instance v3, Lcom/android/server/display/mode/VotesStorage;

    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lcom/android/server/display/mode/DisplayModeDirector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;)V

    invoke-direct {v3, v0, p4}, Lcom/android/server/display/mode/VotesStorage;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$$ExternalSyntheticLambda0;Lcom/android/server/display/mode/VotesStatsReporter;)V

    iput-object v3, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    new-instance p4, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;

    invoke-direct {p4, v1, p0, p1, v3}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;Lcom/android/server/display/mode/VotesStorage;)V

    iput-object p4, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;

    new-instance p4, Lcom/android/server/display/mode/ProximitySensorObserver;

    invoke-direct {p4, v3, v2}, Lcom/android/server/display/mode/ProximitySensorObserver;-><init>(Lcom/android/server/display/mode/VotesStorage;Lcom/android/server/display/mode/DisplayModeDirector$Injector;)V

    iput-object p4, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mSensorObserver:Lcom/android/server/display/mode/ProximitySensorObserver;

    new-instance p4, Lcom/android/server/display/mode/SkinThermalStatusObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p4, v2, v3, v0}, Lcom/android/server/display/mode/SkinThermalStatusObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$Injector;Lcom/android/server/display/mode/VotesStorage;Landroid/os/Handler;)V

    iput-object p4, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mSkinThermalStatusObserver:Lcom/android/server/display/mode/SkinThermalStatusObserver;

    new-instance p4, Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p4, v3, v2, v0}, Lcom/android/server/display/mode/ModeChangeObserver;-><init>(Lcom/android/server/display/mode/VotesStorage;Lcom/android/server/display/mode/DisplayModeDirector$Injector;Landroid/os/Looper;)V

    iput-object p4, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mModeChangeObserver:Lcom/android/server/display/mode/ModeChangeObserver;

    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Lcom/android/server/display/mode/DisplayModeDirector$Injector;Lcom/android/server/display/mode/VotesStorage;Landroid/os/Handler;Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;)V

    iput-object v0, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    iget-object p2, p2, Lcom/android/server/display/feature/DisplayManagerFlags;->mRestrictDisplayModes:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {p2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lcom/android/server/display/mode/SystemRequestObserver;

    invoke-direct {p2, v3}, Lcom/android/server/display/mode/SystemRequestObserver;-><init>(Lcom/android/server/display/mode/VotesStorage;)V

    iput-object p2, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mSystemRequestObserver:Lcom/android/server/display/mode/SystemRequestObserver;

    goto :goto_1

    :cond_1
    iput-object p3, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mSystemRequestObserver:Lcom/android/server/display/mode/SystemRequestObserver;

    :goto_1
    iput-boolean v7, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/sysprop/SurfaceFlingerProperties;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2, v9}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportsFrameRateOverride:Z

    new-instance p2, Lcom/android/server/display/mode/RefreshRateModeManager;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    new-instance p4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p4, p2, Lcom/android/server/display/mode/RefreshRateModeManager;->mDisplayToken:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p2, Lcom/android/server/display/mode/RefreshRateModeManager;->mModeSettingsObserver:Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;

    new-instance p4, Lcom/android/server/display/mode/RefreshRateModeManager$1;

    invoke-direct {p4, p2}, Lcom/android/server/display/mode/RefreshRateModeManager$1;-><init>(Lcom/android/server/display/mode/RefreshRateModeManager;)V

    iput-object p4, p2, Lcom/android/server/display/mode/RefreshRateModeManager;->mDisplayStateListener:Lcom/android/server/display/mode/RefreshRateModeManager$1;

    iput-object p0, p2, Lcom/android/server/display/mode/RefreshRateModeManager;->mContext:Landroid/content/Context;

    iput-object p1, p2, Lcom/android/server/display/mode/RefreshRateModeManager;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iput-object v6, p2, Lcom/android/server/display/mode/RefreshRateModeManager;->mLock:Ljava/lang/Object;

    iput-object v1, p2, Lcom/android/server/display/mode/RefreshRateModeManager;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    sget-boolean p4, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_TOKEN:Z

    if-eqz p4, :cond_2

    new-instance v0, Lcom/android/server/display/mode/RefreshRateTokenController;

    invoke-direct {v0, v6}, Lcom/android/server/display/mode/RefreshRateTokenController;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    move-object v0, p3

    :goto_2
    sput-object v1, Lcom/android/server/display/mode/RefreshRateController;->mDm:Lcom/android/server/display/mode/DisplayModeDirector;

    sput-object p0, Lcom/android/server/display/mode/RefreshRateController;->mContext:Landroid/content/Context;

    sput-object p1, Lcom/android/server/display/mode/RefreshRateController;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    sput-object v3, Lcom/android/server/display/mode/RefreshRateController;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    if-eqz p4, :cond_3

    sput-object v0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateTokenController:Lcom/android/server/display/mode/RefreshRateTokenController;

    :cond_3
    sget-boolean p4, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    if-eqz p4, :cond_4

    new-instance p4, Lcom/samsung/android/core/SystemHistory;

    const/16 v0, 0x19

    const-string/jumbo v2, "RefreshRateModeManager"

    invoke-direct {p4, v0, v2}, Lcom/samsung/android/core/SystemHistory;-><init>(ILjava/lang/String;)V

    sput-object p4, Lcom/android/server/display/mode/RefreshRateController;->mDisplayModeDirectorHistory:Lcom/samsung/android/core/SystemHistory;

    :cond_4
    sget-boolean p4, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_MODE:Z

    if-eqz p4, :cond_5

    new-instance p4, Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;

    invoke-direct {p4, p2, p0, p1}, Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;-><init>(Lcom/android/server/display/mode/RefreshRateModeManager;Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;)V

    iput-object p4, p2, Lcom/android/server/display/mode/RefreshRateModeManager;->mModeSettingsObserver:Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;

    :cond_5
    invoke-static {p3}, Lcom/android/server/display/mode/RefreshRateModeManager;->addControllerByDisplayToken(Landroid/os/IBinder;)V

    iput-object p2, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    return-void
.end method

.method public static switchingTypeToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string/jumbo v0, "Unknown SwitchingType "

    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo p0, "SWITCHING_TYPE_RENDER_FRAME_RATE_ONLY"

    return-object p0

    :cond_1
    const-string/jumbo p0, "SWITCHING_TYPE_ACROSS_AND_WITHIN_GROUPS"

    return-object p0

    :cond_2
    const-string/jumbo p0, "SWITCHING_TYPE_WITHIN_GROUPS"

    return-object p0

    :cond_3
    const-string/jumbo p0, "SWITCHING_TYPE_NONE"

    return-object p0
.end method


# virtual methods
.method public addExternalDisplayId(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mExternalDisplaysConnected:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final defaultDisplayDeviceUpdated(Lcom/android/server/display/DisplayDeviceConfig;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->setRefreshRates(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->updateBlockingZoneThresholds(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadIdleScreenRefreshRateConfigs(Lcom/android/server/display/DisplayDeviceConfig;)V

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$mreloadLightSensor(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;Lcom/android/server/display/DisplayDeviceConfig;)V

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    const-string/jumbo v1, "display_manager"

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x1

    :try_start_1
    iget-object v4, v2, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v4, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v5, "refresh_rate_in_hbm_hdr"

    invoke-interface {v4, v1, v5, v3}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move v4, v3

    :goto_0
    if-ne v4, v3, :cond_1

    if-nez p1, :cond_0

    :try_start_2
    iget-object v2, v2, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v2, v2, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10e008d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    :goto_1
    move v4, v2

    goto :goto_2

    :cond_0
    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    iget v2, v2, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRateInHbmHdr:I

    goto :goto_1

    :cond_1
    :goto_2
    iput v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v4, v2, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v4, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v5, "refresh_rate_in_hbm_sunlight"

    invoke-interface {v4, v1, v5, v3}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    move v1, v3

    :goto_3
    if-ne v1, v3, :cond_3

    if-nez p1, :cond_2

    :try_start_4
    iget-object p1, v2, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x10e008e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    :goto_4
    move v1, p1

    goto :goto_5

    :cond_2
    iget-object p1, p1, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    iget p1, p1, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRateInHbmSunlight:I

    goto :goto_4

    :cond_3
    :goto_5
    iput v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 8

    const-string v0, "DisplayModeDirector:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "--------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "  mSupportedModesByDisplay:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/Display$Mode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_c

    :cond_0
    const-string v2, "  mAppSupportedModesByDisplay:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/Display$Mode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "  mDefaultModeByDisplay:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_2
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Display$Mode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mModeSwitchingType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    invoke-static {v3}, Lcom/android/server/display/mode/DisplayModeDirector;->switchingTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mAlwaysRespectAppRequest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "  SettingsObserver"

    const-string v4, "    mDefaultRefreshRate: "

    invoke-static {p1, v3, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultRefreshRate:F

    const-string v5, "    mDefaultPeakRefreshRate: "

    invoke-static {v3, v4, p1, v5}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, v2, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "  AppRequestObserver"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "    mIgnorePreferredRefreshRate: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v2, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->mIgnorePreferredRefreshRate:Z

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {v2, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

    invoke-virtual {v2, p1}, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    invoke-virtual {v2, p1}, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    invoke-virtual {v2, p1}, Lcom/android/server/display/mode/RefreshRateModeManager;->dumpLocked(Ljava/io/PrintWriter;)V

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSkinThermalStatusObserver:Lcom/android/server/display/mode/SkinThermalStatusObserver;

    invoke-virtual {v2, p1}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iget-object v3, v0, Lcom/android/server/display/mode/VotesStorage;->mStorageLock:Ljava/lang/Object;

    monitor-enter v3

    move v4, v1

    :goto_4
    :try_start_1
    iget-object v5, v0, Lcom/android/server/display/mode/VotesStorage;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    iget-object v5, v0, Lcom/android/server/display/mode/VotesStorage;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    iget-object v6, v0, Lcom/android/server/display/mode/VotesStorage;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :catchall_1
    move-exception p0

    goto/16 :goto_b

    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v0, "  mVotesByDisplay:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v1

    :goto_5
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_8

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_5

    goto :goto_8

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v4, 0x1b

    :goto_6
    if-ltz v4, :cond_7

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/mode/Vote;

    if-nez v5, :cond_6

    goto :goto_7

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "      "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    :cond_7
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSensorObserver:Lcom/android/server/display/mode/ProximitySensorObserver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "    mIsProxActive="

    const-string v2, "  SensorObserver"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mIsProxActive:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    mDozeStateByDisplay:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_9
    iget-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    iget-object v0, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/server/display/mode/ProximitySensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "      "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :catchall_2
    move-exception p0

    goto :goto_a

    :cond_9
    monitor-exit v2

    return-void

    :goto_a
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :goto_b
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :goto_c
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public getBrightnessObserver()Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    return-object p0
.end method

.method public final getDesiredDisplayModeSpecs(I)Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;
    .locals 24

    move-object/from16 v0, p0

    move/from16 v2, p1

    const-string v1, "Asked about unknown display, returning empty display mode specs!(id="

    iget-object v7, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v3, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    invoke-virtual {v3, v2}, Lcom/android/server/display/mode/VotesStorage;->getVotes(I)Landroid/util/SparseArray;

    move-result-object v8

    iget-object v3, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, [Landroid/view/Display$Mode;

    iget-object v3, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/view/Display$Mode;

    if-eqz v9, :cond_12

    if-nez v10, :cond_0

    goto/16 :goto_c

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/android/server/display/mode/VoteSummary;

    iget-boolean v3, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsDisplayResolutionRangeVotingEnabled:Z

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/display/mode/DisplayModeDirector;->isVrrSupportedLocked(I)Z

    move-result v4

    iget-boolean v5, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    iget-boolean v6, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportsFrameRateOverride:Z

    invoke-direct {v11, v3, v4, v5, v6}, Lcom/android/server/display/mode/VoteSummary;-><init>(ZZZZ)V

    iget-boolean v3, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    const/4 v4, 0x7

    const/16 v12, 0x1b

    if-eqz v3, :cond_1

    const/16 v3, 0x9

    move v14, v4

    goto :goto_0

    :cond_1
    move v3, v12

    const/4 v14, 0x0

    :goto_0
    if-gt v14, v3, :cond_4

    invoke-virtual {v11, v14, v3, v8}, Lcom/android/server/display/mode/VoteSummary;->applyVotes(IILandroid/util/SparseArray;)V

    invoke-virtual {v11, v10, v9}, Lcom/android/server/display/mode/VoteSummary;->adjustSize(Landroid/view/Display$Mode;[Landroid/view/Display$Mode;)V

    invoke-virtual {v11, v9}, Lcom/android/server/display/mode/VoteSummary;->filterModes([Landroid/view/Display$Mode;)Ljava/util/List;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    iget-boolean v3, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    if-eqz v3, :cond_4

    const-string v3, "DisplayModeDirector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found available modes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " with lowest priority considered "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " and summary: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_2
    iget-boolean v5, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    if-eqz v5, :cond_3

    const-string v5, "DisplayModeDirector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Couldn\'t find available modes with lowest priority set to "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " and with the following summary: "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    new-instance v15, Lcom/android/server/display/mode/VoteSummary;

    iget-boolean v3, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsDisplayResolutionRangeVotingEnabled:Z

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/display/mode/DisplayModeDirector;->isVrrSupportedLocked(I)Z

    move-result v5

    iget-boolean v6, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    iget-boolean v13, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportsFrameRateOverride:Z

    invoke-direct {v15, v3, v5, v6, v13}, Lcom/android/server/display/mode/VoteSummary;-><init>(ZZZZ)V

    invoke-virtual {v15, v4, v12, v8}, Lcom/android/server/display/mode/VoteSummary;->applyVotes(IILandroid/util/SparseArray;)V

    invoke-virtual {v15, v11}, Lcom/android/server/display/mode/VoteSummary;->limitRefreshRanges(Lcom/android/server/display/mode/VoteSummary;)V

    iget v3, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    invoke-virtual {v11, v1, v10, v3}, Lcom/android/server/display/mode/VoteSummary;->selectBaseMode(Ljava/util/List;Landroid/view/Display$Mode;I)Landroid/view/Display$Mode;

    move-result-object v13

    iget-object v1, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStatsReporter:Lcom/android/server/display/mode/VotesStatsReporter;

    if-eqz v1, :cond_a

    iget-object v3, v1, Lcom/android/server/display/mode/VotesStatsReporter;->mLastMinPriorityByDisplay:Landroid/util/SparseIntArray;

    const/16 v4, 0x1c

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-eqz v13, :cond_5

    invoke-virtual {v13}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v4

    float-to-int v4, v4

    :goto_2
    move v6, v4

    goto :goto_3

    :cond_5
    const/4 v4, -0x1

    goto :goto_2

    :goto_3
    const/4 v4, 0x0

    :goto_4
    if-gt v4, v12, :cond_a

    if-ge v4, v3, :cond_6

    if-ge v4, v14, :cond_6

    :goto_5
    move-object/from16 v19, v9

    move-object/from16 v16, v10

    move-object/from16 v17, v13

    move-object v9, v1

    move v10, v3

    move v3, v4

    goto :goto_8

    :cond_6
    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/mode/Vote;

    if-nez v5, :cond_7

    goto :goto_5

    :cond_7
    iget-boolean v12, v1, Lcom/android/server/display/mode/VotesStatsReporter;->mIgnoredRenderRate:Z

    if-lt v4, v3, :cond_8

    if-ge v4, v14, :cond_8

    move-object/from16 v16, v1

    move-object v1, v5

    invoke-static {v1, v12}, Lcom/android/server/display/mode/VotesStatsReporter;->getMaxRefreshRate(Lcom/android/server/display/mode/Vote;Z)I

    move-result v5

    move-object/from16 v17, v1

    const/16 v1, 0x318

    move/from16 v18, v3

    move v3, v4

    const/4 v4, 0x1

    move-object/from16 v19, v17

    move-object/from16 v17, v13

    move-object/from16 v13, v19

    move-object/from16 v19, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v10

    move/from16 v10, v18

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIII)V

    goto :goto_6

    :cond_8
    move-object/from16 v19, v9

    move-object/from16 v16, v10

    move-object/from16 v17, v13

    move-object v9, v1

    move v10, v3

    move v3, v4

    move-object v13, v5

    :goto_6
    if-lt v3, v14, :cond_9

    if-ge v3, v10, :cond_9

    invoke-static {v13, v12}, Lcom/android/server/display/mode/VotesStatsReporter;->getMaxRefreshRate(Lcom/android/server/display/mode/Vote;Z)I

    move-result v5

    const/16 v1, 0x318

    const/4 v4, 0x2

    move/from16 v2, p1

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIII)V

    goto :goto_7

    :cond_9
    move/from16 v2, p1

    :goto_7
    iget-object v1, v9, Lcom/android/server/display/mode/VotesStatsReporter;->mLastMinPriorityByDisplay:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2, v14}, Landroid/util/SparseIntArray;->put(II)V

    :goto_8
    add-int/lit8 v4, v3, 0x1

    move-object v1, v9

    move v3, v10

    move-object/from16 v10, v16

    move-object/from16 v13, v17

    move-object/from16 v9, v19

    const/16 v12, 0x1b

    goto :goto_4

    :cond_a
    move-object/from16 v19, v9

    move-object/from16 v16, v10

    move-object/from16 v17, v13

    if-nez v17, :cond_b

    const-string v1, "DisplayModeDirector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find a set of allowed modes which satisfies the votes. Falling back to the default mode. Display = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", votes = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", supported modes = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v16 .. v16}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    new-instance v2, Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-direct {v2, v1, v1}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    new-instance v11, Landroid/view/SurfaceControl$RefreshRateRanges;

    invoke-direct {v11, v2, v2}, Landroid/view/SurfaceControl$RefreshRateRanges;-><init>(Landroid/view/SurfaceControl$RefreshRateRange;Landroid/view/SurfaceControl$RefreshRateRange;)V

    new-instance v8, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual/range {v16 .. v16}, Landroid/view/Display$Mode;->getModeId()I

    move-result v9

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->getIdleScreenRefreshRateConfig()Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    move-result-object v13

    const/4 v10, 0x0

    move-object v12, v11

    invoke-direct/range {v8 .. v13}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>(IZLandroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;)V

    monitor-exit v7

    return-object v8

    :cond_b
    iget v1, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    const/4 v3, 0x1

    if-eqz v1, :cond_d

    const/4 v4, 0x3

    if-ne v1, v4, :cond_c

    goto :goto_9

    :cond_c
    const/4 v1, 0x0

    goto :goto_a

    :cond_d
    :goto_9
    move v1, v3

    :goto_a
    if-nez v1, :cond_e

    iget-boolean v4, v11, Lcom/android/server/display/mode/VoteSummary;->disableRefreshRateSwitching:Z

    if-eqz v4, :cond_f

    :cond_e
    invoke-virtual/range {v17 .. v17}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v4

    invoke-virtual {v11, v4}, Lcom/android/server/display/mode/VoteSummary;->disableModeSwitching(F)V

    if-eqz v1, :cond_f

    invoke-virtual {v15, v4}, Lcom/android/server/display/mode/VoteSummary;->disableModeSwitching(F)V

    invoke-virtual {v11, v4}, Lcom/android/server/display/mode/VoteSummary;->disableRenderRateSwitching(F)V

    iget v1, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    if-nez v1, :cond_f

    invoke-virtual {v15, v4}, Lcom/android/server/display/mode/VoteSummary;->disableRenderRateSwitching(F)V

    :cond_f
    iget v1, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_10

    move/from16 v20, v3

    goto :goto_b

    :cond_10
    const/16 v20, 0x0

    :goto_b
    iget-object v1, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mExternalDisplaysConnected:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual/range {v17 .. v17}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    iget v2, v11, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v11, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-virtual/range {v17 .. v17}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    iget v2, v15, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v15, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    :cond_11
    new-instance v18, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual/range {v17 .. v17}, Landroid/view/Display$Mode;->getModeId()I

    move-result v19

    new-instance v1, Landroid/view/SurfaceControl$RefreshRateRanges;

    new-instance v2, Landroid/view/SurfaceControl$RefreshRateRange;

    iget v3, v11, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    iget v4, v11, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    invoke-direct {v2, v3, v4}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    new-instance v3, Landroid/view/SurfaceControl$RefreshRateRange;

    iget v4, v11, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    iget v5, v11, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-direct {v3, v4, v5}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    invoke-direct {v1, v2, v3}, Landroid/view/SurfaceControl$RefreshRateRanges;-><init>(Landroid/view/SurfaceControl$RefreshRateRange;Landroid/view/SurfaceControl$RefreshRateRange;)V

    new-instance v2, Landroid/view/SurfaceControl$RefreshRateRanges;

    new-instance v3, Landroid/view/SurfaceControl$RefreshRateRange;

    iget v4, v15, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    iget v5, v15, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    invoke-direct {v3, v4, v5}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    new-instance v4, Landroid/view/SurfaceControl$RefreshRateRange;

    iget v5, v15, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    iget v6, v15, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-direct {v4, v5, v6}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    invoke-direct {v2, v3, v4}, Landroid/view/SurfaceControl$RefreshRateRanges;-><init>(Landroid/view/SurfaceControl$RefreshRateRange;Landroid/view/SurfaceControl$RefreshRateRange;)V

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->getIdleScreenRefreshRateConfig()Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    move-result-object v23

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    invoke-direct/range {v18 .. v23}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>(IZLandroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;)V

    monitor-exit v7

    return-object v18

    :cond_12
    :goto_c
    const-string v0, "DisplayModeDirector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {v0}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    monitor-exit v7

    return-object v0

    :goto_d
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDesiredDisplayModeSpecsWithInjectedFpsSettings(FFF)Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    sget v2, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->$r8$clinit:I

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked(FFFI)V

    invoke-virtual {p0, v2}, Lcom/android/server/display/mode/DisplayModeDirector;->getDesiredDisplayModeSpecs(I)Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDisplayObserver()Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;

    return-object p0
.end method

.method public getHbmObserver()Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    return-object p0
.end method

.method public final getModeSwitchingType()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSettingsObserver()Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    return-object p0
.end method

.method public getUdpfsObserver()Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

    return-object p0
.end method

.method public getVote(II)Lcom/android/server/display/mode/Vote;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/VotesStorage;->getVotes(I)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/mode/Vote;

    return-object p0
.end method

.method public injectAppSupportedModesByDisplay(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/view/Display$Mode;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    return-void
.end method

.method public injectBrightnessObserver(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    return-void
.end method

.method public injectDefaultModeByDisplay(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/Display$Mode;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    return-void
.end method

.method public injectDisplayDeviceConfigByDisplay(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayDeviceConfig;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

    return-void
.end method

.method public injectSupportedModesByDisplay(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/view/Display$Mode;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    return-void
.end method

.method public injectVotesByDisplay(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/mode/Vote;",
            ">;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/VotesStorage;->injectVotesByDisplay(Landroid/util/SparseArray;)V

    return-void
.end method

.method public final isFolded()Z
    .locals 2

    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDeviceState:I

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x5

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public final isVrrSupportedLocked(I)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHasArrSupportFlagEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHasArrSupport:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayDeviceConfig;

    if-eqz p0, :cond_3

    iget-boolean p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mVrrSupportEnabled:Z

    if-nez p0, :cond_2

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_DISCRETE:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v2

    :cond_3
    return v1
.end method

.method public final notifyDesiredDisplayModeSpecsChangedLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public final onBootCompleted()V
    .locals 3

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    check-cast v0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11101cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iput-object p0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mUdfpsRefreshRateRequestCallback:Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0, p0}, Lcom/android/internal/statusbar/IStatusBar;->setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final onUserSwitching()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    sget v2, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->$r8$clinit:I

    invoke-virtual {v1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->updateRefreshRateSettingsOnUserSwitching()V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_MULTI_DISPLAY:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->updateRefreshRateSettingsCoverOnUserSwitching()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateLowPowerModeSettingLocked()V

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateModeSwitchingTypeSettingLocked()V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_MODE:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/display/mode/RefreshRateController;->updateRefreshRateModeLocked(Z)V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final start(Landroid/hardware/SensorManager;)V
    .locals 12

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_MULTI_DISPLAY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerGlobal;->getPrimaryPhysicalDisplayId()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    move-result-object v0

    invoke-static {v1}, Landroid/view/SurfaceControl;->getDisplayToken(Landroid/view/DisplayAddress;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v1, Lcom/android/server/display/mode/RefreshRateController;->sPrimaryDisplayToken:Landroid/os/IBinder;

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, v0, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    if-eqz v2, :cond_2

    iget v0, v0, Landroid/view/DisplayInfo;->type:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Landroid/view/SurfaceControl;->getDisplayToken(Landroid/view/DisplayAddress;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/mode/RefreshRateModeManager;->addControllerByDisplayToken(Landroid/os/IBinder;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, v2, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Lcom/android/server/display/mode/RefreshRateModeManager;->updateCurrentDisplayToken(Landroid/view/DisplayAddress;)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;

    iget-object v2, v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v2, v2, Lcom/android/server/display/mode/DisplayModeDirector;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    iget-object v3, v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    check-cast v2, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    invoke-virtual {v2}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iget-object v5, v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v5, v5, Lcom/android/server/display/mode/DisplayModeDirector;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    check-cast v5, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    invoke-virtual {v5}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplays()[Landroid/view/Display;

    move-result-object v5

    array-length v6, v5

    move v7, v1

    :goto_2
    if-ge v7, v6, :cond_5

    aget-object v8, v5, v7

    invoke-virtual {v8}, Landroid/view/Display;->getDisplayId()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v9

    iget-object v10, v9, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-virtual {v2, v8, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v10, v9, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    invoke-virtual {v3, v8, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v9}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    iget-object v5, v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v5, v5, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigProvider:Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda5;

    invoke-virtual {v5, v1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda5;->getDisplayDeviceConfig(I)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v6, v6, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v7

    move v8, v1

    :goto_3
    if-ge v8, v7, :cond_6

    iget-object v9, v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v9, v9, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/view/Display$Mode;

    invoke-virtual {v9, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v9, v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v9, v9, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/view/Display$Mode;

    invoke-virtual {v9, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v9, v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v9, v9, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/Display$Mode;

    invoke-virtual {v9, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_b

    :cond_6
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    iget-object v2, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v3, v3, Lcom/android/server/display/mode/DisplayModeDirector;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    check-cast v3, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->PEAK_REFRESH_RATE_URI:Landroid/net/Uri;

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v3, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v3, v3, Lcom/android/server/display/mode/DisplayModeDirector;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    check-cast v3, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->MIN_REFRESH_RATE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v3, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v3, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mLowPowerModeMotionSmoothness:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v3, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mMatchContentFrameRateSetting:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v2, v2, Lcom/android/server/display/mode/DisplayModeDirector;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    iget-object v3, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDisplayListener:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;

    iget-object v5, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    check-cast v2, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    invoke-virtual {v2}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object v2

    invoke-virtual {v2, v3, v5}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    iget-object v2, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v2, v2, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v3, "display_manager"

    const-string/jumbo v5, "peak_refresh_rate_default"

    const/high16 v6, -0x40800000    # -1.0f

    invoke-interface {v2, v3, v5, v6}, Landroid/provider/DeviceConfigInterface;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v2

    cmpl-float v3, v2, v6

    if-eqz v3, :cond_7

    iput v2, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    :cond_7
    iget-object v2, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v2, v2, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateLowPowerModeSettingLocked()V

    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateModeSwitchingTypeSettingLocked()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    if-eqz v0, :cond_b

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_MODE:Z

    if-eqz v3, :cond_9

    iget-object v3, v2, Lcom/android/server/display/mode/RefreshRateModeManager;->mModeSettingsObserver:Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;

    iget-object v5, v3, Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;->mRefreshRateModeSetting:Landroid/net/Uri;

    invoke-virtual {v5, v6, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOLD:Z

    if-eqz v6, :cond_8

    iget-object v6, v3, Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;->mSubRefreshRateModeSetting:Landroid/net/Uri;

    invoke-virtual {v5, v6, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_8
    iget-object v5, v3, Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;->this$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    iget-object v5, v5, Lcom/android/server/display/mode/RefreshRateModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_2
    iget-object v3, v3, Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;->this$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    invoke-virtual {v3}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/display/mode/RefreshRateController;->updateRefreshRateModeLocked(Z)V

    monitor-exit v5

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p0, v0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_9
    :goto_4
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    if-eqz v3, :cond_a

    const-string/jumbo v3, "RefreshRateModeManager"

    const-string/jumbo v5, "registerBrightnessAndStateListener"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v3, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayBrightnessListener(Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;)F

    invoke-virtual {v2}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    move-result-object v5

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManagerInternal;->getCurrentScreenBrightness()F

    move-result v6

    invoke-static {v6}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/android/server/display/mode/RefreshRateController;->mBrightness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/server/display/mode/RefreshRateController;->getBrightnessZone(I)I

    invoke-virtual {v5, v6}, Lcom/android/server/display/mode/RefreshRateController;->getBrightnessZone(I)I

    iget-object v5, v2, Lcom/android/server/display/mode/RefreshRateModeManager;->mDisplayStateListener:Lcom/android/server/display/mode/RefreshRateModeManager$1;

    invoke-virtual {v3, v5}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayStateListener(Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V

    :cond_a
    const-string/jumbo v3, "RefreshRateModeManager"

    const-string/jumbo v5, "registerWirelessChargeReceiver"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/server/display/mode/RefreshRateModeManager;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/display/mode/RefreshRateModeManager$2;

    invoke-direct {v6, v2}, Lcom/android/server/display/mode/RefreshRateModeManager$2;-><init>(Lcom/android/server/display/mode/RefreshRateModeManager;)V

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_b
    const-wide/16 v2, 0x7

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    if-eqz v0, :cond_15

    :cond_c
    iget-object v6, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    iput-object p1, v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p1, v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    check-cast p1, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    invoke-virtual {p1}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/view/Display;->getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;

    move-result-object p1

    goto :goto_5

    :cond_d
    const/4 p1, 0x0

    :goto_5
    if-eqz p1, :cond_e

    iget p1, p1, Landroid/hardware/display/BrightnessInfo;->adjustedBrightness:F

    goto :goto_6

    :cond_e
    const/high16 p1, 0x7fc00000    # Float.NaN

    :goto_6
    iput p1, v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mBrightness:F

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FLIP:Z

    if-eqz p1, :cond_f

    iget-object p1, v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    check-cast p1, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    invoke-virtual {p1}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplays()[Landroid/view/Display;

    move-result-object p1

    array-length v0, p1

    move v5, v1

    :goto_7
    if-ge v5, v0, :cond_f

    aget-object v7, p1, v5

    iget-object v8, v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_f
    iget-object p1, v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    const-string/jumbo v0, "peak_refresh_rate_brightness_thresholds"

    invoke-virtual {p1, v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getIntArrayProperty(Ljava/lang/String;)[I

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->displayBrightnessThresholdsIntToFloat([I)[F

    move-result-object p1

    iget-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    const-string/jumbo v5, "peak_refresh_rate_ambient_thresholds"

    invoke-virtual {v0, v5}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getIntArrayProperty(Ljava/lang/String;)[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->ambientBrightnessThresholdsIntToFloat([I)[F

    move-result-object v0

    if-eqz p1, :cond_10

    if-eqz v0, :cond_10

    array-length v5, p1

    array-length v7, v0

    if-ne v5, v7, :cond_10

    iput-object p1, v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[F

    iput-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[F

    :cond_10
    iget-object p1, v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    const-string/jumbo v0, "fixed_refresh_rate_high_display_brightness_thresholds"

    invoke-virtual {p1, v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getIntArrayProperty(Ljava/lang/String;)[I

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->displayBrightnessThresholdsIntToFloat([I)[F

    move-result-object p1

    iget-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    const-string/jumbo v5, "fixed_refresh_rate_high_ambient_brightness_thresholds"

    invoke-virtual {v0, v5}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getIntArrayProperty(Ljava/lang/String;)[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->ambientBrightnessThresholdsIntToFloat([I)[F

    move-result-object v0

    if-eqz p1, :cond_11

    if-eqz v0, :cond_11

    array-length v5, p1

    array-length v7, v0

    if-ne v5, v7, :cond_11

    iput-object p1, v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[F

    iput-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[F

    :cond_11
    iget-object p1, v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v0, "display_manager"

    const-string/jumbo v5, "refresh_rate_in_zone"

    invoke-interface {p1, v0, v5, v4}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_12

    iput v0, v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    :cond_12
    iget-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "display_manager"

    const-string/jumbo v5, "refresh_rate_in_high_zone"

    invoke-interface {p1, v0, v5, v4}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_13

    iput v0, v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    :cond_13
    invoke-virtual {v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    iget-object v0, v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    iget-object v4, v0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v4, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "display_manager"

    invoke-interface {p1, v4, v5, v0}, Landroid/provider/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    iget-object p1, v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    iget-object v7, v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FLIP:Z

    if-eqz v0, :cond_14

    move-wide v8, v2

    goto :goto_8

    :cond_14
    const-wide/16 v4, 0x4

    move-wide v8, v4

    :goto_8
    check-cast p1, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    const-wide/16 v10, 0x1

    invoke-virtual {p1}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object v5

    invoke-virtual/range {v5 .. v11}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JJ)V

    :cond_15
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSensorObserver:Lcom/android/server/display/mode/ProximitySensorObserver;

    invoke-virtual {p1}, Lcom/android/server/display/mode/ProximitySensorObserver;->observe()V

    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    invoke-virtual {p1}, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->observe()V

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    if-nez p1, :cond_16

    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSkinThermalStatusObserver:Lcom/android/server/display/mode/SkinThermalStatusObserver;

    invoke-virtual {p1}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->observe()V

    :cond_16
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object p1, p1, Lcom/android/server/display/feature/DisplayManagerFlags;->mDisplayConfigErrorHalFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeChangeObserver:Lcom/android/server/display/mode/ModeChangeObserver;

    iget-object v0, p1, Lcom/android/server/display/mode/ModeChangeObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    check-cast v0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplays()[Landroid/view/Display;

    move-result-object v4

    array-length v5, v4

    :goto_9
    if-ge v1, v5, :cond_19

    aget-object v6, v4, v1

    if-nez v6, :cond_17

    goto :goto_a

    :cond_17
    invoke-virtual {v6}, Landroid/view/Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v7

    instance-of v8, v7, Landroid/view/DisplayAddress$Physical;

    if-eqz v8, :cond_18

    check-cast v7, Landroid/view/DisplayAddress$Physical;

    iget-object v8, p1, Lcom/android/server/display/mode/ModeChangeObserver;->mPhysicalIdToLogicalIdMap:Landroid/util/LongSparseArray;

    invoke-virtual {v7}, Landroid/view/DisplayAddress$Physical;->getPhysicalDisplayId()J

    move-result-wide v9

    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v9, v10, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_18
    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    new-instance v1, Lcom/android/server/display/mode/ModeChangeObserver$1;

    invoke-direct {v1, p1}, Lcom/android/server/display/mode/ModeChangeObserver$1;-><init>(Lcom/android/server/display/mode/ModeChangeObserver;)V

    iput-object v1, p1, Lcom/android/server/display/mode/ModeChangeObserver;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v4, p1, Lcom/android/server/display/mode/ModeChangeObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    new-instance v0, Lcom/android/server/display/mode/ModeChangeObserver$2;

    iget-object v1, p1, Lcom/android/server/display/mode/ModeChangeObserver;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p1, v1}, Lcom/android/server/display/mode/ModeChangeObserver$2;-><init>(Lcom/android/server/display/mode/ModeChangeObserver;Landroid/os/Looper;)V

    iput-object v0, p1, Lcom/android/server/display/mode/ModeChangeObserver;->mModeChangeListener:Landroid/view/DisplayEventReceiver;

    :cond_1a
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    monitor-exit p1

    return-void

    :catchall_2
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :catchall_3
    move-exception v0

    move-object p0, v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw p0

    :goto_b
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public final updateRefreshRateSettingsCoverOnUserSwitching()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "low_power"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "refresh_rate_mode_cover"

    const/4 v3, -0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "pms_settings_refresh_rate_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "pms_override_refresh_rate_mode_cover"

    const/4 v4, -0x1

    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v4, :cond_1

    iget-object v5, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v4, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_1
    return-void
.end method

.method public final updateRefreshRateSettingsOnUserSwitching()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "low_power"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "refresh_rate_mode"

    const/4 v3, -0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "pms_settings_refresh_rate_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "pms_override_refresh_rate_mode"

    const/4 v4, -0x1

    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v4, :cond_1

    iget-object v5, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v4, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_1
    return-void
.end method
