.class public final Lcom/android/server/inputmethod/InputMethodManagerService$4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public final synthetic val$im:Landroid/hardware/input/InputManager;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/hardware/input/InputManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$4;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$4;->val$im:Landroid/hardware/input/InputManager;

    return-void
.end method


# virtual methods
.method public final onInputDeviceAdded(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$4;->val$im:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isStylusDevice(Landroid/view/InputDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$4;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->addStylusDeviceIdLocked(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public final onInputDeviceChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$4;->val$im:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isStylusDevice(Landroid/view/InputDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$4;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->addStylusDeviceIdLocked(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$4;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->removeStylusDeviceIdLocked(I)V

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public final onInputDeviceRemoved(I)V
    .locals 2

    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$4;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    sget-boolean v1, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->removeStylusDeviceIdLocked(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
