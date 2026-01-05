.class public final Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

.field public final synthetic val$displayId:I


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    iput p2, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->val$displayId:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondEvent:Landroid/view/MotionEvent;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    iget-object v2, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    new-array v5, v3, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v5, v2, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v5, v4

    iget-object v2, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    iget-object v5, v2, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondEvent:Landroid/view/MotionEvent;

    iget-object v2, v2, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v4

    invoke-virtual {v5, v0, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    iget-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, v4

    iget v5, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda1;

    invoke-direct {v6, v2, v5, v0}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;FF)V

    invoke-virtual {v2, v6}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, v3}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;Z)V

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    iget v2, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->val$displayId:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    new-array v9, v3, [Landroid/view/MotionEvent$PointerProperties;

    new-instance v10, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v10}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v10, v9, v4

    iget-object v10, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstEvent:Landroid/view/MotionEvent;

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v11

    aget-object v9, v9, v4

    invoke-virtual {v10, v11, v9}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    iget-object v9, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "input"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    move-object v13, v9

    check-cast v13, Landroid/hardware/input/InputManager;

    if-nez v13, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v9, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v9, v9, v4

    iget v10, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v11, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v12, 0x1

    const/4 v9, 0x0

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    const/16 v14, 0x1002

    invoke-virtual {v9, v14}, Landroid/view/MotionEvent;->setSource(I)V

    const/high16 v15, 0x800000

    invoke-virtual {v9, v15}, Landroid/view/MotionEvent;->setFlags(I)V

    invoke-virtual {v9, v2}, Landroid/view/MotionEvent;->setDisplayId(I)V

    const/4 v10, 0x2

    invoke-virtual {v13, v9, v10}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    iget-object v9, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "long_press_timeout"

    const/16 v12, 0x1f4

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v11, "drag"

    move/from16 v16, v4

    iget-object v4, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mType:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move/from16 v9, v16

    goto :goto_0

    :cond_1
    add-int/2addr v9, v12

    :goto_0
    int-to-long v11, v9

    :try_start_0
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    new-array v3, v3, [Landroid/view/MotionEvent$PointerCoords;

    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v4, v3, v16

    iget-object v4, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "display"

    invoke-virtual {v4, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    new-instance v9, Landroid/view/DisplayInfo;

    invoke-direct {v9}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {v4, v9}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v4, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v16

    iget v9, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget-object v11, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v11, v11, v16

    iget v12, v11, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float/2addr v9, v12

    const/high16 v17, 0x41a00000    # 20.0f

    div-float v18, v9, v17

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v9, v11, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float/2addr v4, v9

    div-float v4, v4, v17

    aget-object v11, v3, v16

    iput v12, v11, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput v9, v11, Landroid/view/MotionEvent$PointerCoords;->y:F

    move/from16 v9, v16

    :goto_1
    const/16 v11, 0x14

    const/16 v12, 0xf

    if-ge v9, v11, :cond_2

    aget-object v11, v3, v16

    iget v10, v11, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float v10, v10, v18

    iput v10, v11, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v15, v11, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float/2addr v15, v4

    iput v15, v11, Landroid/view/MotionEvent$PointerCoords;->y:F

    int-to-long v11, v12

    add-long/2addr v7, v11

    move v11, v9

    const/4 v9, 0x2

    const/4 v12, 0x1

    move/from16 v17, v11

    move v11, v15

    const/4 v15, 0x2

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/view/MotionEvent;->setSource(I)V

    const/high16 v10, 0x800000

    invoke-virtual {v9, v10}, Landroid/view/MotionEvent;->setFlags(I)V

    invoke-virtual {v9, v2}, Landroid/view/MotionEvent;->setDisplayId(I)V

    invoke-virtual {v13, v9, v15}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    add-int/lit8 v9, v17, 0x1

    move v10, v15

    const/high16 v15, 0x800000

    goto :goto_1

    :cond_2
    move v15, v10

    int-to-long v3, v12

    add-long/2addr v7, v3

    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, v16

    iget v10, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v11, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v12, 0x1

    const/4 v9, 0x1

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->setSource(I)V

    const/high16 v10, 0x800000

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->setFlags(I)V

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setDisplayId(I)V

    invoke-virtual {v13, v0, v15}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v2, "DragAction"

    const-string v3, "InterruptedException!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iget-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    invoke-interface {v3, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    iput-object v2, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mContext:Landroid/content/Context;

    iget-object v1, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void

    :cond_3
    move/from16 v16, v4

    new-array v2, v3, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v0, v2, v16

    iget-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    iget-object v4, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    iget-object v4, v4, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v16

    invoke-virtual {v0, v2, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    iget-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, v16

    iget v4, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda1;

    invoke-direct {v5, v2, v4, v0}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;FF)V

    invoke-virtual {v2, v5}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, v3}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
