.class public final Lcom/android/server/accessibility/autoaction/actiontype/Swipe$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/actiontype/Swipe;

.field public final synthetic val$displayId:I


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/actiontype/Swipe;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/Swipe;

    iput p2, p0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe$1;->val$displayId:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/Swipe;

    iget v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe$1;->val$displayId:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v9, v4, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    new-array v13, v3, [Landroid/view/MotionEvent$PointerCoords;

    new-instance v10, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v10}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v10, v13, v2

    iget-object v11, v4, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v11, v9, v10}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    iget-object v9, v4, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "input"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    move-object v14, v9

    check-cast v14, Landroid/hardware/input/InputManager;

    if-nez v14, :cond_0

    return-void

    :cond_0
    aget-object v9, v13, v2

    iget v10, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v11, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v12, 0x1

    const/4 v9, 0x0

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v7

    const/16 v15, 0x1002

    invoke-virtual {v7, v15}, Landroid/view/MotionEvent;->setSource(I)V

    const/high16 v8, 0x800000

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->setFlags(I)V

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->setDisplayId(I)V

    invoke-virtual {v14, v7, v1}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    iget-object v7, v4, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "display"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v7, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v7

    new-instance v9, Landroid/view/DisplayInfo;

    invoke-direct {v9}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {v7, v9}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v7, v9, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v4, v4, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v9, 0x41100000    # 9.0f

    const/4 v10, 0x0

    const/high16 v16, 0x40c00000    # 6.0f

    const/4 v11, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v12, "swipe_right"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v11, 0x3

    goto :goto_0

    :sswitch_1
    const-string/jumbo v12, "swipe_left"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    move v11, v1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v12, "swipe_down"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    move v11, v3

    goto :goto_0

    :sswitch_3
    const-string/jumbo v12, "swipe_up"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    move v11, v2

    :goto_0
    packed-switch v11, :pswitch_data_0

    move v4, v10

    move/from16 v17, v4

    goto :goto_4

    :pswitch_0
    int-to-float v4, v7

    div-float v7, v4, v9

    aget-object v9, v13, v2

    iget v9, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v11, v7, v16

    add-float/2addr v11, v9

    cmpl-float v11, v11, v4

    if-lez v11, :cond_6

    sub-float/2addr v4, v9

    :goto_1
    div-float v4, v4, v16

    :cond_5
    move/from16 v17, v4

    :goto_2
    move v4, v10

    goto :goto_4

    :cond_6
    move/from16 v17, v7

    goto :goto_2

    :pswitch_1
    neg-int v4, v7

    int-to-float v4, v4

    div-float/2addr v4, v9

    aget-object v7, v13, v2

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v9, v4, v16

    add-float/2addr v9, v7

    cmpg-float v9, v9, v10

    if-gez v9, :cond_5

    neg-float v4, v7

    goto :goto_1

    :pswitch_2
    const/high16 v4, 0x42c80000    # 100.0f

    :goto_3
    move/from16 v17, v10

    goto :goto_4

    :pswitch_3
    const/high16 v4, -0x3d380000    # -100.0f

    goto :goto_3

    :goto_4
    move v7, v2

    :goto_5
    int-to-float v9, v7

    cmpg-float v9, v9, v16

    if-gez v9, :cond_7

    aget-object v9, v13, v2

    iget v10, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float v10, v10, v17

    iput v10, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v10, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float/2addr v10, v4

    iput v10, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move v10, v7

    move v9, v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    aget-object v11, v13, v2

    move v12, v10

    iget v10, v11, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v11, v11, Landroid/view/MotionEvent$PointerCoords;->y:F

    move/from16 v18, v12

    const/4 v12, 0x1

    move/from16 v19, v9

    const/4 v9, 0x2

    move/from16 v20, v2

    move/from16 v2, v19

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v7

    invoke-virtual {v7, v15}, Landroid/view/MotionEvent;->setSource(I)V

    invoke-virtual {v7, v2}, Landroid/view/MotionEvent;->setFlags(I)V

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->setDisplayId(I)V

    invoke-virtual {v14, v7, v1}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    add-int/lit8 v7, v18, 0x1

    move v8, v2

    move/from16 v2, v20

    goto :goto_5

    :cond_7
    move/from16 v20, v2

    move v2, v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    aget-object v3, v13, v20

    iget v10, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v11, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v12, 0x1

    const/4 v9, 0x1

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/view/MotionEvent;->setSource(I)V

    invoke-virtual {v3, v2}, Landroid/view/MotionEvent;->setFlags(I)V

    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->setDisplayId(I)V

    invoke-virtual {v14, v3, v1}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x54cce40 -> :sswitch_3
        0x1aa61287 -> :sswitch_2
        0x1aa98dec -> :sswitch_1
        0x3ade90d7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
