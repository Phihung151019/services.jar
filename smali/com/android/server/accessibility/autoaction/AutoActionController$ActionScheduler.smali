.class public final Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mActive:Z

.field public final mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

.field public mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

.field public mCornerActionType:I

.field public mDelay:I

.field public mDisplayId:I

.field public mEventPolicyFlags:I

.field public final mHandler:Landroid/os/Handler;

.field public mIsPauseAutoClick:Z

.field public mLastMotionEvent:Landroid/view/MotionEvent;

.field public mMetaState:I

.field public mScheduledActionTime:J

.field public mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field public mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field public mType:I

.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/AutoActionController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/AutoActionController;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->this$0:Lcom/android/server/accessibility/autoaction/AutoActionController;

    iput-object p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->resetInternalState()V

    const/16 p1, 0x258

    iput p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDelay:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mType:I

    iput p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionType:I

    new-instance p2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {p2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->updateIsPauseAutoClick(Z)V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/CornerActionController;->clearDuration()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->resetInternalState()V

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final resetInternalState()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mActive:Z

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mScheduledActionTime:J

    return-void
.end method

.method public final run()V
    .locals 14

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mScheduledActionTime:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mHandler:Landroid/os/Handler;

    sub-long/2addr v3, v1

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_15

    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->this$0:Lcom/android/server/accessibility/autoaction/AutoActionController;

    iget-object v2, v2, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-nez v2, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    new-array v2, v0, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v4, v2, v3

    :cond_2
    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    iget-object v4, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v4, v4, v3

    invoke-virtual {v2, v1, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-nez v2, :cond_3

    new-array v2, v0, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v4, v2, v3

    :cond_3
    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    iget-object v4, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v3

    invoke-virtual {v2, v1, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/android/server/accessibility/autoaction/CornerActionController;->clearDuration()V

    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    iget-object v1, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    if-eqz v1, :cond_4

    new-instance v2, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, v3}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;Z)V

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v3

    iget v4, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v7, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDisplayId:I

    invoke-virtual {v1, v7, v4, v2}, Lcom/android/server/accessibility/autoaction/CornerActionController;->getCorner(IFF)I

    move-result v13

    iget v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionType:I

    const/4 v2, 0x2

    const/4 v4, -0x1

    if-nez v1, :cond_f

    if-eq v13, v4, :cond_14

    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    iget v5, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDisplayId:I

    iget-object v6, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mCornerActions:[Ljava/lang/String;

    const-string v7, ","

    if-eqz v6, :cond_7

    iget-object v4, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    if-eqz v4, :cond_5

    iget-object v6, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/server/accessibility/autoaction/CornerActionController;->TTS_CORNER:[I

    aget v8, v8, v13

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v4, v4, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v4, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mCornerActions:[Ljava/lang/String;

    aget-object v4, v4, v13

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    if-le v6, v0, :cond_6

    move v4, v2

    goto :goto_0

    :cond_6
    aget-object v4, v4, v3

    invoke-virtual {v1, v5, v13, v4}, Lcom/android/server/accessibility/autoaction/CornerActionController;->performCornerAction(IILjava/lang/String;)I

    move-result v4

    :cond_7
    :goto_0
    iput v4, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionType:I

    if-ne v4, v2, :cond_e

    const-string v1, "AutoActionController sendAction SELECT_ACTION"

    const-string/jumbo v2, "usibi"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v12, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDisplayId:I

    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    iget-object v1, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mCornerActions:[Ljava/lang/String;

    aget-object v1, v1, v13

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v11

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_c

    aget-object v6, v11, v5

    const-string/jumbo v7, "pause_resume_auto_click"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-boolean v6, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mIsPauseAutoClick:Z

    if-eqz v6, :cond_8

    const-string/jumbo v6, "resume_auto_click"

    goto :goto_2

    :cond_8
    const-string/jumbo v6, "pause_auto_click"

    goto :goto_2

    :cond_9
    const-string/jumbo v7, "sound_vibrate_mute"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->this$0:Lcom/android/server/accessibility/autoaction/AutoActionController;

    iget-object v7, v7, Lcom/android/server/accessibility/autoaction/AutoActionController;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "vibrator"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Vibrator;

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_2

    :cond_a
    const-string/jumbo v6, "sound_mute"

    :cond_b
    :goto_2
    iget-object v7, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    iget-object v7, v7, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->getTitleResId(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v0

    goto :goto_1

    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AutoActionController showActionSelectPopup displayId : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;

    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    invoke-virtual {v2, v12}, Lcom/android/server/accessibility/autoaction/CornerActionController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v10, v2, v13}, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;-><init>(Landroid/content/Context;I)V

    move v2, v3

    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_d

    iget-object v4, v10, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v4, v3, v2, v3, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    add-int/2addr v2, v0

    goto :goto_3

    :cond_d
    new-instance v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$1;

    invoke-direct {v0, p0, v10}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$1;-><init>(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;)V

    iget-object v1, v10, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1, v0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    new-instance v8, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;

    move-object v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;-><init>(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;[Ljava/lang/String;II)V

    iget-object v0, v10, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0, v8}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$2;

    invoke-direct {v1, v10}, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$2;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    :cond_e
    const/4 v1, 0x3

    if-ne v4, v1, :cond_15

    iget-boolean v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mIsPauseAutoClick:Z

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->updateIsPauseAutoClick(Z)V

    iput v3, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionType:I

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$3;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$3;-><init>(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    :cond_f
    if-ne v1, v0, :cond_13

    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    iget-object v4, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v4, v3}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    :cond_10
    iget-object v4, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureAction:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v5, "drag"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string/jumbo v5, "drag_and_drop"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v0, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureAction:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->create(Ljava/lang/String;Landroid/content/Context;Landroid/view/MotionEvent;)Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

    move-result-object v0

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->performCornerAction(I)V

    :goto_4
    move v0, v3

    goto :goto_5

    :cond_11
    iget-object v4, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDragAction:Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

    if-eqz v4, :cond_12

    invoke-virtual {v4, v2}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->setMotionEventForDragAction(Landroid/view/MotionEvent;)V

    iget-object v0, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDragAction:Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->performCornerAction(I)V

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDragAction:Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

    goto :goto_4

    :cond_12
    iget-object v3, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureAction:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v2}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->create(Ljava/lang/String;Landroid/content/Context;Landroid/view/MotionEvent;)Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDragAction:Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->performCornerAction(I)V

    :goto_5
    iput v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionType:I

    goto/16 :goto_6

    :cond_13
    if-ne v1, v2, :cond_14

    if-eq v13, v4, :cond_14

    goto :goto_6

    :cond_14
    iget v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mType:I

    if-eqz v1, :cond_15

    iget-boolean v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mIsPauseAutoClick:Z

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->this$0:Lcom/android/server/accessibility/autoaction/AutoActionController;

    iget-object v1, v1, Lcom/android/server/accessibility/autoaction/AutoActionController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "input"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    if-eqz v1, :cond_15

    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v3

    iget v10, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v11, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v12, 0x1

    const/4 v9, 0x0

    move-wide v7, v5

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    const/16 v4, 0x1002

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->setSource(I)V

    const/high16 v4, 0x800000

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->setFlags(I)V

    iget v4, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDisplayId:I

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->setDisplayId(I)V

    invoke-static {v2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {v4, v0}, Landroid/view/MotionEvent;->setActionButton(I)V

    invoke-static {v2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {v5, v0}, Landroid/view/MotionEvent;->setActionButton(I)V

    invoke-virtual {v5, v3}, Landroid/view/MotionEvent;->setButtonState(I)V

    invoke-static {v2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {v6, v3}, Landroid/view/MotionEvent;->setButtonState(I)V

    invoke-virtual {v1, v2, v3}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    invoke-virtual {v1, v4, v3}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    invoke-virtual {v1, v5, v3}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    invoke-virtual {v1, v6, v3}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    :cond_15
    :goto_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->resetInternalState()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActionScheduler: { active="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scheduledActionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mScheduledActionTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", anchor={x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, metastate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mMetaState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", policyFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mEventPolicyFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastMotionEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateIsPauseAutoClick(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mIsPauseAutoClick:Z

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->this$0:Lcom/android/server/accessibility/autoaction/AutoActionController;

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "accessibility_auto_click_paused_state"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
