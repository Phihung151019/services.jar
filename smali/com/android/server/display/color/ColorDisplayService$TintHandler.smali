.class public final Lcom/android/server/display/color/ColorDisplayService$TintHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v0, 0x2

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

    invoke-static {p0, p1, v3}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mapplyTint(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;Z)V

    return-void

    :pswitch_1
    iget-object v5, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object v6, v5, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    const-string p0, "DisplayWhiteBalanceTintController animation started: toCct="

    iget-object v1, v5, Lcom/android/server/display/color/ColorDisplayService;->mCctTintApplierLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v6}, Lcom/android/server/display/color/TintController;->cancelAnimator()V

    const-class p1, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-virtual {v5, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Lcom/android/server/display/color/DisplayTransformManager;

    iget v8, v6, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mAppliedCct:I

    invoke-virtual {v6}, Lcom/android/server/display/color/TintController;->isActivated()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, v6, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTargetCct:I

    :goto_0
    move v7, p1

    goto :goto_1

    :cond_0
    iget p1, v6, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayNominalWhiteCct:I

    goto :goto_0

    :goto_1
    if-le v7, v8, :cond_1

    iget-wide v2, v6, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTransitionDurationIncrease:J

    goto :goto_2

    :cond_1
    iget-wide v2, v6, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTransitionDurationDecrease:J

    :goto_2
    const-string p1, "ColorDisplayService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " fromCct="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " with duration="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    filled-new-array {v8, v7}, [I

    move-result-object p0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {v6, p0}, Lcom/android/server/display/color/TintController;->setAnimator(Landroid/animation/ValueAnimator;)V

    iget-object p1, v6, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mCctEvaluator:Lcom/android/server/display/color/CctEvaluator;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_2
    :goto_3
    invoke-virtual {p0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x10c000b

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda0;

    invoke-direct {p1, v5, v6, v9}, Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/DisplayWhiteBalanceTintController;Lcom/android/server/display/color/DisplayTransformManager;)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Lcom/android/server/display/color/ColorDisplayService$4;

    invoke-direct/range {v4 .. v9}, Lcom/android/server/display/color/ColorDisplayService$4;-><init>(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/DisplayWhiteBalanceTintController;IILcom/android/server/display/color/DisplayTransformManager;)V

    invoke-virtual {p0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    monitor-exit v1

    return-void

    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object v1, v1, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/GlobalSaturationTintController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x64

    if-gez p1, :cond_3

    move p1, v2

    goto :goto_5

    :cond_3
    if-le p1, v4, :cond_4

    move p1, v4

    :cond_4
    :goto_5
    const-string/jumbo v5, "Setting saturation level: "

    const-string v6, "ColorDisplayService"

    invoke-static {p1, v5, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/server/display/color/GlobalSaturationTintController;->mMatrixGlobalSaturation:[F

    if-ne p1, v4, :cond_5

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Lcom/android/server/display/color/TintController;->setActivated(Ljava/lang/Boolean;)V

    invoke-static {v5, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto :goto_6

    :cond_5
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4}, Lcom/android/server/display/color/TintController;->setActivated(Ljava/lang/Boolean;)V

    invoke-static {v5, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    int-to-float p1, p1

    const v1, 0x3c23d70a    # 0.01f

    mul-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    const v4, 0x3e6c8b44    # 0.231f

    mul-float/2addr v4, v1

    const v6, 0x3f370a3d    # 0.715f

    mul-float/2addr v6, v1

    const v7, 0x3d9374bc    # 0.072f

    mul-float/2addr v1, v7

    const/4 v7, 0x3

    new-array v7, v7, [F

    aput v4, v7, v2

    aput v6, v7, v3

    aput v1, v7, v0

    aget v1, v7, v2

    add-float/2addr v1, p1

    aput v1, v5, v2

    aget v1, v7, v2

    aput v1, v5, v3

    aput v1, v5, v0

    aget v1, v7, v3

    const/4 v3, 0x4

    aput v1, v5, v3

    const/4 v3, 0x5

    add-float v4, v1, p1

    aput v4, v5, v3

    const/4 v3, 0x6

    aput v1, v5, v3

    aget v0, v7, v0

    const/16 v1, 0x8

    aput v0, v5, v1

    const/16 v1, 0x9

    aput v0, v5, v1

    const/16 v1, 0xa

    add-float/2addr v0, p1

    aput v0, v5, v1

    :goto_6
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/GlobalSaturationTintController;

    invoke-static {p0, p1, v2}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mapplyTint(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;Z)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-static {p0, p1, v2}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mapplyTint(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;Z)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-static {p0, p1, v3}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mapplyTint(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;Z)V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    sget-object p1, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->setUp()V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->onUserChanged(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
