.class public final Lcom/android/server/accessibility/SamsungTapDuration$1;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/SamsungTapDuration;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungTapDuration;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    const/4 v1, 0x4

    const-string/jumbo v2, "SamsungTapDuration"

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    if-ge v0, v1, :cond_2

    iget-object v1, v3, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    new-instance v4, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda0;

    const/4 v5, 0x4

    invoke-direct {v4, v1, v5}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;I)V

    invoke-virtual {v1, v4}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v1, v3, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/view/MotionEvent;->setDownTime(J)V

    :try_start_0
    iget-object v1, v3, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    aget-object v1, v1, v0

    iget-object v4, v3, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    aget-object v4, v4, v0

    iget-object v5, v3, Lcom/android/server/accessibility/SamsungTapDuration;->mPolicyFlags:[I

    aget v5, v5, v0

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/accessibility/SamsungTapDuration;->onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/server/accessibility/SamsungTapDuration;->clearMotionEvents(I)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :try_start_1
    const-string/jumbo v1, "idBits did not match any ids in the event"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/android/server/accessibility/SamsungTapDuration;->clearMotionEvents(I)V

    throw p0

    :cond_1
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo p0, "Tap is valid"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, v3, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "Unkwown message type: "

    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
