.class public final synthetic Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/HighBrightnessModeController$HdrListener;IIIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    iput p2, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;->f$3:I

    iput p5, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;->f$4:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;->f$3:I

    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;->f$4:F

    sget v4, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->$r8$clinit:I

    const-wide/32 v4, 0x20000

    const-string v6, "HBMController#onHdrInfoChanged"

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    const/4 v7, 0x1

    if-lez v1, :cond_0

    mul-int/2addr v2, v3

    int-to-float v1, v2

    iget v2, v6, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    iget v3, v6, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v6, Lcom/android/server/display/HighBrightnessModeController;->mThresRatio:F

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    move v1, v7

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v6, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    iget-object v1, v6, Lcom/android/server/display/HighBrightnessModeController;->mHdrBrightnessCfg:Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    cmpg-float v1, p0, v2

    if-gez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring invalid desired HDR/SDR Ratio: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "HighBrightnessModeController"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    move v2, p0

    :goto_2
    iget-object p0, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mMaxDesiredHdrSdrRatio:F

    invoke-static {p0, v2}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result p0

    if-nez p0, :cond_3

    iget-object p0, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iput-boolean v7, p0, Lcom/android/server/display/HighBrightnessModeController;->mForceHbmChangeCallback:Z

    iput v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mMaxDesiredHdrSdrRatio:F

    :cond_3
    iget-object p0, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iget v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mUnthrottledBrightness:F

    iget v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/display/HighBrightnessModeController;->onBrightnessChanged(IFF)V

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method
