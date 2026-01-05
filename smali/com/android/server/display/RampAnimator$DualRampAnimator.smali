.class public final Lcom/android/server/display/RampAnimator$DualRampAnimator;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAnimationCallback:Lcom/android/server/display/RampAnimator$DualRampAnimator$1;

.field public mAwaitingCallback:Z

.field public final mChoreographer:Landroid/view/Choreographer;

.field public final mFirst:Lcom/android/server/display/RampAnimator;

.field public mListener:Lcom/android/server/display/DisplayPowerController$4;

.field public final mSecond:Lcom/android/server/display/RampAnimator;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/android/server/display/DisplayPowerState$1;Lcom/android/server/display/DisplayPowerState$1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;-><init>(Lcom/android/server/display/RampAnimator$DualRampAnimator;)V

    iput-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mAnimationCallback:Lcom/android/server/display/RampAnimator$DualRampAnimator$1;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mChoreographer:Landroid/view/Choreographer;

    new-instance v0, Lcom/android/server/display/RampAnimator;

    invoke-direct {v0, p1, p2}, Lcom/android/server/display/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    iput-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    new-instance p2, Lcom/android/server/display/RampAnimator;

    invoke-direct {p2, p1, p3}, Lcom/android/server/display/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    iput-object p2, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mSecond:Lcom/android/server/display/RampAnimator;

    return-void
.end method


# virtual methods
.method public final getTarget()F
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    iget p0, p0, Lcom/android/server/display/RampAnimator;->mTarget:F

    return p0
.end method

.method public final isAnimating()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    iget-boolean v0, v0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mSecond:Lcom/android/server/display/RampAnimator;

    iget-boolean p0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
