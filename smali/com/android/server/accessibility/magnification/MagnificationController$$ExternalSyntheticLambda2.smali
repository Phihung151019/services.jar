.class public final synthetic Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda2;->$r8$classId:I

    check-cast p1, Lcom/android/server/accessibility/magnification/MagnificationController;

    packed-switch p0, :pswitch_data_0

    iget p0, p1, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDisplay:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/android/server/accessibility/magnification/MagnificationController;->mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

    invoke-interface {p0}, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastPannedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    cmp-long p0, v0, v2

    if-ltz p0, :cond_1

    iget p0, p1, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDisplay:I

    iget-object v0, p1, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDirections:[Z

    invoke-virtual {p1, p0, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->panMagnificationByStep(I[Z)V

    :cond_1
    iget-boolean p0, p1, Lcom/android/server/accessibility/magnification/MagnificationController;->mRepeatKeysEnabled:Z

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/android/server/accessibility/magnification/MagnificationController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    iget p0, p1, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDisplay:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_3

    iget v0, p1, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDirection:I

    invoke-virtual {p1, p0, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->scaleMagnificationByStep(II)V

    iget-boolean p0, p1, Lcom/android/server/accessibility/magnification/MagnificationController;->mRepeatKeysEnabled:Z

    if-eqz p0, :cond_3

    iget-object p0, p1, Lcom/android/server/accessibility/magnification/MagnificationController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3c

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
