.class public final Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;
.super Landroid/app/contextualsearch/IContextualSearchManager$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mToken:Landroid/app/contextualsearch/CallbackToken;

.field public mTokenHandler:Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;

.field public final synthetic this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-direct {p0}, Landroid/app/contextualsearch/IContextualSearchManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContextualSearchState(Landroid/os/IBinder;Landroid/app/contextualsearch/IContextualSearchCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mToken:Landroid/app/contextualsearch/CallbackToken;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/contextualsearch/CallbackToken;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->invalidateToken()V

    iget-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    iget-object p1, p1, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    iput-object p2, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mStateCallback:Landroid/app/contextualsearch/IContextualSearchCallback;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    invoke-virtual {p0}, Lcom/android/server/am/AssistDataRequester;->flushPendingAssistData()V

    invoke-virtual {p0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_0
    :try_start_2
    new-instance p0, Landroid/os/ParcelableException;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid token"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p2, p0}, Landroid/app/contextualsearch/IContextualSearchCallback;->onError(Landroid/os/ParcelableException;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "ContextualSearchManagerService"

    const-string p2, "Could not invoke onError callback"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final invalidateToken()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mTokenHandler:Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iput-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mTokenHandler:Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mToken:Landroid/app/contextualsearch/CallbackToken;

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/android/server/contextualsearch/ContextualSearchManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/contextualsearch/ContextualSearchManagerShellCommand;-><init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public final startContextualSearch(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-static {v0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$menforcePermission(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)V

    invoke-virtual {p0, p1}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->startContextualSearchInternal(I)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final startContextualSearchForForegroundApp()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-static {v0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$menforceForegroundApp(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->startContextualSearchInternal(I)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final startContextualSearchInternal(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    iget-object v0, v0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    iget-object v2, v2, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/AssistDataRequester;->mCanceled:Z

    const/4 v4, 0x0

    iput v4, v2, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    iput v4, v2, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    iget-object v4, v2, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v2, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    monitor-enter p0

    :try_start_0
    new-instance v2, Landroid/app/contextualsearch/CallbackToken;

    invoke-direct {v2}, Landroid/app/contextualsearch/CallbackToken;-><init>()V

    iput-object v2, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mToken:Landroid/app/contextualsearch/CallbackToken;

    iget-object v2, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mTokenHandler:Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, p0, v4, v5}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    iput-object v2, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mTokenHandler:Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mTokenHandler:Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;

    iget-object v4, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-wide v5, v4, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTokenValidDurationMs:J

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance v2, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;IILjava/lang/String;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method
