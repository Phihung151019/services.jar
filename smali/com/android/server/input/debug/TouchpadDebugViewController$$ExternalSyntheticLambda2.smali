.class public final synthetic Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/input/debug/TouchpadDebugViewController;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/debug/TouchpadDebugViewController;III)V
    .locals 0

    iput p4, p0, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/input/debug/TouchpadDebugViewController;

    iput p2, p0, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda2;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/input/debug/TouchpadDebugViewController;

    iget v1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda2;->f$1:I

    iget p0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda2;->f$2:I

    iget-object v0, v0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    if-eqz v0, :cond_0

    iget v2, v0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadId:I

    if-ne p0, v2, :cond_0

    iget p0, v0, Lcom/android/server/input/debug/TouchpadDebugView;->mLatestGestureType:I

    if-eq p0, v1, :cond_0

    iget-object p0, v0, Lcom/android/server/input/debug/TouchpadDebugView;->mGestureInfoView:Landroid/widget/TextView;

    packed-switch v1, :pswitch_data_1

    const-string/jumbo v2, "Unknown Gesture"

    goto :goto_0

    :pswitch_0
    const-string/jumbo v2, "Mouse Wheel"

    goto :goto_0

    :pswitch_1
    const-string v2, "Four Finger Swipe Lift, 4 Fingers"

    goto :goto_0

    :pswitch_2
    const-string v2, "Four Finger Swipe, 4 Fingers"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v2, "Metrics"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v2, "Swipe Lift, 3 Fingers"

    goto :goto_0

    :pswitch_5
    const-string/jumbo v2, "Pinch, 2 Fingers"

    goto :goto_0

    :pswitch_6
    const-string/jumbo v2, "Swipe, 3 Fingers"

    goto :goto_0

    :pswitch_7
    const-string v2, "Fling"

    goto :goto_0

    :pswitch_8
    const-string v2, "Buttons Change, 1 Fingers"

    goto :goto_0

    :pswitch_9
    const-string/jumbo v2, "Scroll, 2 Fingers"

    goto :goto_0

    :pswitch_a
    const-string/jumbo v2, "Move, 1 Finger"

    :goto_0
    const-string v3, "Latest Gesture: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput v1, v0, Lcom/android/server/input/debug/TouchpadDebugView;->mLatestGestureType:I

    :cond_0
    return-void

    :pswitch_b
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/input/debug/TouchpadDebugViewController;

    iget v1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda2;->f$1:I

    iget p0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda2;->f$2:I

    iget-object v2, v0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    if-eqz v2, :cond_1

    new-instance v3, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda2;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v1, p0, v4}, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/input/debug/TouchpadDebugViewController;III)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
