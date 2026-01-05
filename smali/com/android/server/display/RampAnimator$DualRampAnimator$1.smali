.class public final Lcom/android/server/display/RampAnimator$DualRampAnimator$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/RampAnimator$DualRampAnimator;


# direct methods
.method public constructor <init>(Lcom/android/server/display/RampAnimator$DualRampAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    iget-object v0, v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    iget-object v2, v2, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/display/RampAnimator;->performNextAnimationStep(J)V

    iget-object v2, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    iget-object v2, v2, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mSecond:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/display/RampAnimator;->performNextAnimationStep(J)V

    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mAnimationCallback:Lcom/android/server/display/RampAnimator$DualRampAnimator$1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    iget-object v0, v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mListener:Lcom/android/server/display/DisplayPowerController$4;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController$4;->onAnimationEnd()V

    :cond_1
    iget-object p0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mAwaitingCallback:Z

    return-void
.end method
