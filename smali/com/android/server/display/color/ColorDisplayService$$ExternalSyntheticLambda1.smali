.class public final synthetic Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/color/DisplayTransformManager;

.field public final synthetic f$1:Lcom/android/server/display/color/TintController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/color/DisplayTransformManager;Lcom/android/server/display/color/TintController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/color/DisplayTransformManager;

    iput-object p2, p0, Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/display/color/TintController;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/color/DisplayTransformManager;

    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/display/color/TintController;

    sget-object v1, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    invoke-virtual {p0}, Lcom/android/server/display/color/TintController;->getLevel()I

    move-result p0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    check-cast p1, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    iget-object v1, p1, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->min:[F

    aget v2, v1, v0

    aget v3, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v1, v0

    iget-object v1, p1, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->max:[F

    aget v2, v1, v0

    aget v3, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
