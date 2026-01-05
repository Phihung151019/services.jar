.class public final Lcom/android/server/display/brightness/DisplayBrightnessController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

.field public final mBrightnessChangeExecutor:Landroid/os/HandlerExecutor;

.field public final mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

.field public mBrightnessSettingListener:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda12;

.field public mCurrentScreenBrightness:F

.field public mDisplayBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

.field public final mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

.field public final mDisplayId:I

.field public mIsStylusBeingUsed:Z

.field public mLastUserSetScreenBrightness:F

.field public final mLock:Ljava/lang/Object;

.field public final mOnBrightnessChangeRunnable:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

.field public mPendingScreenBrightness:F

.field public final mPersistBrightnessNitsForDefaultDisplay:Z

.field public final mScreenBrightnessDefault:F

.field public final mTag:Ljava/lang/String;

.field public mUserSetScreenBrightnessUpdated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IFLcom/android/server/display/BrightnessSetting;Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;Landroid/os/HandlerExecutor;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLastUserSetScreenBrightness:F

    new-instance v1, Lcom/android/server/display/brightness/DisplayBrightnessController$Injector;

    invoke-direct {v1}, Lcom/android/server/display/brightness/DisplayBrightnessController$Injector;-><init>()V

    iput p2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayId:I

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object p4, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    iput v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPendingScreenBrightness:F

    invoke-static {p3}, Lcom/android/server/display/brightness/BrightnessUtils;->clampAbsoluteBrightness(F)F

    move-result p3

    iput p3, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mScreenBrightnessDefault:F

    const/4 v0, -0x2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getScreenBrightnessSettingOnBootPhase: default: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move p3, v0

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e017b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sub_screen_brightness"

    invoke-static {v2, v3, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    :goto_1
    invoke-virtual {p4, p3}, Lcom/android/server/display/BrightnessSetting;->setBrightness(F)V

    iput p3, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    iput-object p5, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mOnBrightnessChangeRunnable:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

    new-instance p3, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    invoke-direct {p3, p1, p2, p7}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;-><init>(Landroid/content/Context;ILcom/android/server/display/feature/DisplayManagerFlags;)V

    iput-object p3, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    iput-object p6, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessChangeExecutor:Landroid/os/HandlerExecutor;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x1110218

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPersistBrightnessNitsForDefaultDisplay:Z

    const-string p1, "DisplayBrightnessController["

    const-string/jumbo p3, "]"

    invoke-static {p2, p1, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final constructStrategySelectionRequest(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;ILcom/android/server/display/DisplayOffloadSessionImpl;ZZIZ)Lcom/android/server/display/brightness/StrategySelectionRequest;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->updateUserSetScreenBrightness()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLastUserSetScreenBrightness:F

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lcom/android/server/display/brightness/StrategySelectionRequest;

    iget-boolean p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mIsStylusBeingUsed:Z

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p1, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput p2, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mTargetDisplayState:I

    iput v2, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mLastUserSetScreenBrightness:F

    iput-boolean v0, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mUserSetBrightnessChanged:Z

    iput-object p3, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDisplayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    iput-boolean p0, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mIsStylusBeingUsed:Z

    iput-boolean p4, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mIsWearBedtimeModeEnabled:Z

    iput-boolean p5, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mResetAutoBrightnessConfigurationRequested:Z

    iput p6, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDualScreenPolicy:I

    iput-boolean p7, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mWaitingDozeBrightness:Z

    return-object v1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final convertToAdjustedNits(F)F
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez p0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToAdjustedNits(F)F

    move-result p0

    return p0
.end method

.method public final convertToNits(F)F
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez p0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(F)F

    move-result p0

    return p0
.end method

.method public final getBrightnessFromNits(F)F
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez p0, :cond_0

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessFromNits(F)F

    move-result p0

    return p0
.end method

.method public getBrightnessSettingListener()Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSettingListener:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda12;

    return-object p0
.end method

.method public final getCurrentBrightness()F
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCurrentDisplayBrightnessStrategy()Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getIsUserSetScreenBrightnessUpdated()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mUserSetScreenBrightnessUpdated:Z

    return p0
.end method

.method public final getLastUserSetScreenBrightness()F
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLastUserSetScreenBrightness:F

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getScreenBrightnessSetting()F
    .locals 4

    const-string/jumbo v0, "getScreenBrightnessSetting: default: "

    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    iget-object v2, v1, Lcom/android/server/display/BrightnessSetting;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2

    :try_start_0
    iget v1, v1, Lcom/android/server/display/BrightnessSetting;->mBrightness:F

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v3, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mScreenBrightnessDefault:F

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mScreenBrightnessDefault:F

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/android/server/display/brightness/BrightnessUtils;->clampAbsoluteBrightness(F)F

    move-result p0

    monitor-exit v3

    return p0

    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final isAllowAutoBrightnessWhileDozing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    iget-boolean p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isAllowAutoBrightnessWhileDozingConfig()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    iget-boolean p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozingConfig:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isStylusBeingUsed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mIsStylusBeingUsed:Z

    return p0
.end method

.method public setAutomaticBrightnessController(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 5

    iput-object p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    iget-object v0, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v0, p1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setAutomaticBrightnessController(Lcom/android/server/display/AutomaticBrightnessController;)V

    iget p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayId:I

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPersistBrightnessNitsForDefaultDisplay:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    iget-object p1, p1, Lcom/android/server/display/BrightnessSetting;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget p1, p1, Lcom/android/server/display/PersistentDataStore;->mBrightnessNitsForDefaultDisplay:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getBrightnessFromNits(F)F

    move-result p1

    invoke-static {p1}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "BrightnessSetting"

    const-string v1, "Attempting to init invalid brightness"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    iget-object v1, v0, Lcom/android/server/display/BrightnessSetting;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    :try_start_0
    iget v2, v0, Lcom/android/server/display/BrightnessSetting;->mBrightness:F

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/server/display/BrightnessSetting;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget-object v3, v0, Lcom/android/server/display/BrightnessSetting;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    iget-object v3, v3, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    iget v4, v0, Lcom/android/server/display/BrightnessSetting;->mUserSerial:I

    invoke-virtual {v2, v3, p1, v4}, Lcom/android/server/display/PersistentDataStore;->setBrightness(Lcom/android/server/display/DisplayDevice;FI)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iput p1, v0, Lcom/android/server/display/BrightnessSetting;->mBrightness:F

    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    const/high16 p1, 0x7fc00000    # Float.NaN

    :goto_2
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getScreenBrightnessSetting()F

    move-result p1

    :cond_3
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iput p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public final setBrightness(FF)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessSetting;->setBrightness(F)V

    iget v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayId:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPersistBrightnessNitsForDefaultDisplay:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToNits(F)F

    move-result p0

    iget-object v0, v0, Lcom/android/server/display/BrightnessSetting;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget v1, v0, Lcom/android/server/display/PersistentDataStore;->mBrightnessNitsForDefaultDisplay:F

    const/4 v2, 0x0

    cmpl-float v2, p0, v2

    if-ltz v2, :cond_1

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    cmpl-float p1, v1, p0

    if-gtz p1, :cond_1

    :cond_0
    cmpl-float p1, p0, v1

    if-eqz p1, :cond_1

    iput p0, v0, Lcom/android/server/display/PersistentDataStore;->mBrightnessNitsForDefaultDisplay:F

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    :cond_1
    return-void
.end method

.method public final setBrightnessToFollow(ZF)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mFollowerBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;

    iput p2, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mBrightnessToFollow:F

    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mBrightnessToFollowSlowChange:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateBrightness(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;ILcom/android/server/display/DisplayOffloadSessionImpl;ZFFZIZ)Lcom/android/server/display/DisplayBrightnessState;
    .locals 17

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v9, v0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/display/brightness/DisplayBrightnessController;->constructStrategySelectionRequest(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;ILcom/android/server/display/DisplayOffloadSessionImpl;ZZIZ)Lcom/android/server/display/brightness/StrategySelectionRequest;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->selectStrategy(Lcom/android/server/display/brightness/StrategySelectionRequest;)Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    move-result v12

    new-instance v10, Lcom/android/server/display/brightness/StrategyExecutionRequest;

    iget-boolean v13, v0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mUserSetScreenBrightnessUpdated:Z

    iget-boolean v14, v0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mIsStylusBeingUsed:Z

    move-object/from16 v11, p1

    move/from16 v15, p5

    move/from16 v16, p6

    invoke-direct/range {v10 .. v16}, Lcom/android/server/display/brightness/StrategyExecutionRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;FZZFF)V

    invoke-interface {v1, v10}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->updateBrightness(Lcom/android/server/display/brightness/StrategyExecutionRequest;)Lcom/android/server/display/DisplayBrightnessState;

    move-result-object v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    iget-object v0, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-static {v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->from(Lcom/android/server/display/DisplayBrightnessState;)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mShouldUseAutoBrightness:Z

    new-instance v0, Lcom/android/server/display/DisplayBrightnessState;

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayBrightnessState;-><init>(Lcom/android/server/display/DisplayBrightnessState$Builder;)V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final updateScreenBrightnessSetting(FF)Z
    .locals 3

    invoke-static {p1}, Lcom/android/server/display/brightness/BrightnessUtils;->clampAbsoluteBrightness(F)F

    move-result p1

    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    cmpl-float v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    iput p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessChangeExecutor:Landroid/os/HandlerExecutor;

    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mOnBrightnessChangeRunnable:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightness(FF)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :try_start_1
    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public updateUserSetScreenBrightness()Z
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mUserSetScreenBrightnessUpdated:Z

    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPendingScreenBrightness:F

    invoke-static {v2}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v2

    const/high16 v3, 0x7fc00000    # Float.NaN

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    iget-object v2, v2, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mTemporaryBrightnessStrategy:Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    iget v2, v2, Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;->mTemporaryScreenBrightness:F

    iget v4, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    invoke-static {v2, v4}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mTemporaryBrightnessStrategy:Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    iput v3, p0, Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;->mTemporaryScreenBrightness:F

    :cond_0
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    iget v4, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPendingScreenBrightness:F

    cmpl-float v5, v2, v4

    if-nez v5, :cond_2

    iput v3, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPendingScreenBrightness:F

    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mTemporaryBrightnessStrategy:Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    iput v3, p0, Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;->mTemporaryScreenBrightness:F

    monitor-exit v1

    return v0

    :cond_2
    cmpl-float v0, v4, v2

    if-eqz v0, :cond_3

    iput v4, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    :cond_3
    iput v4, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLastUserSetScreenBrightness:F

    iput v3, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPendingScreenBrightness:F

    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    iget-object v0, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mTemporaryBrightnessStrategy:Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    iput v3, v0, Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;->mTemporaryScreenBrightness:F

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessChangeExecutor:Landroid/os/HandlerExecutor;

    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mOnBrightnessChangeRunnable:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mUserSetScreenBrightnessUpdated:Z

    return v0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
