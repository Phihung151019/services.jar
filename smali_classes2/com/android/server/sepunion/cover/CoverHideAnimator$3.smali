.class public final Lcom/android/server/sepunion/cover/CoverHideAnimator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverHideAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$3;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$3;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/CoverHideAnimator;->removeViewFromWindow()V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method
