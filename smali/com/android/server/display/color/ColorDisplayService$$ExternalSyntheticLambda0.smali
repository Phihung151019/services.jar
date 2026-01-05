.class public final synthetic Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/color/ColorDisplayService;

.field public final synthetic f$1:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

.field public final synthetic f$2:Lcom/android/server/display/color/DisplayTransformManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/DisplayWhiteBalanceTintController;Lcom/android/server/display/color/DisplayTransformManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/color/ColorDisplayService;

    iput-object p2, p0, Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    iput-object p3, p0, Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/display/color/DisplayTransformManager;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/display/color/DisplayTransformManager;

    iget-object v0, v0, Lcom/android/server/display/color/ColorDisplayService;->mCctTintApplierLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v2, v1, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mAppliedCct:I

    if-eq p1, v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->computeMatrixForCct(I)[F

    move-result-object v2

    const/16 v3, 0x7d

    invoke-virtual {p0, v3, v2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    iput p1, v1, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mAppliedCct:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
