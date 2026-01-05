.class final Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mActive:Z

.field public final mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

.field public mDelay:I

.field public mEventPolicyFlags:I

.field public final mHandler:Landroid/os/Handler;

.field public mLastMotionEvent:Landroid/view/MotionEvent;

.field public mMetaState:I

.field public mScheduledClickTime:J

.field public mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field public mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field public final synthetic this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iput-object p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->resetInternalState()V

    const/16 p1, 0x258

    iput p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mDelay:I

    new-instance p1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {p1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    return-void
.end method


# virtual methods
.method public getDelayForTesting()I
    .locals 0

    iget p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mDelay:I

    return p0
.end method

.method public getIsActiveForTesting()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mActive:Z

    return p0
.end method

.method public getMetaStateForTesting()I
    .locals 0

    iget p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mMetaState:I

    return p0
.end method

.method public getRevertToLeftClickForTesting()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getScheduledClickTimeForTesting()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    return-wide v0
.end method

.method public final resetInternalState()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mActive:Z

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    return-void
.end method

.method public final run()V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    sub-long/2addr v2, v0

    invoke-virtual {v4, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v2, v0, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget v3, v2, Lcom/android/server/accessibility/autoclick/AutoclickController;->mActiveClickType:I

    const/4 v4, 0x1

    if-ne v3, v0, :cond_2

    iget-object v0, v2, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    if-nez v2, :cond_3

    new-array v2, v4, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v2, v1

    :cond_3
    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    iget-object v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v3, v3, v1

    invoke-virtual {v2, v0, v3}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-nez v2, :cond_4

    new-array v2, v4, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v2, v1

    :cond_4
    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    iget-object v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v1

    invoke-virtual {v2, v0, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget v0, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mActiveClickType:I

    if-eqz v0, :cond_7

    const/4 v5, 0x2

    if-eq v0, v4, :cond_6

    if-eq v0, v5, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v0

    int-to-long v5, v0

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->sendMotionEvent(IJ)V

    add-long/2addr v2, v5

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->sendMotionEvent(IJ)V

    goto :goto_1

    :cond_6
    move v4, v5

    :cond_7
    :goto_0
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->sendMotionEvent(IJ)V

    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->resetInternalState()V

    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mActiveClickType:I

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickTypePanel:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mLeftClickButton:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mRightClickButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mDoubleClickButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mDragButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mScrollButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mLeftClickButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->setSelectedClickType(I)V

    :cond_9
    return-void
.end method

.method public final sendMotionEvent(IJ)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v8, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    iget v9, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mMetaState:I

    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v13

    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v15

    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v16

    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v17

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    move-wide/from16 v3, p2

    move/from16 v10, p1

    move-wide/from16 v1, p2

    invoke-static/range {v1 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {v2, v10}, Landroid/view/MotionEvent;->setActionButton(I)V

    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {v3, v10}, Landroid/view/MotionEvent;->setActionButton(I)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->setButtonState(I)V

    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {v5, v4}, Landroid/view/MotionEvent;->setButtonState(I)V

    iget-object v4, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget v6, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    invoke-static {v4, v1, v1, v6}, Lcom/android/server/accessibility/autoclick/AutoclickController;->access$001(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget v4, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    invoke-static {v1, v2, v2, v4}, Lcom/android/server/accessibility/autoclick/AutoclickController;->access$101(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget v2, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    invoke-static {v1, v3, v3, v2}, Lcom/android/server/accessibility/autoclick/AutoclickController;->access$201(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget v0, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    invoke-static {v1, v5, v5, v0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->access$301(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClickScheduler: { active="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scheduledClickTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", anchor={x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, metastate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mMetaState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", policyFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastMotionEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
