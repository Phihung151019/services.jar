.class public final Lcom/android/server/input/debug/TouchpadDebugView;
.super Landroid/widget/LinearLayout;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final BUTTON_PRESSED_BACKGROUND_COLOR:I

.field public static final BUTTON_RELEASED_BACKGROUND_COLOR:I


# instance fields
.field public final mGestureInfoView:Landroid/widget/TextView;

.field public mLastTouchpadState:Lcom/android/server/input/TouchpadHardwareState;

.field public mLatestGestureType:I

.field public mScreenHeight:I

.field public mScreenWidth:I

.field public mTouchDownX:F

.field public mTouchDownY:F

.field public final mTouchSlop:I

.field public final mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

.field public final mTouchpadId:I

.field public final mTouchpadSelectionView:Lcom/android/server/input/debug/TouchpadSelectionView;

.field public final mTouchpadVisualizationView:Lcom/android/server/input/debug/TouchpadVisualizationView;

.field public final mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public mWindowLocationBeforeDragX:I

.field public mWindowLocationBeforeDragY:I

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x97

    const/16 v1, 0x63

    const/16 v2, 0x76

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/server/input/debug/TouchpadDebugView;->BUTTON_PRESSED_BACKGROUND_COLOR:I

    const/16 v0, 0x55

    const/16 v1, 0xa9

    const/16 v2, 0x54

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/server/input/debug/TouchpadDebugView;->BUTTON_RELEASED_BACKGROUND_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/input/TouchpadHardwareProperties;Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda1;)V
    .locals 10

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mLatestGestureType:I

    new-instance v1, Lcom/android/server/input/TouchpadHardwareState;

    new-array v6, v0, [Lcom/android/server/input/TouchpadFingerState;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/input/TouchpadHardwareState;-><init>(FIII[Lcom/android/server/input/TouchpadFingerState;)V

    iput-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mLastTouchpadState:Lcom/android/server/input/TouchpadHardwareState;

    iput p2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadId:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowManager:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-interface {v1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mScreenWidth:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mScreenHeight:I

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v2, Lcom/android/server/input/debug/TouchpadSelectionView;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput p2, v2, Lcom/android/server/input/debug/TouchpadSelectionView;->mCurrentTouchpadId:I

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, p2}, Lcom/android/server/input/debug/TouchpadSelectionView;->getTouchpadName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x3

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x10

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/ImageButton;

    invoke-direct {v7, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const v9, 0x1080002

    invoke-virtual {p1, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v9, 0x5

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setForegroundGravity(I)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Lcom/android/server/input/debug/TouchpadSelectionView$$ExternalSyntheticLambda0;

    invoke-direct {v9, v2, p1, p4}, Lcom/android/server/input/debug/TouchpadSelectionView$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/debug/TouchpadSelectionView;Landroid/content/Context;Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda1;)V

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadSelectionView:Lcom/android/server/input/debug/TouchpadSelectionView;

    sget p4, Lcom/android/server/input/debug/TouchpadDebugView;->BUTTON_RELEASED_BACKGROUND_COLOR:I

    invoke-virtual {v2, p4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object p4, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadSelectionView:Lcom/android/server/input/debug/TouchpadSelectionView;

    const/16 v2, 0x11

    invoke-virtual {p4, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v1, v4, p4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p4

    float-to-int p4, p4

    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadSelectionView:Lcom/android/server/input/debug/TouchpadSelectionView;

    invoke-virtual {v1, p4, p4, p4, p4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadSelectionView:Lcom/android/server/input/debug/TouchpadSelectionView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/android/server/input/debug/TouchpadVisualizationView;

    invoke-direct {v1, p1, p3}, Lcom/android/server/input/debug/TouchpadVisualizationView;-><init>(Landroid/content/Context;Lcom/android/server/input/TouchpadHardwareProperties;)V

    iput-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadVisualizationView:Lcom/android/server/input/debug/TouchpadVisualizationView;

    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p3, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    const-string v1, "Latest Gesture: "

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p3, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    invoke-virtual {p3, p4, p4, p4, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p3, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    new-instance p4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p4, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p0, p3}, Lcom/android/server/input/debug/TouchpadDebugView;->updateTheme(I)V

    iget-object p3, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadSelectionView:Lcom/android/server/input/debug/TouchpadSelectionView;

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p3, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadVisualizationView:Lcom/android/server/input/debug/TouchpadVisualizationView;

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p3, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/server/input/debug/TouchpadDebugView;->updateViewsDimensions()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchSlop:I

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 p3, 0x7f6

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p3, 0x108

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr p3, v8

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 p2, -0x3

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "TouchpadDebugView - display "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 p0, 0x28

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 p0, 0x64

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 p0, 0x33

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-void
.end method


# virtual methods
.method public getGestureInfoView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    new-instance v0, Lcom/android/server/input/debug/TouchpadDebugView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/input/debug/TouchpadDebugView$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/debug/TouchpadDebugView;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p0, p1}, Lcom/android/server/input/debug/TouchpadDebugView;->updateTheme(I)V

    iget-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mScreenWidth:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mScreenHeight:I

    invoke-virtual {p0}, Lcom/android/server/input/debug/TouchpadDebugView;->updateViewsDimensions()V

    iget-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mScreenWidth:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mScreenHeight:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    if-eq v0, v2, :cond_1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    iget-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLocationBeforeDragX:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLocationBeforeDragY:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v3

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchDownX:F

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v4, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v5, v5

    sub-float/2addr v2, v5

    iget v5, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchDownY:F

    sub-float/2addr v2, v5

    mul-float/2addr v0, v0

    mul-float/2addr v2, v2

    add-float/2addr v2, v0

    iget v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchSlop:I

    mul-int/2addr v0, v0

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchDownX:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iget v2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mScreenWidth:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchDownY:F

    sub-float/2addr p1, v2

    float-to-int p1, p1

    iget v2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mScreenHeight:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return v3

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchDownX:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchDownY:F

    sub-float/2addr p1, v1

    mul-float/2addr v0, v0

    mul-float/2addr p1, p1

    add-float/2addr p1, v0

    iget v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchSlop:I

    mul-int/2addr v0, v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_5

    return v3

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/input/debug/TouchpadDebugView;->performClick()Z

    return v3

    :cond_6
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLocationBeforeDragX:I

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLocationBeforeDragY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLocationBeforeDragX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mWindowLocationBeforeDragY:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchDownY:F

    return v3

    :cond_7
    :goto_0
    return v1
.end method

.method public final performClick()Z
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    const-string/jumbo p0, "TouchpadDebugView"

    const-string/jumbo v0, "You tapped the window!"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final updateTheme(I)V
    .locals 5

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x20

    const/4 v1, -0x1

    const/high16 v2, -0x1000000

    const/16 v3, 0xff

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadVisualizationView:Lcom/android/server/input/debug/TouchpadVisualizationView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0xf0

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p1, Lcom/android/server/input/debug/TouchpadVisualizationView;->mPressureTextPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p1, Lcom/android/server/input/debug/TouchpadVisualizationView;->mOvalFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object p1, p1, Lcom/android/server/input/debug/TouchpadVisualizationView;->mOvalStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object p0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadVisualizationView:Lcom/android/server/input/debug/TouchpadVisualizationView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x14

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p1, Lcom/android/server/input/debug/TouchpadVisualizationView;->mPressureTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p1, Lcom/android/server/input/debug/TouchpadVisualizationView;->mOvalFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object p1, p1, Lcom/android/server/input/debug/TouchpadVisualizationView;->mOvalStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object p0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final updateViewsDimensions()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v0}, Lcom/android/server/input/TouchpadHardwareProperties;->getResX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x423c0000    # 47.0f

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v0}, Lcom/android/server/input/TouchpadHardwareProperties;->getResX()F

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v2}, Lcom/android/server/input/TouchpadHardwareProperties;->getResY()F

    move-result v2

    cmpl-float v1, v2, v1

    if-nez v1, :cond_1

    const/high16 v1, 0x42340000    # 45.0f

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v1}, Lcom/android/server/input/TouchpadHardwareProperties;->getResY()F

    move-result v1

    :goto_1
    iget-object v2, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v2}, Lcom/android/server/input/TouchpadHardwareProperties;->getBottom()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v3}, Lcom/android/server/input/TouchpadHardwareProperties;->getTop()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v1

    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v1}, Lcom/android/server/input/TouchpadHardwareProperties;->getLeft()F

    move-result v1

    iget-object v3, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v3}, Lcom/android/server/input/TouchpadHardwareProperties;->getRight()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    iget v0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mScreenWidth:I

    int-to-float v0, v0

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v3

    iget v4, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mScreenHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/4 v5, 0x1

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v5, v6, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    mul-float v5, v1, v3

    cmpl-float v5, v5, v0

    if-lez v5, :cond_2

    div-float/2addr v0, v1

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    mul-float v5, v2, v3

    cmpl-float v5, v5, v4

    if-lez v5, :cond_3

    div-float v3, v4, v2

    :cond_3
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v3, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadVisualizationView:Lcom/android/server/input/debug/TouchpadVisualizationView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    mul-float/2addr v1, v0

    float-to-int v1, v1

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-direct {v4, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadVisualizationView:Lcom/android/server/input/debug/TouchpadVisualizationView;

    iput v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mScaleFactor:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
