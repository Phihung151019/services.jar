.class public final Lcom/android/server/display/color/ColorDisplayService$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mIsCancelled:Z

.field public final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;

.field public final synthetic val$dtm:Lcom/android/server/display/color/DisplayTransformManager;

.field public final synthetic val$from:I

.field public final synthetic val$tintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

.field public final synthetic val$to:I


# direct methods
.method public constructor <init>(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/DisplayWhiteBalanceTintController;IILcom/android/server/display/color/DisplayTransformManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$4;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iput-object p2, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$tintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    iput p3, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$to:I

    iput p4, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$from:I

    iput-object p5, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$dtm:Lcom/android/server/display/color/DisplayTransformManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$tintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, " animation cancelled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ColorDisplayService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/display/color/ColorDisplayService$4;->mIsCancelled:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$4;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object p1, p1, Lcom/android/server/display/color/ColorDisplayService;->mCctTintApplierLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    const-string v0, "ColorDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$tintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " animation ended: wasCancelled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/color/ColorDisplayService$4;->mIsCancelled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " toCct="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$to:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " fromCct="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$from:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService$4;->mIsCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$dtm:Lcom/android/server/display/color/DisplayTransformManager;

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$tintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$tintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    iget v2, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$to:I

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->computeMatrixForCct(I)[F

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v0, v2, v1}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$tintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$to:I

    iput v1, v0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mAppliedCct:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$tintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/display/color/TintController;->setAnimator(Landroid/animation/ValueAnimator;)V

    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
