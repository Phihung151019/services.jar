.class public final Lcom/android/server/display/color/ReduceBrightColorsTintController;
.super Lcom/android/server/display/color/TintController;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCoefficients:[F

.field public final mMatrix:[F

.field public mStrength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/display/color/TintController;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/color/ReduceBrightColorsTintController;->mMatrix:[F

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/color/ReduceBrightColorsTintController;->mCoefficients:[F

    return-void
.end method


# virtual methods
.method public final computeComponentValue(I)F
    .locals 2

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    mul-float v0, p1, p1

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/server/display/color/ReduceBrightColorsTintController;->mCoefficients:[F

    aget v1, p0, v1

    mul-float/2addr v0, v1

    const/4 v1, 0x1

    aget v1, p0, v1

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    const/4 v0, 0x2

    aget p0, p0, v0

    add-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, p0

    if-lez v0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    cmpg-float v0, p1, p0

    if-gez v0, :cond_1

    return p0

    :cond_1
    return p1
.end method

.method public final getLevel()I
    .locals 0

    const/16 p0, 0xfa

    return p0
.end method

.method public final getMatrix()[F
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/color/TintController;->mIsActivationLocked:Z

    if-eqz v0, :cond_0

    const-string p0, "ColorDisplayService"

    const-string/jumbo v0, "ReduceBrightColorsTintController: activation lock"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/color/TintController;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/display/color/ReduceBrightColorsTintController;->mMatrix:[F

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    return-object p0
.end method

.method public final setActivated(Ljava/lang/Boolean;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/display/color/TintController;->setActivated(Ljava/lang/Boolean;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "Turning on reduce bright colors"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "Turning off reduce bright colors"

    :goto_0
    const-string p1, "ColorDisplayService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setMatrix(I)V
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    if-le p1, v1, :cond_1

    move p1, v1

    :cond_1
    :goto_0
    const-string/jumbo v1, "Setting bright color reduction level: "

    const-string v2, "ColorDisplayService"

    invoke-static {p1, v1, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/server/display/color/ReduceBrightColorsTintController;->mStrength:I

    iget-object v1, p0, Lcom/android/server/display/color/ReduceBrightColorsTintController;->mMatrix:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ReduceBrightColorsTintController;->computeComponentValue(I)F

    move-result p0

    aput p0, v1, v0

    const/4 p1, 0x5

    aput p0, v1, p1

    const/16 p1, 0xa

    aput p0, v1, p1

    return-void
.end method

.method public final setUp(Landroid/content/Context;Z)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VIVID_WCG_ON:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p2, v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p2, :cond_1

    const p2, 0x107014c

    goto :goto_0

    :cond_1
    const p2, 0x107014d

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    :goto_1
    const/4 p2, 0x3

    if-ge v1, p2, :cond_2

    array-length p2, p1

    if-ge v1, p2, :cond_2

    aget-object p2, p1, v1

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    iget-object v0, p0, Lcom/android/server/display/color/ReduceBrightColorsTintController;->mCoefficients:[F

    aput p2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
