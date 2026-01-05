.class public final Lcom/android/server/input/debug/RotaryInputValueView;
.super Landroid/widget/TextView;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final ACTIVE_BACKGROUND_FILTER:Landroid/graphics/ColorFilter;


# instance fields
.field public final mDefaultLocale:Ljava/util/Locale;

.field public final mScaledVerticalScrollFactor:F

.field public final mUpdateActivityStatusCallback:Lcom/android/server/input/debug/RotaryInputValueView$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    const/16 v1, 0x14

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    sput-object v0, Lcom/android/server/input/debug/RotaryInputValueView;->ACTIVE_BACKGROUND_FILTER:Landroid/graphics/ColorFilter;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x43480000    # 200.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/input/debug/RotaryInputValueView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/input/debug/RotaryInputValueView$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/debug/RotaryInputValueView;)V

    iput-object v0, p0, Lcom/android/server/input/debug/RotaryInputValueView;->mUpdateActivityStatusCallback:Lcom/android/server/input/debug/RotaryInputValueView$$ExternalSyntheticLambda0;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/input/debug/RotaryInputValueView;->mDefaultLocale:Ljava/util/Locale;

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result p1

    iput p1, p0, Lcom/android/server/input/debug/RotaryInputValueView;->mScaledVerticalScrollFactor:F

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/input/debug/RotaryInputValueView;->getFormattedValue(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, -0xff01

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x8

    int-to-float p1, p1

    const/4 v1, 0x2

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x4

    int-to-float p1, p1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, p1, v0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const p1, 0x1080395

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public final getFormattedValue(F)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/server/input/debug/RotaryInputValueView;->mDefaultLocale:Ljava/util/Locale;

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const-string v0, "-"

    goto :goto_0

    :cond_0
    const-string v0, "+"

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s%.1f"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
