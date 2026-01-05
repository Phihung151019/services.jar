.class public final Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;
.super Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mContext:Landroid/content/Context;


# virtual methods
.method public final getDefaultValue()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x11101f5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public final getFeatureName()Ljava/lang/String;
    .locals 0

    const-string p0, "AlwaysOnMagnifier__enable_always_on_magnifier"

    return-object p0
.end method

.method public final getNamespace()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "window_manager"

    return-object p0
.end method

.method public bridge synthetic setFeatureFlagEnabled(Z)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->setFeatureFlagEnabled(Z)Z

    move-result p0

    return p0
.end method
