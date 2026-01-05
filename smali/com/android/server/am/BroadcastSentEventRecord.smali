.class public final Lcom/android/server/am/BroadcastSentEventRecord;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mBroadcastRecord:Lcom/android/server/am/BroadcastRecord;

.field public mIntent:Landroid/content/Intent;

.field public mOrdered:Z

.field public mOriginalIntentFlags:I

.field public mRealSenderUid:I

.field public mResult:I

.field public mResultRequested:Z

.field public mSenderProcState:I

.field public mSenderUid:I

.field public mSenderUidState:I

.field public mSticky:Z


# virtual methods
.method public final logToStatsd()V
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mResult:I

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/4 v4, 0x1

    if-eq v1, v3, :cond_2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    if-eqz v1, :cond_0

    move v14, v2

    goto :goto_1

    :cond_0
    move v14, v4

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    :goto_0
    move v14, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :goto_1
    iget-object v1, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mBroadcastRecord:Lcom/android/server/am/BroadcastRecord;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastRecord;->calculateTypesForLogging()[I

    move-result-object v1

    :goto_2
    move-object/from16 v18, v1

    goto :goto_3

    :cond_3
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    iget-boolean v3, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mSticky:Z

    if-eqz v3, :cond_4

    const/16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/util/IntArray;->add(I)V

    :cond_4
    iget-boolean v3, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mOrdered:Z

    if-eqz v3, :cond_5

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/util/IntArray;->add(I)V

    :cond_5
    iget-boolean v3, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mResultRequested:Z

    if-eqz v3, :cond_6

    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Landroid/util/IntArray;->add(I)V

    :cond_6
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    goto :goto_2

    :goto_3
    iget-object v1, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    iget-object v1, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v7

    iget v8, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mOriginalIntentFlags:I

    iget v9, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mSenderUid:I

    iget v10, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mRealSenderUid:I

    iget-object v1, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    move v11, v4

    goto :goto_4

    :cond_7
    move v11, v2

    :goto_4
    iget-object v1, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_8

    move v12, v4

    goto :goto_5

    :cond_8
    move v12, v2

    :goto_5
    iget-object v1, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mBroadcastRecord:Lcom/android/server/am/BroadcastRecord;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v13, v1

    goto :goto_6

    :cond_9
    move v13, v2

    :goto_6
    iget-object v1, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mBroadcastRecord:Lcom/android/server/am/BroadcastRecord;

    if-eqz v1, :cond_a

    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->getDeliveryGroupPolicy()I

    move-result v2

    :cond_a
    move v15, v2

    iget v1, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mSenderProcState:I

    invoke-static {v1}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v16

    iget v0, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mSenderUidState:I

    invoke-static {v0}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v17

    const/16 v5, 0x39a

    invoke-static/range {v5 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIIIZZIIIII[I)V

    return-void
.end method

.method public final setBroadcastRecord(Lcom/android/server/am/BroadcastRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mBroadcastRecord:Lcom/android/server/am/BroadcastRecord;

    return-void
.end method

.method public final setIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public final setOrdered(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mOrdered:Z

    return-void
.end method

.method public final setOriginalIntentFlags(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mOriginalIntentFlags:I

    return-void
.end method

.method public final setRealSenderUid(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mRealSenderUid:I

    return-void
.end method

.method public final setResultRequested(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mResultRequested:Z

    return-void
.end method

.method public final setSenderProcState(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mSenderProcState:I

    return-void
.end method

.method public final setSenderUid(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mSenderUid:I

    return-void
.end method

.method public final setSenderUidState(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mSenderUidState:I

    return-void
.end method

.method public final setSticky(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mSticky:Z

    return-void
.end method
