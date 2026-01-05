.class public final Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public adjustedBrightness:Landroid/util/MutableFloat;

.field public brightness:Landroid/util/MutableFloat;

.field public brightnessMax:Landroid/util/MutableFloat;

.field public brightnessMaxReason:Landroid/util/MutableInt;

.field public brightnessMin:Landroid/util/MutableFloat;

.field public brightnessReason:Landroid/util/MutableInt;

.field public hbmMode:Landroid/util/MutableInt;

.field public hbmTransitionPoint:Landroid/util/MutableFloat;

.field public isAnimating:Landroid/util/MutableBoolean;

.field public screenBrightnessOverridePackage:Ljava/lang/String;


# direct methods
.method public static checkAndSetFloat(Landroid/util/MutableFloat;F)Z
    .locals 1

    iget v0, p0, Landroid/util/MutableFloat;->value:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/util/MutableFloat;->value:F

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
