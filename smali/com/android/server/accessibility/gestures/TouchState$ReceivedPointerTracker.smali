.class public final Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mLastReceivedDownEdgeFlags:I

.field public mPrimaryPointerId:I

.field public final mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

.field public mReceivedPointersDown:I


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/gestures/TouchState;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x20

    new-array v0, p1, [Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    :goto_0
    if-ge v0, p1, :cond_0

    new-instance v1, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final getPrimaryPointerId()I
    .locals 8

    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    const-wide v2, 0x7fffffffffffffffL

    :cond_0
    :goto_0
    if-lez v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    const/4 v5, 0x1

    shl-int/2addr v5, v4

    not-int v5, v5

    and-int/2addr v0, v5

    iget-object v5, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    aget-object v5, v5, v4

    iget-wide v5, v5, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mTime:J

    cmp-long v7, v5, v2

    if-gez v7, :cond_0

    move v1, v4

    move-wide v2, v5

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    :cond_2
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    return p0
.end method

.method public final getReceivedPointerDownX(I)F
    .locals 0

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    aget-object p0, p0, p1

    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mX:F

    return p0
.end method

.method public final getReceivedPointerDownY(I)F
    .locals 0

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    aget-object p0, p0, p1

    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mY:F

    return p0
.end method

.method public final handleReceivedPointerDown(ILandroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    iput v2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mLastReceivedDownEdgeFlags:I

    iget v2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    aget-object v1, v1, v0

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iput v2, v1, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mX:F

    iput p1, v1, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mY:F

    iput-wide v3, v1, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mTime:J

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_0

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    :cond_0
    return-void
.end method

.method public final handleReceivedPointerUp(ILandroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    const/4 p2, 0x1

    shl-int/2addr p2, p1

    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    not-int p2, p2

    and-int/2addr p2, v0

    iput p2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    iget-object p2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    aget-object p2, p2, p1

    const/4 v0, 0x0

    iput v0, p2, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mX:F

    iput v0, p2, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mY:F

    const-wide/16 v0, 0x0

    iput-wide v0, p2, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mTime:J

    iget p2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    if-ne p2, p1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "=========================\nDown pointers #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    shl-int/2addr v2, v1

    iget v3, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "]\nPrimary pointer id [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ]\n========================="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
