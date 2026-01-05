.class public final Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mImeTargetVisibilityPolicy:Lcom/android/server/wm/WindowManagerService$ImeTargetVisibilityPolicyImpl;

.field public final mService:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    const-class p1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerInternal;

    const-class p1, Lcom/android/server/wm/WindowManagerService$ImeTargetVisibilityPolicyImpl;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerService$ImeTargetVisibilityPolicyImpl;

    iput-object p1, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mImeTargetVisibilityPolicy:Lcom/android/server/wm/WindowManagerService$ImeTargetVisibilityPolicyImpl;

    return-void
.end method


# virtual methods
.method public final applyImeVisibility(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;II)V
    .locals 10

    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "applyImeVisibility state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget v1, v1, Lcom/android/server/inputmethod/InputMethodBindingController;->mDisplayIdToShowIme:I

    if-eqz p3, :cond_3

    const/4 v2, 0x1

    if-eq p3, v2, :cond_3

    const/4 v3, 0x0

    packed-switch p3, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid IME visibility state: "

    invoke-static {p3, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p1, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p1, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mImeTargetVisibilityPolicy:Lcom/android/server/wm/WindowManagerService$ImeTargetVisibilityPolicyImpl;

    const-string p3, "Invalid displayId:"

    iget-object v0, p2, Lcom/android/server/wm/WindowManagerService$ImeTargetVisibilityPolicyImpl;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3

    :try_start_0
    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService$ImeTargetVisibilityPolicyImpl;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p2, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    if-nez p2, :cond_0

    const-string/jumbo p0, "WindowManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", fail to remove ime screenshot"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->removeImeSurfaceImmediately()V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v4, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p1, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v6, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/16 v7, 0x23

    const/4 v8, 0x0

    move v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->onShowHideSoftInputRequested(ZLandroid/os/IBinder;ILandroid/view/inputmethod/ImeTracker$Token;I)V

    return-void

    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :pswitch_1
    invoke-static {v2, v0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    return-void

    :pswitch_2
    invoke-static {v3, v0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    return-void

    :pswitch_3
    invoke-static {v3, v0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    return-void

    :pswitch_4
    move v9, p4

    iget-object p2, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mImeTargetVisibilityPolicy:Lcom/android/server/wm/WindowManagerService$ImeTargetVisibilityPolicyImpl;

    const-string p3, "Invalid displayId:"

    iget-object p4, p2, Lcom/android/server/wm/WindowManagerService$ImeTargetVisibilityPolicyImpl;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p4, p4, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p4

    :try_start_3
    iget-object v0, p2, Lcom/android/server/wm/WindowManagerService$ImeTargetVisibilityPolicyImpl;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_1

    monitor-exit p4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_1
    :try_start_4
    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService$ImeTargetVisibilityPolicyImpl;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p2, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    if-nez p2, :cond_2

    const-string/jumbo p0, "WindowManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", fail to show ime screenshot"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_2
    :try_start_5
    invoke-virtual {p2, v0}, Lcom/android/server/wm/DisplayContent;->showImeScreenshot(Lcom/android/server/wm/WindowState;)V

    monitor-exit p4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v4, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v5, 0x0

    const/16 v7, 0x22

    const/4 v8, 0x0

    move-object v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->onShowHideSoftInputRequested(ZLandroid/os/IBinder;ILandroid/view/inputmethod/ImeTracker$Token;I)V

    return-void

    :goto_1
    :try_start_6
    monitor-exit p4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
