.class public final Lcom/android/server/accessibility/magnification/MagnificationThumbnailFeatureFlag;
.super Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final getDefaultValue()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getFeatureName()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "enable_magnifier_thumbnail"

    return-object p0
.end method

.method public final getNamespace()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "accessibility"

    return-object p0
.end method

.method public bridge synthetic setFeatureFlagEnabled(Z)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->setFeatureFlagEnabled(Z)Z

    move-result p0

    return p0
.end method
