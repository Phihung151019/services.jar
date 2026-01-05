.class public final Lcom/android/server/accessibility/autoaction/actiontype/Zoom;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mInputManager:Landroid/hardware/input/InputManager;

.field public mLastMotionEvent:Landroid/view/MotionEvent;

.field public mType:Ljava/lang/String;


# virtual methods
.method public final generateTouchEvent(IIIIII)V
    .locals 30

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p6

    iget-object v5, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v5

    iget-object v6, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v6}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    array-length v9, v6

    if-ge v8, v9, :cond_1

    iget-object v9, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v9, v8}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v9, v8}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v9, v8}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "touchscreen"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    move/from16 v20, v8

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move/from16 v20, v5

    :goto_1
    sub-int v5, v1, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget-object v6, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x1050668

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    div-int/2addr v5, v6

    const/16 v6, 0xa

    if-ge v5, v6, :cond_2

    :goto_2
    move v5, v6

    goto :goto_3

    :cond_2
    const/16 v6, 0x14

    if-le v5, v6, :cond_3

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v6, v5, 0x4

    const/16 v8, 0x118

    div-int/2addr v8, v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/4 v6, 0x1

    new-array v13, v6, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v14, 0x2

    new-array v15, v14, [Landroid/view/MotionEvent$PointerCoords;

    move-object/from16 v16, v15

    filled-new-array {v7}, [I

    move-result-object v15

    filled-new-array {v7, v6}, [I

    move-result-object v24

    new-instance v17, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct/range {v17 .. v17}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v17, v13, v7

    new-instance v17, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct/range {v17 .. v17}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v17, v16, v7

    move/from16 v25, v6

    new-instance v6, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v6}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v6, v16, v25

    move/from16 v26, v7

    aget-object v7, v13, v26

    const/high16 v14, 0x3f800000    # 1.0f

    iput v14, v7, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    move-wide/from16 v18, v9

    aget-object v9, v16, v26

    iput v14, v9, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iput v14, v6, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    move/from16 v10, p1

    int-to-float v10, v10

    iput v10, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    iput v10, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    iput v10, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    int-to-float v10, v1

    iput v10, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput v10, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    int-to-float v7, v3

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/16 v22, 0x1002

    const/high16 v23, 0x800000

    move-object/from16 v6, v16

    move-object/from16 v16, v13

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v7, 0x2

    const/16 v17, 0x0

    move-wide/from16 v9, v18

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    invoke-static/range {v9 .. v23}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v13

    move-object/from16 v27, v16

    invoke-virtual {v13, v4}, Landroid/view/MotionEvent;->setDisplayId(I)V

    iget-object v14, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v14, v13, v7}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    int-to-long v13, v8

    add-long/2addr v11, v13

    move-wide v14, v13

    const/16 v13, 0x105

    move-wide v15, v14

    const/4 v14, 0x2

    move-wide/from16 v28, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v6

    invoke-static/range {v9 .. v23}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/MotionEvent;->setDisplayId(I)V

    iget-object v8, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v8, v6, v7}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    add-long v11, v11, v28

    move/from16 v6, v26

    :goto_4
    if-ge v6, v5, :cond_4

    aget-object v8, v16, v26

    iget v13, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-int v14, v2, v1

    int-to-float v14, v14

    int-to-float v7, v5

    div-float/2addr v14, v7

    add-float/2addr v14, v13

    iput v14, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object v8, v16, v25

    iget v13, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-int v14, p5, v3

    int-to-float v14, v14

    div-float/2addr v14, v7

    add-float/2addr v14, v13

    iput v14, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-long v11, v11, v28

    const/16 v22, 0x1002

    const/high16 v23, 0x800000

    const/4 v13, 0x2

    const/4 v14, 0x2

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    invoke-static/range {v9 .. v23}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/MotionEvent;->setDisplayId(I)V

    iget-object v8, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    const/4 v13, 0x2

    invoke-virtual {v8, v7, v13}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x2

    goto :goto_4

    :cond_4
    add-long v11, v11, v28

    const/16 v22, 0x1002

    const/high16 v23, 0x800000

    const/16 v13, 0x106

    const/4 v14, 0x2

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    invoke-static/range {v9 .. v23}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setDisplayId(I)V

    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    const/4 v7, 0x2

    invoke-virtual {v3, v1, v7}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    add-long v11, v11, v28

    aget-object v1, v27, v26

    int-to-float v2, v2

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v16, v27

    invoke-static/range {v9 .. v23}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setDisplayId(I)V

    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    const/4 v7, 0x2

    invoke-virtual {v0, v1, v7}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    sub-long/2addr v11, v9

    :try_start_0
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Zoom"

    const-string v2, "InterruptedException : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final getTopPackageName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public final performCornerAction(I)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/MotionEvent$PointerCoords;

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v4, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4, v0, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    aget-object v0, v1, v3

    iget v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    float-to-int v4, v1

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    float-to-int v5, v0

    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->getTopPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.messaging"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "com.sec.android.app.launcher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x32

    :goto_0
    move v6, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/16 v0, 0x14

    goto :goto_0

    :goto_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;

    move-object v3, p0

    move v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;-><init>(Lcom/android/server/accessibility/autoaction/actiontype/Zoom;IIII)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method
