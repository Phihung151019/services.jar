.class Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field static final KEY_PREFIX_MAX_RATIO:Ljava/lang/String; = "concurrency_max_ratio_"

.field static final KEY_PREFIX_MAX_TOTAL:Ljava/lang/String; = "concurrency_max_total_"

.field static final KEY_PREFIX_MIN_RATIO:Ljava/lang/String; = "concurrency_min_ratio_"


# instance fields
.field public final mConfigIdentifier:Ljava/lang/String;

.field public final mDefaultMaxAllowedSlotsRatio:Landroid/util/SparseIntArray;

.field public final mDefaultMaxTotal:I

.field public final mDefaultMinReservedSlotsRatio:Landroid/util/SparseIntArray;

.field public final mMaxAllowedSlots:Landroid/util/SparseIntArray;

.field public mMaxTotal:I

.field public final mMinReservedSlots:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/util/List;Ljava/util/List;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mDefaultMinReservedSlotsRatio:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mDefaultMaxAllowedSlotsRatio:Landroid/util/SparseIntArray;

    iput-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mConfigIdentifier:Ljava/lang/String;

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mDefaultMaxTotal:I

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x0

    if-ltz p1, :cond_1

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    cmpg-float v2, v3, v2

    if-ltz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mDefaultMinReservedSlotsRatio:Landroid/util/SparseIntArray;

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    float-to-int v1, v2

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Invalid default min ratio: wt="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " minRatio="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget p1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mDefaultMaxTotal:I

    const-string v3, " max="

    const-string v4, " min="

    const-string v5, "Invalid default config: t="

    if-ltz p1, :cond_4

    if-gt v1, p1, :cond_4

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_3

    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mDefaultMinReservedSlotsRatio:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    cmpg-float v7, v1, v7

    if-ltz v7, :cond_2

    cmpg-float v7, v1, v2

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mDefaultMaxAllowedSlotsRatio:Landroid/util/SparseIntArray;

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    invoke-virtual {v7, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p1, Landroid/provider/DeviceConfig$Properties$Builder;

    const-string/jumbo p3, "jobscheduler"

    invoke-direct {p1, p3}, Landroid/provider/DeviceConfig$Properties$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties$Builder;->build()Landroid/provider/DeviceConfig$Properties;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;I)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "concurrency_max_total_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mConfigIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "concurrency_min_ratio_top_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "concurrency_max_ratio_top_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "concurrency_min_ratio_fgs_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "concurrency_max_ratio_fgs_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "concurrency_min_ratio_ui_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "concurrency_max_ratio_ui_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "concurrency_min_ratio_ej_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "concurrency_max_ratio_ej_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "concurrency_min_ratio_bg_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "concurrency_max_ratio_bg_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "concurrency_min_ratio_bguser_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "concurrency_max_ratio_bguser_"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    const/16 v4, 0x40

    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public final getMaxValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;II)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mDefaultMaxAllowedSlotsRatio:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3, p4}, Landroid/util/SparseIntArray;->get(II)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/provider/DeviceConfig$Properties;->getFloat(Ljava/lang/String;F)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget p0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    const/4 p1, 0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final getMinValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;III)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mDefaultMinReservedSlotsRatio:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/provider/DeviceConfig$Properties;->getFloat(Ljava/lang/String;F)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget p0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    invoke-static {p5, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p4, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final update(Landroid/provider/DeviceConfig$Properties;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "concurrency_max_total_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mConfigIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mDefaultMaxTotal:I

    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v2

    move/from16 v3, p2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v7, 0x1

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "concurrency_max_ratio_top_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v7, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;II)I

    move-result v3

    iget-object v4, v0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v7, v3}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "concurrency_max_ratio_fgs_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x2

    invoke-virtual {v0, v1, v4, v8, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;II)I

    move-result v9

    iget-object v4, v0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "concurrency_max_ratio_ui_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x4

    invoke-virtual {v0, v1, v4, v10, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;II)I

    move-result v11

    iget-object v4, v0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v10, v11}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "concurrency_max_ratio_ej_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v12, 0x8

    invoke-virtual {v0, v1, v4, v12, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;II)I

    move-result v13

    iget-object v4, v0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "concurrency_max_ratio_bg_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v14, 0x10

    invoke-virtual {v0, v1, v4, v14, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;II)I

    move-result v15

    iget-object v4, v0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "concurrency_max_ratio_bguser_important_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;II)I

    move-result v4

    iget-object v14, v0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "concurrency_max_ratio_bguser_"

    invoke-direct {v14, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v14, 0x40

    invoke-virtual {v0, v1, v5, v14, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;II)I

    move-result v2

    iget-object v5, v0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v14, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget v5, v0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

    iget-object v14, v0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v14}, Landroid/util/SparseIntArray;->clear()V

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "concurrency_min_ratio_top_"

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget v14, v0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

    invoke-static {v3, v14}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v14, v5

    move v5, v3

    const/4 v3, 0x1

    move/from16 v17, v4

    const/4 v4, 0x1

    move/from16 v18, v2

    move-object v2, v12

    move/from16 v16, v14

    move/from16 v14, v17

    const/16 v12, 0x20

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMinValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;III)I

    move-result v2

    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseIntArray;->put(II)V

    sub-int v7, v16, v2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "concurrency_min_ratio_fgs_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v3, 0x2

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMinValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;III)I

    move-result v2

    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v8, v2}, Landroid/util/SparseIntArray;->put(II)V

    sub-int/2addr v7, v2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "concurrency_min_ratio_ui_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v3, 0x4

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMinValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;III)I

    move-result v2

    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v10, v2}, Landroid/util/SparseIntArray;->put(II)V

    sub-int/2addr v7, v2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "concurrency_min_ratio_ej_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/16 v3, 0x8

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMinValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;III)I

    move-result v2

    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    sub-int/2addr v7, v2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "concurrency_min_ratio_bg_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/16 v3, 0x10

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMinValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;III)I

    move-result v2

    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    const/16 v3, 0x10

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    sub-int/2addr v7, v2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "concurrency_min_ratio_bguser_important_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/16 v3, 0x20

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMinValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;III)I

    move-result v2

    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v12, v2}, Landroid/util/SparseIntArray;->put(II)V

    sub-int/2addr v7, v2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "concurrency_min_ratio_bguser_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move/from16 v1, v18

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/16 v3, 0x40

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMinValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;III)I

    move-result v1

    iget-object v0, v0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    const/16 v2, 0x40

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method
