.class public final synthetic Lcom/android/server/display/BrightnessTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/BrightnessTracker;

.field public final synthetic f$1:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/BrightnessTracker;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/BrightnessTracker;

    iput-object p2, p0, Lcom/android/server/display/BrightnessTracker$$ExternalSyntheticLambda0;->f$1:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/BrightnessTracker;

    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker$$ExternalSyntheticLambda0;->f$1:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mSensorRegistered="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    const-string v3, "  mColorSamplingEnabled="

    invoke-static {v1, v2, p0, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    const-string v3, "  mNoFramesToSample="

    invoke-static {v1, v2, p0, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/server/display/BrightnessTracker;->mNoFramesToSample:I

    const-string v3, "  mFrameRate="

    invoke-static {v1, v2, p0, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/server/display/BrightnessTracker;->mFrameRate:F

    const-string v3, "  mIsDisplayActive="

    invoke-static {v1, v2, p0, v3}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/android/server/display/BrightnessTracker;->mIsDisplayActive:Z

    const-string v3, "  mDisplayListenerRegistered="

    invoke-static {v1, v2, p0, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, v0, Lcom/android/server/display/BrightnessTracker;->mDisplayListenerRegistered:Z

    invoke-static {v1, v0, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    return-void
.end method
