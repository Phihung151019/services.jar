.class public final Lcom/android/server/inputmethod/IInputMethodManagerImpl;
.super Lcom/android/internal/view/IInputMethodManager$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/ZeroJankProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    return-void
.end method


# virtual methods
.method public final acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 7

    iget-object v1, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda9;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)V

    new-instance p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda4;

    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;)V

    invoke-static {v0, p0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception v0

    move-object p0, v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final acceptStylusHandwritingDelegationAsync(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V
    .locals 8

    iget-object v1, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/ZeroJankProxy;->offloadInner(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/ZeroJankProxy;->offloadInner(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->addVirtualStylusIdForTestSession_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    move-object v0, p0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    const-class v6, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v6

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdLocked(I)I

    move-result v5

    const-string/jumbo v3, "addVirtualStylusIdForTestSession"

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->canInteractWithImeLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Landroid/view/inputmethod/ImeTracker$Token;I)Z

    move-result p0

    if-nez p0, :cond_0

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v2, "Adding virtual stylus id for session"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    const v1, 0xf423f

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->addStylusDeviceIdLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v6

    :goto_0
    return-void

    :catchall_1
    move-exception v0

    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :goto_1
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final dismissAndShowAgainInputMethodPicker()V
    .locals 2

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "InputMethodManagerService"

    const-string/jumbo v1, "showAgainInputMehtodPicker"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3ff

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "InputMethodManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPriorityDumper:Lcom/android/server/inputmethod/InputMethodManagerService$5;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/utils/PriorityDump;->dump(Lcom/android/server/utils/PriorityDump$PriorityDumper;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final forceHideSoftInput()V
    .locals 5

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    :try_start_0
    const-string v1, "InputMethodManagerService"

    const-string/jumbo v2, "fhsi"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v1

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(IIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p0

    iget-object v2, v1, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {v2, v4, p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeVisibility(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    :cond_0
    invoke-static {v4, v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getCurTokenDisplayId()I
    .locals 3

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getCurTokenDisplayId : mCurTokenDisplayId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    const-string v2, "InputMethodManagerService"

    invoke-static {v0, v1, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    return p0
.end method

.method public final getCurrentFocusDisplayID()I
    .locals 3

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getCurrentFocusDisplayID : mFocusedDisplayId"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedDisplayId:I

    const-string v2, "InputMethodManagerService"

    invoke-static {v0, v1, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedDisplayId:I

    return p0
.end method

.method public final getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;
    .locals 2

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p1, 0x0

    :cond_2
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 3

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 p1, 0x0

    :cond_2
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getDexSettingsValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public final getEnabledInputMethodList(I)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    .locals 3

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 p1, 0x0

    :cond_2
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->empty()Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListInternal(II)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->create(Ljava/util/List;)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getEnabledInputMethodListLegacy(I)Ljava/util/List;
    .locals 3

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 p1, 0x0

    :cond_2
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListInternal(II)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Ljava/util/List;
    .locals 5

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p3, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 p3, 0x0

    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v3

    iget-object v4, v3, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    invoke-virtual {v4, p1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p1

    if-nez p1, :cond_3

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0, p3, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->canCallerAccessInputMethod(Ljava/lang/String;IILcom/android/server/inputmethod/InputMethodSettings;)Z

    move-result p0

    if-nez p0, :cond_4

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_4
    invoke-virtual {v3, p1, p2}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTrackerService:Lcom/android/server/inputmethod/ImeTrackerService;

    return-object p0
.end method

.method public final getInputMethodList(II)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    .locals 3

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 p1, 0x0

    :cond_2
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->empty()Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListInternal(III)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->create(Ljava/util/List;)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getInputMethodListLegacy(II)Ljava/util/List;
    .locals 3

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 p1, 0x0

    :cond_2
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListInternal(III)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I
    .locals 3

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/internal/inputmethod/IInputMethodClient;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 2

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p1, 0x0

    :cond_2
    const-class p0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodSettings;->getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getWACOMPen()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSemImmsUtil:Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;

    iget-boolean p0, p0, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mSpenLastUsed:Z

    return p0
.end method

.method public final handleVoiceHWKey()V
    .locals 8

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    move-object v0, p0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal;->isHardKeyboardAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "InputMethodManagerService"

    const-string/jumbo v1, "handleVoiceHWKey: show ime with hard keyboard disable, skip"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isCurrentInputMethodAsSamsungKeyboard()Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleDictation(Z)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "InputMethodManagerService"

    const-string/jumbo v1, "handleVoiceHWKey: voice input disable or need close voice"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    :try_start_5
    const-string/jumbo v2, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getTargetInputMethodSubtypeId()I

    move-result v3

    iget v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(IIILjava/lang/String;)V

    :cond_2
    iget v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isInputMethodShown()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    iget-object v1, v2, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    iget v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    const/16 v4, 0x17

    invoke-virtual {v0, v4, v5, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(IIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;III)Z

    goto :goto_1

    :cond_3
    iget-object v0, v2, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    iget-object v1, v2, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v3}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->requestImeVisibility(Landroid/os/IBinder;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_4
    :goto_1
    :try_start_6
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :goto_2
    :try_start_7
    const-string v1, "InputMethodManagerService"

    const-string/jumbo v2, "handleVoiceHWKey: exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :goto_3
    :try_start_8
    monitor-exit p0

    :goto_4
    return-void

    :goto_5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :goto_6
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0
.end method

.method public final hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Z
    .locals 9

    iget-object v1, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p7, :cond_0

    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)V

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/ZeroJankProxy;->offloadInner(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda3;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)V

    new-instance p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda4;

    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;)V

    invoke-static {v0, p0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-wide/16 p2, 0x1

    sget-object p4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/CompletableFuture;->completeOnTimeout(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final hideSoftInputFromServerForTest()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->hideSoftInputFromServerForTest_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    move-object v0, p0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p0

    const-class v7, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v7

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdLocked(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v1, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    const/4 p0, 0x0

    const/4 v5, 0x4

    invoke-virtual {v0, v5, v6, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(IIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;II)Z

    monitor-exit v7

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isAccessoryKeyboard()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isAccessoryKeyboard()I

    move-result p0

    return p0
.end method

.method public final isCurrentInputMethodAsSamsungKeyboard()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isCurrentInputMethodAsSamsungKeyboard()Z

    move-result p0

    return p0
.end method

.method public final isImeTraceEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public final isInputMethodPickerShownForTest()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->isInputMethodPickerShownForTest_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isInputMethodShown()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isInputMethodShown()Z

    move-result p0

    return p0
.end method

.method public final isStylusHandwritingAvailableAsUser(IZ)Z
    .locals 4

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->isStylusHandwritingEnabled(Landroid/content/Context;I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    const/4 v3, 0x1

    if-ne p1, v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsStylusHw:Z

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsConnectionlessStylusHw:Z

    if-eqz p0, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    monitor-exit v0

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p0

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->supportsStylusHandwriting()Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->supportsConnectionlessStylusHandwriting()Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    move v2, v3

    :cond_6
    monitor-exit v0

    :goto_0
    return v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final minimizeSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {p0, p2}, Lcom/android/internal/inputmethod/IInputMethod;->minimizeSoftInput(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final onImeSwitchButtonClickFromSystem(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->onImeSwitchButtonClickFromSystem_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromDisplayIdLocked(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v1

    iget v2, v1, Lcom/android/server/inputmethod/UserData;->mUserId:I

    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->hasMultipleSubtypesForSwitcher(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToNextInputMethodLocked(ZLcom/android/server/inputmethod/UserData;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->showInputMethodPickerFromSystem(II)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object v0, v0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0x7d0

    if-eq v1, v2, :cond_2

    if-eqz p6, :cond_0

    const/4 p0, -0x1

    const/4 p1, 0x0

    invoke-virtual {p6, p0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_0
    const-string p0, "InputMethodManagerService does not support shell commands from non-shell users. callingUid="

    const-string p1, " args="

    invoke-static {v1, p0, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Landroid/os/Process;->isCoreUid(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "InputMethodManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    move-object v1, v0

    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    :goto_0
    return-void
.end method

.method public final prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v1, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda5;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/ZeroJankProxy;->offloadInner(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final removeImeSurface(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->removeImeSurface_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x424

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final removeImeSurfaceFromWindowAsync(Landroid/os/IBinder;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x425

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final reportPerceptibleAsync(Landroid/os/IBinder;Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V
    .locals 9

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p3, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p2, :cond_1

    goto/16 :goto_4

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p2, v2

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v4, "InputMethodManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Duplicated subtype definition found: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p2

    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v0, :cond_4

    monitor-exit v2

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_4
    invoke-static {p3}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v6

    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/inputmethod/InputMethodSettings;->getNewAdditionalSubtypeMap(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/inputmethod/AdditionalSubtypeMap;Landroid/content/pm/PackageManagerInternal;I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object p1

    if-eq v6, p1, :cond_5

    iget-object v0, v3, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    invoke-static {p3, p1, v0}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->putAndSave(ILcom/android/server/inputmethod/AdditionalSubtypeMap;Lcom/android/server/inputmethod/InputMethodMap;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p2, Lcom/android/server/inputmethod/UserData;->mRawInputMethodMap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/inputmethod/RawInputMethodMap;

    invoke-static {p3}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v0

    iget-object p2, p2, Lcom/android/server/inputmethod/UserData;->mIsUnlockingOrUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/server/inputmethod/RawInputMethodMap;->toInputMethodMap(Lcom/android/server/inputmethod/AdditionalSubtypeMap;IZ)Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object p1

    new-instance p2, Lcom/android/server/inputmethod/InputMethodSettings;

    invoke-direct {p2, p1, p3}, Lcom/android/server/inputmethod/InputMethodSettings;-><init>(Lcom/android/server/inputmethod/InputMethodMap;I)V

    invoke-static {p3, p2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->put(ILcom/android/server/inputmethod/InputMethodSettings;)V

    invoke-virtual {p0, p3, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->postInputMethodSettingUpdatedLocked(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_5
    :goto_2
    monitor-exit v2

    goto :goto_4

    :goto_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_6
    :goto_4
    return-void
.end method

.method public final setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V
    .locals 9

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p3, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v6, 0x0

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual/range {v3 .. v8}, Landroid/content/pm/PackageManagerInternal;->isSameApp(IIJLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "subtypeHashCodes must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/inputmethod/InputMethodSettings;->setEnabledInputMethodSubtypes(Ljava/lang/String;[I)Z

    move-result p1

    if-nez p1, :cond_2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_2
    :try_start_2
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p1

    iget p2, v0, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    const-string/jumbo v0, "enabled_input_methods"

    const-string v4, ""

    invoke-static {v0, v4, p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/server/inputmethod/UserData;->mLastEnabledInputMethodsStr:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(IZ)V

    monitor-exit v3

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    const-string p2, "Calling UID="

    const-string p3, " does not belong to imeId="

    invoke-static {v4, p2, p3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setInputMethodSwitchDisable(Lcom/android/internal/inputmethod/IInputMethodClient;Z)V
    .locals 7

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "InputMethodManagerService"

    const-string/jumbo v1, "setInputMethodSwitchDisable : Ignoring, uid "

    const-string/jumbo v2, "unknown client "

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    :try_start_0
    sget-boolean v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodSwitchDisable:Z

    if-eq v4, p2, :cond_2

    const-string/jumbo v4, "setInputMethodSwitchDisable change"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-interface {p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/inputmethod/ClientController;->getClient(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ClientState;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v2, v2, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v5, v4, Lcom/android/server/inputmethod/ClientState;->mPid:I

    iget v6, v4, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    iget v4, v4, Lcom/android/server/inputmethod/ClientState;->mUid:I

    invoke-virtual {p0, v2, v4, v5, v6}, Lcom/android/server/wm/WindowManagerInternal;->hasInputMethodClientFocus(Landroid/os/IBinder;III)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodSwitchDisable:Z

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string/jumbo p1, "setInputMethodSwitchDisable : exception "

    invoke-static {p0, p1, v0}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public final setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->setStylusWindowIdleTimeoutForTest_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    move-object v0, p0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    const-class v6, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v6

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdLocked(I)I

    move-result v5

    const-string/jumbo v3, "setStylusWindowIdleTimeoutForTest"

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->canInteractWithImeLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Landroid/view/inputmethod/ImeTracker$Token;I)Z

    move-result p0

    if-nez p0, :cond_0

    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string/jumbo v2, "Setting stylus window idle timeout"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, v0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {v0, p2, p3}, Lcom/android/internal/inputmethod/IInputMethod;->setStylusWindowIdleTimeoutForTest(J)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p2, v0

    :try_start_3
    invoke-static {p2}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    :try_start_4
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v6

    :goto_1
    return-void

    :catchall_1
    move-exception v0

    move-object p2, v0

    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p2

    :goto_2
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final shouldShowImeSwitcherButtonForTest()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->shouldShowImeSwitcherButtonForTest_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdLocked(I)I

    move-result v0

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeSwitcherLocked(II)Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final showInputMethodPickerFromClient(Lcom/android/internal/inputmethod/IInputMethodClient;I)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/ZeroJankProxy;->offloadInner(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final showInputMethodPickerFromSystem(II)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodPickerFromSystem_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->showInputMethodPickerFromSystem(II)V

    return-void
.end method

.method public final showInputMethodPickerFromSystemWithUserId(III)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodPickerFromSystem_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    move-object v1, p0

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerService;->isInputMethodRestrictedByMDM()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda10;

    const/4 v5, 0x2

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;IIII)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final showSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)Z
    .locals 10

    iget-object v1, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p8, :cond_0

    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda10;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)V

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/ZeroJankProxy;->offloadInner(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda11;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)V

    new-instance p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda4;

    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;)V

    invoke-static {v0, p0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-wide/16 p2, 0x1

    sget-object p4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/CompletableFuture;->completeOnTimeout(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final startConnectionlessStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V
    .locals 8

    iget-object v1, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda0;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/ZeroJankProxy;->offloadInner(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final startImeTrace()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->startImeTrace_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/ImeTracing;->startTrace(Ljava/io/PrintWriter;)V

    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/ClientController;->forAllClients(Ljava/util/function/Consumer;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;Z)Lcom/android/internal/inputmethod/InputBindResult;
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public final startInputOrWindowGainedFocusAsync(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;ZIZ)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    invoke-direct/range {v0 .. v15}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;ZI)V

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/ZeroJankProxy;->offloadInner(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final startProtoDump([BILjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    iget-object v2, v2, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object v2, v2, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x2

    if-nez v0, :cond_0

    if-eq v1, v4, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/inputmethod/ImeTracing;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    new-instance v6, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v6}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v9, 0x10900000002L

    const-wide v11, 0x10600000001L

    const-wide v13, 0x20b00000002L

    if-eqz v1, :cond_4

    const/4 v15, 0x1

    if-eq v1, v15, :cond_3

    if-eq v1, v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v6, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v13

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v6, v9, v10, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_0

    :cond_3
    invoke-virtual {v6, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    invoke-virtual {v6, v11, v12, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v6, v9, v10, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v7, 0x10b00000003L

    invoke-virtual {v6, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    invoke-virtual {v6, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_0

    :cond_4
    const-wide v7, 0x10b00000003L

    invoke-virtual {v6, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    invoke-virtual {v6, v11, v12, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v6, v9, v10, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v7, 0x10b00000003L

    invoke-virtual {v6, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    invoke-virtual {v6, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_0
    invoke-virtual {v5, v6, v1}, Lcom/android/internal/inputmethod/ImeTracing;->addToBuffer(Landroid/util/proto/ProtoOutputStream;I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;)V

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/ZeroJankProxy;->offloadInner(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final stopImeTrace()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->stopImeTrace_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/ImeTracing;->stopTrace(Ljava/io/PrintWriter;)V

    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/ClientController;->forAllClients(Ljava/util/function/Consumer;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final undoMinimizeSoftInput()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {p0}, Lcom/android/internal/inputmethod/IInputMethod;->undoMinimizeSoftInput()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method
