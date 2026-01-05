.class public final Lcom/android/server/input/KeyGestureController$3;
.super Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/input/KeyGestureController;


# direct methods
.method public constructor <init>(Lcom/android/server/input/KeyGestureController;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/input/KeyGestureController$3;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    iput-object p1, p0, Lcom/android/server/input/KeyGestureController$3;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 p1, 0x19

    const/16 p2, 0x18

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;-><init>(II)V

    return-void

    :pswitch_0
    iput-object p1, p0, Lcom/android/server/input/KeyGestureController$3;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 p1, 0xbb

    const/4 p2, 0x4

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;-><init>(II)V

    return-void

    :pswitch_1
    iput-object p1, p0, Lcom/android/server/input/KeyGestureController$3;->this$0:Lcom/android/server/input/KeyGestureController;

    const/4 p1, 0x4

    const/16 p2, 0x17

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;-><init>(II)V

    return-void

    :pswitch_2
    iput-object p1, p0, Lcom/android/server/input/KeyGestureController$3;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 p1, 0x18

    const/16 p2, 0x1a

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;-><init>(II)V

    return-void

    :pswitch_3
    iput-object p1, p0, Lcom/android/server/input/KeyGestureController$3;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 p1, 0x1a

    const/16 p2, 0x108

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;-><init>(II)V

    return-void

    :pswitch_4
    iput-object p1, p0, Lcom/android/server/input/KeyGestureController$3;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 p1, 0x19

    const/16 p2, 0x1a

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;-><init>(II)V

    return-void

    :pswitch_5
    iput-object p1, p0, Lcom/android/server/input/KeyGestureController$3;->this$0:Lcom/android/server/input/KeyGestureController;

    const/4 p1, 0x4

    const/16 p2, 0x14

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;-><init>(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final cancel()V
    .locals 4

    iget v0, p0, Lcom/android/server/input/KeyGestureController$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0xbb

    const/4 v1, 0x4

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$3;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 v3, 0x3eb

    invoke-static {p0, v0, v3, v1, v2}, Lcom/android/server/input/KeyGestureController;->-$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V

    return-void

    :pswitch_0
    const/4 v0, 0x4

    const/16 v1, 0x17

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$3;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 v3, 0x3b

    invoke-static {p0, v0, v3, v1, v2}, Lcom/android/server/input/KeyGestureController;->-$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V

    return-void

    :pswitch_1
    const/16 v0, 0x18

    const/16 v1, 0x1a

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$3;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 v3, 0x3e9

    invoke-static {p0, v0, v3, v1, v2}, Lcom/android/server/input/KeyGestureController;->-$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V

    return-void

    :pswitch_2
    const/16 v0, 0x1a

    const/16 v1, 0x108

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$3;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 v3, 0xb

    invoke-static {p0, v0, v3, v1, v2}, Lcom/android/server/input/KeyGestureController;->-$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V

    return-void

    :pswitch_3
    const/16 v0, 0x19

    const/16 v1, 0x1a

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$3;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 v3, 0xb

    invoke-static {p0, v0, v3, v1, v2}, Lcom/android/server/input/KeyGestureController;->-$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V

    return-void

    :pswitch_4
    const/4 v0, 0x4

    const/16 v1, 0x14

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$3;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 v3, 0x37

    invoke-static {p0, v0, v3, v1, v2}, Lcom/android/server/input/KeyGestureController;->-$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V

    return-void

    :pswitch_5
    const/16 v0, 0x19

    const/16 v1, 0x18

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$3;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 v3, 0x37

    invoke-static {p0, v0, v3, v1, v2}, Lcom/android/server/input/KeyGestureController;->-$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public cancel(Landroid/view/KeyEvent;Z)V
    .locals 9

    iget v0, p0, Lcom/android/server/input/KeyGestureController$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    filled-new-array {p2}, [I

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide p1

    const/4 v0, 0x1

    new-array v2, v0, [J

    const/4 v0, 0x0

    aput-wide p1, v2, v0

    sget-boolean p1, Lcom/android/server/input/KeyGestureController;->DEBUG:Z

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$3;->this$0:Lcom/android/server/input/KeyGestureController;

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v0, -0x1

    const/4 v3, 0x0

    const/16 v4, 0xb

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/android/server/input/KeyGestureController;->createKeyGestureEvent(I[I[JIIIIILandroid/hardware/input/AppLaunchData;)Landroid/hardware/input/AidlKeyGestureEvent;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(Landroid/hardware/input/AidlKeyGestureEvent;Landroid/os/IBinder;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final execute()V
    .locals 4

    iget v0, p0, Lcom/android/server/input/KeyGestureController$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0xbb

    const/4 v1, 0x4

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$3;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 v3, 0x3eb

    invoke-static {p0, v0, v3, v1, v2}, Lcom/android/server/input/KeyGestureController;->-$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V

    return-void

    :pswitch_0
    const/4 v0, 0x4

    const/16 v1, 0x17

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$3;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 v3, 0x3b

    invoke-static {p0, v0, v3, v1, v2}, Lcom/android/server/input/KeyGestureController;->-$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V

    return-void

    :pswitch_1
    const/16 v0, 0x18

    const/16 v1, 0x1a

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$3;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 v3, 0x3e9

    invoke-static {p0, v0, v3, v1, v2}, Lcom/android/server/input/KeyGestureController;->-$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V

    return-void

    :pswitch_2
    const/16 v0, 0x1a

    const/16 v1, 0x108

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$3;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 v3, 0xb

    invoke-static {p0, v0, v3, v1, v2}, Lcom/android/server/input/KeyGestureController;->-$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V

    return-void

    :pswitch_3
    const/16 v0, 0x19

    const/16 v1, 0x1a

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$3;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 v3, 0xb

    invoke-static {p0, v0, v3, v1, v2}, Lcom/android/server/input/KeyGestureController;->-$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V

    return-void

    :pswitch_4
    const/4 v0, 0x4

    const/16 v1, 0x14

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$3;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 v3, 0x37

    invoke-static {p0, v0, v3, v1, v2}, Lcom/android/server/input/KeyGestureController;->-$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V

    return-void

    :pswitch_5
    const/16 v0, 0x19

    const/16 v1, 0x18

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$3;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 v3, 0x37

    invoke-static {p0, v0, v3, v1, v2}, Lcom/android/server/input/KeyGestureController;->-$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getKeyInterceptDelayMs()J
    .locals 2

    iget v0, p0, Lcom/android/server/input/KeyGestureController$3;->$r8$classId:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->getKeyInterceptDelayMs()J

    move-result-wide v0

    return-wide v0

    :sswitch_0
    const-wide/16 v0, 0x0

    return-wide v0

    :sswitch_1
    const-wide/16 v0, 0x0

    return-wide v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method public preCondition()Z
    .locals 3

    iget v0, p0, Lcom/android/server/input/KeyGestureController$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->preCondition()Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$3;->this$0:Lcom/android/server/input/KeyGestureController;

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result p0

    return p0

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$3;->this$0:Lcom/android/server/input/KeyGestureController;

    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    move-result p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual {v0, p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
