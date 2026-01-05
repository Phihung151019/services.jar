.class public final synthetic Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

.field public final synthetic f$1:I

.field public final synthetic f$10:I

.field public final synthetic f$11:I

.field public final synthetic f$12:Landroid/window/ImeOnBackInvokedDispatcher;

.field public final synthetic f$13:Z

.field public final synthetic f$14:I

.field public final synthetic f$2:Lcom/android/internal/inputmethod/IInputMethodClient;

.field public final synthetic f$3:Landroid/os/IBinder;

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:Landroid/view/inputmethod/EditorInfo;

.field public final synthetic f$8:Lcom/android/internal/inputmethod/IRemoteInputConnection;

.field public final synthetic f$9:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/ZeroJankProxy;ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

    iput p2, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$1:I

    iput-object p3, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$2:Lcom/android/internal/inputmethod/IInputMethodClient;

    iput-object p4, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$3:Landroid/os/IBinder;

    iput p5, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$4:I

    iput p6, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$5:I

    iput p7, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$6:I

    iput-object p8, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$7:Landroid/view/inputmethod/EditorInfo;

    iput-object p9, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$8:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    iput-object p10, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$9:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    iput p11, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$10:I

    iput p12, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$11:I

    iput-object p13, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$12:Landroid/window/ImeOnBackInvokedDispatcher;

    iput-boolean p14, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$13:Z

    iput p15, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$14:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 40

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget v3, v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$1:I

    iget-object v4, v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$2:Lcom/android/internal/inputmethod/IInputMethodClient;

    iget-object v5, v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$3:Landroid/os/IBinder;

    iget v6, v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$4:I

    iget v7, v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$5:I

    iget v8, v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$6:I

    iget-object v9, v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$7:Landroid/view/inputmethod/EditorInfo;

    iget-object v10, v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$8:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    iget-object v11, v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$9:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    iget v12, v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$10:I

    iget v2, v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$11:I

    iget-object v14, v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$12:Landroid/window/ImeOnBackInvokedDispatcher;

    iget-boolean v13, v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$13:Z

    iget v0, v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$14:I

    iget-object v15, v1, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast v15, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 p0, v0

    const-string v0, "InputBindResult is @NonNull. startInputReason="

    move/from16 v16, v3

    const-string/jumbo v3, "Rejecting this client as it reported an invalid package name. uid="

    move-object/from16 v23, v4

    const-string/jumbo v4, "startInputOrWindowGainedFocus: reason="

    move/from16 v17, v6

    const-string/jumbo v6, "startInputOrWindowGainedFocus: Focus gain on non-focused client "

    move/from16 v18, v7

    const-string/jumbo v7, "Unknown client "

    move/from16 v19, v8

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    if-eq v8, v2, :cond_1

    iget-object v8, v15, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v10

    const-string/jumbo v10, "android.permission.INTERACT_ACROSS_USERS_FULL"

    move-object/from16 v21, v11

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_0

    iget-object v8, v9, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    if-ne v8, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "EditorInfo#targetInputMethodUser must also be specified for cross-user startInputOrWindowGainedFocus()"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object/from16 v20, v10

    move-object/from16 v21, v11

    :goto_0
    if-nez v5, :cond_2

    const-string v0, "InputMethodManagerService"

    const-string/jumbo v3, "windowToken cannot be null."

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NULL:Lcom/android/internal/inputmethod/InputBindResult;

    :goto_1
    move/from16 v39, v2

    goto/16 :goto_b

    :cond_2
    iget-object v8, v15, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v8, v2}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v0, "InputMethodManagerService"

    const-string/jumbo v3, "User #"

    const-string v4, " is not running."

    invoke-static {v2, v3, v4, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_USER:Lcom/android/internal/inputmethod/InputBindResult;

    goto :goto_1

    :cond_3
    invoke-virtual {v15, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v8

    const-wide/16 v10, 0x20

    move/from16 v24, v2

    :try_start_0
    const-string v2, "IMMS.startInputOrWindowGainedFocus"

    invoke-static {v10, v11, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-wide/from16 v25, v10

    :try_start_1
    const-string v10, "InputMethodManagerService#startInputOrWindowGainedFocus"

    iget-object v11, v15, Lcom/android/server/inputmethod/InputMethodManagerService;->mDumper:Lcom/android/server/inputmethod/InputMethodManagerService$1;

    invoke-virtual {v2, v10, v11}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V

    const-class v27, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v27
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static/range {v24 .. v24}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    const/4 v10, 0x1

    if-nez v2, :cond_5

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move/from16 v2, v24

    :goto_2
    move/from16 v22, v16

    move/from16 v16, v13

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_11

    :cond_5
    :goto_3
    iput-boolean v10, v15, Lcom/android/server/inputmethod/InputMethodManagerService;->misSecurefolderIdOrDualAppId:Z

    const/4 v2, 0x0

    goto :goto_2

    :goto_4
    iget-object v13, v8, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-boolean v10, v15, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v10, :cond_6

    new-instance v28, Lcom/android/internal/inputmethod/InputBindResult;

    iget-object v0, v13, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    iget v2, v13, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v35, 0x0

    const/16 v29, 0x8

    const/16 v30, 0x0

    move-object/from16 v33, v0

    move/from16 v34, v2

    invoke-direct/range {v28 .. v35}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/inputmethod/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;IZ)V

    monitor-exit v27
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static/range {v25 .. v26}, Landroid/os/Trace;->traceEnd(J)V

    move/from16 v39, v24

    move-object/from16 v0, v28

    goto/16 :goto_b

    :cond_6
    :try_start_3
    iget-object v10, v15, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/inputmethod/ClientController;->getClient(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ClientState;

    move-result-object v10

    if-eqz v10, :cond_18

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v29
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-boolean v7, v15, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-nez v7, :cond_a

    iget-object v7, v15, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    if-eqz v7, :cond_a

    iget v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mToUserId:I

    if-ne v2, v0, :cond_7

    iget-object v0, v10, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {v15, v2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->USER_SWITCHING:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_5
    monitor-exit v27
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static/range {v25 .. v26}, Landroid/os/Trace;->traceEnd(J)V

    move/from16 v39, v24

    goto/16 :goto_b

    :catchall_1
    move-exception v0

    goto/16 :goto_10

    :cond_7
    :try_start_6
    iget-object v0, v15, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    iget v3, v15, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/UserManagerInternal;->getProfileIds(IZ)[I

    move-result-object v0

    array-length v3, v0

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v3, :cond_9

    aget v4, v0, v11

    if-ne v4, v2, :cond_8

    iget-object v0, v10, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {v15, v2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->USER_SWITCHING:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_9
    :try_start_8
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_USER:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    :cond_a
    :try_start_a
    iget-object v7, v15, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v11, v10, Lcom/android/server/inputmethod/ClientState;->mUid:I

    move/from16 v31, v12

    iget v12, v10, Lcom/android/server/inputmethod/ClientState;->mPid:I

    move-object/from16 v32, v13

    iget v13, v10, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    invoke-virtual {v7, v5, v11, v12, v13}, Lcom/android/server/wm/WindowManagerInternal;->hasInputMethodClientFocus(Landroid/os/IBinder;III)I

    move-result v7

    const/4 v11, -0x3

    if-eq v7, v11, :cond_13

    const/4 v11, -0x2

    if-eq v7, v11, :cond_11

    const/4 v4, -0x1

    if-eq v7, v4, :cond_10

    iget-object v4, v15, Lcom/android/server/inputmethod/InputMethodManagerService;->mImePlatformCompatUtils:Lcom/android/server/inputmethod/ImePlatformCompatUtils;

    iget v6, v10, Lcom/android/server/inputmethod/ClientState;->mUid:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    iget-object v4, v4, Lcom/android/server/inputmethod/ImePlatformCompatUtils;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    const-wide/32 v11, 0xcc1a029

    invoke-interface {v4, v11, v12, v6}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabledByUid(JI)Z

    move-result v4
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_7

    :catch_0
    const/4 v4, 0x0

    :goto_7
    :try_start_c
    iget-object v6, v8, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    iget-boolean v7, v6, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    iget-object v11, v8, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v11, v11, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    if-eq v11, v5, :cond_b

    if-eqz v7, :cond_b

    if-eqz v4, :cond_b

    const/4 v4, 0x0

    iput-boolean v4, v6, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    :cond_b
    iget-boolean v4, v15, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-nez v4, :cond_d

    iget v4, v15, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    if-eq v2, v4, :cond_d

    iget-object v0, v15, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v3, 0x0

    invoke-virtual {v0, v4, v3}, Lcom/android/server/pm/UserManagerInternal;->getProfileIds(IZ)[I

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v10, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {v15, v2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->USER_SWITCHING:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_5

    :cond_c
    :try_start_e
    const-string v0, "InputMethodManagerService"

    const-string v3, "A background user is requesting window. Hiding IME."

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InputMethodManagerService"

    const-string v3, "If you need to impersonate a foreground user/profile from a background user, use EditorInfo.targetInputMethodUser with INTERACT_ACROSS_USERS_FULL permission."

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v8, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v0, v0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v5, 0x0

    invoke-virtual {v15, v3, v2, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(IIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v18

    const/16 v20, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v0

    move/from16 v22, v2

    move/from16 v21, v3

    move-object/from16 v16, v15

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;II)Z

    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_USER:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_5

    :cond_d
    move-object v2, v15

    if-eqz v9, :cond_e

    :try_start_10
    iget-object v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget v6, v10, Lcom/android/server/inputmethod/ClientState;->mUid:I

    iget-object v7, v9, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v35

    const-wide/16 v36, 0x0

    move-object/from16 v33, v4

    move/from16 v34, v6

    move-object/from16 v38, v7

    invoke-virtual/range {v33 .. v38}, Landroid/content/pm/PackageManagerInternal;->isSameApp(IIJLjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v10, Lcom/android/server/inputmethod/ClientState;->mUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_PACKAGE_NAME:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :try_start_11
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_5

    :cond_e
    move-object v15, v10

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    move-object/from16 v10, v20

    move-object/from16 v11, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    move/from16 v39, v24

    move/from16 v12, v31

    move-object/from16 v13, v32

    :try_start_12
    invoke-virtual/range {v2 .. v16}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputOrWindowGainedFocusInternalLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;ILcom/android/server/inputmethod/InputMethodBindingController;Landroid/window/ImeOnBackInvokedDispatcher;Lcom/android/server/inputmethod/ClientState;Z)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    move/from16 v16, v3

    move-object/from16 v23, v4

    move/from16 v19, v8

    :try_start_13
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v27
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    if-nez v2, :cond_f

    :try_start_14
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v16 .. v16}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " windowFlags=#"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " editorInfo="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NULL:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :goto_8
    invoke-static/range {v25 .. v26}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_b

    :catchall_2
    move-exception v0

    goto/16 :goto_12

    :cond_f
    invoke-static/range {v25 .. v26}, Landroid/os/Trace;->traceEnd(J)V

    move-object v0, v2

    goto/16 :goto_b

    :cond_10
    move-object v15, v10

    move/from16 v39, v24

    :try_start_15
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v2, "Focus gain on non-focused client %s (uid=%s pid=%s)"

    iget-object v3, v15, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iget v4, v15, Lcom/android/server/inputmethod/ClientState;->mUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v15, Lcom/android/server/inputmethod/ClientState;->mPid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v15, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Lcom/android/server/inputmethod/ClientState;->mUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Lcom/android/server/inputmethod/ClientState;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NOT_IME_TARGET_WINDOW:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :try_start_16
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_9
    monitor-exit v27
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto :goto_8

    :cond_11
    move-object v0, v5

    move-object v15, v10

    move/from16 v16, v22

    move/from16 v39, v24

    const/4 v5, 0x0

    :try_start_17
    const-string v2, "InputMethodManagerService"

    const-string/jumbo v3, "startInputOrWindowGainedFocusInternal: display ID mismatch."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v16 .. v16}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " clientState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " editorInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " startInputFlags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputFlagsToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " softInputMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " windowFlags=#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " sameWindowFocused="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v4, v4, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    if-ne v4, v0, :cond_12

    const/4 v10, 0x1

    goto :goto_a

    :cond_12
    move v10, v5

    :goto_a
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->DISPLAY_ID_MISMATCH:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    :try_start_18
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto :goto_9

    :cond_13
    move/from16 v39, v24

    :try_start_19
    const-string v0, "InputMethodManagerService"

    const-string/jumbo v2, "startInputOrWindowGainedFocus: invalid display ID."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_DISPLAY_ID:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    :try_start_1a
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto :goto_9

    :goto_b
    const-string v2, "Client that requested startInputOrWindowGainedFocus is no longer bound. InputBindResult: "

    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v3

    :try_start_1b
    iget-object v4, v1, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast v4, Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/inputmethod/ClientController;->getClient(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ClientState;

    move-result-object v4

    if-eqz v4, :cond_15

    iget-object v2, v4, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iget-boolean v4, v2, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v4, :cond_14

    move/from16 v4, p0

    invoke-virtual {v2, v0, v4}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onStartInputResultInternal(Lcom/android/internal/inputmethod/InputBindResult;I)V

    goto :goto_c

    :cond_14
    move/from16 v4, p0

    new-instance v5, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v0, v4, v6}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/InputBindResult;II)V

    iget-object v2, v2, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c

    :catchall_3
    move-exception v0

    goto :goto_f

    :cond_15
    move/from16 v4, p0

    const-string v5, "InputMethodManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for startInputSeq: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    iget v0, v0, Lcom/android/internal/inputmethod/InputBindResult;->result:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    iget-object v0, v1, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService;

    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    :try_start_1c
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/inputmethod/ClientController;->getClient(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ClientState;

    move-result-object v2

    if-eqz v2, :cond_16

    move/from16 v3, v39

    invoke-virtual {v0, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/inputmethod/ClientState;I)V

    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V

    goto :goto_d

    :catchall_4
    move-exception v0

    goto :goto_e

    :cond_16
    :goto_d
    monitor-exit v1

    return-void

    :goto_e
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    throw v0

    :cond_17
    return-void

    :goto_f
    :try_start_1d
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    throw v0

    :goto_10
    :try_start_1e
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_11
    monitor-exit v27
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    :try_start_1f
    throw v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    :catchall_5
    move-exception v0

    move-wide/from16 v25, v10

    :goto_12
    invoke-static/range {v25 .. v26}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method
