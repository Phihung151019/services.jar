.class public final Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/sqd/IbsQuickDim;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    iget v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mFgUid:I

    iget v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mFgPid:I

    invoke-static {p0, v0, v1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$misSqdCanWork(Lcom/android/server/ibs/sqd/IbsQuickDim;II)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "IbsQuickDim"

    const-wide/16 v1, 0x1f40

    const/4 v3, -0x2

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq p1, v6, :cond_7

    if-eq p1, v5, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iput v4, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastFPS:I

    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->removeAllmessage()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->removeAllmessage()V

    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    invoke-virtual {p0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_3
    iget p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    if-ne p1, v6, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->getFpsFromSurfaceFlinger()I

    move-result p1

    if-ne p1, v3, :cond_5

    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastFPS:I

    if-eq p1, v3, :cond_6

    iput p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastFPS:I

    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    invoke-virtual {p0, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_6
    const-string/jumbo p1, "setScreenBright!!!"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    iput v4, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastFPS:I

    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {p1, v6}, Landroid/os/PowerManagerInternal;->setScreenDimDurationOverrideFromSqd(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mDimStartTime:J

    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->removeAllmessage()V

    return-void

    :cond_7
    iget p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    if-ne p1, v5, :cond_b

    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->getFpsFromSurfaceFlinger()I

    move-result p1

    if-ne p1, v3, :cond_8

    goto :goto_0

    :cond_8
    iget v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastFPS:I

    if-ne v3, v4, :cond_9

    const-string/jumbo v3, "checkQuickDimStatus first check!"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastFPS:I

    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    invoke-virtual {p0, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_9
    if-ne v3, p1, :cond_a

    if-ge v3, v6, :cond_a

    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    invoke-virtual {p0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_a
    iput p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastFPS:I

    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    invoke-virtual {p0, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_b
    :goto_0
    return-void
.end method
