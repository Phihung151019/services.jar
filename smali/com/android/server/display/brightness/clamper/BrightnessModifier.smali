.class public abstract Lcom/android/server/display/brightness/clamper/BrightnessModifier;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;


# instance fields
.field public mApplied:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->mApplied:Z

    return-void
.end method


# virtual methods
.method public apply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Lcom/android/server/display/DisplayBrightnessState$Builder;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->shouldApply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v0, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->getBrightnessAdjusted(FLandroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)F

    move-result p1

    iput p1, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    iget-object p1, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->getModifier()I

    move-result v0

    iget v3, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    invoke-virtual {p1, v3, v0}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    :cond_0
    iget-boolean p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->mApplied:Z

    if-nez p1, :cond_1

    iput-boolean v2, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsSlowChange:Z

    iput v1, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mCustomAnimationRate:F

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->mApplied:Z

    return-void

    :cond_2
    iget-boolean p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->mApplied:Z

    if-eqz p1, :cond_3

    iput-boolean v2, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsSlowChange:Z

    iput v1, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mCustomAnimationRate:F

    iput-boolean v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->mApplied:Z

    :cond_3
    return-void
.end method

.method public abstract getBrightnessAdjusted(FLandroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)F
.end method

.method public abstract getModifier()I
.end method

.method public abstract shouldApply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z
.end method

.method public stop()V
    .locals 0

    return-void
.end method
