.class public Lcom/android/server/autofill/ui/CustomScrollView;
.super Landroid/widget/ScrollView;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAttrBasedMaxHeightPercent:I

.field public mHeight:I

.field public mMaxLandscapeBodyHeightPercent:I

.field public mMaxPortraitBodyHeightPercent:I

.field public mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    iput v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/CustomScrollView;->setMaxBodyHeightPercent(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    iput p2, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/CustomScrollView;->setMaxBodyHeightPercent(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    iput p2, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/CustomScrollView;->setMaxBodyHeightPercent(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    iput p2, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/CustomScrollView;->setMaxBodyHeightPercent(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result p2

    const-string v0, "CustomScrollView"

    if-nez p2, :cond_0

    const-string/jumbo p0, "no children"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    iget p1, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mMaxLandscapeBodyHeightPercent:I

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x64

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mMaxPortraitBodyHeightPercent:I

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x64

    :goto_0
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "calculateDimensions(): mMaxPortraitBodyHeightPercent="

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mMaxPortraitBodyHeightPercent:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mMaxLandscapeBodyHeightPercent="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mMaxLandscapeBodyHeightPercent:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mAttrBasedMaxHeightPercent="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mAttrBasedMaxHeightPercent:I

    const-string v3, ", maxHeight="

    const-string v4, ", contentHeight="

    invoke-static {v2, v1, v3, v4, p1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", w="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", h="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    invoke-static {p1, p2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_3
    :goto_1
    iget p1, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    iget p2, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setMaxBodyHeightPercent(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v1, 0x1120017

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/high16 p1, 0x42c80000    # 100.0f

    invoke-virtual {v0, p1, p1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mAttrBasedMaxHeightPercent:I

    const-string/jumbo v0, "autofill_save_dialog_portrait_body_height_max_percent"

    const-string/jumbo v1, "autofill"

    invoke-static {v1, v0, p1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mMaxPortraitBodyHeightPercent:I

    const-string/jumbo p1, "autofill_save_dialog_landscape_body_height_max_percent"

    iget v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mAttrBasedMaxHeightPercent:I

    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mMaxLandscapeBodyHeightPercent:I

    return-void
.end method
