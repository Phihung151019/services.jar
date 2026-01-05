.class public final synthetic Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/input/debug/TouchpadDebugViewController;

.field public final synthetic f$1:Lcom/android/server/input/TouchpadHardwareState;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/debug/TouchpadDebugViewController;Lcom/android/server/input/TouchpadHardwareState;II)V
    .locals 0

    iput p4, p0, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/debug/TouchpadDebugViewController;

    iput-object p2, p0, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/input/TouchpadHardwareState;

    iput p3, p0, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda0;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/debug/TouchpadDebugViewController;

    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/input/TouchpadHardwareState;

    iget p0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda0;->f$2:I

    iget-object v0, v0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    if-eqz v0, :cond_7

    iget v2, v0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadId:I

    if-eq p0, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object p0, v0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadVisualizationView:Lcom/android/server/input/debug/TouchpadVisualizationView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "notifyTouchpadHardwareState: Time: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/input/TouchpadHardwareState;->getTimestamp()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", No. Buttons: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/input/TouchpadHardwareState;->getButtonsDown()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", No. Fingers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/input/TouchpadHardwareState;->getFingerCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", No. Touch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/input/TouchpadHardwareState;->getTouchCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "TouchpadVizMain"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/input/TouchpadHardwareState;->getFingerStates()[Lcom/android/server/input/TouchpadFingerState;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v2, v6

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Finger #"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/input/TouchpadFingerState;->getTrackingId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": touchMajor= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/server/input/TouchpadFingerState;->getTouchMajor()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", touchMinor= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/server/input/TouchpadFingerState;->getTouchMinor()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", widthMajor= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/server/input/TouchpadFingerState;->getWidthMajor()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", widthMinor= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/server/input/TouchpadFingerState;->getWidthMinor()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", pressure= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/server/input/TouchpadFingerState;->getPressure()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", orientation= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/server/input/TouchpadFingerState;->getOrientation()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", positionX= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/server/input/TouchpadFingerState;->getPositionX()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", positionY= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/server/input/TouchpadFingerState;->getPositionY()F

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/TouchpadHardwareState;

    invoke-virtual {v2}, Lcom/android/server/input/TouchpadHardwareState;->getFingerCount()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/android/server/input/TouchpadHardwareState;->getFingerCount()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    :cond_2
    iget-object v2, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/TouchpadHardwareState;

    invoke-virtual {v2}, Lcom/android/server/input/TouchpadHardwareState;->getTimestamp()F

    move-result v2

    :goto_1
    iget-object v4, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/input/TouchpadHardwareState;

    invoke-virtual {v4}, Lcom/android/server/input/TouchpadHardwareState;->getTimestamp()F

    move-result v4

    sub-float v4, v2, v4

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Trace size= "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/TouchpadHardwareState;

    invoke-virtual {v2}, Lcom/android/server/input/TouchpadHardwareState;->getFingerStates()[Lcom/android/server/input/TouchpadFingerState;

    move-result-object v2

    array-length v4, v2

    :goto_2
    if-ge v5, v4, :cond_4

    aget-object v6, v2, v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ID= "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/server/input/TouchpadFingerState;->getTrackingId()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p0, v0, Lcom/android/server/input/debug/TouchpadDebugView;->mLastTouchpadState:Lcom/android/server/input/TouchpadHardwareState;

    invoke-virtual {p0}, Lcom/android/server/input/TouchpadHardwareState;->getButtonsDown()I

    move-result p0

    const-string/jumbo v2, "TouchpadDebugView"

    if-nez p0, :cond_5

    invoke-virtual {v1}, Lcom/android/server/input/TouchpadHardwareState;->getButtonsDown()I

    move-result p0

    if-lez p0, :cond_6

    const-string/jumbo p0, "You clicked me!"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadSelectionView:Lcom/android/server/input/debug/TouchpadSelectionView;

    sget v2, Lcom/android/server/input/debug/TouchpadDebugView;->BUTTON_PRESSED_BACKGROUND_COLOR:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Lcom/android/server/input/TouchpadHardwareState;->getButtonsDown()I

    move-result p0

    if-nez p0, :cond_6

    const-string/jumbo p0, "You released the click"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadSelectionView:Lcom/android/server/input/debug/TouchpadSelectionView;

    sget v2, Lcom/android/server/input/debug/TouchpadDebugView;->BUTTON_RELEASED_BACKGROUND_COLOR:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_6
    :goto_3
    iput-object v1, v0, Lcom/android/server/input/debug/TouchpadDebugView;->mLastTouchpadState:Lcom/android/server/input/TouchpadHardwareState;

    :cond_7
    :goto_4
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/debug/TouchpadDebugViewController;

    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/input/TouchpadHardwareState;

    iget p0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda0;->f$2:I

    iget-object v2, v0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    if-eqz v2, :cond_8

    new-instance v3, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v1, p0, v4}, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/debug/TouchpadDebugViewController;Lcom/android/server/input/TouchpadHardwareState;II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
