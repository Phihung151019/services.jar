.class public final Lcom/android/server/accessibility/autoaction/CornerActionController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final POPUP_DIRECTION:[I

.field public static final POPUP_GRAVITY:[I

.field public static final TTS_CORNER:[I

.field public static final mGestureActionFlag:Ljava/util/HashMap;


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public final mCornerActionTypeObserver:Lcom/android/server/accessibility/autoaction/CornerActionController$1;

.field public mCornerActions:[Ljava/lang/String;

.field public mDragAction:Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

.field public mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

.field public mGestureAction:Ljava/lang/String;

.field public mIsAnimating:Z

.field public final mParams:Landroid/view/WindowManager$LayoutParams;

.field public mScreenHeight:I

.field public mScreenWidth:I

.field public mTipAnchorView:Landroid/view/View;

.field public mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

.field public final mUserId:I

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureActionFlag:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "double_click"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "zoom_in"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "zoom_out"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "swipe_left"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "swipe_right"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "swipe_up"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x40

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "swipe_down"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x80

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "click_and_hold"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x100

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "drag"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x200

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "drag_and_drop"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x53

    const/16 v3, 0x55

    const/16 v4, 0x33

    const/16 v5, 0x35

    filled-new-array {v4, v5, v0, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->POPUP_GRAVITY:[I

    const/4 v0, 0x3

    const/4 v3, 0x0

    filled-new-array {v0, v2, v1, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->POPUP_DIRECTION:[I

    const v0, 0x104011f

    const v1, 0x1040120

    const v2, 0x1040122

    const v3, 0x1040123

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->TTS_CORNER:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mIsAnimating:Z

    new-instance v1, Lcom/android/server/accessibility/autoaction/CornerActionController$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/accessibility/autoaction/CornerActionController$1;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mCornerActionTypeObserver:Lcom/android/server/accessibility/autoaction/CornerActionController$1;

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContentResolver:Landroid/content/ContentResolver;

    iput p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mUserId:I

    const-string/jumbo v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mWindowManager:Landroid/view/WindowManager;

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 p0, 0x7d6

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p0, 0x20

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v3, 0x20000

    or-int/2addr p0, v3

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const-string/jumbo p0, "accessibility_corner_actions"

    invoke-static {p0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v2, p0, v0, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/autoaction/CornerActionController$1;->onChange(Z)V

    return-void
.end method


# virtual methods
.method public final clearDuration()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mIsAnimating:Z

    :cond_0
    return-void
.end method

.method public final getCorner(IFF)I
    .locals 6

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget p1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenWidth:I

    iget p1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenHeight:I

    :cond_0
    const/4 p1, 0x0

    cmpl-float v0, p2, p1

    const/high16 v1, 0x42200000    # 40.0f

    if-nez v0, :cond_1

    cmpg-float v2, p3, v1

    if-ltz v2, :cond_2

    :cond_1
    cmpg-float v2, p2, v1

    if-gez v2, :cond_3

    cmpl-float v3, p3, p1

    if-nez v3, :cond_3

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    iget v3, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenWidth:I

    add-int/lit8 v4, v3, -0x1

    int-to-float v4, v4

    cmpl-float v4, p2, v4

    const/4 v5, 0x1

    if-nez v4, :cond_4

    cmpg-float v4, p3, v1

    if-ltz v4, :cond_5

    :cond_4
    int-to-float v4, v3

    sub-float/2addr v4, p2

    cmpg-float v4, v4, v1

    if-gez v4, :cond_6

    cmpl-float p1, p3, p1

    if-nez p1, :cond_6

    :cond_5
    return v5

    :cond_6
    if-gez v2, :cond_7

    iget p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenHeight:I

    sub-int/2addr p1, v5

    int-to-float p1, p1

    cmpl-float p1, p3, p1

    if-eqz p1, :cond_8

    :cond_7
    if-nez v0, :cond_9

    iget p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenHeight:I

    int-to-float p1, p1

    sub-float/2addr p1, p3

    cmpg-float p1, p1, v1

    if-gez p1, :cond_9

    :cond_8
    const/4 p0, 0x2

    return p0

    :cond_9
    int-to-float p1, v3

    sub-float/2addr p1, p2

    cmpg-float p1, p1, v1

    if-gez p1, :cond_a

    iget p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenHeight:I

    sub-int/2addr p1, v5

    int-to-float p1, p1

    cmpl-float p1, p3, p1

    if-eqz p1, :cond_b

    :cond_a
    sub-int/2addr v3, v5

    int-to-float p1, v3

    cmpl-float p1, p2, p1

    if-nez p1, :cond_c

    iget p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenHeight:I

    int-to-float p0, p0

    sub-float/2addr p0, p3

    cmpg-float p0, p0, v1

    if-gez p0, :cond_c

    :cond_b
    const/4 p0, 0x3

    return p0

    :cond_c
    const/4 p0, -0x1

    return p0
.end method

.method public final getDisplayContext(I)Landroid/content/Context;
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final performCornerAction(IILjava/lang/String;)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    const/16 v4, 0x9

    const/16 v5, 0x8

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v13, 0x0

    iget v14, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mUserId:I

    const/4 v15, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    :goto_0
    move v3, v15

    goto/16 :goto_1

    :sswitch_0
    const-string/jumbo v3, "double_click"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v3, "swipe_right"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v3, "zoom_out"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v5

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v3, "swipe_left"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v3, v6

    goto :goto_1

    :sswitch_4
    const-string/jumbo v3, "swipe_down"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    move v3, v7

    goto :goto_1

    :sswitch_5
    const-string/jumbo v3, "drag_and_drop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    move v3, v8

    goto :goto_1

    :sswitch_6
    const-string/jumbo v3, "drag"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    move v3, v9

    goto :goto_1

    :sswitch_7
    const-string/jumbo v3, "swipe_up"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    move v3, v10

    goto :goto_1

    :sswitch_8
    const-string/jumbo v3, "zoom_in"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_0

    :cond_8
    move v3, v11

    goto :goto_1

    :sswitch_9
    const-string/jumbo v3, "pause_resume_auto_click"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_0

    :cond_9
    move v3, v12

    goto :goto_1

    :sswitch_a
    const-string/jumbo v3, "click_and_hold"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_0

    :cond_a
    move v3, v13

    :goto_1
    packed-switch v3, :pswitch_data_0

    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    :goto_2
    move v3, v15

    goto/16 :goto_3

    :sswitch_b
    const-string/jumbo v1, "open_close_quick_panel"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_2

    :cond_b
    const/16 v3, 0x13

    goto/16 :goto_3

    :sswitch_c
    const-string/jumbo v1, "ringtone_volume_down"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_2

    :cond_c
    const/16 v3, 0x12

    goto/16 :goto_3

    :sswitch_d
    const-string/jumbo v1, "media_volume_up"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_2

    :cond_d
    const/16 v3, 0x11

    goto/16 :goto_3

    :sswitch_e
    const-string/jumbo v1, "recents"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_2

    :cond_e
    const/16 v3, 0x10

    goto/16 :goto_3

    :sswitch_f
    const-string/jumbo v1, "send_sos_messages"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_2

    :cond_f
    const/16 v3, 0xf

    goto/16 :goto_3

    :sswitch_10
    const-string/jumbo v1, "power_off_menu"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_2

    :cond_10
    const/16 v3, 0xe

    goto/16 :goto_3

    :sswitch_11
    const-string/jumbo v1, "media_volume_down"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_2

    :cond_11
    const/16 v3, 0xd

    goto/16 :goto_3

    :sswitch_12
    const-string/jumbo v1, "increase_brightness"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_2

    :cond_12
    const/16 v3, 0xc

    goto/16 :goto_3

    :sswitch_13
    const-string/jumbo v1, "none"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_2

    :cond_13
    const/16 v3, 0xb

    goto/16 :goto_3

    :sswitch_14
    const-string/jumbo v1, "home"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_2

    :cond_14
    const/16 v3, 0xa

    goto/16 :goto_3

    :sswitch_15
    const-string/jumbo v1, "back"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_2

    :cond_15
    move v3, v4

    goto/16 :goto_3

    :sswitch_16
    const-string/jumbo v1, "screen_shot"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_2

    :cond_16
    move v3, v5

    goto/16 :goto_3

    :sswitch_17
    const-string/jumbo v1, "reduce_brightness"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_2

    :cond_17
    move v3, v6

    goto :goto_3

    :sswitch_18
    const-string/jumbo v1, "screen_off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_2

    :cond_18
    move v3, v7

    goto :goto_3

    :sswitch_19
    const-string/jumbo v1, "sound_vibrate_mute"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_2

    :cond_19
    move v3, v8

    goto :goto_3

    :sswitch_1a
    const-string/jumbo v1, "screen_rotation"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto/16 :goto_2

    :cond_1a
    move v3, v9

    goto :goto_3

    :sswitch_1b
    const-string/jumbo v1, "ringtone_volume_up"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto/16 :goto_2

    :cond_1b
    move v3, v10

    goto :goto_3

    :sswitch_1c
    const-string/jumbo v1, "talk_to_bixby"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto/16 :goto_2

    :cond_1c
    move v3, v11

    goto :goto_3

    :sswitch_1d
    const-string/jumbo v1, "accessibility_button"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto/16 :goto_2

    :cond_1d
    move v3, v12

    goto :goto_3

    :sswitch_1e
    const-string/jumbo v1, "open_close_notifications"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto/16 :goto_2

    :cond_1e
    move v3, v13

    :goto_3
    packed-switch v3, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Wrong Corner Action Type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseQuickPanel;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseQuickPanel;->mContext:Landroid/content/Context;

    goto/16 :goto_4

    :pswitch_1
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;->mContext:Landroid/content/Context;

    iput v14, v1, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;->mUserId:I

    goto :goto_4

    :pswitch_2
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/PowerOffMenu;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/PowerOffMenu;->mContext:Landroid/content/Context;

    goto :goto_4

    :pswitch_3
    const/4 v1, 0x0

    goto :goto_4

    :pswitch_4
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/ScreenShot;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/ScreenShot;->mContext:Landroid/content/Context;

    goto :goto_4

    :pswitch_5
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;->mContext:Landroid/content/Context;

    iput-object v2, v1, Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;->mType:Ljava/lang/String;

    iput v14, v1, Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;->mUserId:I

    goto :goto_4

    :pswitch_6
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/ScreenOff;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/ScreenOff;->mContext:Landroid/content/Context;

    goto :goto_4

    :pswitch_7
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mContext:Landroid/content/Context;

    iput v14, v1, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mUserId:I

    goto :goto_4

    :pswitch_8
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    iput-object v2, v1, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mType:Ljava/lang/String;

    goto :goto_4

    :pswitch_9
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/TalkToBixby;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/TalkToBixby;->mContext:Landroid/content/Context;

    iput v14, v1, Lcom/android/server/accessibility/autoaction/actiontype/TalkToBixby;->mUserId:I

    goto :goto_4

    :pswitch_a
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;->mContext:Landroid/content/Context;

    iput-object v2, v1, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;->mType:Ljava/lang/String;

    iput v14, v1, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;->mUserId:I

    goto :goto_4

    :pswitch_b
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseNotifications;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseNotifications;->mContext:Landroid/content/Context;

    :goto_4
    if-eqz v1, :cond_1f

    move/from16 v3, p1

    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->performCornerAction(I)V

    :cond_1f
    return v13

    :pswitch_c
    return v10

    :pswitch_d
    move/from16 v3, p1

    iput-object v2, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureAction:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "accessibility_corner_action_tip_shown"

    invoke-static {v4, v5, v13, v14}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    sget-object v6, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureActionFlag:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int v7, v4, v6

    if-nez v7, :cond_22

    new-instance v7, Landroid/view/View;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/autoaction/CornerActionController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v7, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipAnchorView:Landroid/view/View;

    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mParams:Landroid/view/WindowManager$LayoutParams;

    sget-object v8, Lcom/android/server/accessibility/autoaction/CornerActionController;->POPUP_GRAVITY:[I

    aget v8, v8, v1

    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v8, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v8, v7, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/samsung/android/widget/SemTipPopup;

    iget-object v7, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipAnchorView:Landroid/view/View;

    invoke-direct {v3, v7}, Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;)V

    iput-object v3, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->getTitleResId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v7, 0x1040121

    invoke-virtual {v3, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v3, v2}, Lcom/samsung/android/widget/SemTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v3, v12}, Lcom/samsung/android/widget/SemTipPopup;->setExpanded(Z)V

    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    rem-int/lit8 v7, v1, 0x2

    if-nez v7, :cond_20

    move v7, v13

    goto :goto_5

    :cond_20
    iget v7, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenWidth:I

    :goto_5
    if-ge v1, v11, :cond_21

    move v8, v13

    goto :goto_6

    :cond_21
    iget v8, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenHeight:I

    :goto_6
    invoke-virtual {v3, v7, v8}, Lcom/samsung/android/widget/SemTipPopup;->setTargetPosition(II)V

    new-array v3, v12, [Z

    aput-boolean v13, v3, v13

    new-instance v7, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0, v3}, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionController;[Z)V

    iget-object v8, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    new-instance v9, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda1;

    invoke-direct {v9, v0, v3}, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionController;[Z)V

    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemTipPopup;->setOnDismissListener(Lcom/samsung/android/widget/SemTipPopup$OnDismissListener;)V

    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemTipPopup;->semGetBalloonPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/android/server/accessibility/autoaction/CornerActionController$2;

    invoke-direct {v2, v0}, Lcom/android/server/accessibility/autoaction/CornerActionController$2;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionController;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v1}, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionController;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v8, 0x1388

    invoke-virtual {v2, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    or-int v1, v4, v6

    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v5, v1, v14}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_22
    return v12

    :sswitch_data_0
    .sparse-switch
        -0x643f1902 -> :sswitch_a
        -0x5513dbbf -> :sswitch_9
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
        :pswitch_d
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7ec2e294 -> :sswitch_1e
        -0x74e910bd -> :sswitch_1d
        -0x682f8f69 -> :sswitch_1c
        -0x55236e7d -> :sswitch_1b
        -0x5173c60f -> :sswitch_1a
        -0x18e94be7 -> :sswitch_19
        -0x18db78e4 -> :sswitch_18
        -0x1479af36 -> :sswitch_17
        -0x291c913 -> :sswitch_16
        0x2e04e7 -> :sswitch_15
        0x30f4df -> :sswitch_14
        0x33af38 -> :sswitch_13
        0x1443e66e -> :sswitch_12
        0x1af46ecc -> :sswitch_11
        0x2d9a2c29 -> :sswitch_10
        0x3f33e64b -> :sswitch_f
        0x40828578 -> :sswitch_e
        0x4505db45 -> :sswitch_d
        0x65f68d8a -> :sswitch_c
        0x670f86b6 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_a
        :pswitch_3
        :pswitch_5
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method
