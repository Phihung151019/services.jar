.class public final Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;
.super Lcom/android/server/AccessibilityManagerInternal;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mService:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    return-void
.end method


# virtual methods
.method public final bindInput()V
    .locals 3

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda64;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda64;-><init>(I)V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final createImeSession(Landroid/util/ArraySet;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final isTouchExplorationEnabled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final performSystemAction()V
    .locals 1

    sget v0, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getSystemActionPerformer()Lcom/android/server/accessibility/SystemActionPerformer;

    move-result-object p0

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/SystemActionPerformer;->performSystemAction(I)Z

    return-void
.end method

.method public final setImeSessionEnabled(Landroid/util/SparseArray;Z)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda17;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda17;-><init>(I)V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v1, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final startInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda13;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda13;-><init>(I)V

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {v1, p0, p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final unbindInput()V
    .locals 3

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda64;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda64;-><init>(I)V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
