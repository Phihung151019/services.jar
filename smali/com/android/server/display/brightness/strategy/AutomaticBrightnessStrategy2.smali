.class public Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


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

.field public mGameAutoBrightnessLocked:Z

.field public mIsAutoBrightnessEnabled:Z

.field public mIsShortTermModelActive:Z

.field public mPendingAutoBrightnessAdjustment:F

.field public mShouldResetShortTermModel:Z

.field public mTemporaryAutoBrightnessAdjustment:F

.field public mUseAutoBrightness:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentReasonsFlags:I

    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mShouldResetShortTermModel:Z

    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAppliedAutoBrightness:Z

    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mUseAutoBrightness:Z

    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsAutoBrightnessEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsShortTermModelActive:Z

    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mDisplayId:I

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
    iput v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustment:F

    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mPendingAutoBrightnessAdjustment:F

    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mTemporaryAutoBrightnessAdjustment:F

    return-void
.end method


# virtual methods
.method public accommodateUserBrightnessChanges(ZFIIZLandroid/hardware/display/BrightnessConfiguration;IZI)V
    .locals 14

    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->processPendingAutoBrightnessAdjustments()V

    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mTemporaryAutoBrightnessAdjustment:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mTemporaryAutoBrightnessAdjustment:F

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustment:F

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsShortTermModelActive:Z

    iget-object v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v1, :cond_1

    iget-boolean v7, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentChanged:Z

    iget-boolean v11, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mShouldResetShortTermModel:Z

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

    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mShouldResetShortTermModel:Z

    iget-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object p1, p1, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {p1}, Lcom/android/server/display/BrightnessMappingStrategy;->hasUserDataPoints()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsShortTermModelActive:Z

    :cond_1
    return-void
.end method

.method public adjustAutomaticBrightnessStateIfValid(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isTemporaryAutoBrightnessAdjustmentApplied()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentReasonsFlags:I

    iget-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

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

    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustment:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->putAutoBrightnessAdjustmentSetting(F)V

    return-void

    :cond_2
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentReasonsFlags:I

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "AutomaticBrightnessStrategy:"

    const-string v1, "  mDisplayId="

    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mDisplayId:I

    const-string v2, "  mAutoBrightnessAdjustment="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustment:F

    const-string v2, "  mPendingAutoBrightnessAdjustment="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mPendingAutoBrightnessAdjustment:F

    const-string v2, "  mTemporaryAutoBrightnessAdjustment="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mTemporaryAutoBrightnessAdjustment:F

    const-string v2, "  mShouldResetShortTermModel="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mShouldResetShortTermModel:Z

    const-string v2, "  mAppliedAutoBrightness="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAppliedAutoBrightness:Z

    const-string v2, "  mAutoBrightnessAdjustmentChanged="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentChanged:Z

    const-string v2, "  mAppliedTemporaryAutoBrightnessAdjustment="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    const-string v2, "  mUseAutoBrightness="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mUseAutoBrightness:Z

    const-string v2, "  mWasShortTermModelActive="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsShortTermModelActive:Z

    const-string v2, "  mAutoBrightnessAdjustmentReasonsFlags="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentReasonsFlags:I

    invoke-static {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    return-void
.end method

.method public getAutoBrightnessAdjustment()F
    .locals 0

    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustment:F

    return p0
.end method

.method public getAutoBrightnessAdjustmentChanged()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentChanged:Z

    return p0
.end method

.method public final getAutoBrightnessAdjustmentReasonsFlags()I
    .locals 0

    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentReasonsFlags:I

    return p0
.end method

.method public final getAutomaticScreenBrightness(Lcom/android/server/display/brightness/BrightnessEvent;)F
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness(Lcom/android/server/display/brightness/BrightnessEvent;)F

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x7fc00000    # Float.NaN

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->adjustAutomaticBrightnessStateIfValid(F)V

    return p1
.end method

.method public getPendingAutoBrightnessAdjustment()F
    .locals 0

    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mPendingAutoBrightnessAdjustment:F

    return p0
.end method

.method public getTemporaryAutoBrightnessAdjustment()F
    .locals 0

    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mTemporaryAutoBrightnessAdjustment:F

    return p0
.end method

.method public hasAppliedAutoBrightness()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAppliedAutoBrightness:Z

    return p0
.end method

.method public isAutoBrightnessDisabledDueToDisplayOff()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessDisabledDueToDisplayOff:Z

    return p0
.end method

.method public isAutoBrightnessEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsAutoBrightnessEnabled:Z

    return p0
.end method

.method public isGameAutoBrightnessLocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mGameAutoBrightnessLocked:Z

    return p0
.end method

.method public isShortTermModelActive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsShortTermModelActive:Z

    return p0
.end method

.method public isTemporaryAutoBrightnessAdjustmentApplied()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    return p0
.end method

.method public processPendingAutoBrightnessAdjustments()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentChanged:Z

    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mPendingAutoBrightnessAdjustment:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustment:F

    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mPendingAutoBrightnessAdjustment:F

    cmpl-float v0, v0, v1

    const/high16 v2, 0x7fc00000    # Float.NaN

    if-nez v0, :cond_1

    iput v2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mPendingAutoBrightnessAdjustment:F

    return-void

    :cond_1
    iput v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustment:F

    iput v2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mPendingAutoBrightnessAdjustment:F

    iput v2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mTemporaryAutoBrightnessAdjustment:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentChanged:Z

    return-void
.end method

.method public putAutoBrightnessAdjustmentSetting(F)V
    .locals 2

    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mDisplayId:I

    if-nez v0, :cond_0

    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustment:F

    iget-object p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_auto_brightness_adj"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    :cond_0
    return-void
.end method

.method public setAutoBrightnessApplied(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAppliedAutoBrightness:Z

    return-void
.end method

.method public setAutoBrightnessState(IZIIZFZZZZI)V
    .locals 3

    const/4 p8, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    if-ne p4, v0, :cond_0

    if-eq p1, v0, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, p8

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_3

    if-ne p1, v2, :cond_1

    if-ne p4, v0, :cond_2

    :cond_1
    if-eqz p2, :cond_3

    :cond_2
    const/4 v1, 0x6

    if-eq p3, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mGameAutoBrightnessLocked:Z

    if-nez v1, :cond_3

    if-nez p9, :cond_3

    const/16 p9, 0xa

    if-eq p3, p9, :cond_3

    move p3, v0

    goto :goto_1

    :cond_3
    move p3, p8

    :goto_1
    iput-boolean p3, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsAutoBrightnessEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    move-result p3

    if-eqz p3, :cond_5

    if-ne p1, v2, :cond_4

    if-ne p4, v0, :cond_5

    :cond_4
    if-nez p2, :cond_5

    move p8, v0

    :cond_5
    iput-boolean p8, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessDisabledDueToDisplayOff:Z

    iget-boolean p2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsAutoBrightnessEnabled:Z

    if-eqz p2, :cond_6

    :goto_2
    move p2, p6

    goto :goto_3

    :cond_6
    if-eqz p8, :cond_7

    const/4 v0, 0x3

    goto :goto_2

    :cond_7
    move p2, p6

    move v0, v2

    :goto_3
    iget-object p6, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    move p3, p4

    move p8, p10

    move p9, p11

    move p4, p1

    move p1, p7

    move p7, v0

    invoke-virtual/range {p0 .. p9}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->accommodateUserBrightnessChanges(ZFIIZLandroid/hardware/display/BrightnessConfiguration;IZI)V

    return-void
.end method

.method public setAutomaticBrightnessController(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->stop()V

    :cond_1
    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    return-void
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {p0, p2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setShouldResetShortTermModel(Z)V

    return-void
.end method

.method public setShouldResetShortTermModel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mShouldResetShortTermModel:Z

    return-void
.end method

.method public setTemporaryAutoBrightnessAdjustment(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mTemporaryAutoBrightnessAdjustment:F

    return-void
.end method

.method public setUseAutoBrightness(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mUseAutoBrightness:Z

    return-void
.end method

.method public shouldResetShortTermModel()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mShouldResetShortTermModel:Z

    return p0
.end method

.method public shouldUseAutoBrightness()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mUseAutoBrightness:Z

    return p0
.end method

.method public updateGameAutoBrightnessLock()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mContext:Landroid/content/Context;

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
    iput-boolean v3, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mGameAutoBrightnessLocked:Z

    return-void
.end method

.method public updatePendingAutoBrightnessAdjustments()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mContext:Landroid/content/Context;

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
    iput v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mPendingAutoBrightnessAdjustment:F

    return-void
.end method
