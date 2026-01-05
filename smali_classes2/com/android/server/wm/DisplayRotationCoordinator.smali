.class public final Lcom/android/server/wm/DisplayRotationCoordinator;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mCallbackDisplayId:I

.field public mDefaultDisplayCurrentRotation:I

.field public mDefaultDisplayDefaultRotation:I

.field mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;


# direct methods
.method public static isSecondaryInternalDisplay(Lcom/android/server/wm/DisplayContent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/Display;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    return v0

    :cond_2
    return v1
.end method
