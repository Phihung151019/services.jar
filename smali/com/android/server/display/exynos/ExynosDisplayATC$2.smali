.class public final Lcom/android/server/display/exynos/ExynosDisplayATC$2;
.super Landroid/os/CountDownTimer;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;


# direct methods
.method public constructor <init>(Lcom/android/server/display/exynos/ExynosDisplayATC;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    iget-object v0, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHandler:Lcom/android/server/display/exynos/ExynosDisplayATC$1;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    iget-object v1, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    const-string/jumbo v2, "dim_status"

    invoke-virtual {v1, v2}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iput v2, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mDimOperating:I

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mDimOperating:I

    :goto_0
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    iget v1, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mDimOperating:I

    const-string v3, "ExynosDisplayATC"

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountDownTimerCount:I

    iget v4, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mMaxCountDownTimerCount:I

    if-ge v1, v4, :cond_3

    iget-boolean v0, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Restart Refresh Timer as dimming started: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    iget v1, v1, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountDownTimerCount:I

    invoke-static {v0, v1, v3}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void

    :cond_3
    iput v2, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountDownTimerCount:I

    iget-object v0, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHandler:Lcom/android/server/display/exynos/ExynosDisplayATC$1;

    if-eqz v0, :cond_4

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    sget-boolean v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Finished Refresh Timer interval: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    iget v1, v1, Lcom/android/server/display/exynos/ExynosDisplayATC;->mIntervalMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    iget p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mTimeoutMs:I

    invoke-static {v0, p0, v3}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final onTick(J)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    iget p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountDownTimerCount:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountDownTimerCount:I

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHandler:Lcom/android/server/display/exynos/ExynosDisplayATC$1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
