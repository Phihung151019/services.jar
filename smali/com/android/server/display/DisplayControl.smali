.class public abstract Lcom/android/server/display/DisplayControl;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static createVirtualDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
    .locals 3

    const-string/jumbo v0, "name must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/server/display/DisplayControl;->nativeCreateVirtualDisplay(Ljava/lang/String;ZZLjava/lang/String;F)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public static createVirtualDisplay(Ljava/lang/String;ZZLjava/lang/String;F)Landroid/os/IBinder;
    .locals 1

    const-string/jumbo v0, "name must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "uniqueId must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayControl;->nativeCreateVirtualDisplay(Ljava/lang/String;ZZLjava/lang/String;F)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public static destroyVirtualDisplay(Landroid/os/IBinder;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/server/display/DisplayControl;->nativeDestroyVirtualDisplay(Landroid/os/IBinder;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "displayToken must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getHdrOutputConversionSupport()Z
    .locals 1

    invoke-static {}, Lcom/android/server/display/DisplayControl;->nativeGetHdrOutputConversionSupport()Z

    move-result v0

    return v0
.end method

.method public static getHdrOutputTypesWithLatency()[I
    .locals 1

    invoke-static {}, Lcom/android/server/display/DisplayControl;->nativeGetHdrOutputTypesWithLatency()[I

    move-result-object v0

    return-object v0
.end method

.method public static getPhysicalDisplayIds()[J
    .locals 1

    invoke-static {}, Lcom/android/server/display/DisplayControl;->nativeGetPhysicalDisplayIds()[J

    move-result-object v0

    return-object v0
.end method

.method public static getPhysicalDisplayToken(J)Landroid/os/IBinder;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayControl;->nativeGetPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedHdrOutputTypes()[I
    .locals 1

    invoke-static {}, Lcom/android/server/display/DisplayControl;->nativeGetSupportedHdrOutputTypes()[I

    move-result-object v0

    return-object v0
.end method

.method private static native nativeCreateVirtualDisplay(Ljava/lang/String;ZZLjava/lang/String;F)Landroid/os/IBinder;
.end method

.method private static native nativeDestroyVirtualDisplay(Landroid/os/IBinder;)V
.end method

.method private static native nativeGetHdrOutputConversionSupport()Z
.end method

.method private static native nativeGetHdrOutputTypesWithLatency()[I
.end method

.method private static native nativeGetPhysicalDisplayIds()[J
.end method

.method private static native nativeGetPhysicalDisplayToken(J)Landroid/os/IBinder;
.end method

.method private static native nativeGetSupportedHdrOutputTypes()[I
.end method

.method private static native nativeOverrideHdrTypes(Landroid/os/IBinder;[I)V
.end method

.method private static native nativeSetHdrConversionMode(II[II)I
.end method

.method public static overrideHdrTypes(Landroid/os/IBinder;[I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayControl;->nativeOverrideHdrTypes(Landroid/os/IBinder;[I)V

    return-void
.end method

.method public static setHdrConversionMode(II[I)I
    .locals 1

    if-eqz p2, :cond_0

    array-length v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/display/DisplayControl;->nativeSetHdrConversionMode(II[II)I

    move-result p0

    return p0
.end method
