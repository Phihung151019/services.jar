.class public final Lcom/android/server/display/NormalBrightnessModeController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAmbientLux:F

.field public mAutoBrightnessEnabled:Z

.field public mMaxBrightness:F

.field public mMaxBrightnessLimits:Ljava/util/Map;


# virtual methods
.method public final recalculateMaxBrightness()Z
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/display/NormalBrightnessModeController;->mAutoBrightnessEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/NormalBrightnessModeController;->mMaxBrightnessLimits:Ljava/util/Map;

    sget-object v1, Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;->ADAPTIVE:Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/server/display/NormalBrightnessModeController;->mAutoBrightnessEnabled:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/NormalBrightnessModeController;->mMaxBrightnessLimits:Ljava/util/Map;

    sget-object v1, Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;->DEFAULT:Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget v5, p0, Lcom/android/server/display/NormalBrightnessModeController;->mAmbientLux:F

    cmpl-float v5, v4, v5

    if-lez v5, :cond_2

    cmpg-float v5, v4, v2

    if-gez v5, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    move v2, v4

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/android/server/display/NormalBrightnessModeController;->mMaxBrightness:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    iput v1, p0, Lcom/android/server/display/NormalBrightnessModeController;->mMaxBrightness:F

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method
