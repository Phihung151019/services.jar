.class public final Lcom/android/server/accessibility/SamsungTouchBlocker;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/accessibility/SamsungTouchBlocker$1;

.field public mIsBlocking:Z

.field public mIsLastEventDown:Z

.field public mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field public mTapDurationEnabled:Z

.field public mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

.field public mTouchBlockingObserver:Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;

.field public mTouchBlockingPeriod:F

.field public mTouchBlockingPeriodMilli:J


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    new-instance v0, Lcom/android/server/accessibility/SamsungTouchBlocker$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungTouchBlocker$1;-><init>(Lcom/android/server/accessibility/SamsungTouchBlocker;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mHandler:Lcom/android/server/accessibility/SamsungTouchBlocker$1;

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsLastEventDown:Z

    new-instance v2, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;

    invoke-direct {v2, p0, p2, v0}, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;-><init>(Lcom/android/server/accessibility/SamsungTouchBlocker;ILcom/android/server/accessibility/SamsungTouchBlocker$1;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingObserver:Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, v2, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-nez p2, :cond_0

    iput-object p1, v2, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p2, v2, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mTouchBlockingSettingsUri:Landroid/net/Uri;

    iget v3, v2, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mUserId:I

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p1, v2, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p2, v2, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mTapDurationSettingsUri:Landroid/net/Uri;

    iget v3, v2, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mUserId:I

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p1, v2, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mTouchBlockingSettingsUri:Landroid/net/Uri;

    const/4 p2, 0x1

    invoke-virtual {v2, p2, p1}, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object p1, v2, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mTapDurationSettingsUri:Landroid/net/Uri;

    invoke-virtual {v2, p2, p1}, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->onChange(ZLandroid/net/Uri;)V

    iget-wide v2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingPeriodMilli:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput-boolean p2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "Observer has already been started."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final clearEvents(I)V
    .locals 0

    return-void
.end method

.method public final getDisplayContext(I)Landroid/content/Context;
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method public final onDestroy()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, v0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, v0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mStandbyImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mProgressImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mIgnoreImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mTapImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingObserver:Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingObserver:Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "TouchBlockingObserver has not been started"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method public final onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    :cond_0
    return-void
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/SamsungTouchBlocker;->setXY(FF)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    if-eqz p0, :cond_c

    new-instance p1, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, v2, p2}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;ZI)V

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    if-nez p2, :cond_3

    new-instance p2, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/SamsungTouchBlocker;->getDisplayContext(I)Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/SamsungTouchBlocker;->setXY(FF)V

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchBlocker;->onTapIgnore()V

    return-void

    :cond_4
    const-string/jumbo v1, "SamsungTouchBlocker"

    if-eqz v0, :cond_8

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/accessibility/SamsungTouchBlocker;->setXY(FF)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    if-eqz v0, :cond_7

    new-instance v5, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda0;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v2, v6}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;ZI)V

    invoke-virtual {v0, v5}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_7
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsLastEventDown:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, "Touch Blocker is activated"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mHandler:Lcom/android/server/accessibility/SamsungTouchBlocker$1;

    iget-wide v5, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingPeriodMilli:J

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput-boolean v4, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z

    iput-boolean v2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsLastEventDown:Z

    goto :goto_0

    :cond_8
    iput-boolean v4, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsLastEventDown:Z

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    if-nez v0, :cond_9

    new-instance v0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/SamsungTouchBlocker;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/accessibility/SamsungTouchBlocker;->setXY(FF)V

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchBlocker;->onTapIgnore()V

    :cond_a
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Inject this event : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_c
    :goto_1
    return-void
.end method

.method public final onTapIgnore()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z

    new-instance v2, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;ZI)V

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    iget-boolean v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z

    if-nez v1, :cond_1

    iget-boolean p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapDurationEnabled:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;ZI)V

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public final setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-void
.end method

.method public final setXY(FF)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->size:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int p1, p1

    div-int/lit8 v2, v1, 0x2

    sub-int/2addr p1, v2

    iget v2, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->navigationBarHeight:I

    sub-int/2addr p1, v2

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int p1, p1

    div-int/lit8 v2, v1, 0x2

    sub-int/2addr p1, v2

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_0
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int p2, p2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance p1, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;)V

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
