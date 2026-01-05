.class public final Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onAnimationCancel$com$android$server$accessibility$SamsungTapDurationProgressUI$1(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final onAnimationCancel$com$android$server$accessibility$SamsungTapDurationProgressUI$3(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final onAnimationRepeat$com$android$server$accessibility$SamsungTapDurationProgressUI$1(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final onAnimationRepeat$com$android$server$accessibility$SamsungTapDurationProgressUI$3(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->$r8$classId:I

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    iget-object v0, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mStandBy:Landroid/widget/ImageView;

    iget-boolean v1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsRemoveAnimationEnabled:Z

    const/16 v2, 0x8

    if-nez v1, :cond_1

    iget-boolean p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsShortThreshold:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mHold:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    iget p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->$r8$classId:I

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mCircle:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mProgress:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mRotationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
