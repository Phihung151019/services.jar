.class public final Lcom/android/server/accessibility/autoclick/AutoclickController;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field final clickPanelController:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;

.field public final mActiveClickType:I

.field mAutoclickIndicatorScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;

.field mAutoclickIndicatorView:Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;

.field mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

.field mAutoclickSettingsObserver:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;

.field mAutoclickTypePanel:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

.field mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

.field public final mContext:Landroid/content/Context;

.field public final mHoveredDirection:I

.field mLastCursorX:F

.field mLastCursorY:F

.field final mScrollPanelController:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$ScrollPanelControllerInterface;

.field public final mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/server/accessibility/AccessibilityTraceManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mActiveClickType:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mHoveredDirection:I

    new-instance v0, Lcom/android/server/accessibility/autoclick/AutoclickController$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$1;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickController;)V

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->clickPanelController:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;

    new-instance v0, Lcom/android/server/accessibility/autoclick/AutoclickController$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$1;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickController;)V

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mScrollPanelController:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$ScrollPanelControllerInterface;

    iput-object p3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mUserId:I

    return-void
.end method

.method public static synthetic access$001(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public static synthetic access$101(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public static synthetic access$201(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public static synthetic access$301(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method


# virtual methods
.method public final cancelPendingClick()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mActive:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->resetInternalState()V

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final clearEvents(I)V
    .locals 1

    const/16 v0, 0x2002

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->cancelPendingClick()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    return-void
.end method

.method public onChangeForTesting(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickSettingsObserver:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickSettingsObserver:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v2, :cond_0

    iget-object v3, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickSettingsObserver:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AutoclickSettingsObserver not started."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    if-eqz v0, :cond_3

    iget-boolean v2, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mActive:Z

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->resetInternalState()V

    iget-object v2, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_1
    iput-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    :cond_3
    return-void
.end method

.method public final onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x1000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "event="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ";policyFlags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AutoclickController.onKeyEvent"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    iput v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mMetaState:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->cancelPendingClick()V

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    return-void
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x1000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "event="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ";rawEvent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ";policyFlags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AutoclickController.onMotionEvent"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_4

    new-instance v0, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    invoke-direct {v3, p0, v0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    new-instance v3, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;

    iget v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mUserId:I

    invoke-direct {v3, v4, v0}, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;-><init>(ILandroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickSettingsObserver:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    iget-object v5, v3, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v5, :cond_3

    iget-object v5, v3, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    if-nez v5, :cond_3

    if-eqz v0, :cond_2

    if-eqz v4, :cond_1

    iput-object v0, v3, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    iput-object v4, v3, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    iget-object v4, v3, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickDelaySettingUri:Landroid/net/Uri;

    iget v5, v3, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mUserId:I

    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, v3, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickDelaySettingUri:Landroid/net/Uri;

    invoke-virtual {v3, v1, v0}, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->onChange(ZLandroid/net/Uri;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "clickScheduler not set."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "contentResolver not set."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "Observer already started."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x7

    if-eq v0, v3, :cond_5

    const/16 v1, 0x9

    if-eq v0, v1, :cond_10

    const/16 v1, 0xa

    if-eq v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->cancelPendingClick()V

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    iput v3, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mMetaState:I

    iget-object v3, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-nez v3, :cond_7

    :cond_6
    move v3, v2

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    iget-object v4, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

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

    if-lez v3, :cond_6

    move v3, v1

    :goto_1
    iget-object v4, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_8

    if-eqz v3, :cond_9

    :cond_8
    move v2, v1

    :cond_9
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    :cond_a
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    iput p3, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    iget-object v4, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    iget-object v4, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    iget-object v5, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {v4, v2, v5}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    :cond_b
    if-eqz v3, :cond_10

    iget v2, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mDelay:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    int-to-long v5, v2

    add-long/2addr v3, v5

    iget-boolean v2, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mActive:Z

    if-eqz v2, :cond_c

    iget-wide v7, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    cmp-long v7, v3, v7

    if-lez v7, :cond_c

    iput-wide v3, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    goto :goto_2

    :cond_c
    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_d
    iput-boolean v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mActive:Z

    iput-wide v3, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_e
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->cancelPendingClick()V

    goto :goto_2

    :cond_f
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->cancelPendingClick()V

    :cond_10
    :goto_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method
