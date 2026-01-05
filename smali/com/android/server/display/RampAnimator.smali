.class public final Lcom/android/server/display/RampAnimator;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAnimatedValue:F

.field public mAnimating:Z

.field public mAnimationDecreaseMaxTimeSecs:F

.field public mAnimationIncreaseMaxTimeSecs:F

.field public final mClock:Lcom/android/server/display/RampAnimator$$ExternalSyntheticLambda0;

.field public mCurrentValue:F

.field public mFirstTime:Z

.field public mLastFrameTimeNanos:J

.field public final mObject:Ljava/lang/Object;

.field public final mProperty:Landroid/util/FloatProperty;

.field public mRate:F

.field public mRateAtHbm:F

.field public mTarget:F

.field public mTargetHlgValue:F


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V
    .locals 2

    new-instance v0, Lcom/android/server/display/RampAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/FloatProperty;

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mClock:Lcom/android/server/display/RampAnimator$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final performNextAnimationStep(J)V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    const v1, 0x3089705f    # 1.0E-9f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Choreographer callback time out: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "RampAnimator"

    invoke-static {v3, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-wide p1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    iget p1, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    iget p2, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    iget v2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpg-float p2, p2, v2

    if-gez p2, :cond_1

    iget p2, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    cmpl-float p2, p2, v1

    if-lez p2, :cond_1

    iget p2, p0, Lcom/android/server/display/RampAnimator;->mRateAtHbm:F

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-nez p2, :cond_1

    iget p1, p0, Lcom/android/server/display/RampAnimator;->mRateAtHbm:F

    :cond_1
    mul-float/2addr v0, p1

    div-float/2addr v0, v1

    iget p1, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    iget p2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpl-float p2, p1, p2

    if-lez p2, :cond_2

    iget p2, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    add-float/2addr p2, v0

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    goto :goto_0

    :cond_2
    iget p2, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    sub-float/2addr p2, v0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    :goto_0
    iget p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    iget p2, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    iput p2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/FloatProperty;

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    :cond_3
    iget p1, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    iget p2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpl-float p1, p1, p2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    :cond_4
    return-void
.end method

.method public final setAnimationTarget(FFFZ)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationIncreaseMaxTimeSecs:F

    :goto_0
    if-eqz p4, :cond_1

    move p4, v0

    goto :goto_1

    :cond_1
    iget p4, p0, Lcom/android/server/display/RampAnimator;->mAnimationDecreaseMaxTimeSecs:F

    :goto_1
    iget v2, p0, Lcom/android/server/display/RampAnimator;->mTarget:F

    cmpl-float v2, v2, p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTarget:F

    move v2, v3

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    iget-boolean v5, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    if-nez v5, :cond_b

    cmpg-float v6, p2, v0

    if-gtz v6, :cond_3

    goto :goto_4

    :cond_3
    iget v2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpl-float v5, p1, v2

    if-lez v5, :cond_4

    cmpl-float v6, v1, v0

    if-lez v6, :cond_4

    sub-float v6, p1, v2

    div-float v7, v6, p2

    cmpl-float v7, v7, v1

    if-lez v7, :cond_4

    div-float p2, v6, v1

    goto :goto_3

    :cond_4
    cmpg-float v1, p1, v2

    if-gez v1, :cond_5

    cmpl-float v0, p4, v0

    if-lez v0, :cond_5

    sub-float v0, v2, p1

    div-float v1, v0, p2

    cmpl-float v1, v1, p4

    if-lez v1, :cond_5

    div-float p2, v0, p4

    :cond_5
    :goto_3
    iget-boolean p4, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz p4, :cond_7

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mRateAtHbm:F

    cmpl-float v0, p3, v0

    if-nez v0, :cond_7

    cmpg-float v0, p1, v2

    if-gtz v0, :cond_6

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    cmpg-float v0, v2, v0

    if-lez v0, :cond_7

    :cond_6
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_8

    cmpg-float v0, v2, p1

    if-gtz v0, :cond_8

    :cond_7
    iput p2, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    iput p3, p0, Lcom/android/server/display/RampAnimator;->mRateAtHbm:F

    :cond_8
    iget p2, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_9

    move v4, v3

    :cond_9
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    if-nez p4, :cond_a

    if-eqz v5, :cond_a

    iput-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    iput v2, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    :cond_a
    return v4

    :cond_b
    :goto_4
    if-nez v5, :cond_d

    iget p2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpl-float p2, p1, p2

    if-nez p2, :cond_d

    if-eqz v2, :cond_c

    goto :goto_5

    :cond_c
    return v4

    :cond_d
    :goto_5
    iput-boolean v4, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    iput v0, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    iput v0, p0, Lcom/android/server/display/RampAnimator;->mRateAtHbm:F

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    iget-object p2, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/FloatProperty;

    iget-object p3, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {p2, p3, p1}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    iput-boolean v4, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return v3
.end method

.method public final setAnimationTimeLimits(JJ)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    const/high16 v4, 0x447a0000    # 1000.0f

    if-lez v2, :cond_0

    long-to-float p1, p1

    div-float/2addr p1, v4

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mAnimationIncreaseMaxTimeSecs:F

    cmp-long p1, p3, v0

    if-lez p1, :cond_1

    long-to-float p1, p3

    div-float v3, p1, v4

    :cond_1
    iput v3, p0, Lcom/android/server/display/RampAnimator;->mAnimationDecreaseMaxTimeSecs:F

    return-void
.end method
