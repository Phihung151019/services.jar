.class public final synthetic Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

.field public final synthetic f$1:F

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    iput p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda1;->f$1:F

    iput p3, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda1;->f$2:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    iget v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda1;->f$1:F

    iget p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda1;->f$2:F

    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int v1, v1

    iget v3, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    iget v3, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mNavigationBarHeight:I

    sub-int/2addr v1, v3

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int v1, v1

    iget v3, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_0
    iget-object v1, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int p0, p0

    iget v2, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p0, v2

    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p0, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    invoke-interface {p0, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
