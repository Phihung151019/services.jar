.class public final Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;
.super Landroid/view/SurfaceControlHdrLayerInfoListener;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mHdrListener:Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda1;

.field public mHdrMinPixels:F


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda1;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/SurfaceControlHdrLayerInfoListener;-><init>()V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;->mHdrMinPixels:F

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;->mHdrListener:Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda1;

    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onHdrInfoChanged(Landroid/os/IBinder;IIIIF)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;->mHandler:Landroid/os/Handler;

    new-instance p5, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener$$ExternalSyntheticLambda0;

    invoke-direct {p5, p0, p2, p3, p4}, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;III)V

    invoke-virtual {p1, p5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
