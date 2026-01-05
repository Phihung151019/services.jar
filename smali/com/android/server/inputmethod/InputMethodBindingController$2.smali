.class public final Lcom/android/server/inputmethod/InputMethodBindingController$2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodBindingController;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodBindingController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    const-string v0, "Initiating attach with token: "

    const-string v1, "IMMS.onServiceConnected"

    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p2}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethod;

    move-result-object p2

    const/4 v4, 0x0

    if-nez p2, :cond_0

    move-object v5, v4

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Lcom/android/server/inputmethod/IInputMethodInvoker;

    invoke-direct {v5, p2}, Lcom/android/server/inputmethod/IInputMethodInvoker;-><init>(Lcom/android/internal/inputmethod/IInputMethod;)V

    :goto_0
    iput-object v5, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController$2;->updateCurrentMethodUid()V

    const-string p1, "InputMethodBindingController"

    const-string/jumbo p2, "onServiceConnected"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    if-nez p1, :cond_1

    const-string p1, "InputMethodBindingController"

    const-string/jumbo p2, "Service connected without a token!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    const-string p1, "InputMethodBindingController"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget p1, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object p2, p2, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-boolean p2, p2, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsStylusHw:Z

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->supportsStylusHandwriting()Z

    move-result v0

    const/4 v5, 0x0

    if-eq p2, v0, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    move p2, v5

    :goto_1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->supportsStylusHandwriting()Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsStylusHw:Z

    if-eqz p2, :cond_3

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->invalidateLocalStylusHandwritingAvailabilityCaches()V

    :cond_3
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-boolean p2, p2, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsConnectionlessStylusHw:Z

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->supportsConnectionlessStylusHandwriting()Z

    move-result v0

    if-eq p2, v0, :cond_4

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->supportsConnectionlessStylusHandwriting()Z

    move-result p1

    iput-boolean p1, p2, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsConnectionlessStylusHw:Z

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->invalidateLocalConnectionlessStylusHandwritingAvailabilityCaches()V

    :cond_4
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object p2, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    iget-object v6, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {p2, v0, v6, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->initializeImeLocked(Lcom/android/server/inputmethod/IInputMethodInvoker;Landroid/os/IBinder;Lcom/android/server/inputmethod/InputMethodBindingController;)V

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object p2, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget p1, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethodUid:I

    iget-object v0, p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x1b58

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p2, p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v6, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object p2, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget p1, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    invoke-virtual {p2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    iget-object v6, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz v6, :cond_5

    iget-object v7, v6, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {p2, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V

    iput-object v4, v6, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iput-boolean v5, v6, Lcom/android/server/inputmethod/ClientState;->mSessionRequested:Z

    iget-object v4, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V

    iget-object v4, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    invoke-virtual {p2, v4, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/inputmethod/ClientState;I)V

    iget-object p1, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V

    :cond_5
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mAutofillController:Lcom/android/server/inputmethod/AutofillSuggestionsController;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/AutofillSuggestionsController;->performOnCreateInlineSuggestionsRequest()V

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " must have been a BinderProxy."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleResetStylusHandwriting()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    const-string/jumbo v0, "onServiceDisconnected: mLastBindTime="

    const-string/jumbo v1, "Service disconnected: "

    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v2

    :try_start_0
    const-string v3, "InputMethodBindingController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mCurIntent="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    if-eqz v3, :cond_0

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mLastBindTime:J

    const-string p1, "InputMethodBindingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-wide v3, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mLastBindTime:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->clearCurMethodAndSessions()V

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget p1, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    const/4 v0, 0x3

    invoke-virtual {p1, v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(II)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateCurrentMethodUid()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodBindingController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget v1, v1, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    if-gez v1, :cond_0

    const-string v1, "Failed to get UID for package="

    const-string v2, "InputMethodBindingController"

    invoke-static {v1, v0, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethodUid:I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    iput v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethodUid:I

    return-void
.end method
