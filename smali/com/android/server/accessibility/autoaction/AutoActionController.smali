.class public final Lcom/android/server/accessibility/autoaction/AutoActionController;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

.field public mAutoActionObserver:Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;

.field public final mContext:Landroid/content/Context;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mUserId:I

    return-void
.end method


# virtual methods
.method public final clearEvents(I)V
    .locals 1

    const/16 v0, 0x2002

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->cancel()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    return-void
.end method

.method public final onDestroy()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mAutoActionObserver:Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v2, :cond_0

    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mAutoActionObserver:Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AutoActionObserver not started."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->cancel()V

    iput-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    :cond_2
    return-void
.end method

.method public final onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    iput v1, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mMetaState:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->cancel()V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    return-void
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 9

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    invoke-direct {v3, p0, v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;-><init>(Lcom/android/server/accessibility/autoaction/AutoActionController;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    new-instance v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;

    iget v4, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mUserId:I

    invoke-direct {v3, v4, v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;-><init>(ILandroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mAutoActionObserver:Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    iget-object v5, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v5, :cond_0

    iget-object v5, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    if-nez v5, :cond_0

    iput-object v0, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mContentResolver:Landroid/content/ContentResolver;

    iput-object v4, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    iget-object v4, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mAutoActionTypeSettingUri:Landroid/net/Uri;

    iget v5, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mUserId:I

    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mAutoActionDelaySettingUri:Landroid/net/Uri;

    iget v5, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mUserId:I

    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mCornerActionEnabledSettingUri:Landroid/net/Uri;

    iget v5, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mUserId:I

    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mPauseAutoClickWithSettingUri:Landroid/net/Uri;

    iget v5, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mUserId:I

    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mAutoActionTypeSettingUri:Landroid/net/Uri;

    invoke-virtual {v3, v1, v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v0, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mAutoActionDelaySettingUri:Landroid/net/Uri;

    invoke-virtual {v3, v1, v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v0, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mCornerActionEnabledSettingUri:Landroid/net/Uri;

    invoke-virtual {v3, v1, v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v0, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mPauseAutoClickWithSettingUri:Landroid/net/Uri;

    invoke-virtual {v3, v1, v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->onChange(ZLandroid/net/Uri;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "Observer already started."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x7

    if-eq v0, v3, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_13

    const/16 v1, 0xa

    if-eq v0, v1, :cond_13

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->cancel()V

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    iput v3, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mMetaState:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v3

    iput v3, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDisplayId:I

    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-nez v3, :cond_4

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    iget-object v4, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float/2addr v5, v3

    float-to-double v3, v4

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_3

    move v3, v1

    :goto_1
    iget-object v4, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_6

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move v5, v2

    goto :goto_3

    :cond_6
    :goto_2
    move v5, v1

    :goto_3
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    :cond_7
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    iput p3, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mEventPolicyFlags:I

    if-eqz v5, :cond_8

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    iget-object v5, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    iget-object v6, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {v5, v4, v6}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    :cond_8
    if-eqz v3, :cond_13

    iget v3, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDelay:I

    iget-object v4, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    if-eqz v4, :cond_e

    iget-object v4, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    iget-object v5, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iget-object v6, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-object v6, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    iget-object v6, v6, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    if-eqz v6, :cond_9

    new-instance v7, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;

    invoke-direct {v7, v6, v2}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;Z)V

    invoke-virtual {v6, v7}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_9
    iget-object v6, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    invoke-virtual {v6}, Lcom/android/server/accessibility/autoaction/CornerActionController;->clearDuration()V

    iget-object v6, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    iget v7, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDisplayId:I

    iget-object v8, v6, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    if-nez v8, :cond_a

    new-instance v8, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    invoke-virtual {v6, v7}, Lcom/android/server/accessibility/autoaction/CornerActionController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v8, v7, v2}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;-><init>(Landroid/content/Context;I)V

    iput-object v8, v6, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    :cond_a
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    iget v6, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDisplayId:I

    invoke-virtual {v2, v6, v5, v4}, Lcom/android/server/accessibility/autoaction/CornerActionController;->getCorner(IFF)I

    move-result v2

    const/4 v6, -0x1

    if-ne v2, v6, :cond_b

    iget v2, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionType:I

    if-ne v2, v1, :cond_e

    :cond_b
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    iget-object v2, v2, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    if-eqz v2, :cond_c

    new-instance v6, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda1;

    invoke-direct {v6, v2, v5, v4}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;FF)V

    invoke-virtual {v2, v6}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_c
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    iget-object v2, v2, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    if-eqz v2, :cond_d

    new-instance v4, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2, v1}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;Z)V

    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_d
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    int-to-long v4, v3

    iget-object v6, v2, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    if-eqz v6, :cond_e

    iget-boolean v7, v2, Lcom/android/server/accessibility/autoaction/CornerActionController;->mIsAnimating:Z

    if-nez v7, :cond_e

    iput-wide v4, v6, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mDurationTime:J

    new-instance v4, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, v6, v5}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;I)V

    invoke-virtual {v6, v4}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    iput-boolean v1, v2, Lcom/android/server/accessibility/autoaction/CornerActionController;->mIsAnimating:Z

    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    int-to-long v2, v3

    add-long/2addr v4, v2

    iget-boolean v6, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mActive:Z

    if-eqz v6, :cond_f

    iget-wide v7, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mScheduledActionTime:J

    cmp-long v7, v4, v7

    if-lez v7, :cond_f

    iput-wide v4, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mScheduledActionTime:J

    goto :goto_4

    :cond_f
    if-eqz v6, :cond_10

    iget-object v6, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_10
    iput-boolean v1, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mActive:Z

    iput-wide v4, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mScheduledActionTime:J

    iget-object v1, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_11
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->cancel()V

    goto :goto_4

    :cond_12
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->cancel()V

    :cond_13
    :goto_4
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method
