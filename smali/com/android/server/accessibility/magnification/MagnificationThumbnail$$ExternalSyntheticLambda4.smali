.class public final synthetic Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

.field public final synthetic f$1:Landroid/graphics/Rect;

.field public final synthetic f$2:F

.field public final synthetic f$3:F

.field public final synthetic f$4:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;Landroid/graphics/Rect;FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda4;->f$1:Landroid/graphics/Rect;

    iput p3, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda4;->f$2:F

    iput p4, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda4;->f$3:F

    iput p5, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda4;->f$4:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda4;->f$1:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda4;->f$2:F

    iget v3, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda4;->f$3:F

    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda4;->f$4:F

    iput-object v1, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mWindowBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Point;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    iget-object v4, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050297

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/graphics/Point;->x:I

    iput v4, v1, Landroid/graphics/Point;->y:I

    iget-object v4, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40e00000    # 7.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailWidth:I

    iget-object v4, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailHeight:I

    iget v5, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v6, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mBackgroundParams:Landroid/view/WindowManager$LayoutParams;

    iget v7, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailWidth:I

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-boolean v1, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mVisible:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->isFlipCoverScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mSubDisplayWindowManager:Landroid/view/WindowManager;

    iget-object v4, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailLayout:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mBackgroundParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v4, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailLayout:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mBackgroundParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v4, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    iget-boolean v1, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mVisible:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2, v3, p0}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->updateThumbnailMainThread(FFF)V

    new-instance p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;I)V

    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
