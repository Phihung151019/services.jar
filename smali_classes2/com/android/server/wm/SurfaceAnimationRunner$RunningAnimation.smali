.class public final Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAnim:Landroid/animation/ValueAnimator;

.field public final mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

.field public mCancelled:Z

.field public final mFinishCallback:Lcom/android/server/wm/LocalAnimationAdapter$$ExternalSyntheticLambda0;

.field public final mLeash:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Landroid/view/SurfaceControl;Lcom/android/server/wm/LocalAnimationAdapter$$ExternalSyntheticLambda0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    iput-object p2, p0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mFinishCallback:Lcom/android/server/wm/LocalAnimationAdapter$$ExternalSyntheticLambda0;

    return-void
.end method
