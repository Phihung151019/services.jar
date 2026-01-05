.class public final Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;
.super Landroid/app/ambientcontext/IAmbientContextManager$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-direct {p0}, Landroid/app/ambientcontext/IAmbientContextManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkStatusCode(Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;[I)I
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getServiceType()Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    move-result-object v0

    sget-object v1, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;->DEFAULT:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    const/4 v2, 0x3

    const-string v3, "AmbientContextManagerService"

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    iget-boolean v0, v0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mIsServiceEnabled:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->DEFAULT_EVENT_SET:Ljava/util/Set;

    const-string/jumbo p0, "Service not enabled."

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getServiceType()Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    move-result-object p1

    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;->WEARABLE:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    iget-boolean p1, p1, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mIsWearableServiceEnabled:Z

    if-nez p1, :cond_1

    sget-object p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->DEFAULT_EVENT_SET:Ljava/util/Set;

    const-string/jumbo p0, "Wearable Service not available."

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-static {p0, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$mcontainsMixedEvents(Lcom/android/server/ambientcontext/AmbientContextManagerService;[I)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "AmbientContextEventRequest contains mixed events, this is not supported."

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    iget-object p1, p1, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mContext:Landroid/content/Context;

    sget-object p3, Lcom/android/server/ambientcontext/AmbientContextManagerService;->DEFAULT_EVENT_SET:Ljava/util/Set;

    const-string p3, "AmbientContextManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->dumpLocked(Ljava/io/PrintWriter;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;

    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;-><init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;)V

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

.method public final queryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 5

    const-string/jumbo v0, "queryServiceStatus unavailable user_id: "

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    iget-object v1, v1, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    sget-object v3, Lcom/android/server/ambientcontext/AmbientContextManagerService;->DEFAULT_EVENT_SET:Ljava/util/Set;

    const-string v3, "AmbientContextManagerService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-static {p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->intArrayToIntegerSet([I)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->getAmbientContextManagerPerUserServiceForEventTypes(ILjava/util/Set;)Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "AmbientContextManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->checkStatusCode(Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;[I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->onQueryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p3}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->sendStatusCallback(ILandroid/os/RemoteCallback;)V

    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final registerObserver(Landroid/app/ambientcontext/AmbientContextEventRequest;Landroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    .locals 4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/ambientcontext/AmbientContextEventRequest;->getEventTypes()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lcom/android/server/ambientcontext/AmbientContextManagerService;->DEFAULT_EVENT_SET:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->getAmbientContextManagerPerUserServiceForEventTypes(ILjava/util/Set;)Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    move-result-object v0

    new-instance v1, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal$1;

    invoke-direct {v1, v0, p2, p3}, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal$1;-><init>(Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;Landroid/app/PendingIntent;Landroid/os/RemoteCallback;)V

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->registerObserverWithCallback(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V

    return-void
.end method

.method public final registerObserverWithCallback(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V
    .locals 7

    const/4 v0, 0x1

    sget-object v1, Lcom/android/server/ambientcontext/AmbientContextManagerService;->DEFAULT_EVENT_SET:Ljava/util/Set;

    const-string v1, "AmbientContextManagerService"

    const-string v2, "AmbientContextManagerService registerObserverWithCallback."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    iget-object v2, v2, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {v2, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {p1}, Landroid/app/ambientcontext/AmbientContextEventRequest;->getEventTypes()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->getAmbientContextManagerPerUserServiceForEventTypes(ILjava/util/Set;)Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "onRegisterObserver unavailable user_id: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/ambientcontext/AmbientContextEventRequest;->getEventTypes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [I

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v4

    move v4, v6

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->checkStatusCode(Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;[I)I

    move-result p0

    if-ne p0, v0, :cond_2

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->onRegisterObserver(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V

    return-void

    :cond_2
    invoke-static {p3, p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->completeRegistration(Landroid/app/ambientcontext/IAmbientContextObserver;I)V

    return-void
.end method

.method public final startConsentActivity([ILjava/lang/String;)V
    .locals 9

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    sget-object v1, Lcom/android/server/ambientcontext/AmbientContextManagerService;->DEFAULT_EVENT_SET:Ljava/util/Set;

    invoke-virtual {v0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    iget-object v0, v0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    const-string v2, "AmbientContextManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-static {v0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$mcontainsMixedEvents(Lcom/android/server/ambientcontext/AmbientContextManagerService;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "AmbientContextEventRequest contains mixed events, this is not supported."

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->intArrayToIntegerSet([I)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->getAmbientContextManagerPerUserServiceForEventTypes(ILjava/util/Set;)Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    move-result-object p0

    if-eqz p0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Opening consent activity of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmbientContextManagerPerUserService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v0}, Landroid/app/IActivityTaskManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Recent task package name: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t match with client package name: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getConsentComponentConfig()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Consent component name: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_4

    const-string p0, "Consent component not found!"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string/jumbo v4, "Starting consent activity for "

    invoke-virtual {v4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getAmbientContextPackageNameExtraKeyConfig()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getAmbientContextEventArrayExtraKeyConfig()I

    move-result p0

    invoke-virtual {v8, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v7, :cond_5

    invoke-virtual {v4, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_5
    const-string/jumbo p2, "Missing packageNameExtraKey for consent activity"

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz p0, :cond_6

    invoke-virtual {v4, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    goto :goto_2

    :cond_6
    const-string/jumbo p0, "Missing eventArrayExtraKey for consent activity"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p0

    iget p1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v2}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v2, v4, p0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_0
    :try_start_2
    const-string/jumbo p0, "unable to start consent activity"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5

    :goto_3
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_7
    :goto_4
    const-string/jumbo p0, "Recent task list is empty!"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    const-string p0, "Failed to query recent tasks!"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void

    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "startConsentActivity unavailable user_id: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final unregisterObserver(Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Landroid/app/ambientcontext/IAmbientContextManager$Stub;->unregisterObserver_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    sget-object v1, Lcom/android/server/ambientcontext/AmbientContextManagerService;->DEFAULT_EVENT_SET:Ljava/util/Set;

    invoke-virtual {v0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    iget-object v1, v1, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mExistingClientRequests:Ljava/util/Set;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    iget-object v2, v2, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mRequest:Landroid/app/ambientcontext/AmbientContextEventRequest;

    invoke-virtual {v2}, Landroid/app/ambientcontext/AmbientContextEventRequest;->getEventTypes()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->getAmbientContextManagerPerUserServiceForEventTypes(ILjava/util/Set;)Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v2, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->stopDetection(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v4, Lcom/android/server/ambientcontext/AmbientContextManagerService;

    iget v2, v2, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "AmbientContextManagerService"

    const-string/jumbo v6, "Remove client: "

    invoke-virtual {v6, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v4, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mExistingClientRequests:Ljava/util/Set;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v6, v4, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mExistingClientRequests:Ljava/util/Set;

    invoke-virtual {v4, v2, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->findExistingRequests(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v2

    check-cast v6, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {v6, v2}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->removeAll(Ljava/util/Collection;)Z

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p0

    :goto_1
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0

    :cond_1
    sget-object v2, Lcom/android/server/ambientcontext/AmbientContextManagerService;->DEFAULT_EVENT_SET:Ljava/util/Set;

    const-string v2, "AmbientContextManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUnregisterObserver unavailable user_id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_2
    move-exception p0

    goto :goto_2

    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0
.end method
