.class public final Lcom/android/server/accessibility/magnification/MagnificationThumbnail;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBackgroundParams:Landroid/view/WindowManager$LayoutParams;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsFadingIn:Z

.field public final mSubDisplayWindowManager:Landroid/view/WindowManager;

.field public mThumbnailAnimator:Landroid/animation/ObjectAnimator;

.field public mThumbnailHeight:I

.field public mThumbnailLayout:Landroid/widget/FrameLayout;

.field public mThumbnailView:Landroid/view/View;

.field public mThumbnailWidth:I

.field public mVisible:Z

.field public mWindowBounds:Landroid/graphics/Rect;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/os/Handler;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mVisible:Z

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mWindowManager:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mHandler:Landroid/os/Handler;

    const-string/jumbo p2, "display"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    const-string/jumbo p2, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {p1, p2}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p1

    array-length p2, p1

    move p3, v0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge p3, p2, :cond_1

    aget-object v3, p1, p3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    if-ne v4, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_2

    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/view/WindowManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/view/WindowManager;

    :cond_2
    iput-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mSubDisplayWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->isFlipCoverScreen()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v2}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mWindowBounds:Landroid/graphics/Rect;

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mWindowBounds:Landroid/graphics/Rect;

    :goto_2
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x18

    const/4 v7, -0x2

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x7eb

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    const/16 p1, 0x53

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p2

    or-int/2addr p1, p2

    invoke-virtual {v2, p1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    iput-boolean v1, v2, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    iput-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mBackgroundParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailWidth:I

    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailHeight:I

    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final animateThumbnail(Z)V
    .locals 6

    const/4 v0, 0x1

    new-instance v1, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;I)V

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    new-instance v1, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v2}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;I)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mIsFadingIn:Z

    if-ne p1, v1, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mIsFadingIn:Z

    if-eqz p1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mVisible:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->isFlipCoverScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mSubDisplayWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailLayout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mBackgroundParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailLayout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mBackgroundParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mVisible:Z

    :cond_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_4
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_5

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    new-array v0, v0, [F

    aput v3, v0, v2

    const-string/jumbo v2, "alpha"

    invoke-static {v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_6

    const-wide/16 v1, 0xc8

    goto :goto_2

    :cond_6
    const-wide/16 v1, 0x3e8

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final isFlipCoverScreen()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mSubDisplayWindowManager:Landroid/view/WindowManager;

    if-eqz p0, :cond_0

    sget-boolean p0, Landroid/view/accessibility/A11yRune;->A11Y_COMMON_BOOL_SUPPORT_LARGE_COVER_SCREEN_FLIP:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final updateThumbnailMainThread(FFF)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    new-instance p1, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;I)V

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->animateThumbnail(Z)V

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    goto :goto_0

    :cond_1
    div-float/2addr v0, p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    :cond_2
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_3

    iget p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailWidth:I

    if-lez p1, :cond_3

    iget p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailHeight:I

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    const v0, 0x3e124925

    mul-float/2addr p2, v0

    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float p1, p1

    add-float/2addr v1, p1

    sub-float/2addr p2, v1

    mul-float/2addr p3, v0

    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    add-float/2addr v0, p1

    sub-float/2addr p3, v0

    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailView:Landroid/view/View;

    invoke-virtual {p0, p3}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    return-void
.end method
