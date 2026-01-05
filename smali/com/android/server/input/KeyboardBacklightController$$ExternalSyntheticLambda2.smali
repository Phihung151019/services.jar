.class public final synthetic Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/input/KeyboardBacklightController$AnimatorFactory;


# virtual methods
.method public final makeIntAnimator(II)Landroid/animation/ValueAnimator;
    .locals 0

    sget-boolean p0, Lcom/android/server/input/KeyboardBacklightController;->DEBUG:Z

    filled-new-array {p1, p2}, [I

    move-result-object p0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method
