.class public final Lcom/android/server/accessibility/magnification/PanningScalingHandler;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mBlockScroll:Z

.field public final mDisplayId:I

.field public mEnable:Z

.field public mInitialScaleFactor:F

.field public final mMagnificationDelegate:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$1;

.field public final mMaxScale:F

.field public final mMinScale:F

.field public final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field public mScaling:Z

.field public final mScalingThreshold:F

.field public final mScrollGestureDetector:Landroid/view/GestureDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "PanningScalingHandler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FLcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$1;)V
    .locals 6

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mInitialScaleFactor:F

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mDisplayId:I

    iput p2, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMaxScale:F

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMinScale:F

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mBlockScroll:Z

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    mul-int/lit8 v2, p2, 0x2

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v4

    move-object v5, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;IILandroid/os/Handler;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, v5, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    new-instance p0, Landroid/view/GestureDetector;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, v1, v5, p1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object p0, v5, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScrollGestureDetector:Landroid/view/GestureDetector;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    iput-object p3, v5, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMagnificationDelegate:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$1;

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1050127

    invoke-virtual {p2, p3, p1, p0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {p1}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    iput p0, v5, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScalingThreshold:F

    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6

    sget-boolean v0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->DEBUG:Z

    const-string/jumbo v1, "PanningScalingHandler"

    if-eqz v0, :cond_0

    const-string/jumbo v2, "onScale: triggered "

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaling:Z

    const/4 v3, 0x1

    if-nez v2, :cond_3

    iget v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mInitialScaleFactor:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mInitialScaleFactor:F

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    iget v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mInitialScaleFactor:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScalingThreshold:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaling:Z

    return v3

    :cond_3
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMagnificationDelegate:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$1;

    iget v4, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mDisplayId:I

    iget-object v2, v2, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$1;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget-object v2, v2, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    mul-float/2addr p1, v2

    iget v4, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMaxScale:F

    cmpl-float v5, p1, v4

    if-lez v5, :cond_4

    cmpl-float v5, p1, v2

    if-lez v5, :cond_4

    :goto_1
    move p1, v4

    goto :goto_2

    :cond_4
    iget v4, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMinScale:F

    cmpg-float v5, p1, v4

    if-gez v5, :cond_5

    cmpg-float v2, p1, v2

    if-gez v2, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Scaled content to: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMagnificationDelegate:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$1;

    iget p0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mDisplayId:I

    iget-object v0, v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$1;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setScale(FI)V

    return v3
.end method

.method public final onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mEnable:Z

    return p0
.end method

.method public final onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mInitialScaleFactor:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaling:Z

    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mEnable:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mBlockScroll:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaling:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMagnificationDelegate:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$1;

    iget p0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mDisplayId:I

    iget-object p1, p1, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$1;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget-object p1, p1, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    neg-float p3, p3

    neg-float p4, p4

    invoke-virtual {p1, p0, p3, p4}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->moveWindowMagnification(IFF)V

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setTrackingTypingFocusEnabled(IZ)V

    :cond_1
    :goto_0
    return p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PanningScalingHandler{mInitialScaleFactor="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mInitialScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mScaling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaling:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
