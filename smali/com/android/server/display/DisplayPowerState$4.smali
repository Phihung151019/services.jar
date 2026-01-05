.class public final Lcom/android/server/display/DisplayPowerState$4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayPowerState;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/display/DisplayPowerState$4;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Lcom/android/server/display/DisplayPowerState$4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    invoke-virtual {v0, v1}, Lcom/android/server/display/ColorFade;->draw(F)V

    sget-object v0, Lcom/android/server/display/DisplayPowerState;->COUNTER_COLOR_FADE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    iget v1, v1, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->run()V

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    iget v2, v0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_2

    iget v6, v0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    cmpl-float v6, v6, v4

    if-lez v6, :cond_2

    iget v6, v0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:F

    goto :goto_0

    :cond_2
    move v6, v3

    :goto_0
    if-eq v2, v5, :cond_3

    iget v7, v0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    cmpl-float v4, v7, v4

    if-lez v4, :cond_3

    iget v3, v0, Lcom/android/server/display/DisplayPowerState;->mSdrScreenBrightness:F

    :cond_3
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    const-string/jumbo v4, "Requesting new screen state: state="

    iget-object v7, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget v8, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    if-eq v2, v8, :cond_4

    move v8, v5

    goto :goto_1

    :cond_4
    move v8, v1

    :goto_1
    iget v9, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:F

    cmpl-float v9, v6, v9

    if-nez v9, :cond_6

    iget v9, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingSdrBacklight:F

    cmpl-float v9, v3, v9

    if-eqz v9, :cond_5

    goto :goto_2

    :cond_5
    move v9, v1

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :cond_6
    :goto_2
    move v9, v5

    :goto_3
    if-nez v8, :cond_7

    if-eqz v9, :cond_f

    :cond_7
    sget-boolean v10, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    if-eqz v10, :cond_8

    const-string v10, "DisplayPowerState"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", backlight="

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iput v2, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    iput v6, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:F

    iput v3, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingSdrBacklight:F

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    if-nez v2, :cond_a

    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    if-eqz v3, :cond_9

    goto :goto_4

    :cond_9
    move v3, v1

    goto :goto_5

    :cond_a
    :goto_4
    move v3, v5

    :goto_5
    if-nez v8, :cond_c

    if-eqz v2, :cond_b

    goto :goto_6

    :cond_b
    move v2, v1

    goto :goto_7

    :cond_c
    :goto_6
    move v2, v5

    :goto_7
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    if-nez v9, :cond_d

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    if-eqz v2, :cond_e

    :cond_d
    move v1, v5

    :cond_e
    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    if-nez v3, :cond_f

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_f
    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_11

    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    if-eqz v0, :cond_10

    const-string v0, "DisplayPowerState"

    const-string/jumbo v1, "Screen ready"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    iput-boolean v5, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

    if-eqz v0, :cond_12

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->run()V

    goto :goto_8

    :cond_11
    sget-boolean p0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    if-eqz p0, :cond_12

    const-string p0, "DisplayPowerState"

    const-string/jumbo v0, "Screen not ready"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_8
    return-void

    :goto_9
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
