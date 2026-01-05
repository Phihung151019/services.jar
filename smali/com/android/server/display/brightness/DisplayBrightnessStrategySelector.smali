.class public final Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAllowAutoBrightnessWhileDozing:Z

.field public final mAllowAutoBrightnessWhileDozingConfig:Z

.field public final mAutoBrightnessFallbackStrategy:Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;

.field public final mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

.field public final mAutomaticBrightnessStrategy1:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

.field public final mBoostBrightnessStrategy:Lcom/android/server/display/brightness/strategy/BoostBrightnessStrategy;

.field public final mContext:Landroid/content/Context;

.field final mDisplayBrightnessStrategies:[Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

.field public final mDisplayId:I

.field public final mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final mDozeBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;

.field public final mFallbackBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FallbackBrightnessStrategy;

.field public final mFollowerBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;

.field public final mInvalidBrightnessStrategy:Lcom/android/server/display/brightness/strategy/InvalidBrightnessStrategy;

.field public final mLastTargetBrightnessStrategy:Lcom/android/server/display/brightness/strategy/LastTargetBrightnessStrategy;

.field public final mOffloadBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

.field public mOldBrightnessStrategyName:Ljava/lang/String;

.field public final mOverrideBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;

.field public final mScreenOffBrightnessStrategy:Lcom/android/server/display/brightness/strategy/ScreenOffBrightnessStrategy;

.field public final mTemporaryBrightnessStrategy:Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;

    invoke-direct {v4}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mContext:Landroid/content/Context;

    iput-object v3, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iput v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayId:I

    new-instance v7, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDozeBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;

    new-instance v6, Lcom/android/server/display/brightness/strategy/ScreenOffBrightnessStrategy;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mScreenOffBrightnessStrategy:Lcom/android/server/display/brightness/strategy/ScreenOffBrightnessStrategy;

    new-instance v10, Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    const/high16 v4, 0x7fc00000    # Float.NaN

    iput v4, v10, Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;->mWindowManagerBrightnessOverride:F

    const/4 v5, 0x0

    iput-object v5, v10, Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;->mWindowManagerBrightnessOverrideTag:Ljava/lang/CharSequence;

    iput-object v10, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOverrideBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;

    new-instance v11, Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    iput v4, v11, Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;->mTemporaryScreenBrightness:F

    iput-object v11, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mTemporaryBrightnessStrategy:Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    new-instance v9, Lcom/android/server/display/brightness/strategy/BoostBrightnessStrategy;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mBoostBrightnessStrategy:Lcom/android/server/display/brightness/strategy/BoostBrightnessStrategy;

    new-instance v8, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;

    invoke-direct {v8, v2}, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;-><init>(I)V

    iput-object v8, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mFollowerBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;

    new-instance v4, Lcom/android/server/display/brightness/strategy/InvalidBrightnessStrategy;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mInvalidBrightnessStrategy:Lcom/android/server/display/brightness/strategy/InvalidBrightnessStrategy;

    iget-object v12, v3, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v12}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v12

    if-nez v12, :cond_0

    move-object v12, v5

    goto :goto_0

    :cond_0
    new-instance v12, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    invoke-direct {v12, v1, v2, v5, v3}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;-><init>(Landroid/content/Context;ILcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$Injector;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    :goto_0
    iput-object v12, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutomaticBrightnessStrategy1:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    iget-object v13, v3, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v13}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v13

    if-eqz v13, :cond_1

    move-object v13, v5

    goto :goto_1

    :cond_1
    new-instance v13, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-direct {v13, v1, v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;-><init>(Landroid/content/Context;I)V

    :goto_1
    iget-object v2, v3, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v13, v12

    :cond_2
    iput-object v13, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    iget-object v2, v3, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;

    invoke-direct {v2}, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;-><init>()V

    move-object v14, v2

    goto :goto_2

    :cond_3
    move-object v14, v5

    :goto_2
    iput-object v14, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutoBrightnessFallbackStrategy:Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;

    iget-object v2, v3, Lcom/android/server/display/feature/DisplayManagerFlags;->mDisplayOffloadFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    invoke-direct {v2, v3}, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;-><init>(Lcom/android/server/display/feature/DisplayManagerFlags;)V

    iput-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOffloadBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    goto :goto_3

    :cond_4
    iput-object v5, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOffloadBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    :goto_3
    iget-object v2, v3, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v5, Lcom/android/server/display/brightness/strategy/FallbackBrightnessStrategy;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    :cond_5
    move-object v15, v5

    iput-object v15, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mFallbackBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FallbackBrightnessStrategy;

    new-instance v2, Lcom/android/server/display/brightness/strategy/LastTargetBrightnessStrategy;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mLastTargetBrightnessStrategy:Lcom/android/server/display/brightness/strategy/LastTargetBrightnessStrategy;

    iget-object v13, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOffloadBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    move-object/from16 v16, v2

    move-object v5, v4

    filled-new-array/range {v5 .. v16}, [Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayBrightnessStrategies:[Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozingConfig:Z

    iput-boolean v1, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    const-string v1, "InvalidBrightnessStrategy"

    iput-object v1, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOldBrightnessStrategyName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "DisplayBrightnessStrategySelector:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "----------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mDisplayId= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayId:I

    const-string v2, "  mOldBrightnessStrategyName= "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOldBrightnessStrategyName:Ljava/lang/String;

    const-string v2, "  mAllowAutoBrightnessWhileDozingConfig= "

    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozingConfig:Z

    const-string v2, "  mAllowAutoBrightnessWhileDozing= "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, " "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayBrightnessStrategies:[Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    array-length p1, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->dump(Ljava/io/PrintWriter;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final selectStrategy(Lcom/android/server/display/brightness/StrategySelectionRequest;)Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mTargetDisplayState:I

    iget-object v3, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v4, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDisplayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    invoke-virtual {v0, v4}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->setAllowAutoBrightnessWhileDozing(Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    iget-object v7, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    if-ne v2, v4, :cond_0

    iget-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mScreenOffBrightnessStrategy:Lcom/android/server/display/brightness/strategy/ScreenOffBrightnessStrategy;

    :goto_0
    move-object v11, v2

    goto/16 :goto_7

    :cond_0
    iget-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Lcom/android/server/display/feature/DisplayManagerFlags;->isNormalBrightnessForDozeParameterEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useNormalBrightnessForDoze:Z

    if-nez v2, :cond_2

    :cond_1
    iget v2, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v2, v4, :cond_2

    iget-boolean v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    if-nez v2, :cond_2

    iget v2, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    invoke-static {v2}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDozeBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mFollowerBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;

    iget v8, v2, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mBrightnessToFollow:F

    invoke-static {v8}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v8

    if-eqz v8, :cond_3

    :goto_1
    goto :goto_0

    :cond_3
    iget-boolean v2, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mBoostBrightnessStrategy:Lcom/android/server/display/brightness/strategy/BoostBrightnessStrategy;

    goto :goto_0

    :cond_4
    iget v2, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    invoke-static {v2}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v2

    iget-object v3, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOverrideBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;

    if-nez v2, :cond_13

    iget v2, v3, Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;->mWindowManagerBrightnessOverride:F

    invoke-static {v2}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_6

    :cond_5
    iget-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mTemporaryBrightnessStrategy:Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    iget v3, v2, Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;->mTemporaryScreenBrightness:F

    invoke-static {v3}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    iget-object v2, v7, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-boolean v10, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    iget-object v2, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v12, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    iget-boolean v13, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useNormalBrightnessForDoze:Z

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    iget-boolean v3, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mResetAutoBrightnessConfigurationRequested:Z

    iget v8, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDualScreenPolicy:I

    iget v9, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mTargetDisplayState:I

    iget v14, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mLastUserSetScreenBrightness:F

    iget-boolean v15, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mUserSetBrightnessChanged:Z

    iget-boolean v11, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mIsWearBedtimeModeEnabled:Z

    move/from16 v19, v8

    iget-object v8, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutomaticBrightnessStrategy1:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    move/from16 v16, v11

    const/4 v11, 0x0

    move/from16 v17, v2

    move/from16 v18, v3

    invoke-virtual/range {v8 .. v19}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->setAutoBrightnessState(IZIIZFZZZZI)V

    iget-boolean v2, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mIsStylusBeingUsed:Z

    if-nez v2, :cond_c

    iget-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutomaticBrightnessStrategy1:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    iget-boolean v3, v2, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsAutoBrightnessEnabled:Z

    if-eqz v3, :cond_a

    iget-object v3, v2, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v3, :cond_7

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness(Lcom/android/server/display/brightness/BrightnessEvent;)F

    move-result v3

    goto :goto_2

    :cond_7
    const/high16 v3, 0x7fc00000    # Float.NaN

    :goto_2
    invoke-virtual {v2, v3}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->adjustAutomaticBrightnessStateIfValid(F)V

    invoke-static {v3}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v8

    if-nez v8, :cond_8

    const/high16 v8, -0x40800000    # -1.0f

    cmpl-float v8, v3, v8

    if-nez v8, :cond_a

    :cond_8
    iget v8, v2, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mLastAutomaticScreenBrightness:F

    cmpl-float v8, v3, v8

    if-eqz v8, :cond_9

    iput v3, v2, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mLastAutomaticScreenBrightness:F

    move v3, v4

    :goto_3
    move v8, v3

    goto :goto_4

    :cond_9
    move v8, v4

    move v3, v5

    goto :goto_4

    :cond_a
    move v3, v5

    goto :goto_3

    :goto_4
    iget-boolean v9, v2, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedAutoBrightness:Z

    if-eqz v9, :cond_b

    iget-boolean v9, v2, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentChanged:Z

    if-nez v9, :cond_b

    if-eqz v3, :cond_b

    goto :goto_5

    :cond_b
    move v4, v5

    :goto_5
    iput-boolean v4, v2, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsSlowChange:Z

    iput-boolean v8, v2, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedAutoBrightness:Z

    if-eqz v8, :cond_c

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v6}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOffloadBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    if-eqz v2, :cond_d

    iget v3, v2, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;->mOffloadScreenBrightness:F

    invoke-static {v3}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v3

    if-eqz v3, :cond_d

    goto/16 :goto_1

    :cond_d
    invoke-virtual {v6}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->hasAppliedAutoBrightness()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {v6}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v2

    if-nez v2, :cond_f

    :cond_e
    iget-boolean v2, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mWaitingDozeBrightness:Z

    if-eqz v2, :cond_10

    :cond_f
    iget-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mLastTargetBrightnessStrategy:Lcom/android/server/display/brightness/strategy/LastTargetBrightnessStrategy;

    goto/16 :goto_0

    :cond_10
    iget-object v2, v7, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutoBrightnessFallbackStrategy:Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;

    if-eqz v2, :cond_11

    invoke-virtual {v6}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, v2, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->getAutomaticScreenBrightness()F

    move-result v3

    invoke-static {v3}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v3

    if-eqz v3, :cond_11

    goto/16 :goto_1

    :cond_11
    iget-object v2, v7, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mFallbackBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FallbackBrightnessStrategy;

    goto/16 :goto_0

    :cond_12
    iget-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mInvalidBrightnessStrategy:Lcom/android/server/display/brightness/strategy/InvalidBrightnessStrategy;

    goto/16 :goto_0

    :cond_13
    :goto_6
    move-object v11, v3

    :goto_7
    iget-object v2, v7, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_15

    new-instance v8, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;

    iget-object v9, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v14, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    invoke-virtual {v6}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    move-result v15

    iget-boolean v2, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mResetAutoBrightnessConfigurationRequested:Z

    iget v3, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDualScreenPolicy:I

    iget v10, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mTargetDisplayState:I

    iget v12, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mLastUserSetScreenBrightness:F

    iget-boolean v13, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mUserSetBrightnessChanged:Z

    iget-boolean v1, v1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mIsWearBedtimeModeEnabled:Z

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    invoke-direct/range {v8 .. v18}, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;ILcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;FZZZZZI)V

    iget-object v1, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayBrightnessStrategies:[Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    array-length v2, v1

    :goto_8
    if-ge v5, v2, :cond_15

    aget-object v3, v1, v5

    if-eqz v3, :cond_14

    invoke-interface {v3, v8}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->strategySelectionPostProcessor(Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;)V

    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_15
    iget-object v1, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOldBrightnessStrategyName:Ljava/lang/String;

    invoke-interface {v11}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Changing the DisplayBrightnessStrategy from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOldBrightnessStrategyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayBrightnessStrategySelector"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v11}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOldBrightnessStrategyName:Ljava/lang/String;

    :cond_16
    return-object v11
.end method

.method public setAllowAutoBrightnessWhileDozing(Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozingConfig:Z

    iput-boolean v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v0, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mDisplayOffloadFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    invoke-interface {p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;->allowAutoBrightnessInDoze()Z

    move-result p1

    and-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    :cond_0
    return-void
.end method
