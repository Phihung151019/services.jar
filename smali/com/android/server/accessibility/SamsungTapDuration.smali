.class public final Lcom/android/server/accessibility/SamsungTapDuration;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDownEvent:[Landroid/view/MotionEvent;

.field public final mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

.field public final mHandler:Lcom/android/server/accessibility/SamsungTapDuration$1;

.field public mHoldingState:Z

.field public mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field public final mPolicyFlags:[I

.field public final mRawEvent:[Landroid/view/MotionEvent;

.field public mTapDurationObserver:Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;

.field public mTapDurationThreshold:F

.field public mTapDurationThresholdMilli:J


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/view/MotionEvent;

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    new-array v1, v0, [Landroid/view/MotionEvent;

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    new-array v1, v0, [Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mPolicyFlags:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    new-instance v1, Lcom/android/server/accessibility/SamsungTapDuration$1;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/SamsungTapDuration$1;-><init>(Lcom/android/server/accessibility/SamsungTapDuration;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHandler:Lcom/android/server/accessibility/SamsungTapDuration$1;

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;

    invoke-direct {v2, p0, p2, v1}, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;-><init>(Lcom/android/server/accessibility/SamsungTapDuration;ILcom/android/server/accessibility/SamsungTapDuration$1;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationObserver:Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget-object p1, v2, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-nez p1, :cond_0

    iput-object p0, v2, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p1, v2, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mTapDurationSettingUri:Landroid/net/Uri;

    iget p2, v2, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mUserId:I

    invoke-virtual {p0, p1, v0, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p0, v2, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p1, v2, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mRemoveAnimationSettingUri:Landroid/net/Uri;

    iget p2, v2, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mUserId:I

    invoke-virtual {p0, p1, v0, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p0, v2, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mTapDurationSettingUri:Landroid/net/Uri;

    const/4 p1, 0x1

    invoke-virtual {v2, p1, p0}, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object p0, v2, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mRemoveAnimationSettingUri:Landroid/net/Uri;

    invoke-virtual {v2, p1, p0}, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->onChange(ZLandroid/net/Uri;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "Observer already started."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final clearEvents(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    :cond_0
    return-void
.end method

.method public final clearMotionEvents(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    aput-object v1, v0, p1

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    aput-object v1, v0, p1

    :cond_1
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mPolicyFlags:[I

    const/4 v0, 0x0

    aput v0, p0, p1

    return-void
.end method

.method public final onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public final onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inject this event : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SamsungTapDuration"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_1
    return-void
.end method

.method public final onDestroy()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHandler:Lcom/android/server/accessibility/SamsungTapDuration$1;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    aget-object v3, v1, v0

    if-eqz v3, :cond_0

    iput-object v2, v3, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mContext:Landroid/content/Context;

    iget-object v4, v3, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, v3, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    invoke-interface {v4, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationObserver:Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationObserver:Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "ClickDelayObserver not started."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void
.end method

.method public final onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    :cond_0
    return-void
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_1e

    if-lt v1, v3, :cond_0

    goto/16 :goto_12

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    const/4 v7, 0x4

    if-ge v5, v7, :cond_3

    aget-object v7, v6, v5

    if-nez v7, :cond_2

    new-instance v7, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    iget-object v8, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "display"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/display/DisplayManager;

    if-eqz v8, :cond_1

    invoke-virtual {v8, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v8

    if-eqz v8, :cond_1

    new-instance v9, Landroid/view/ContextThemeWrapper;

    iget-object v10, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v8}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    invoke-direct {v9, v8, v10}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    goto :goto_1

    :cond_1
    iget-object v9, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mContext:Landroid/content/Context;

    :goto_1
    invoke-direct {v7, v9}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;-><init>(Landroid/content/Context;)V

    aput-object v7, v6, v5

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mPolicyFlags:[I

    const/4 v8, 0x1

    const-string/jumbo v9, "SamsungTapDuration"

    iget-object v10, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHandler:Lcom/android/server/accessibility/SamsungTapDuration$1;

    if-eqz v3, :cond_d

    if-eq v3, v8, :cond_a

    const/4 v7, 0x2

    if-eq v3, v7, :cond_8

    const/4 v2, 0x5

    if-eq v3, v2, :cond_6

    const/4 v0, 0x6

    if-eq v3, v0, :cond_4

    goto/16 :goto_12

    :cond_4
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    if-nez v0, :cond_5

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTapDuration;->onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/SamsungTapDuration;->clearMotionEvents(I)V

    aget-object p0, v6, v1

    if-eqz p0, :cond_1e

    new-instance p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;I)V

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_6
    iget-boolean v2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    if-nez v2, :cond_7

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTapDuration;->onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_7
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    aput-object p2, v2, v1

    aput p3, v5, v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/accessibility/SamsungTapDuration;->setXY(IFF)V

    aget-object p0, v6, v1

    if-eqz p0, :cond_1e

    new-instance p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda0;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;I)V

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_8
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    if-nez v0, :cond_9

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTapDuration;->onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_9
    :goto_2
    if-ge v4, v2, :cond_1e

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result p2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p3

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/accessibility/SamsungTapDuration;->setXY(IFF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_a
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    if-nez v0, :cond_b

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTapDuration;->onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_b
    invoke-virtual {v10, v8}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v4, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    const-string p1, "Finish checking if this tap is valid "

    invoke-static {v9, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/SamsungTapDuration;->clearMotionEvents(I)V

    :goto_3
    if-ge v4, v7, :cond_1e

    aget-object p0, v6, v4

    if-eqz p0, :cond_c

    new-instance p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;I)V

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_d
    iput-boolean v8, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    const-string/jumbo v0, "Start checking if this tap is valid "

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    aput-object p2, v0, v4

    aput p3, v5, v4

    iget-wide p2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationThresholdMilli:J

    invoke-virtual {v10, v8, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result p2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/accessibility/SamsungTapDuration;->setXY(IFF)V

    move p1, v4

    :goto_4
    if-ge p1, v7, :cond_1d

    aget-object p2, v6, p1

    if-eqz p2, :cond_1c

    iget-wide v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationThresholdMilli:J

    iput-wide v0, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mDuration:J

    iget-boolean p3, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsShortThreshold:Z

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_e

    move v1, v8

    goto :goto_5

    :cond_e
    move v1, v4

    :goto_5
    if-eq p3, v1, :cond_1b

    if-gez v0, :cond_f

    move p3, v8

    goto :goto_6

    :cond_f
    move p3, v4

    :goto_6
    iput-boolean p3, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsShortThreshold:Z

    iget-object v0, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mCircle:Landroid/widget/ImageView;

    const/16 v1, 0x8

    if-nez p3, :cond_11

    iget-boolean v2, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsRemoveAnimationEnabled:Z

    if-eqz v2, :cond_10

    goto :goto_7

    :cond_10
    move v2, v4

    goto :goto_8

    :cond_11
    :goto_7
    move v2, v1

    :goto_8
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mArrow:Landroid/widget/ImageView;

    if-nez p3, :cond_13

    iget-boolean v2, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsRemoveAnimationEnabled:Z

    if-eqz v2, :cond_12

    goto :goto_9

    :cond_12
    move v2, v4

    goto :goto_a

    :cond_13
    :goto_9
    move v2, v1

    :goto_a
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mBackground:Landroid/widget/ImageView;

    if-nez p3, :cond_15

    iget-boolean v2, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsRemoveAnimationEnabled:Z

    if-eqz v2, :cond_14

    goto :goto_b

    :cond_14
    move v2, v4

    goto :goto_c

    :cond_15
    :goto_b
    move v2, v1

    :goto_c
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mProgress:Landroid/widget/ProgressBar;

    if-nez p3, :cond_17

    iget-boolean v2, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsRemoveAnimationEnabled:Z

    if-eqz v2, :cond_16

    goto :goto_d

    :cond_16
    move v2, v4

    goto :goto_e

    :cond_17
    :goto_d
    move v2, v1

    :goto_e
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mStandBy:Landroid/widget/ImageView;

    if-nez p3, :cond_19

    iget-boolean v2, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsRemoveAnimationEnabled:Z

    if-eqz v2, :cond_18

    goto :goto_f

    :cond_18
    move v2, v1

    goto :goto_10

    :cond_19
    :goto_f
    move v2, v4

    :goto_10
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mHold:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p3, :cond_1a

    const p3, 0x10500e8

    goto :goto_11

    :cond_1a
    const p3, 0x10505da

    :goto_11
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mSize:I

    iget-object p3, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mStandBy:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget v0, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mSize:I

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p3, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mStandBy:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget v0, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mSize:I

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p3, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mHold:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget v0, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mSize:I

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p3, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mHold:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget v0, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mSize:I

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p3, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mStandBy:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->requestLayout()V

    iget-object p2, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mHold:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    :cond_1b
    aget-object p2, v6, p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p3, p2, v0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;I)V

    invoke-virtual {p2, p3}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1c
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_4

    :cond_1d
    aget-object p0, v6, v4

    if-eqz p0, :cond_1e

    new-instance p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda0;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;I)V

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1e
    :goto_12
    return-void
.end method

.method public final setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-void
.end method

.method public final setXY(IFF)V
    .locals 1

    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    const-string/jumbo p0, "SamsungTapDuration"

    const-string/jumbo p1, "setXY()_pointerId is invalid!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    aget-object p0, p0, p1

    if-eqz p0, :cond_2

    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int p2, p2

    iget v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mSize:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mNavigationBarHeight:I

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int p2, p2

    iget v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mSize:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_0
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int p2, p3

    iget p3, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mSize:I

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda0;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;I)V

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
