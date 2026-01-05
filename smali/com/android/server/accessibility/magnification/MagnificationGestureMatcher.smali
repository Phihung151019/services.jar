.class public abstract Lcom/android/server/accessibility/magnification/MagnificationGestureMatcher;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static gestureIdToString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xc9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xca

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string/jumbo p0, "none"

    return-object p0

    :pswitch_0
    const-string p0, "GESTURE_TRIPLE_TAP_AND_HOLD"

    return-object p0

    :pswitch_1
    const-string p0, "GESTURE_TRIPLE_TAP"

    return-object p0

    :pswitch_2
    const-string p0, "GESTURE_SINGLE_TAP_AND_HOLD"

    return-object p0

    :pswitch_3
    const-string p0, "GESTURE_SINGLE_TAP"

    return-object p0

    :pswitch_4
    const-string p0, "GESTURE_SWIPE"

    return-object p0

    :pswitch_5
    const-string p0, "GESTURE_TWO_FINGERS_DOWN_OR_SWIPE"

    return-object p0

    :cond_0
    const-string/jumbo p0, "SEM_GESTURE_DOUBLE_TAP_AND_HOLD"

    return-object p0

    :cond_1
    const-string/jumbo p0, "SEM_GESTURE_DOUBLE_TAP"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getMagnificationMultiTapTimeout(Landroid/content/Context;)I
    .locals 2

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x10e015e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
