.class public Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;
.super Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;


# instance fields
.field public mAppliedAutoBrightness:Z

.field public mAppliedTemporaryAutoBrightnessAdjustment:Z

.field public mAutoBrightnessAdjustment:F

.field public mAutoBrightnessAdjustmentChanged:Z

.field public mAutoBrightnessAdjustmentReasonsFlags:I

.field public mAutoBrightnessDisabledDueToDisplayOff:Z

.field public mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

.field public mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayId:I

.field public final mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public mDualScreenPolicy:I

.field public mGameAutoBrightnessLocked:Z

.field public final mInjector:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$Injector;

.field public mIsAutoBrightnessEnabled:Z

.field public mIsConfigured:Z

.field public mIsShortTermModelActive:Z

.field public mIsSlowChange:Z

.field public mLastAmbientLux:F

.field public mLastAutomaticScreenBrightness:F

.field public mPendingAutoBrightnessAdjustment:F

.field public mShouldResetShortTermModel:Z

.field public mTemporaryAutoBrightnessAdjustment:F

.field public mUseAutoBrightness:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$Injector;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentReasonsFlags:I

    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mShouldResetShortTermModel:Z

    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedAutoBrightness:Z

    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mUseAutoBrightness:Z

    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsAutoBrightnessEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsShortTermModelActive:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mDualScreenPolicy:I

    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mDisplayId:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, -0x2

    const-string/jumbo v0, "screen_auto_brightness_adj"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget p2, Lcom/android/server/display/brightness/BrightnessUtils;->sScreenExtendedBrightnessRangeMaximum:F

    const/high16 p2, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, p2, v0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    :goto_0
    iput v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustment:F

    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mPendingAutoBrightnessAdjustment:F

    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mTemporaryAutoBrightnessAdjustment:F

    iput-object p4, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    if-nez p3, :cond_1

    new-instance p3, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$RealInjector;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    :cond_1
    iput-object p3, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mInjector:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$Injector;

    return-void
.end method


# virtual methods
.method public accommodateUserBrightnessChanges(ZFIIZLandroid/hardware/display/BrightnessConfiguration;IZI)V
    .locals 14

    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->processPendingAutoBrightnessAdjustments()V

    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mTemporaryAutoBrightnessAdjustment:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mTemporaryAutoBrightnessAdjustment:F

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustment:F

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsShortTermModelActive:Z

    iget-object v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v1, :cond_1

    iget-boolean v7, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentChanged:Z

    iget-boolean v11, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mShouldResetShortTermModel:Z

    move v5, p1

    move/from16 v4, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v3, p6

    move/from16 v2, p7

    move/from16 v12, p8

    move/from16 v13, p9

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/display/AutomaticBrightnessController;->configure(ILandroid/hardware/display/BrightnessConfiguration;FZFZIIZZZI)V

    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mShouldResetShortTermModel:Z

    iget-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object p1, p1, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {p1}, Lcom/android/server/display/BrightnessMappingStrategy;->hasUserDataPoints()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsShortTermModelActive:Z

    :cond_1
    return-void
.end method

.method public adjustAutomaticBrightnessStateIfValid(F)V
    .locals 1

    iget-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentReasonsFlags:I

    iget-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {p1}, Lcom/android/server/display/BrightnessMappingStrategy;->getAutoBrightnessAdjustment()F

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustment:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->putAutoBrightnessAdjustmentSetting(F)V

    return-void

    :cond_2
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentReasonsFlags:I

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "AutomaticBrightnessStrategy:"

    const-string v1, "  mDisplayId="

    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mDisplayId:I

    const-string v2, "  mAutoBrightnessAdjustment="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustment:F

    const-string v2, "  mPendingAutoBrightnessAdjustment="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mPendingAutoBrightnessAdjustment:F

    const-string v2, "  mTemporaryAutoBrightnessAdjustment="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mTemporaryAutoBrightnessAdjustment:F

    const-string v2, "  mShouldResetShortTermModel="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mShouldResetShortTermModel:Z

    const-string v2, "  mAppliedAutoBrightness="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedAutoBrightness:Z

    const-string v2, "  mAutoBrightnessAdjustmentChanged="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentChanged:Z

    const-string v2, "  mAppliedTemporaryAutoBrightnessAdjustment="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    const-string v2, "  mUseAutoBrightness="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mUseAutoBrightness:Z

    const-string v2, "  mWasShortTermModelActive="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsShortTermModelActive:Z

    const-string v2, "  mAutoBrightnessAdjustmentReasonsFlags="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentReasonsFlags:I

    invoke-static {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    return-void
.end method

.method public getAutoBrightnessAdjustment()F
    .locals 0

    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustment:F

    return p0
.end method

.method public final getAutoBrightnessAdjustmentChanged()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentChanged:Z

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "AutomaticBrightnessStrategy"

    return-object p0
.end method

.method public getPendingAutoBrightnessAdjustment()F
    .locals 0

    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mPendingAutoBrightnessAdjustment:F

    return p0
.end method

.method public final getReason()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getTemporaryAutoBrightnessAdjustment()F
    .locals 0

    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mTemporaryAutoBrightnessAdjustment:F

    return p0
.end method

.method public final hasAppliedAutoBrightness()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedAutoBrightness:Z

    return p0
.end method

.method public final isAutoBrightnessDisabledDueToDisplayOff()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessDisabledDueToDisplayOff:Z

    return p0
.end method

.method public final isAutoBrightnessEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsAutoBrightnessEnabled:Z

    return p0
.end method

.method public final isGameAutoBrightnessLocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mGameAutoBrightnessLocked:Z

    return p0
.end method

.method public final isShortTermModelActive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsShortTermModelActive:Z

    return p0
.end method

.method public final isTemporaryAutoBrightnessAdjustmentApplied()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    return p0
.end method

.method public final processPendingAutoBrightnessAdjustments()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentChanged:Z

    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mPendingAutoBrightnessAdjustment:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustment:F

    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mPendingAutoBrightnessAdjustment:F

    cmpl-float v0, v0, v1

    const/high16 v2, 0x7fc00000    # Float.NaN

    if-nez v0, :cond_1

    iput v2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mPendingAutoBrightnessAdjustment:F

    return-void

    :cond_1
    iput v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustment:F

    iput v2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mPendingAutoBrightnessAdjustment:F

    iput v2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mTemporaryAutoBrightnessAdjustment:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentChanged:Z

    return-void
.end method

.method public putAutoBrightnessAdjustmentSetting(F)V
    .locals 2

    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mDisplayId:I

    if-nez v0, :cond_0

    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustment:F

    iget-object p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_auto_brightness_adj"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    :cond_0
    return-void
.end method

.method public final setAutoBrightnessApplied(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedAutoBrightness:Z

    return-void
.end method

.method public final setAutoBrightnessState(IZIIZFZZZZI)V
    .locals 11

    move/from16 v0, p11

    iget-object v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v2, v1, Lcom/android/server/display/feature/DisplayManagerFlags;->mAutoBrightnessModesFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v2

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v10, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v1, Lcom/android/server/display/feature/DisplayManagerFlags;->mAutoBrightnessModeBedtimeWearFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p8, :cond_1

    iget-object v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v1, v4, v6}, Lcom/android/server/display/AutomaticBrightnessController;->switchMode(IZ)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags;->isNormalBrightnessForDozeParameterEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez p5, :cond_2

    if-eq p4, v10, :cond_3

    :cond_2
    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move v1, v10

    goto :goto_0

    :cond_4
    move v1, v6

    goto :goto_0

    :cond_5
    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v1, v5, v6}, Lcom/android/server/display/AutomaticBrightnessController;->switchMode(IZ)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v1, v6, v6}, Lcom/android/server/display/AutomaticBrightnessController;->switchMode(IZ)V

    :cond_7
    :goto_1
    if-nez p2, :cond_8

    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil;->isFakeAodAvailable(I)Z

    move-result p2

    if-eqz p2, :cond_9

    :cond_8
    if-ne p4, v10, :cond_9

    if-eq p1, v10, :cond_9

    move p2, v10

    goto :goto_2

    :cond_9
    move p2, v6

    :goto_2
    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mUseAutoBrightness:Z

    if-eqz v1, :cond_c

    if-ne p1, v5, :cond_a

    if-ne p4, v10, :cond_b

    :cond_a
    if-eqz p2, :cond_c

    :cond_b
    const/4 v2, 0x6

    if-eq p3, v2, :cond_c

    iget-object v2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mGameAutoBrightnessLocked:Z

    if-nez v2, :cond_c

    if-nez p9, :cond_c

    const/16 v2, 0xa

    if-eq p3, v2, :cond_c

    move p3, v10

    goto :goto_3

    :cond_c
    move p3, v6

    :goto_3
    iput-boolean p3, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsAutoBrightnessEnabled:Z

    if-eqz v1, :cond_e

    if-ne p1, v5, :cond_d

    if-ne p4, v10, :cond_e

    :cond_d
    if-nez p2, :cond_e

    move v6, v10

    :cond_e
    iput-boolean v6, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessDisabledDueToDisplayOff:Z

    if-eqz p3, :cond_f

    move v7, v10

    goto :goto_4

    :cond_f
    if-eqz v6, :cond_10

    move v7, v4

    goto :goto_4

    :cond_10
    move v7, v5

    :goto_4
    iget p2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mDualScreenPolicy:I

    if-eq p2, v0, :cond_11

    iput v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mDualScreenPolicy:I

    :cond_11
    iget-object v6, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    iget v9, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mDualScreenPolicy:I

    move-object v0, p0

    move v4, p1

    move v3, p4

    move/from16 v5, p5

    move/from16 v2, p6

    move/from16 v1, p7

    move/from16 v8, p10

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->accommodateUserBrightnessChanges(ZFIIZLandroid/hardware/display/BrightnessConfiguration;IZI)V

    iput-boolean v10, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsConfigured:Z

    return-void
.end method

.method public final setAutomaticBrightnessController(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->stop()V

    :cond_1
    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    return-void
.end method

.method public final setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {p0, p2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->setShouldResetShortTermModel(Z)V

    return-void
.end method

.method public setShouldResetShortTermModel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mShouldResetShortTermModel:Z

    return-void
.end method

.method public final setTemporaryAutoBrightnessAdjustment(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mTemporaryAutoBrightnessAdjustment:F

    return-void
.end method

.method public final setUseAutoBrightness(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mUseAutoBrightness:Z

    return-void
.end method

.method public shouldResetShortTermModel()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mShouldResetShortTermModel:Z

    return p0
.end method

.method public final shouldUseAutoBrightness()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mUseAutoBrightness:Z

    return p0
.end method

.method public final strategySelectionPostProcessor(Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;)V
    .locals 13

    iget-object v2, p1, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mSelectedDisplayBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget-boolean v4, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsConfigured:Z

    const/4 v12, 0x0

    if-eqz v4, :cond_0

    if-nez v3, :cond_1

    :cond_0
    iput-boolean v12, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedAutoBrightness:Z

    invoke-interface {v2}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->getReason()I

    move-result v3

    iget-object v2, p1, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    iget-boolean v5, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useNormalBrightnessForDoze:Z

    iget-boolean v9, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    iget v2, p1, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mTargetDisplayState:I

    iget v6, p1, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mLastUserSetScreenBrightness:F

    iget-boolean v7, p1, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mUserSetBrightnessChanged:Z

    iget-boolean v10, p1, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mResetAutoBrightnessConfigurationRequested:Z

    iget v11, p1, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mDualScreenPolicy:I

    move v8, v2

    iget-boolean v2, p1, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mAllowAutoBrightnessWhileDozingConfig:Z

    iget-boolean v1, p1, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mIsBedtimeModeWearEnabled:Z

    move v0, v8

    move v8, v1

    move v1, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->setAutoBrightnessState(IZIIZFZZZZI)V

    :cond_1
    iput-boolean v12, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsConfigured:Z

    return-void
.end method

.method public final updateBrightness(Lcom/android/server/display/brightness/StrategyExecutionRequest;)Lcom/android/server/display/DisplayBrightnessState;
    .locals 7

    new-instance v0, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v0}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    iget-object v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mInjector:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$Injector;

    iget v2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mDisplayId:I

    invoke-interface {v1, v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$Injector;->getBrightnessEvent(I)Lcom/android/server/display/brightness/BrightnessEvent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness(Lcom/android/server/display/brightness/BrightnessEvent;)F

    move-result v2

    goto :goto_0

    :cond_0
    const/high16 v2, 0x7fc00000    # Float.NaN

    :goto_0
    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(FI)V

    iget-object v3, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController;->getAmbientLux()F

    move-result v3

    iget-boolean v4, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsSlowChange:Z

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V3:Z

    if-nez v4, :cond_1

    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V4:Z

    if-eqz v4, :cond_2

    :cond_1
    iget v4, p1, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mCurrentRampScreenBrightnessValue:F

    iget v5, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mLastAmbientLux:F

    iget v6, p1, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mDarkeningRateRatio:F

    invoke-static {v2, v4, v3, v5, v6}, Lcom/android/server/display/brightness/BrightnessUtils;->getBrightnessDynamicRampRatePair(FFFFF)Landroid/util/Pair;

    move-result-object v4

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_1

    :cond_2
    const/high16 v5, -0x40800000    # -1.0f

    move v4, v5

    :goto_1
    iput v3, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mLastAmbientLux:F

    new-instance v3, Lcom/android/server/display/DisplayBrightnessState$Builder;

    invoke-direct {v3}, Lcom/android/server/display/DisplayBrightnessState$Builder;-><init>()V

    iput v2, v3, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    iput-object v0, v3, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    const-string v0, "AutomaticBrightnessStrategy"

    iput-object v0, v3, Lcom/android/server/display/DisplayBrightnessState$Builder;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsSlowChange:Z

    iput-boolean v0, v3, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsSlowChange:Z

    iput-object v1, v3, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentReasonsFlags:I

    iput v0, v3, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessAdjustmentFlag:I

    invoke-static {v2}, Lcom/android/server/display/brightness/BrightnessUtils;->clampAbsoluteBrightness(F)F

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mCurrentScreenBrightness:F

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    iput-boolean v0, v3, Lcom/android/server/display/DisplayBrightnessState$Builder;->mShouldUpdateScreenBrightnessSetting:Z

    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentChanged:Z

    if-nez p0, :cond_5

    iget-boolean p0, p1, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mUserSetBrightnessChanged:Z

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :cond_5
    :goto_3
    iput-boolean v1, v3, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsUserInitiatedChange:Z

    iput v5, v3, Lcom/android/server/display/DisplayBrightnessState$Builder;->mCustomAnimationRate:F

    iput v4, v3, Lcom/android/server/display/DisplayBrightnessState$Builder;->mCustomHbmAnimationRate:F

    new-instance p0, Lcom/android/server/display/DisplayBrightnessState;

    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayBrightnessState;-><init>(Lcom/android/server/display/DisplayBrightnessState$Builder;)V

    return-object p0
.end method

.method public final updateGameAutoBrightnessLock()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string/jumbo v2, "game_autobrightness_lock"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mGameAutoBrightnessLocked:Z

    return-void
.end method

.method public final updatePendingAutoBrightnessAdjustments()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string/jumbo v2, "screen_auto_brightness_adj"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x7fc00000    # Float.NaN

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/server/display/brightness/BrightnessUtils;->sScreenExtendedBrightnessRangeMaximum:F

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mPendingAutoBrightnessAdjustment:F

    return-void
.end method
