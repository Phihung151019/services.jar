.class public final Lcom/android/server/ibs/sqd/IbsQuickDim$3;
.super Landroid/app/IProcessObserver$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/sqd/IbsQuickDim;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onForegroundActivitiesChanged(IIZ)V
    .locals 5

    const-string v0, " stop dim detect because fg click mQuickDimMode = "

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    iput p2, v1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mFgUid:I

    iput p1, v1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mFgPid:I

    :cond_0
    iget-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {v1, p2, p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$misSqdCanWork(Lcom/android/server/ibs/sqd/IbsQuickDim;II)Z

    move-result p1

    const/4 v1, 0x3

    if-nez p1, :cond_2

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    iget p2, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    if-eq p2, v1, :cond_1

    iput v1, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    iget-object p1, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    new-instance p2, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda0;

    const/4 p3, 0x5

    invoke-direct {p2, p3, p0}, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    iget-object p1, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    iget v3, v2, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_3
    if-eqz p3, :cond_a

    iget-object p3, v2, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBlockUnDimUidSet:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p3

    const/4 v2, 0x4

    if-nez p3, :cond_8

    iget-object p3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    iget-boolean v3, p3, Lcom/android/server/ibs/sqd/IbsQuickDim;->mUiControlEnabled:Z

    if-nez v3, :cond_4

    iget-object p3, p3, Lcom/android/server/ibs/sqd/IbsQuickDim;->mAllowDimUidSet:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_0

    :cond_4
    iget-object p3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    iget-boolean v0, p3, Lcom/android/server/ibs/sqd/IbsQuickDim;->mUiControlEnabled:Z

    if-nez v0, :cond_5

    iget-object p3, p3, Lcom/android/server/ibs/sqd/IbsQuickDim;->mAllowDimUidSet:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    iget-object p2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    iget p2, p2, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    if-eq p2, v1, :cond_7

    :cond_6
    iget-object p2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    iget p2, p2, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    if-ne p2, v2, :cond_a

    :cond_7
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    const/4 p2, 0x2

    iput p2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_8
    :goto_0
    iget-object p2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    iget p3, p2, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    if-eq p3, v1, :cond_a

    iput v1, p2, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    sget-boolean p2, Lcom/android/server/ibs/sqd/IbsQuickDim;->DEBUG:Z

    if-eqz p2, :cond_9

    const-string p2, "IbsQuickDim"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    iget v0, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_a
    :goto_1
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onForegroundServicesChanged(III)V
    .locals 0

    return-void
.end method

.method public final onProcessDied(II)V
    .locals 0

    return-void
.end method

.method public final onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
