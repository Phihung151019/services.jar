.class public final Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;

.field public final synthetic val$displayId:I


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;

    iput p2, p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold$1;->val$displayId:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;

    iget p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold$1;->val$displayId:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, v0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/view/MotionEvent$PointerCoords;

    new-instance v7, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v7}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-object v9, v0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v9, v5, v7}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "input"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    aget-object v5, v6, v8

    iget v6, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v7, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v8, 0x1

    const/4 v5, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    const/16 v2, 0x1002

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setFlags(I)V

    invoke-virtual {v1, p0}, Landroid/view/MotionEvent;->setDisplayId(I)V

    const/4 p0, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method
