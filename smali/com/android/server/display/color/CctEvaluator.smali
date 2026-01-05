.class public final Lcom/android/server/display/color/CctEvaluator;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# instance fields
.field public final mIndexOffset:I

.field final mSteppedCctsAtOffsetCcts:[I

.field final mStepsAtOffsetCcts:[I


# direct methods
.method public constructor <init>(II[I[I)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sub-int/2addr p2, p1

    const/4 v0, 0x1

    add-int/2addr p2, v0

    new-array v1, p2, [I

    iput-object v1, p0, Lcom/android/server/display/color/CctEvaluator;->mStepsAtOffsetCcts:[I

    new-array v2, p2, [I

    iput-object v2, p0, Lcom/android/server/display/color/CctEvaluator;->mSteppedCctsAtOffsetCcts:[I

    iput p1, p0, Lcom/android/server/display/color/CctEvaluator;->mIndexOffset:I

    array-length p1, p3

    array-length v2, p3

    array-length v3, p4

    const/4 v4, 0x0

    const-string v5, "CctEvaluator"

    if-eq v2, v3, :cond_0

    const-string/jumbo p1, "Parallel arrays cctRangeMinimums and steps are different lengths; setting step of 1"

    invoke-static {v5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    :goto_0
    iget-object p1, p0, Lcom/android/server/display/color/CctEvaluator;->mSteppedCctsAtOffsetCcts:[I

    array-length p2, p1

    if-ge v4, p2, :cond_5

    iget p2, p0, Lcom/android/server/display/color/CctEvaluator;->mIndexOffset:I

    add-int/2addr p2, v4

    aput p2, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo p1, "No cctRangeMinimums or steps are set; setting step of 1"

    invoke-static {v5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    :goto_1
    iget-object p1, p0, Lcom/android/server/display/color/CctEvaluator;->mSteppedCctsAtOffsetCcts:[I

    array-length p2, p1

    if-ge v4, p2, :cond_5

    iget p2, p0, Lcom/android/server/display/color/CctEvaluator;->mIndexOffset:I

    add-int/2addr p2, v4

    aput p2, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/high16 v0, -0x80000000

    move v2, v0

    move v1, v4

    :goto_2
    if-ge v4, p2, :cond_5

    iget v3, p0, Lcom/android/server/display/color/CctEvaluator;->mIndexOffset:I

    add-int/2addr v3, v4

    add-int/lit8 v5, v1, 0x1

    :goto_3
    if-ge v5, p1, :cond_2

    aget v6, p3, v5

    if-lt v3, v6, :cond_2

    add-int/lit8 v1, v5, 0x1

    move v7, v5

    move v5, v1

    move v1, v7

    goto :goto_3

    :cond_2
    iget-object v5, p0, Lcom/android/server/display/color/CctEvaluator;->mStepsAtOffsetCcts:[I

    aget v6, p4, v1

    aput v6, v5, v4

    if-eq v2, v0, :cond_3

    sub-int v5, v2, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    aget v6, p4, v1

    if-lt v5, v6, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    iget-object v3, p0, Lcom/android/server/display/color/CctEvaluator;->mSteppedCctsAtOffsetCcts:[I

    aput v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method


# virtual methods
.method public final evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p3, p2

    int-to-float p2, p3

    mul-float/2addr p1, p2

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget p2, p0, Lcom/android/server/display/color/CctEvaluator;->mIndexOffset:I

    sub-int p2, p1, p2

    if-ltz p2, :cond_1

    iget-object p0, p0, Lcom/android/server/display/color/CctEvaluator;->mSteppedCctsAtOffsetCcts:[I

    array-length p3, p0

    if-lt p2, p3, :cond_0

    goto :goto_0

    :cond_0
    aget p0, p0, p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "steppedCctValueAt: returning same since invalid requested index="

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "CctEvaluator"

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
