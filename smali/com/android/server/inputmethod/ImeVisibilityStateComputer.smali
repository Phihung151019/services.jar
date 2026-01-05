.class public final Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mCurVisibleImeInputTarget:Landroid/os/IBinder;

.field public mHasVisibleImeLayeringOverlay:Z

.field public final mImeDisplayValidator:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$$ExternalSyntheticLambda0;

.field public mInputShown:Z

.field public mLastImeTargetWindow:Landroid/os/IBinder;

.field public final mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

.field public final mRequestWindowStateMap:Ljava/util/WeakHashMap;

.field public mRequestedImeScreenshot:Z

.field public mRequestedShowExplicitly:Z

.field public final mService:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public mShowForced:Z

.field public final mUserId:I

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$Injector;)V
    .locals 7

    invoke-interface {p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$Injector;->getUserManagerService()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v2

    invoke-interface {p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$Injector;->getWmService()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v3

    invoke-interface {p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$Injector;->getImeValidator()Lcom/android/server/inputmethod/ImeVisibilityStateComputer$$ExternalSyntheticLambda0;

    move-result-object v4

    new-instance v5, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$Injector;->getUserId()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/pm/UserManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$$ExternalSyntheticLambda0;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/pm/UserManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$$ExternalSyntheticLambda0;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    iput p6, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mUserId:I

    iput-object p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iput-object p2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    iput-object p3, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iput-object p4, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mImeDisplayValidator:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$$ExternalSyntheticLambda0;

    iput-object p5, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "      mRequestedShowExplicitly="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedShowExplicitly:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mShowForced="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "      mImeHiddenByDisplayPolicy="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    iget-boolean v1, v1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mImeHiddenByDisplayPolicy:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "      mInputShown="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "      mLastImeTargetWindow="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mLastImeTargetWindow:Landroid/os/IBinder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getUserId()I
    .locals 0

    iget p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mUserId:I

    return p0
.end method

.method public final getWindowTokenFrom(ILandroid/os/IBinder;)Landroid/os/IBinder;
    .locals 3

    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    iget-object v2, v2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestImeToken:Landroid/os/IBinder;

    if-ne v2, p2, :cond_0

    return-object v1

    :cond_1
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object p0, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    return-object p0
.end method

.method public final getWindowTokenFrom(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)Landroid/os/IBinder;
    .locals 3

    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final requestImeVisibility(Landroid/os/IBinder;Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;-><init>(IIIZZZ)V

    move-object v0, v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    iget-boolean v2, v1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mPendingA11yRequestingHideKeyboard:Z

    if-nez v2, :cond_1

    iput-boolean p2, v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestedImeVisible:Z

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    iput-boolean p2, v1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mPendingA11yRequestingHideKeyboard:Z

    :goto_0
    new-instance p2, Landroid/os/Binder;

    invoke-direct {p2}, Landroid/os/Binder;-><init>()V

    iput-object p2, v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestImeToken:Landroid/os/IBinder;

    sget-object p2, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IME_VIS_STATE_COMPUTER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string/jumbo v1, "setWindowStateInner, windowToken=%s, state=%s"

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
