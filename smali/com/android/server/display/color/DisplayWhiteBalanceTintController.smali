.class public final Lcom/android/server/display/color/DisplayWhiteBalanceTintController;
.super Lcom/android/server/display/color/TintController;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAppliedCct:I

.field public mCctEvaluator:Lcom/android/server/display/color/CctEvaluator;

.field public mChromaticAdaptationMatrix:[F

.field mCurrentColorTemperature:I

.field public mCurrentColorTemperatureXYZ:[F

.field mDisplayColorSpaceRGB:Landroid/graphics/ColorSpace$Rgb;

.field public final mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public mDisplayNominalWhiteCct:I

.field mDisplayNominalWhiteXYZ:[F

.field public mIsAllowed:Z

.field public mIsAvailable:Ljava/lang/Boolean;

.field public final mLock:Ljava/lang/Object;

.field public final mMatrixDisplayWhiteBalance:[F

.field mSetUp:Z

.field public mTargetCct:I

.field public mTemperatureDefault:I

.field mTemperatureMax:I

.field mTemperatureMin:I

.field public mTransitionDuration:J

.field public mTransitionDurationDecrease:J

.field public mTransitionDurationIncrease:J


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManagerInternal;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/display/color/TintController;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mLock:Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayNominalWhiteXYZ:[F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mIsAllowed:Z

    iput-object p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iput-object p2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    return-void
.end method

.method public static mul3x3([F[F)[F
    .locals 27

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    mul-float v3, v1, v2

    const/4 v4, 0x3

    aget v5, p0, v4

    const/4 v6, 0x1

    aget v7, p1, v6

    mul-float v8, v5, v7

    add-float/2addr v8, v3

    const/4 v3, 0x6

    aget v9, p0, v3

    const/4 v10, 0x2

    aget v11, p1, v10

    mul-float v12, v9, v11

    add-float/2addr v12, v8

    aget v8, p0, v6

    mul-float v13, v8, v2

    const/4 v14, 0x4

    aget v15, p0, v14

    mul-float v16, v15, v7

    add-float v16, v16, v13

    const/4 v13, 0x7

    aget v17, p0, v13

    mul-float v18, v17, v11

    add-float v18, v18, v16

    aget v16, p0, v10

    mul-float v2, v2, v16

    const/16 v19, 0x5

    aget v20, p0, v19

    mul-float v7, v7, v20

    add-float/2addr v7, v2

    const/16 v2, 0x8

    aget v21, p0, v2

    mul-float v11, v11, v21

    add-float/2addr v11, v7

    aget v7, p1, v4

    mul-float v22, v1, v7

    aget v23, p1, v14

    mul-float v24, v5, v23

    add-float v24, v24, v22

    aget v22, p1, v19

    mul-float v25, v9, v22

    add-float v25, v25, v24

    mul-float v24, v8, v7

    mul-float v26, v15, v23

    add-float v26, v26, v24

    mul-float v24, v17, v22

    add-float v24, v24, v26

    mul-float v7, v7, v16

    mul-float v23, v23, v20

    add-float v23, v23, v7

    mul-float v22, v22, v21

    add-float v22, v22, v23

    aget v7, p1, v3

    mul-float/2addr v1, v7

    aget v23, p1, v13

    mul-float v5, v5, v23

    add-float/2addr v5, v1

    aget v1, p1, v2

    mul-float/2addr v9, v1

    add-float/2addr v9, v5

    mul-float/2addr v8, v7

    mul-float v15, v15, v23

    add-float/2addr v15, v8

    mul-float v17, v17, v1

    add-float v17, v17, v15

    mul-float v16, v16, v7

    mul-float v20, v20, v23

    add-float v20, v20, v16

    mul-float v21, v21, v1

    add-float v21, v21, v20

    const/16 v1, 0x9

    new-array v1, v1, [F

    aput v12, v1, v0

    aput v18, v1, v6

    aput v11, v1, v10

    aput v25, v1, v4

    aput v24, v1, v14

    aput v22, v1, v19

    aput v9, v1, v3

    aput v17, v1, v13

    aput v21, v1, v2

    return-object v1
.end method


# virtual methods
.method public final computeMatrixForCct(I)[F
    .locals 4

    const-string/jumbo v0, "computeDisplayWhiteBalanceMatrix: cct ="

    iget-boolean v1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mCurrentColorTemperature:I

    iget v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayNominalWhiteCct:I

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/display/color/TintController;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->computeMatrixForCctLocked(I)V

    :goto_0
    const-string v2, "ColorDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " matrix ="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    const/16 v0, 0x10

    invoke-static {v0, p1}, Lcom/android/server/display/color/TintController;->matrixToString(I[F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    monitor-exit v1

    return-object p0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    const-string p0, "ColorDisplayService"

    const-string v0, "Couldn\'t compute matrix for cct="

    invoke-static {p1, v0, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    return-object p0
.end method

.method public final computeMatrixForCctLocked(I)V
    .locals 9

    invoke-static {p1}, Landroid/graphics/ColorSpace;->cctToXyz(I)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mCurrentColorTemperatureXYZ:[F

    sget-object v0, Landroid/graphics/ColorSpace$Adaptation;->BRADFORD:Landroid/graphics/ColorSpace$Adaptation;

    iget-object v1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayNominalWhiteXYZ:[F

    invoke-static {v0, v1, p1}, Landroid/graphics/ColorSpace;->chromaticAdaptation(Landroid/graphics/ColorSpace$Adaptation;[F[F)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mChromaticAdaptationMatrix:[F

    iget-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayColorSpaceRGB:Landroid/graphics/ColorSpace$Rgb;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Rgb;->getTransform()[F

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mul3x3([F[F)[F

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayColorSpaceRGB:Landroid/graphics/ColorSpace$Rgb;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Rgb;->getInverseTransform()[F

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mul3x3([F[F)[F

    move-result-object p1

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x3

    aget v3, p1, v2

    add-float/2addr v1, v3

    const/4 v3, 0x6

    aget v4, p1, v3

    add-float/2addr v1, v4

    const/4 v4, 0x1

    aget v4, p1, v4

    const/4 v5, 0x4

    aget v6, p1, v5

    add-float/2addr v4, v6

    const/4 v6, 0x7

    aget v6, p1, v6

    add-float/2addr v4, v6

    const/4 v6, 0x2

    aget v6, p1, v6

    const/4 v7, 0x5

    aget v7, p1, v7

    add-float/2addr v6, v7

    const/16 v7, 0x8

    aget v8, p1, v7

    add-float/2addr v6, v8

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object p0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    move v4, v0

    :goto_0
    const/16 v6, 0x9

    if-ge v4, v6, :cond_1

    aget v6, p1, v4

    div-float/2addr v6, v1

    aput v6, p1, v4

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v6}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "ColorDisplayService"

    const-string p1, "Invalid DWB color matrix"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {p1, v0, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v2, p0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v3, p0, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final getLevel()I
    .locals 0

    const/16 p0, 0x7d

    return p0
.end method

.method public final getMatrix()[F
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/display/color/TintController;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mAppliedCct:I

    invoke-virtual {p0, v0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->computeMatrixForCct(I)[F

    iget-object p0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    return-object p0
.end method

.method public final getTransitionDurationMilliseconds()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTransitionDuration:J

    return-wide v0
.end method

.method public final isAvailable(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mIsAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/hardware/display/ColorDisplayManager;->isDisplayWhiteBalanceAvailable(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mIsAvailable:Ljava/lang/Boolean;

    :cond_0
    iget-object p0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mIsAvailable:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
