.class public Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;
.super Lcom/android/server/display/brightness/clamper/BrightnessModifier;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$UserSwitchListener;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mAmbientLux:F

.field public mBrightnessLowerBound:F

.field public final mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

.field public final mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field public mIsActive:Z

.field public mMinNitsAllowed:F

.field public mReason:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "BrightnessLowLuxModifier"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessModifier;-><init>()V

    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    iput-object p4, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    new-instance p2, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final apply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Lcom/android/server/display/DisplayBrightnessState$Builder;)V
    .locals 1

    iget p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mBrightnessLowerBound:F

    iput p1, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mMinBrightness:F

    iget v0, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mBrightnessLowerBound:F

    invoke-static {p1, v0}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mReason:I

    iget p2, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    invoke-virtual {p1, p2, p0}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    :cond_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "BrightnessLowLuxModifier:"

    const-string v1, "  mIsActive="

    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mIsActive:Z

    const-string v2, "  mBrightnessLowerBound="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mBrightnessLowerBound:F

    const-string v2, "  mReason="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mReason:I

    const-string v2, "  mAmbientLux="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mAmbientLux:F

    const-string v2, "  mMinNitsAllowed="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mMinNitsAllowed:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getBrightnessAdjusted(FLandroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)F
    .locals 0

    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mBrightnessLowerBound:F

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public getBrightnessLowerBound()F
    .locals 0

    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mBrightnessLowerBound:F

    return p0
.end method

.method public getBrightnessReason()I
    .locals 0

    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mReason:I

    return p0
.end method

.method public final getModifier()I
    .locals 0

    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mReason:I

    return p0
.end method

.method public isActive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mIsActive:Z

    return p0
.end method

.method public recalculateLowerBound()V
    .locals 5

    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mAmbientLux:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v4, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    if-eqz v2, :cond_2

    iget-object v3, v4, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v3, Lcom/android/server/display/config/EvenDimmerBrightnessData;->minLuxToNits:Landroid/util/Spline;

    invoke-virtual {v1, v0}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    :goto_1
    const v0, 0x3e4ccccd    # 0.2f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v4, v1}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightFromNits(F)F

    move-result v0

    invoke-virtual {v4, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result v0

    const/16 v3, 0x10

    goto :goto_2

    :cond_2
    iget-object v0, v4, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    iget v0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->transitionPoint:F

    :goto_2
    iget v4, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mBrightnessLowerBound:F

    cmpl-float v4, v4, v0

    if-nez v4, :cond_5

    iget v4, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mReason:I

    if-ne v4, v3, :cond_5

    iget-boolean v4, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mIsActive:Z

    if-eq v4, v2, :cond_4

    goto :goto_3

    :cond_4
    return-void

    :cond_5
    :goto_3
    iput-boolean v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mIsActive:Z

    iput v3, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mReason:I

    sget-boolean v3, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->DEBUG:Z

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isActive: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", minBrightnessAllowed: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mAmbientLux: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mAmbientLux:F

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mReason: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mReason:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", minNitsAllowed: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BrightnessLowLuxModifier"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iput v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mMinNitsAllowed:F

    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mBrightnessLowerBound:F

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    return-void
.end method

.method public setAmbientLux(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mAmbientLux:F

    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->recalculateLowerBound()V

    return-void
.end method

.method public final shouldApply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mIsActive:Z

    return p0
.end method

.method public final shouldListenToLightSensor()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final stop()V
    .locals 0

    return-void
.end method
