.class public abstract Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static create(Ljava/lang/String;Landroid/content/Context;Landroid/view/MotionEvent;)Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "input"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v4, "double_click"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v4, "swipe_right"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v4, "zoom_out"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_3
    const-string/jumbo v4, "swipe_left"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_4
    const-string/jumbo v4, "swipe_down"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_5
    const-string/jumbo v4, "drag_and_drop"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_6
    const-string/jumbo v4, "drag"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_7
    const-string/jumbo v4, "swipe_up"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_8
    const-string/jumbo v4, "zoom_in"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_0

    :cond_8
    move v3, v0

    goto :goto_0

    :sswitch_9
    const-string/jumbo v4, "click_and_hold"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Wrong Corner Action Type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mLastMotionEvent:Landroid/view/MotionEvent;

    return-object p0

    :pswitch_1
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstEvent:Landroid/view/MotionEvent;

    iput-object v2, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondEvent:Landroid/view/MotionEvent;

    iput-object p1, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mContext:Landroid/content/Context;

    iput-object p0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mType:Ljava/lang/String;

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    iput-object p0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstEvent:Landroid/view/MotionEvent;

    new-instance p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;-><init>(Landroid/content/Context;I)V

    iput-object p0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    new-instance p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;-><init>(Landroid/content/Context;I)V

    iput-object p0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    return-object v1

    :pswitch_2
    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mLastMotionEvent:Landroid/view/MotionEvent;

    iput-object p1, v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mContext:Landroid/content/Context;

    iput-object p0, v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mType:Ljava/lang/String;

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mLastMotionEvent:Landroid/view/MotionEvent;

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mLastMotionEvent:Landroid/view/MotionEvent;

    iput-object p1, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    iput-object p0, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mType:Ljava/lang/String;

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mLastMotionEvent:Landroid/view/MotionEvent;

    return-object v0

    :pswitch_4
    new-instance p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;->mLastMotionEvent:Landroid/view/MotionEvent;

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;->mLastMotionEvent:Landroid/view/MotionEvent;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x643f1902 -> :sswitch_9
        -0x68ea6ef -> :sswitch_8
        -0x54cce40 -> :sswitch_7
        0x2f2d34 -> :sswitch_6
        0x19319b02 -> :sswitch_5
        0x1aa61287 -> :sswitch_4
        0x1aa98dec -> :sswitch_3
        0x34b9e0e2 -> :sswitch_2
        0x3ade90d7 -> :sswitch_1
        0x51e7c39a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static getTitleResId(Ljava/lang/String;)I
    .locals 25

    move-object/from16 v0, p0

    const-string/jumbo v1, "swipe_right"

    const-string/jumbo v2, "zoom_out"

    const-string/jumbo v3, "media_volume_down"

    const-string/jumbo v4, "swipe_left"

    const-string/jumbo v5, "swipe_down"

    const-string/jumbo v6, "drag_and_drop"

    const-string/jumbo v7, "increase_brightness"

    const-string/jumbo v8, "home"

    const-string/jumbo v9, "drag"

    const-string/jumbo v10, "back"

    const-string/jumbo v11, "swipe_up"

    const-string/jumbo v12, "zoom_in"

    const-string/jumbo v13, "reduce_brightness"

    const-string/jumbo v14, "sound_vibrate_mute"

    const-string/jumbo v15, "ringtone_volume_up"

    move-object/from16 v16, v15

    const-string/jumbo v15, "accessibility_button"

    const/16 v17, 0x3

    const/16 v18, 0x2

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v21, v15

    const-string/jumbo v15, "Wrong Swipe Type"

    const/16 v22, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v23

    sparse-switch v23, :sswitch_data_0

    move-object/from16 v23, v15

    :goto_0
    move-object/from16 v15, v16

    :goto_1
    move-object/from16 v16, v10

    :goto_2
    move/from16 v10, v22

    goto/16 :goto_6

    :sswitch_0
    move-object/from16 v23, v15

    const-string/jumbo v15, "open_close_quick_panel"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v15, 0x1f

    goto/16 :goto_4

    :sswitch_1
    move-object/from16 v23, v15

    const-string/jumbo v15, "ringtone_volume_down"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    goto/16 :goto_3

    :cond_1
    const/16 v15, 0x1e

    goto/16 :goto_4

    :sswitch_2
    move-object/from16 v23, v15

    const-string/jumbo v15, "pause_auto_click"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    goto/16 :goto_3

    :cond_2
    const/16 v15, 0x1d

    goto/16 :goto_4

    :sswitch_3
    move-object/from16 v23, v15

    const-string/jumbo v15, "resume_auto_click"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    goto/16 :goto_3

    :cond_3
    const/16 v15, 0x1c

    goto/16 :goto_4

    :sswitch_4
    move-object/from16 v23, v15

    const-string/jumbo v15, "double_click"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    goto/16 :goto_3

    :cond_4
    const/16 v15, 0x1b

    goto/16 :goto_4

    :sswitch_5
    move-object/from16 v23, v15

    const-string/jumbo v15, "media_volume_up"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    goto/16 :goto_3

    :cond_5
    const/16 v15, 0x1a

    goto/16 :goto_4

    :sswitch_6
    move-object/from16 v23, v15

    const-string/jumbo v15, "recents"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    goto/16 :goto_3

    :cond_6
    const/16 v15, 0x19

    goto/16 :goto_4

    :sswitch_7
    move-object/from16 v23, v15

    const-string/jumbo v15, "send_sos_messages"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    goto/16 :goto_3

    :cond_7
    const/16 v15, 0x18

    goto/16 :goto_4

    :sswitch_8
    move-object/from16 v23, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    goto/16 :goto_3

    :cond_8
    const/16 v15, 0x17

    goto/16 :goto_4

    :sswitch_9
    move-object/from16 v23, v15

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    goto/16 :goto_3

    :cond_9
    const/16 v15, 0x16

    goto/16 :goto_4

    :sswitch_a
    move-object/from16 v23, v15

    const-string/jumbo v15, "power_off_menu"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    goto/16 :goto_3

    :cond_a
    const/16 v15, 0x15

    goto/16 :goto_4

    :sswitch_b
    move-object/from16 v23, v15

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    goto/16 :goto_3

    :cond_b
    const/16 v15, 0x14

    goto/16 :goto_4

    :sswitch_c
    move-object/from16 v23, v15

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c

    goto/16 :goto_3

    :cond_c
    const/16 v15, 0x13

    goto/16 :goto_4

    :sswitch_d
    move-object/from16 v23, v15

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    goto/16 :goto_3

    :cond_d
    const/16 v15, 0x12

    goto/16 :goto_4

    :sswitch_e
    move-object/from16 v23, v15

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_e

    goto/16 :goto_3

    :cond_e
    const/16 v15, 0x11

    goto/16 :goto_4

    :sswitch_f
    move-object/from16 v23, v15

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f

    goto/16 :goto_3

    :cond_f
    const/16 v15, 0x10

    goto/16 :goto_4

    :sswitch_10
    move-object/from16 v23, v15

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10

    goto/16 :goto_3

    :cond_10
    const/16 v15, 0xf

    goto/16 :goto_4

    :sswitch_11
    move-object/from16 v23, v15

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_11

    goto/16 :goto_3

    :cond_11
    const/16 v15, 0xe

    goto/16 :goto_4

    :sswitch_12
    move-object/from16 v23, v15

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_12

    goto/16 :goto_3

    :cond_12
    const/16 v15, 0xd

    goto/16 :goto_4

    :sswitch_13
    move-object/from16 v23, v15

    const-string/jumbo v15, "screen_shot"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_13

    goto/16 :goto_3

    :cond_13
    const/16 v15, 0xc

    goto/16 :goto_4

    :sswitch_14
    move-object/from16 v23, v15

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_14

    goto :goto_3

    :cond_14
    const/16 v15, 0xb

    goto :goto_4

    :sswitch_15
    move-object/from16 v23, v15

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_15

    goto :goto_3

    :cond_15
    const/16 v15, 0xa

    goto :goto_4

    :sswitch_16
    move-object/from16 v23, v15

    const-string/jumbo v15, "sound_mute"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_16

    goto :goto_3

    :cond_16
    const/16 v15, 0x9

    goto :goto_4

    :sswitch_17
    move-object/from16 v23, v15

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_17

    goto :goto_3

    :cond_17
    const/16 v15, 0x8

    goto :goto_4

    :sswitch_18
    move-object/from16 v23, v15

    const-string/jumbo v15, "screen_off"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_18

    goto :goto_3

    :cond_18
    const/4 v15, 0x7

    goto :goto_4

    :sswitch_19
    move-object/from16 v23, v15

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_19

    goto :goto_3

    :cond_19
    const/4 v15, 0x6

    goto :goto_4

    :sswitch_1a
    move-object/from16 v23, v15

    const-string/jumbo v15, "screen_rotation"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1a

    :goto_3
    goto/16 :goto_0

    :cond_1a
    const/4 v15, 0x5

    :goto_4
    move-object/from16 v24, v16

    move-object/from16 v16, v10

    move v10, v15

    move-object/from16 v15, v24

    goto/16 :goto_6

    :sswitch_1b
    move-object/from16 v23, v15

    move-object/from16 v15, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1b

    goto/16 :goto_1

    :cond_1b
    move-object/from16 v16, v10

    const/4 v10, 0x4

    goto :goto_6

    :sswitch_1c
    move-object/from16 v23, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v10

    const-string/jumbo v10, "click_and_hold"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1c

    goto :goto_5

    :cond_1c
    move/from16 v10, v17

    goto :goto_6

    :sswitch_1d
    move-object/from16 v23, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v10

    const-string/jumbo v10, "talk_to_bixby"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1d

    goto :goto_5

    :cond_1d
    move/from16 v10, v18

    goto :goto_6

    :sswitch_1e
    move-object/from16 v23, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v10

    move-object/from16 v10, v21

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1e

    move-object/from16 v21, v10

    goto/16 :goto_2

    :cond_1e
    move-object/from16 v21, v10

    move/from16 v10, v19

    goto :goto_6

    :sswitch_1f
    move-object/from16 v23, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v10

    const-string/jumbo v10, "open_close_notifications"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1f

    :goto_5
    goto/16 :goto_2

    :cond_1f
    move/from16 v10, v20

    :goto_6
    packed-switch v10, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Wrong Corner Action Type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const v0, 0x104012f

    return v0

    :pswitch_1
    const v0, 0x1040130

    return v0

    :pswitch_2
    const v0, 0x1040134

    return v0

    :pswitch_3
    const v0, 0x1040127

    return v0

    :pswitch_4
    const v0, 0x104013a

    return v0

    :pswitch_5
    const v0, 0x1040131

    return v0

    :pswitch_6
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const v0, 0x1040129

    return v0

    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    move-object/from16 v2, v23

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    const v0, 0x1040128

    return v0

    :pswitch_7
    const v0, 0x1040139

    return v0

    :pswitch_8
    move-object/from16 v2, v23

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    :goto_7
    move/from16 v17, v22

    goto :goto_8

    :sswitch_20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_7

    :sswitch_21
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_7

    :cond_22
    move/from16 v17, v18

    goto :goto_8

    :sswitch_22
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_7

    :cond_23
    move/from16 v17, v19

    goto :goto_8

    :sswitch_23
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_7

    :cond_24
    move/from16 v17, v20

    :cond_25
    :goto_8
    packed-switch v17, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_9
    const v0, 0x104013f

    return v0

    :pswitch_a
    const v0, 0x104013e

    return v0

    :pswitch_b
    const v0, 0x104013d

    return v0

    :pswitch_c
    const v0, 0x1040140

    return v0

    :pswitch_d
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const v0, 0x1040143

    return v0

    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Wrong Zoom Type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    const v0, 0x1040142

    return v0

    :pswitch_e
    const v0, 0x104013b

    return v0

    :pswitch_f
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const v0, 0x104012b

    return v0

    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Wrong Brightness Action Type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    const v0, 0x1040133

    return v0

    :pswitch_10
    const v0, 0x1040137

    return v0

    :pswitch_11
    const v0, 0x1040138

    return v0

    :pswitch_12
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_2

    :goto_9
    move/from16 v15, v22

    goto :goto_a

    :sswitch_24
    const-string/jumbo v1, "ringtone_volume_down"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_9

    :cond_2a
    const/4 v15, 0x4

    goto :goto_a

    :sswitch_25
    const-string/jumbo v1, "media_volume_up"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_9

    :cond_2b
    move/from16 v15, v17

    goto :goto_a

    :sswitch_26
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_9

    :cond_2c
    move/from16 v15, v18

    goto :goto_a

    :sswitch_27
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_9

    :cond_2d
    move/from16 v15, v19

    goto :goto_a

    :sswitch_28
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_9

    :cond_2e
    move/from16 v15, v20

    :goto_a
    packed-switch v15, :pswitch_data_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Wrong Sound Action Type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_13
    const v0, 0x1040135

    return v0

    :pswitch_14
    const v0, 0x104012d

    return v0

    :pswitch_15
    const v0, 0x104012c

    return v0

    :pswitch_16
    const v0, 0x104013c

    return v0

    :pswitch_17
    const v0, 0x1040136

    return v0

    :pswitch_18
    const v0, 0x1040126

    return v0

    :pswitch_19
    const v0, 0x1040141

    return v0

    :pswitch_1a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_3

    :goto_b
    move/from16 v17, v22

    goto :goto_c

    :sswitch_29
    const-string/jumbo v1, "recents"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto :goto_b

    :sswitch_2a
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_b

    :cond_2f
    move/from16 v17, v18

    goto :goto_c

    :sswitch_2b
    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto :goto_b

    :cond_30
    move/from16 v17, v19

    goto :goto_c

    :sswitch_2c
    move-object/from16 v10, v21

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto :goto_b

    :cond_31
    move/from16 v17, v20

    :cond_32
    :goto_c
    packed-switch v17, :pswitch_data_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Wrong NavigationBar Action Type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1b
    const v0, 0x1040132

    return v0

    :pswitch_1c
    const v0, 0x104012a

    return v0

    :pswitch_1d
    const v0, 0x1040125

    return v0

    :pswitch_1e
    const v0, 0x1040124

    return v0

    :pswitch_1f
    const v0, 0x104012e

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x7ec2e294 -> :sswitch_1f
        -0x74e910bd -> :sswitch_1e
        -0x682f8f69 -> :sswitch_1d
        -0x643f1902 -> :sswitch_1c
        -0x55236e7d -> :sswitch_1b
        -0x5173c60f -> :sswitch_1a
        -0x18e94be7 -> :sswitch_19
        -0x18db78e4 -> :sswitch_18
        -0x1479af36 -> :sswitch_17
        -0x146c6cb7 -> :sswitch_16
        -0x68ea6ef -> :sswitch_15
        -0x54cce40 -> :sswitch_14
        -0x291c913 -> :sswitch_13
        0x2e04e7 -> :sswitch_12
        0x2f2d34 -> :sswitch_11
        0x30f4df -> :sswitch_10
        0x1443e66e -> :sswitch_f
        0x19319b02 -> :sswitch_e
        0x1aa61287 -> :sswitch_d
        0x1aa98dec -> :sswitch_c
        0x1af46ecc -> :sswitch_b
        0x2d9a2c29 -> :sswitch_a
        0x34b9e0e2 -> :sswitch_9
        0x3ade90d7 -> :sswitch_8
        0x3f33e64b -> :sswitch_7
        0x40828578 -> :sswitch_6
        0x4505db45 -> :sswitch_5
        0x51e7c39a -> :sswitch_4
        0x5696664a -> :sswitch_3
        0x61dac0e1 -> :sswitch_2
        0x65f68d8a -> :sswitch_1
        0x670f86b6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_12
        :pswitch_11
        :pswitch_12
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_8
        :pswitch_7
        :pswitch_1a
        :pswitch_6
        :pswitch_1a
        :pswitch_f
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_12
        :pswitch_5
        :pswitch_d
        :pswitch_8
        :pswitch_4
        :pswitch_1a
        :pswitch_12
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_12
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x54cce40 -> :sswitch_23
        0x1aa61287 -> :sswitch_22
        0x1aa98dec -> :sswitch_21
        0x3ade90d7 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x55236e7d -> :sswitch_28
        -0x18e94be7 -> :sswitch_27
        0x1af46ecc -> :sswitch_26
        0x4505db45 -> :sswitch_25
        0x65f68d8a -> :sswitch_24
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x74e910bd -> :sswitch_2c
        0x2e04e7 -> :sswitch_2b
        0x30f4df -> :sswitch_2a
        0x40828578 -> :sswitch_29
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch
.end method


# virtual methods
.method public abstract performCornerAction(I)V
.end method

.method public setMotionEventForDragAction(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
