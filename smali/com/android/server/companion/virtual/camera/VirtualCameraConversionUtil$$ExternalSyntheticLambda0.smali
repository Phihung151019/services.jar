.class public final synthetic Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;

    new-instance p0, Landroid/companion/virtualcamera/SupportedStreamConfiguration;

    invoke-direct {p0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration;-><init>()V

    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/companion/virtualcamera/SupportedStreamConfiguration;->height:I

    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/companion/virtualcamera/SupportedStreamConfiguration;->width:I

    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->getFormat()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    iput v1, p0, Landroid/companion/virtualcamera/SupportedStreamConfiguration;->pixelFormat:I

    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->getMaximumFramesPerSecond()I

    move-result p1

    iput p1, p0, Landroid/companion/virtualcamera/SupportedStreamConfiguration;->maxFps:I

    return-object p0
.end method
