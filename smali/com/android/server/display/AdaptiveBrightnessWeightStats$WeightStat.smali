.class public Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mBrightness:F

.field public mWeight:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mBrightness:F

    iput p2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mWeight:F

    return-void
.end method


# virtual methods
.method public getBrightness()F
    .locals 0

    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mBrightness:F

    return p0
.end method

.method public getWeight()F
    .locals 0

    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mWeight:F

    return p0
.end method

.method public set(FF)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mBrightness:F

    iput p2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mWeight:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mWeight:F

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%.1f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v1, v0, v1

    const-string v2, "%d"

    if-gez v1, :cond_1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/high16 v1, 0x447a0000    # 1000.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/high16 v1, 0x45610000    # 3600.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%.1fh"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mBrightness:F

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateWeight(F)V
    .locals 1

    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mWeight:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mWeight:F

    return-void
.end method

.method public valid()Z
    .locals 1

    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mBrightness:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mWeight:F

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
