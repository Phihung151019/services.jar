.class public final synthetic Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    sget v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->$r8$clinit:I

    const-wide/32 v0, 0x20000

    const-string v2, "HBMController#onHdrInfoChanged"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iget-boolean p0, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUp:Z

    iput-boolean p0, v2, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    iget p0, v2, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    iget v3, v2, Lcom/android/server/display/HighBrightnessModeController;->mUnthrottledBrightness:F

    iget v4, v2, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    invoke-virtual {v2, v4, p0, v3}, Lcom/android/server/display/HighBrightnessModeController;->onBrightnessChanged(IFF)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/server/display/HighBrightnessModeController;

    sget-boolean v0, Lcom/android/server/display/HighBrightnessModeController;->DEBUG:Z

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
