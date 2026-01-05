.class public final Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/actiontype/Zoom;

.field public final synthetic val$displayId:I

.field public final synthetic val$ratio:I

.field public final synthetic val$x:I

.field public final synthetic val$y:I


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/actiontype/Zoom;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/Zoom;

    iput p2, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;->val$x:I

    iput p3, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;->val$y:I

    iput p4, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;->val$ratio:I

    iput p5, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;->val$displayId:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/Zoom;

    iget v1, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;->val$x:I

    move v2, v1

    iget v1, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;->val$y:I

    iget v3, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;->val$ratio:I

    int-to-float v3, v3

    iget v6, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;->val$displayId:I

    iget-object p0, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "display"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v6}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    new-instance v4, Landroid/view/DisplayInfo;

    invoke-direct {v4}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {p0, v4}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget p0, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v4, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050669

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    sub-int v5, p0, v5

    int-to-float v7, v5

    mul-float/2addr v7, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v7, v3

    const/high16 v3, 0x40000000    # 2.0f

    sub-float/2addr v7, v3

    float-to-int v3, v7

    add-int/lit8 v5, v5, -0x2

    if-le v3, v5, :cond_0

    move v3, v5

    :cond_0
    add-int/lit8 v5, v2, -0x32

    add-int/lit8 v2, v2, 0x32

    const-string/jumbo v7, "com.samsung.android.messaging"

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->getTopPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v5

    goto :goto_0

    :cond_1
    div-int/lit8 v7, v3, 0x2

    sub-int v7, v5, v7

    :goto_0
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    if-ge v7, v4, :cond_2

    sub-int/2addr v7, v4

    add-int/lit8 v7, v7, 0x1

    sub-int/2addr v3, v7

    add-int/lit8 v7, v4, -0x1

    :cond_2
    sub-int/2addr p0, v4

    if-le v3, p0, :cond_3

    sub-int/2addr v3, p0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v7, v3

    add-int/lit8 v3, p0, 0x1

    :cond_3
    move v4, v3

    move v3, v7

    iget-object p0, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mType:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v7, "zoom_in"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string/jumbo v7, "zoom_out"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move v9, v5

    move v5, v2

    move v2, v3

    move v3, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->generateTouchEvent(IIIIII)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "Wrong Zoom Type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    move v9, v4

    move v4, v2

    move v2, v5

    move v5, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->generateTouchEvent(IIIIII)V

    return-void
.end method
