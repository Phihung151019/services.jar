.class public Lcom/android/server/input/debug/FocusEventDebugView;
.super Landroid/widget/RelativeLayout;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mDm:Landroid/util/DisplayMetrics;

.field public mFocusEventDebugGlobalMonitor:Lcom/android/server/input/debug/FocusEventDebugGlobalMonitor;

.field public final mOuterPadding:I

.field public mPressedKeyContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

.field public final mPressedKeys:Ljava/util/Map;

.field public mPressedModifierContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

.field public mRotaryInputGraphView:Lcom/android/server/input/debug/RotaryInputGraphView;

.field public final mRotaryInputGraphViewFactory:Ljava/util/function/Supplier;

.field public mRotaryInputValueView:Lcom/android/server/input/debug/RotaryInputValueView;

.field public final mRotaryInputValueViewFactory:Ljava/util/function/Supplier;

.field public final mService:Lcom/android/server/input/InputManagerService;


# direct methods
.method public static $r8$lambda$NOfikC3SqQwvKrlgqWnqfisz50A(Lcom/android/server/input/debug/FocusEventDebugView;Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeyContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-ne p1, v3, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeyContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedModifierContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedModifierContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    return-void

    :cond_2
    new-instance p1, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeyContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeyContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    const/16 v0, 0x55

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeyContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    new-instance p1, Landroid/widget/HorizontalScrollView;

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeyContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    new-instance v0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda5;-><init>(Landroid/widget/HorizontalScrollView;)V

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p1, v2}, Landroid/widget/HorizontalScrollView;->setHorizontalFadingEdgeEnabled(Z)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    iget-object v5, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedModifierContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedModifierContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    const/16 v2, 0x53

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getId()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedModifierContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/input/debug/FocusEventDebugView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/input/InputManagerService;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/input/debug/RotaryInputValueView;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/input/debug/RotaryInputGraphView;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeys:Ljava/util/Map;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    iput-object p2, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mService:Lcom/android/server/input/InputManagerService;

    iput-object p3, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputValueViewFactory:Ljava/util/function/Supplier;

    iput-object p4, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputGraphViewFactory:Ljava/util/function/Supplier;

    iget-object p2, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mDm:Landroid/util/DisplayMetrics;

    const/high16 p3, 0x41800000    # 16.0f

    invoke-static {p1, p3, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mOuterPadding:I

    return-void
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/input/debug/FocusEventDebugView;->handleKeyEvent(Landroid/view/KeyEvent;)V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final handleKeyEvent(Landroid/view/KeyEvent;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeyContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    if-eqz v0, :cond_13

    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedModifierContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeyContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    :goto_0
    iget-object v2, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeys:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyView;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const-string v4, "FocusEventDebugView"

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_1

    goto/16 :goto_2

    :cond_1
    if-nez v2, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Got key up for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " that was not tracked as being down."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_2
    iget-object p0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeys:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-virtual {v2, p0}, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyView;->setHighlighted(Z)V

    invoke-virtual {v2}, Landroid/widget/TextView;->clearAnimation()V

    invoke-virtual {v2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_2

    :cond_3
    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p0

    if-nez p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Got key down for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " that was already tracked as being down."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_2

    :cond_5
    new-instance v2, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyView;

    iget-object v3, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v6, 0x3

    if-eq v4, v6, :cond_11

    const/4 v6, 0x4

    if-eq v4, v6, :cond_10

    const/16 v6, 0x3d

    if-eq v4, v6, :cond_f

    const/16 v6, 0x3e

    if-eq v4, v6, :cond_e

    const/16 v6, 0x42

    if-eq v4, v6, :cond_d

    const/16 v6, 0x43

    if-eq v4, v6, :cond_c

    const/16 v6, 0x55

    if-eq v4, v6, :cond_b

    const/16 v6, 0xa0

    if-eq v4, v6, :cond_d

    const/16 v6, 0x138

    if-eq v4, v6, :cond_a

    const/16 v6, 0x6f

    if-eq v4, v6, :cond_9

    const/16 v6, 0x70

    if-eq v4, v6, :cond_8

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v4

    if-eqz v4, :cond_7

    const/high16 v6, -0x80000000

    and-int/2addr v6, v4

    if-eqz v6, :cond_6

    const v6, 0x7fffffff

    and-int/2addr v4, v6

    invoke-static {v4}, Landroid/view/KeyCharacterMap;->getCombiningChar(I)I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\u25cc"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_6
    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "KEYCODE_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :pswitch_0
    const-string/jumbo v4, "\u2198"

    goto :goto_1

    :pswitch_1
    const-string/jumbo v4, "\u2197"

    goto :goto_1

    :pswitch_2
    const-string/jumbo v4, "\u2199"

    goto :goto_1

    :pswitch_3
    const-string/jumbo v4, "\u2196"

    goto :goto_1

    :pswitch_4
    const-string/jumbo v4, "\u2192"

    goto :goto_1

    :pswitch_5
    const-string/jumbo v4, "\u2190"

    goto :goto_1

    :pswitch_6
    const-string/jumbo v4, "\u2193"

    goto :goto_1

    :pswitch_7
    const-string/jumbo v4, "\u2191"

    goto :goto_1

    :cond_8
    const-string/jumbo v4, "\u2326"

    goto :goto_1

    :cond_9
    const-string/jumbo v4, "esc"

    goto :goto_1

    :cond_a
    const-string/jumbo v4, "\u25a1"

    goto :goto_1

    :cond_b
    const-string/jumbo v4, "\u23ef"

    goto :goto_1

    :cond_c
    const-string/jumbo v4, "\u232b"

    goto :goto_1

    :cond_d
    const-string/jumbo v4, "\u23ce"

    goto :goto_1

    :cond_e
    const-string/jumbo v4, "\u2423"

    goto :goto_1

    :cond_f
    const-string/jumbo v4, "\u21e5"

    goto :goto_1

    :cond_10
    const-string/jumbo v4, "\u25c1"

    goto :goto_1

    :cond_11
    const-string/jumbo v4, "\u25ef"

    :cond_12
    :goto_1
    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v5, v6, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v5, v7, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    const/high16 v8, 0x42000000    # 32.0f

    invoke-static {v5, v8, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v8, v8

    const/4 v9, 0x2

    const/high16 v10, 0x41400000    # 12.0f

    invoke-static {v9, v10, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setMinimumWidth(I)V

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v3, 0x1080394

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {v2, v6, v7, v6, v7}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    invoke-virtual {v2, v5}, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyView;->setHighlighted(Z)V

    iget-object p0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeys:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p0

    iget-object v0, v1, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;->mPressedKeyLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, v2, p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->recycle()V

    :cond_13
    return-void

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleRotaryInput(Landroid/view/MotionEvent;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputValueView:Lcom/android/server/input/debug/RotaryInputValueView;

    if-eqz v0, :cond_7

    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    iget-object v1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputValueView:Lcom/android/server/input/debug/RotaryInputValueView;

    iget-object v2, v1, Lcom/android/server/input/debug/RotaryInputValueView;->mUpdateActivityStatusCallback:Lcom/android/server/input/debug/RotaryInputValueView$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget v2, v1, Lcom/android/server/input/debug/RotaryInputValueView;->mScaledVerticalScrollFactor:F

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/android/server/input/debug/RotaryInputValueView;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, -0xbdf0d8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v3, Lcom/android/server/input/debug/RotaryInputValueView;->ACTIVE_BACKGROUND_FILTER:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v2, v1, Lcom/android/server/input/debug/RotaryInputValueView;->mUpdateActivityStatusCallback:Lcom/android/server/input/debug/RotaryInputValueView$$ExternalSyntheticLambda0;

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputGraphView:Lcom/android/server/input/debug/RotaryInputGraphView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphValues:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    iget v4, v3, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mSize:I

    iget-object v5, v3, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mValues:[Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    const/16 v6, 0x190

    if-lez v4, :cond_0

    rsub-int v7, v4, 0x191

    iget v8, v3, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mLastIndex:I

    add-int/2addr v8, v7

    rem-int/2addr v8, v6

    aget-object v7, v5, v8

    iget-wide v7, v7, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mTime:J

    sub-long v7, v1, v7

    sget-wide v9, Lcom/android/server/input/debug/RotaryInputGraphView;->MAX_SHOWN_TIME_INTERVAL:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mSize:I

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    if-nez v4, :cond_1

    iput v7, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    :cond_1
    iget v8, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mScaledVerticalScrollFactor:F

    mul-float/2addr v0, v8

    if-nez v4, :cond_2

    move v5, v7

    goto :goto_1

    :cond_2
    iget v8, v3, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mLastIndex:I

    aget-object v5, v5, v8

    iget v5, v5, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mPos:F

    :goto_1
    add-float/2addr v5, v0

    iget v0, v3, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mLastIndex:I

    const/4 v8, 0x1

    add-int/2addr v0, v8

    rem-int/2addr v0, v6

    iput v0, v3, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mLastIndex:I

    iget-object v9, v3, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mValues:[Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    aget-object v10, v9, v0

    if-nez v10, :cond_3

    new-instance v10, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput v5, v10, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mPos:F

    iput-wide v1, v10, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mTime:J

    aput-object v10, v9, v0

    goto :goto_2

    :cond_3
    iput v5, v10, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mPos:F

    iput-wide v1, v10, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mTime:J

    :goto_2
    if-eq v4, v6, :cond_4

    add-int/2addr v4, v8

    iput v4, v3, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mSize:I

    :cond_4
    iget v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    sub-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterToBorderDistance:F

    sub-float/2addr v0, v1

    cmpl-float v1, v0, v7

    if-lez v1, :cond_6

    iget v1, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    sub-float/2addr v5, v1

    cmpg-float v2, v5, v7

    if-gez v2, :cond_5

    const/4 v8, -0x1

    :cond_5
    int-to-float v2, v8

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    iput v2, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_7
    return-void
.end method

.method public handleUpdateShowRotaryInput(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputValueView:Lcom/android/server/input/debug/RotaryInputValueView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mFocusEventDebugGlobalMonitor:Lcom/android/server/input/debug/FocusEventDebugGlobalMonitor;

    invoke-virtual {p1}, Landroid/view/InputEventReceiver;->dispose()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mFocusEventDebugGlobalMonitor:Lcom/android/server/input/debug/FocusEventDebugGlobalMonitor;

    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputValueView:Lcom/android/server/input/debug/RotaryInputValueView;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputValueView:Lcom/android/server/input/debug/RotaryInputValueView;

    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputGraphView:Lcom/android/server/input/debug/RotaryInputGraphView;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputGraphView:Lcom/android/server/input/debug/RotaryInputGraphView;

    return-void

    :cond_2
    new-instance p1, Lcom/android/server/input/debug/FocusEventDebugGlobalMonitor;

    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mService:Lcom/android/server/input/InputManagerService;

    invoke-direct {p1, p0, v0}, Lcom/android/server/input/debug/FocusEventDebugGlobalMonitor;-><init>(Lcom/android/server/input/debug/FocusEventDebugView;Lcom/android/server/input/InputManagerService;)V

    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mFocusEventDebugGlobalMonitor:Lcom/android/server/input/debug/FocusEventDebugGlobalMonitor;

    iget-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputValueViewFactory:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/input/debug/RotaryInputValueView;

    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputValueView:Lcom/android/server/input/debug/RotaryInputValueView;

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputValueView:Lcom/android/server/input/debug/RotaryInputValueView;

    invoke-virtual {p0, v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputGraphViewFactory:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/input/debug/RotaryInputGraphView;

    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputGraphView:Lcom/android/server/input/debug/RotaryInputGraphView;

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mDm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    double-to-int v0, v0

    const/4 v1, -0x1

    invoke-direct {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputGraphView:Lcom/android/server/input/debug/RotaryInputGraphView;

    invoke-virtual {p0, v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->isRound()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->isRound()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_2
    iget v2, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mOuterPadding:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v2, v2, v2, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setClipToPadding(Z)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
