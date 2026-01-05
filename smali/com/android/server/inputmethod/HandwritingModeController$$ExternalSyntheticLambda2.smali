.class public final synthetic Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/HandwritingModeController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/HandwritingModeController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/inputmethod/HandwritingModeController;

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)Z
    .locals 5

    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/inputmethod/HandwritingModeController;

    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    if-eqz v0, :cond_f

    instance-of v0, p1, Landroid/view/MotionEvent;

    const/4 v1, 0x0

    const-string v2, "HandwritingModeController"

    if-eqz v0, :cond_e

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->isStylusPointer()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v0

    iget v3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentDisplayId:I

    if-eq v0, v3, :cond_1

    const-string/jumbo p0, "Received stylus event associated with the incorrect display."

    invoke-static {v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInkWindowInitRunnable:Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/16 v2, 0x9

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInkWindowInitRunnable:Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;->run()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInkWindowInitRunnable:Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;

    return v3

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isHoverEvent()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatePackageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationConnectionlessFlow:Z

    if-eqz v2, :cond_7

    :cond_5
    if-eq v0, v3, :cond_6

    const/4 v2, 0x3

    if-ne v0, v2, :cond_7

    :cond_6
    iput-boolean v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    if-ne v0, v3, :cond_d

    iput-boolean v3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    :cond_7
    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    :cond_8
    iput-boolean v3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    :cond_9
    iget-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->getHandwritingBufferSize()I

    move-result v2

    if-lt v0, v2, :cond_c

    iput-boolean v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    iget-boolean p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    :cond_b
    :goto_0
    return v3

    :cond_c
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v3

    :cond_d
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return v3

    :cond_e
    const-string/jumbo p0, "Received non-motion event in stylus monitor."

    invoke-static {v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Input Event should not be processed when IME has the spy channel."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
