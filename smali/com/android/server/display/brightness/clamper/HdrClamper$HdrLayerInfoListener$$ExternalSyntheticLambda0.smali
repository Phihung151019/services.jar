.class public final synthetic Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;

    iput p2, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener$$ExternalSyntheticLambda0;->f$2:I

    iget p0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener$$ExternalSyntheticLambda0;->f$3:I

    iget-object v3, v0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;->mHdrListener:Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda1;

    if-lez v1, :cond_0

    mul-int/2addr v2, p0

    int-to-float p0, v2

    iget v0, v0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;->mHdrMinPixels:F

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iget-object v0, v3, Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/brightness/clamper/HdrClamper;

    iput-boolean p0, v0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrVisible:Z

    iget-object v1, v0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    iget v2, v0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mAmbientLux:F

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/display/brightness/clamper/HdrClamper;->recalculateBrightnessCap(Lcom/android/server/display/config/HdrBrightnessData;FZ)V

    return-void
.end method
