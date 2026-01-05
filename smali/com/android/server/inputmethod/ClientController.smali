.class public final Lcom/android/server/inputmethod/ClientController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCallbacks:Ljava/util/List;

.field public final mClients:Landroid/util/ArrayMap;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManagerInternal;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/ClientController;->mClients:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/ClientController;->mCallbacks:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/inputmethod/ClientController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-void
.end method


# virtual methods
.method public final addClient(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/IRemoteInputConnection;III)V
    .locals 7

    new-instance v6, Lcom/android/server/inputmethod/ClientController$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, p1}, Lcom/android/server/inputmethod/ClientController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/ClientController;Lcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    iget-object v0, p0, Lcom/android/server/inputmethod/ClientController;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/android/server/inputmethod/ClientController;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/ClientState;

    iget v4, v3, Lcom/android/server/inputmethod/ClientState;->mUid:I

    if-ne v4, p4, :cond_1

    iget v4, v3, Lcom/android/server/inputmethod/ClientState;->mPid:I

    if-ne v4, p5, :cond_1

    iget v3, v3, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    if-eq v3, p3, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "uid="

    const-string p2, "/pid="

    const-string v0, "/displayId="

    invoke-static {p4, p5, p1, p2, v0}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is already registered"

    invoke-static {p3, p1, p2}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p1, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v6, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/android/server/inputmethod/ClientState;

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/inputmethod/ClientState;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/IRemoteInputConnection;IIILcom/android/server/inputmethod/ClientController$$ExternalSyntheticLambda0;)V

    iget-object p0, p0, Lcom/android/server/inputmethod/ClientController;->mClients:Landroid/util/ArrayMap;

    iget-object p1, v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final forAllClients(Ljava/util/function/Consumer;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/inputmethod/ClientController;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/inputmethod/ClientController;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/ClientState;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getClient(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ClientState;
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/ClientController;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/inputmethod/ClientState;

    return-object p0
.end method

.method public removeClient(Lcom/android/internal/inputmethod/IInputMethodClient;)Z
    .locals 0

    invoke-interface {p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ClientController;->removeClientAsBinder(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public final removeClientAsBinder(Landroid/os/IBinder;)Z
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/inputmethod/ClientController;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/ClientState;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v3, v1, Lcom/android/server/inputmethod/ClientState;->mClientDeathRecipient:Lcom/android/server/inputmethod/ClientController$$ExternalSyntheticLambda0;

    invoke-interface {p1, v3, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move p1, v2

    :goto_0
    iget-object v3, p0, Lcom/android/server/inputmethod/ClientController;->mCallbacks:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/inputmethod/ClientController;->mCallbacks:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda8;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v4, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v4, v1, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iput-boolean v2, v1, Lcom/android/server/inputmethod/ClientState;->mSessionRequested:Z

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V

    new-instance v4, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda17;

    invoke-direct {v4, v3, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/ClientState;)V

    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

    invoke-virtual {v3, v4}, Lcom/android/server/inputmethod/UserDataRepository;->forAllUserData(Ljava/util/function/Consumer;)V

    add-int/2addr p1, v0

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final verifyClientAndPackageMatch(Lcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/inputmethod/ClientController;->mClients:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/ClientState;

    if-eqz v0, :cond_0

    const-wide/16 v4, 0x0

    iget v2, v0, Lcom/android/server/inputmethod/ClientState;->mUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iget-object v1, p0, Lcom/android/server/inputmethod/ClientController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->isSameApp(IIJLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "unknown client "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
