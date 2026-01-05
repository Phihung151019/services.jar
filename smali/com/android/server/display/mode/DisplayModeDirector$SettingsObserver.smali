.class final Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDefaultPeakRefreshRate:F

.field public mDefaultRefreshRate:F

.field public final mDisplayListener:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;

.field public final mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

.field public mIsLowPower:Z

.field public mIsLowPowerMotionSmoothness:Z

.field public final mLowPowerModeMotionSmoothness:Landroid/net/Uri;

.field public final mLowPowerModeSetting:Landroid/net/Uri;

.field public final mMatchContentFrameRateSetting:Landroid/net/Uri;

.field public final mMinRefreshRateSetting:Landroid/net/Uri;

.field public final mPeakRefreshRatePhysicalLimitEnabled:Z

.field public final mPeakRefreshRateSetting:Landroid/net/Uri;

.field public final mVsyncLowPowerVoteEnabled:Z

.field public final synthetic this$0:Lcom/android/server/display/mode/DisplayModeDirector;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "peak_refresh_rate"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mPeakRefreshRateSetting:Landroid/net/Uri;

    const-string/jumbo p1, "min_refresh_rate"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mMinRefreshRateSetting:Landroid/net/Uri;

    const-string/jumbo p1, "low_power"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    const-string/jumbo p1, "pms_settings_refresh_rate_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mLowPowerModeMotionSmoothness:Landroid/net/Uri;

    const-string/jumbo p1, "match_content_frame_rate"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mMatchContentFrameRateSetting:Landroid/net/Uri;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mIsLowPower:Z

    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mIsLowPowerMotionSmoothness:Z

    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;)V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDisplayListener:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;

    iput-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object p2, p4, Lcom/android/server/display/feature/DisplayManagerFlags;->mVsyncLowPowerVote:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {p2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mVsyncLowPowerVoteEnabled:Z

    iget-object p2, p4, Lcom/android/server/display/feature/DisplayManagerFlags;->mPeakRefreshRatePhysicalLimit:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {p2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mPeakRefreshRatePhysicalLimitEnabled:Z

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->setRefreshRates(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    return-void
.end method


# virtual methods
.method public getDefaultPeakRefreshRate()F
    .locals 0

    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    return p0
.end method

.method public getDefaultRefreshRate()F
    .locals 0

    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultRefreshRate:F

    return p0
.end method

.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mPeakRefreshRateSetting:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mMinRefreshRateSetting:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    iget-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mLowPowerModeMotionSmoothness:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mMatchContentFrameRateSetting:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateModeSwitchingTypeSettingLocked()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateLowPowerModeSettingLocked()V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    :cond_4
    :goto_2
    monitor-exit p1

    return-void

    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onDeviceConfigDefaultPeakRefreshRateChanged(Ljava/lang/Float;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->setDefaultPeakRefreshRate(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setDefaultPeakRefreshRate(Lcom/android/server/display/DisplayDeviceConfig;Z)V
    .locals 3

    const/high16 v0, -0x40800000    # -1.0f

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object p2, p2, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v1, "display_manager"

    const-string/jumbo v2, "peak_refresh_rate_default"

    invoke-interface {p2, v1, v2, v0}, Landroid/provider/DeviceConfigInterface;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move p2, v0

    :goto_0
    cmpl-float v0, p2, v0

    if-nez v0, :cond_4

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e0145

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    :goto_1
    int-to-float p1, p1

    move p2, p1

    goto :goto_2

    :cond_1
    iget-object p1, p1, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    iget p1, p1, Lcom/android/server/display/config/RefreshRateData;->defaultPeakRefreshRate:I

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e0089

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    iget p1, p1, Lcom/android/server/display/config/RefreshRateData;->defaultPeakRefreshRate:I

    goto :goto_1

    :cond_4
    :goto_2
    iput p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    return-void
.end method

.method public final setRefreshRates(Lcom/android/server/display/DisplayDeviceConfig;Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->setDefaultPeakRefreshRate(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e0146

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    :goto_1
    int-to-float p1, p1

    goto :goto_2

    :cond_1
    iget p1, v0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRate:I

    goto :goto_1

    :goto_2
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultRefreshRate:F

    return-void

    :cond_2
    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e008c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    :goto_3
    int-to-float p1, p1

    goto :goto_4

    :cond_3
    iget p1, v0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRate:I

    goto :goto_3

    :goto_4
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultRefreshRate:F

    return-void
.end method

.method public final updateLowPowerModeAllowedModesLocked()V
    .locals 8

    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mVsyncLowPowerVoteEnabled:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mIsLowPower:Z

    const/16 v1, 0x16

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mIsLowPowerMotionSmoothness:Z

    if-nez v0, :cond_2

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_TOKEN:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    invoke-virtual {v0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateTokenController:Lcom/android/server/display/mode/RefreshRateTokenController;

    iget-object v0, v0, Lcom/android/server/display/mode/RefreshRateTokenController;->mRefreshRateTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda0;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_a

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayDeviceConfig;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, v0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    iget-object v0, v0, Lcom/android/server/display/config/RefreshRateData;->lowPowerSupportedModes:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v4, v3, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    iget-object v3, v3, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v0}, Lcom/android/server/display/mode/Vote;->forSupportedRefreshRates(Ljava/util/List;)Lcom/android/server/display/mode/SupportedRefreshRatesVote;

    move-result-object v0

    invoke-virtual {v4, v3, v1, v0}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    iget-boolean v0, p0, Lcom/android/server/display/mode/VotesStorage;->mLoggingEnabled:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "VotesStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "removeAllVotesForPriority(priority="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iget-object v3, p0, Lcom/android/server/display/mode/VotesStorage;->mStorageLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/display/mode/VotesStorage;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_7

    iget-object v6, p0, Lcom/android/server/display/mode/VotesStorage;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v6, p0, Lcom/android/server/display/mode/VotesStorage;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/util/IntArray;->add(I)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v3, p0, Lcom/android/server/display/mode/VotesStorage;->mLoggingEnabled:Z

    if-eqz v3, :cond_8

    const-string/jumbo v3, "VotesStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Removed votes with priority=22 for displays="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v3

    if-lez v3, :cond_a

    iget-object v4, p0, Lcom/android/server/display/mode/VotesStorage;->mVotesStatsReporter:Lcom/android/server/display/mode/VotesStatsReporter;

    if-eqz v4, :cond_9

    :goto_4
    if-ge v2, v3, :cond_9

    iget-object v4, p0, Lcom/android/server/display/mode/VotesStorage;->mVotesStatsReporter:Lcom/android/server/display/mode/VotesStatsReporter;

    invoke-virtual {v0, v2}, Landroid/util/IntArray;->get(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v1, v6}, Lcom/android/server/display/mode/VotesStatsReporter;->reportVoteChanged(IILcom/android/server/display/mode/Vote;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    iget-object p0, p0, Lcom/android/server/display/mode/VotesStorage;->mListener:Lcom/android/server/display/mode/DisplayModeDirector$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    :cond_a
    :goto_5
    return-void

    :goto_6
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final updateLowPowerModeSettingLocked()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "low_power"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mIsLowPower:Z

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "pms_settings_refresh_rate_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mIsLowPowerMotionSmoothness:Z

    iget-boolean v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mIsLowPower:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/high16 v3, 0x42700000    # 60.0f

    invoke-static {v0, v3}, Lcom/android/server/display/mode/Vote;->forPolicyRate(FF)Lcom/android/server/display/mode/Vote;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v3, v3, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/4 v4, -0x1

    const/16 v5, 0x17

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    iget-boolean v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mIsLowPower:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mIsLowPowerMotionSmoothness:Z

    if-eqz v3, :cond_3

    move v2, v1

    :cond_3
    invoke-virtual {v0, v2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->onLowPowerModeEnabledLocked(Z)V

    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateLowPowerModeAllowedModesLocked()V

    return-void
.end method

.method public final updateModeSwitchingTypeSettingLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    const/4 v2, -0x2

    const-string/jumbo v3, "match_content_frame_rate"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    :cond_0
    return-void
.end method

.method public final updateRefreshRateSettingLocked()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateRefreshRateSettingLocked(FFFI)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mExternalDisplaysConnected:Ljava/util/Set;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "DisplayModeDirector"

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-boolean p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    if-eqz p0, :cond_8

    const-string/jumbo p0, "skip updateRefreshRateSettingLocked for external display "

    invoke-static {p4, p0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mPeakRefreshRatePhysicalLimitEnabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    cmpl-float v0, p2, v3

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v3, v0}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/CombinedVote;

    move-result-object v0

    :goto_0
    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v4, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v5, 0xb

    invoke-virtual {v4, p4, v5, v0}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    :cond_2
    cmpl-float v0, p2, v3

    if-nez v0, :cond_3

    move-object v5, v2

    goto :goto_1

    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    new-instance v5, Lcom/android/server/display/mode/RefreshRateVote$RenderVote;

    invoke-direct {v5, v3, v4}, Lcom/android/server/display/mode/RefreshRateVote;-><init>(FF)V

    :goto_1
    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v4, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v6, 0xe

    invoke-virtual {v4, p4, v6, v5}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v4, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    new-instance v5, Lcom/android/server/display/mode/RefreshRateVote$RenderVote;

    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {v5, p1, v6}, Lcom/android/server/display/mode/RefreshRateVote;-><init>(FF)V

    const/4 v6, 0x5

    invoke-virtual {v4, p4, v6, v5}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    cmpl-float v4, p3, v3

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/android/server/display/mode/RefreshRateVote$RenderVote;

    invoke-direct {v2, v3, p3}, Lcom/android/server/display/mode/RefreshRateVote;-><init>(FF)V

    :goto_2
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v3, v3, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    if-nez v0, :cond_5

    if-nez v4, :cond_5

    const-string p2, "Default and peak refresh rates are both 0. One of them should be set to a valid value."

    invoke-static {v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p2, p1

    goto :goto_3

    :cond_5
    if-nez v0, :cond_6

    move p2, p3

    goto :goto_3

    :cond_6
    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    :goto_3
    if-nez p4, :cond_8

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->onRefreshRateSettingChangedLocked(FF)V

    :cond_8
    return-void
.end method

.method public final updateRefreshRateSettingLocked(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "Cannot update refresh rate setting: no supported modes for display "

    const-string v0, "DisplayModeDirector"

    invoke-static {p1, p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$mgetMaxRefreshRateLocked(Lcom/android/server/display/mode/DisplayModeDirector;I)F

    move-result v1

    const-string/jumbo v2, "min_refresh_rate"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    :cond_1
    const-string/jumbo v3, "peak_refresh_rate"

    iget v5, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    invoke-static {v0, v3, v5, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultRefreshRate:F

    invoke-virtual {p0, v2, v1, v0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked(FFFI)V

    return-void
.end method
