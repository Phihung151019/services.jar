.class public final Lcom/android/server/display/DisplayDeviceInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public address:Landroid/view/DisplayAddress;

.field public allmSupported:Z

.field public appVsyncOffsetNanos:J

.field public brightnessDefault:F

.field public brightnessDim:F

.field public brightnessMaximum:F

.field public brightnessMinimum:F

.field public colorMode:I

.field public committedState:I

.field public defaultModeId:I

.field public densityDpi:I

.field public deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

.field public displayCutout:Landroid/view/DisplayCutout;

.field public displayShape:Landroid/view/DisplayShape;

.field public flags:I

.field public frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

.field public frameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

.field public gameContentTypeSupported:Z

.field public hasArrSupport:Z

.field public hdrCapabilities:Landroid/view/Display$HdrCapabilities;

.field public hdrSdrRatio:F

.field public height:I

.field public installOrientation:I

.field public modeId:I

.field public name:Ljava/lang/String;

.field public ownerPackageName:Ljava/lang/String;

.field public ownerUid:I

.field public presentationDeadlineNanos:J

.field public renderFrameRate:F

.field public rotation:I

.field public roundedCorners:Landroid/view/RoundedCorners;

.field public state:I

.field public supportedColorModes:[I

.field public supportedModes:[Landroid/view/Display$Mode;

.field public supportedRefreshRates:[F

.field public touch:I

.field public type:I

.field public uniqueId:Ljava/lang/String;

.field public userPreferredModeId:I

.field public width:I

.field public xDpi:F

.field public yDpi:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedRefreshRates:[F

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->userPreferredModeId:I

    sget-object v1, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    filled-new-array {v0}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->committedState:I

    new-array v1, v0, [Landroid/view/DisplayEventReceiver$FrameRateOverride;

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->frameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->hdrSdrRatio:F

    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->installOrientation:I

    return-void
.end method


# virtual methods
.method public final diff(Lcom/android/server/display/DisplayDeviceInfo;)I
    .locals 5

    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->committedState:I

    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->committedState:I

    if-eq v1, v2, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    if-eq v1, v2, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->hdrSdrRatio:F

    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->hdrSdrRatio:F

    invoke-static {v1, v2}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v1

    if-nez v1, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    if-eq v1, v2, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->renderFrameRate:F

    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->renderFrameRate:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    iget-wide v3, p1, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    iget-wide v3, p1, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    :cond_5
    or-int/lit8 v0, v0, 0x40

    :cond_6
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    if-eq v1, v2, :cond_7

    or-int/lit16 v0, v0, 0x80

    :cond_7
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->frameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->frameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    or-int/lit16 v0, v0, 0x100

    :cond_8
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    if-ne v1, v2, :cond_a

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    if-ne v1, v2, :cond_a

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    if-ne v1, v2, :cond_a

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->userPreferredModeId:I

    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->userPreferredModeId:I

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->allmSupported:Z

    iget-boolean v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->allmSupported:Z

    if-ne v1, v2, :cond_a

    iget-boolean v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->gameContentTypeSupported:Z

    iget-boolean v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->gameContentTypeSupported:Z

    if-ne v1, v2, :cond_a

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    if-ne v1, v2, :cond_a

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_a

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_a

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    if-ne v1, v2, :cond_a

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMinimum:F

    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMinimum:F

    invoke-static {v1, v2}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMaximum:F

    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMaximum:F

    invoke-static {v1, v2}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDefault:F

    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDefault:F

    invoke-static {v1, v2}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDim:F

    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDim:F

    invoke-static {v1, v2}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->roundedCorners:Landroid/view/RoundedCorners;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->installOrientation:I

    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->installOrientation:I

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayShape:Landroid/view/DisplayShape;

    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->displayShape:Landroid/view/DisplayShape;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->hasArrSupport:Z

    iget-boolean v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->hasArrSupport:Z

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedRefreshRates:[F

    iget-object p1, p1, Lcom/android/server/display/DisplayDeviceInfo;->supportedRefreshRates:[F

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_1

    :cond_9
    return v0

    :cond_a
    :goto_1
    or-int/lit8 p0, v0, 0x1

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/server/display/DisplayDeviceInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/display/DisplayDeviceInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceInfo;->diff(Lcom/android/server/display/DisplayDeviceInfo;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DisplayDeviceInfo{\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\": uniqueId=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", modeId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", renderFrameRate "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->renderFrameRate:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", hasArrSupport "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->hasArrSupport:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", frameRateCategoryRate "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", supportedRefreshRates "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedRefreshRates:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", defaultModeId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", userPreferredModeId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->userPreferredModeId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", supportedModes "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", colorMode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", supportedColorModes "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", hdrCapabilities "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isForceSdr false, allmSupported "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->allmSupported:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", gameContentTypeSupported "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->gameContentTypeSupported:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", density "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " dpi, appVsyncOff "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", presDeadline "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v1, :cond_0

    const-string v1, ", cutout "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ", touch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "VIRTUAL"

    goto :goto_0

    :cond_2
    const-string v1, "EXTERNAL"

    goto :goto_0

    :cond_3
    const-string v1, "INTERNAL"

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "NONE"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rotation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    invoke-static {v1}, Landroid/view/Display;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    if-eqz v1, :cond_5

    const-string v1, ", address "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, ", deviceProductInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", committedState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->committedState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    if-eqz v1, :cond_7

    :cond_6
    const-string v1, ", owner "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v1, ", frameRateOverride "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->frameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_8

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    const-string v1, ", brightnessMinimum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMinimum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", brightnessMaximum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMaximum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", brightnessDefault "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDefault:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", brightnessDim "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDim:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", hdrSdrRatio "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->hdrSdrRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->roundedCorners:Landroid/view/RoundedCorners;

    if-eqz v1, :cond_9

    const-string v1, ", roundedCorners "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->roundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_9
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_a

    const-string v3, ", FLAG_ALLOWED_TO_BE_DEFAULT_DISPLAY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_b

    const-string v3, ", FLAG_ROTATES_WITH_CONTENT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_c

    const-string v3, ", FLAG_SECURE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_d

    const-string v3, ", FLAG_SUPPORTS_PROTECTED_BUFFERS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_e

    const-string v3, ", FLAG_PRIVATE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_f

    const-string v3, ", FLAG_NEVER_BLANK"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    and-int/lit8 v3, v1, 0x40

    if-eqz v3, :cond_10

    const-string v3, ", FLAG_PRESENTATION"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_11

    const-string v3, ", FLAG_OWN_CONTENT_ONLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    and-int/lit16 v3, v1, 0x100

    if-eqz v3, :cond_12

    const-string v3, ", FLAG_ROUND"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    and-int/lit16 v3, v1, 0x200

    if-eqz v3, :cond_13

    const-string v3, ", FLAG_CAN_SHOW_WITH_INSECURE_KEYGUARD"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    and-int/lit16 v3, v1, 0x400

    if-eqz v3, :cond_14

    const-string v3, ", FLAG_DESTROY_CONTENT_ON_REMOVAL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    and-int/lit16 v3, v1, 0x800

    if-eqz v3, :cond_15

    const-string v3, ", FLAG_MASK_DISPLAY_CUTOUT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    and-int/lit16 v3, v1, 0x1000

    if-eqz v3, :cond_16

    const-string v3, ", FLAG_SHOULD_SHOW_SYSTEM_DECORATIONS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    and-int/lit16 v3, v1, 0x2000

    if-eqz v3, :cond_17

    const-string v3, ", FLAG_TRUSTED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    and-int/lit16 v3, v1, 0x4000

    if-eqz v3, :cond_18

    const-string v3, ", FLAG_OWN_DISPLAY_GROUP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    const v3, 0x8000

    and-int/2addr v3, v1

    if-eqz v3, :cond_19

    const-string v3, ", FLAG_ALWAYS_UNLOCKED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    const/high16 v3, 0x10000

    and-int/2addr v3, v1

    if-eqz v3, :cond_1a

    const-string v3, ", FLAG_TOUCH_FEEDBACK_DISABLED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    const/high16 v3, 0x20000

    and-int/2addr v3, v1

    if-eqz v3, :cond_1b

    const-string v3, ", FLAG_OWN_FOCUS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    const/high16 v3, 0x80000

    and-int/2addr v3, v1

    if-eqz v3, :cond_1c

    const-string v3, ", FLAG_STEAL_TOP_FOCUS_DISABLED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    const/high16 v3, 0x4000000

    and-int/2addr v3, v1

    if-eqz v3, :cond_1d

    const-string v3, ", FLAG_WIRELESS_DEX_DISPLAY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    const/high16 v3, 0x8000000

    and-int/2addr v3, v1

    if-eqz v3, :cond_1e

    const-string v3, ", FLAG_PC_DEX_DISPLAY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    const/high16 v3, 0x10000000

    and-int/2addr v3, v1

    if-eqz v3, :cond_1f

    const-string v3, ", FLAG_WIFI_DISPLAY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    const/high16 v3, 0x20000000

    and-int/2addr v3, v1

    if-eqz v3, :cond_20

    const-string v3, ", FLAG_NO_LOCK_PRESENTATION"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    const/high16 v3, 0x2000000

    and-int/2addr v3, v1

    if-eqz v3, :cond_21

    const-string v3, ", FLAG_HIDDEN_SPACE_DISPLAY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v3, :cond_22

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v3, v1

    if-eqz v3, :cond_22

    const-string v3, ", FLAG_SPEG_DISPLAY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz v3, :cond_23

    const/high16 v3, -0x80000000

    and-int/2addr v3, v1

    if-eqz v3, :cond_23

    const-string v3, ", FLAG_CARLIFE_DISPLAY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    const/high16 v3, 0x1000000

    and-int/2addr v3, v1

    if-eqz v3, :cond_24

    const-string v3, ", FLAG_EXTRA_BUILT_IN_DISPLAY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    const/high16 v3, 0x800000

    and-int/2addr v3, v1

    if-eqz v3, :cond_25

    const-string v3, ", FLAG_VIEW_COVER_DISPLAY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    const/high16 v3, 0x400000

    and-int/2addr v1, v3

    if-eqz v1, :cond_26

    const-string v1, ", FLAG_REMOTE_APP_DISPLAY"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", installOrientation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->installOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayShape:Landroid/view/DisplayShape;

    if-eqz v1, :cond_27

    const-string v1, ", displayShape "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayShape:Landroid/view/DisplayShape;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_27
    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
