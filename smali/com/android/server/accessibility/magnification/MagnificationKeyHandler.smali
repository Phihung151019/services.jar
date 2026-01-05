.class public final Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCallback:Lcom/android/server/accessibility/magnification/MagnificationController;

.field public mIsKeyboardInteracting:Z


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/MagnificationController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mIsKeyboardInteracting:Z

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationController;

    return-void
.end method


# virtual methods
.method public final onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationController;

    if-eqz v2, :cond_11

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x13

    const/16 v7, 0x16

    const/16 v8, 0x15

    if-eq v5, v8, :cond_9

    if-eq v5, v7, :cond_9

    if-eq v5, v6, :cond_9

    const/16 v9, 0x14

    if-ne v5, v9, :cond_1

    goto :goto_5

    :cond_1
    const/16 v6, 0x46

    if-eq v5, v6, :cond_3

    const/16 v7, 0x45

    if-ne v5, v7, :cond_2

    goto :goto_1

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    return-void

    :cond_3
    :goto_1
    if-ne v5, v6, :cond_4

    move p2, v1

    goto :goto_2

    :cond_4
    move p2, v0

    :goto_2
    if-eqz v2, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v2

    if-eq v2, v3, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result p1

    goto :goto_3

    :cond_5
    move p1, v1

    :goto_3
    iget v2, v4, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDisplay:I

    if-eq v2, v3, :cond_6

    goto :goto_4

    :cond_6
    iput p2, v4, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDirection:I

    iput p1, v4, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDisplay:I

    invoke-virtual {v4, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->scaleMagnificationByStep(II)V

    iget-boolean p1, v4, Lcom/android/server/accessibility/magnification/MagnificationController;->mRepeatKeysEnabled:Z

    if-eqz p1, :cond_7

    iget-object p1, v4, Lcom/android/server/accessibility/magnification/MagnificationController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda2;

    invoke-direct {p2, v1}, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {p2, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    iget v1, v4, Lcom/android/server/accessibility/magnification/MagnificationController;->mInitialKeyboardRepeatIntervalMs:I

    int-to-long v1, v1

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_7
    :goto_4
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mIsKeyboardInteracting:Z

    return-void

    :cond_8
    iget p0, v4, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDirection:I

    if-ne p2, p0, :cond_12

    iput v3, v4, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDisplay:I

    return-void

    :cond_9
    :goto_5
    const/4 p2, 0x2

    const/4 v9, 0x3

    if-eq v5, v6, :cond_c

    if-eq v5, v8, :cond_b

    if-eq v5, v7, :cond_a

    move v5, v9

    goto :goto_6

    :cond_a
    move v5, v0

    goto :goto_6

    :cond_b
    move v5, v1

    goto :goto_6

    :cond_c
    move v5, p2

    :goto_6
    if-eqz v2, :cond_10

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result p2

    if-eq p2, v3, :cond_d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result p1

    goto :goto_7

    :cond_d
    move p1, v1

    :goto_7
    iget p2, v4, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDisplay:I

    if-eq p2, v3, :cond_e

    move v1, v0

    :cond_e
    iput p1, v4, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDisplay:I

    iget-object p2, v4, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDirections:[Z

    aput-boolean v0, p2, v5

    invoke-virtual {v4, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->panMagnificationByStep(I[Z)V

    if-nez v1, :cond_f

    iget-boolean p1, v4, Lcom/android/server/accessibility/magnification/MagnificationController;->mRepeatKeysEnabled:Z

    if-eqz p1, :cond_f

    iget-object p1, v4, Lcom/android/server/accessibility/magnification/MagnificationController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda2;

    invoke-direct {p2, v0}, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {p2, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    iget v1, v4, Lcom/android/server/accessibility/magnification/MagnificationController;->mInitialKeyboardRepeatIntervalMs:I

    int-to-long v1, v1

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_f
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mIsKeyboardInteracting:Z

    return-void

    :cond_10
    iget-object p0, v4, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDirections:[Z

    aput-boolean v1, p0, v5

    aget-boolean p1, p0, v1

    if-nez p1, :cond_12

    aget-boolean p1, p0, v0

    if-nez p1, :cond_12

    aget-boolean p1, p0, p2

    if-nez p1, :cond_12

    aget-boolean p0, p0, v9

    if-nez p0, :cond_12

    iput v3, v4, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDisplay:I

    return-void

    :cond_11
    invoke-super {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mIsKeyboardInteracting:Z

    if-eqz p1, :cond_12

    iput v3, v4, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDisplay:I

    iput v3, v4, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDisplay:I

    const/4 p1, 0x4

    new-array p1, p1, [Z

    fill-array-data p1, :array_0

    iput-object p1, v4, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDirections:[Z

    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mIsKeyboardInteracting:Z

    :cond_12
    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
