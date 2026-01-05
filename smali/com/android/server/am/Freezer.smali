.class Lcom/android/server/am/Freezer;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static freezeBinder(IIZ)I
    .locals 0

    invoke-static {p0, p2, p1}, Lcom/android/server/am/Freezer;->nativeFreezeBinder(IZI)I

    move-result p0

    return p0
.end method

.method public static getBinderFreezeInfo(I)I
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/Freezer;->nativeGetBinderFreezeInfo(I)I

    move-result p0

    return p0
.end method

.method public static isFreezerSupported()Z
    .locals 1

    invoke-static {}, Lcom/android/server/am/Freezer;->nativeIsFreezerSupported()Z

    move-result v0

    return v0
.end method

.method private static native nativeFreezeBinder(IZI)I
.end method

.method private static native nativeGetBinderFreezeInfo(I)I
.end method

.method private static native nativeIsFreezerSupported()Z
.end method
