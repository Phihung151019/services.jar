.class public final Lcom/android/server/UiModeManagerService$Stub;
.super Landroid/app/IUiModeManager$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/UiModeManagerService;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p2}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/app/IUiModeManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    return-void
.end method


# virtual methods
.method public final addCallback(Landroid/app/IUiModeManagerCallback;)V
    .locals 4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, v1, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v2, v2, Lcom/android/server/UiModeManagerService;->mUiModeManagerCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v2, v2, Lcom/android/server/UiModeManagerService;->mUiModeManagerCallbacks:Landroid/util/SparseArray;

    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mUiModeManagerCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final addNightPriorityAllowedPackageFromShell(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final addOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;I)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->addOnProjectionStateChangedListener_enforcePermission()V

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->enforceCurrentUserIfVisibleBackgroundEnabled()V

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v2, v1, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    if-nez v2, :cond_1

    new-instance v2, Landroid/util/SparseArray;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, v1, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, v1, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, v1, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, v1, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p0, p2, v1}, Lcom/android/server/UiModeManagerService;->populateWithRelevantActivePackageNames(ILjava/util/List;)I

    move-result p0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_3

    :try_start_1
    invoke-interface {p1, p0, v1}, Landroid/app/IOnProjectionStateChangedListener;->onProjectionStateChanged(ILjava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    sget-object p0, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    const-string/jumbo p0, "UiModeManager"

    const-string p1, "Failed a call to onProjectionStateChanged() during listener registration."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    monitor-exit v0

    :goto_2
    return-void

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final disableCarMode(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/UiModeManagerService$Stub;->disableCarModeByCallingPackage(ILjava/lang/String;)V

    return-void
.end method

.method public final disableCarModeByCallingPackage(ILjava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Stub;->isUiModeLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    const-string/jumbo p0, "UiModeManager"

    const-string/jumbo p1, "disableCarMode while UI mode is locked"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mInjector:Lcom/android/server/UiModeManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    const/16 v4, 0x7d0

    if-ne v0, v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-nez v1, :cond_3

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$massertLegit(Lcom/android/server/UiModeManagerService;Ljava/lang/String;)V

    :cond_3
    if-eqz v1, :cond_4

    move v0, p1

    goto :goto_2

    :cond_4
    and-int/lit8 v0, p1, -0x3

    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v4, v4, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v5, v5, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda2;

    invoke-direct {v6, p2}, Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v6, v0, v5, p2, v3}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(IILjava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz p2, :cond_5

    invoke-virtual {p0, v3, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_5
    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_4
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p3, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    const-string/jumbo p3, "UiModeManager"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object p1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    const-string p3, "Current UI Mode Service state:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "  mDockState="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string p3, " mLastBroadcastState="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(I)V

    const-string p3, " mStartDreamImmediatelyOnDock="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/UiModeManagerService;->mStartDreamImmediatelyOnDock:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    const-string p3, "  mNightMode="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    iget p3, p3, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string p3, " ("

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    iget p3, p3, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    invoke-static {p3, v0}, Lcom/android/server/UiModeManagerService$Shell;->nightModeToStr(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, ") "

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, " mOverrideOn/Off="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    const-string p3, "  mAttentionModeThemeOverlay="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/UiModeManagerService;->mAttentionModeThemeOverlay:I

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string p3, " mNightModeLocked="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    const-string p3, "  mCarModeEnabled="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    const-string p3, " (carModeApps="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    check-cast p3, Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_1
    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, " mWaitForDeviceInactive="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/UiModeManagerService;->mWaitForDeviceInactive:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    const-string p3, " mComputedNightMode="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    const-string p3, " customStart="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string p3, " customEnd"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string p3, " mCarModeEnableFlags="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string p3, " mEnableCarDockLaunch="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    const-string p3, "  mCurUiMode=0x"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:Lcom/android/server/UiModeManagerService$1;

    iget p3, p3, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, " mUiModeLocked="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    const-string p3, " mSetUiMode=0x"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "  mHoldingConfiguration="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    const-string p3, " mSystemReady="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    iget-object p3, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz p3, :cond_2

    const-string p3, "  mTwilightService.getLastTwilightState()="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    check-cast p3, Lcom/android/server/twilight/TwilightService$1;

    invoke-virtual {p3}, Lcom/android/server/twilight/TwilightService$1;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    invoke-static {}, Lcom/android/server/UiModeManagerService;->buildLogString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/UiModeManagerService$LogWrapper;->getLogText()Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p3, "  mNightPriorityAllowedPackagesFromScpm="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/UiModeManagerService;->mNightPriorityAllowedPackagesFromScpm:Ljava/util/List;

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/android/server/UiModeManagerService;->mNightPriorityAppliedPackages:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    const-string v0, "Applied packages"

    const-string v1, "    "

    invoke-virtual {p3, p2, v0, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/UiModeManagerService;->mPackagesNeedToShowDialog:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    const-string/jumbo v0, "Show dialog packages"

    const-string v1, "    "

    invoke-virtual {p3, p2, v0, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "  mDesktopModeEnabled="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mDesktopModeEnabled:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final enableCarMode(IILjava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Stub;->isUiModeLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    const-string/jumbo p0, "UiModeManager"

    const-string/jumbo p1, "enableCarMode while UI mode is locked"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.ENTER_CAR_MODE_PRIORITIZED"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Enabling car mode with a priority requires permission ENTER_CAR_MODE_PRIORITIZED"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mInjector:Lcom/android/server/UiModeManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0, p3}, Lcom/android/server/UiModeManagerService;->-$$Nest$massertLegit(Lcom/android/server/UiModeManagerService;Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v2, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(IILjava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_4
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_3
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getActiveProjectionTypes()I
    .locals 4

    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getActiveProjectionTypes_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, v1, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v3, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v3, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v3, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    or-int/2addr v1, v3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :cond_2
    monitor-exit v0

    return v2

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getAttentionModeThemeOverlay()I
    .locals 1

    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getAttentionModeThemeOverlay_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget p0, p0, Lcom/android/server/UiModeManagerService;->mAttentionModeThemeOverlay:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getContrast()F
    .locals 3

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContrasts:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->updateContrastLocked()Z

    :cond_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContrasts:Landroid/util/SparseArray;

    iget p0, p0, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getCurrentModeType()I
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v2, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:Lcom/android/server/UiModeManagerService$1;

    iget p0, p0, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    and-int/lit8 p0, p0, 0xf

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getCustomNightModeEnd()J
    .locals 4

    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    invoke-virtual {p0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getCustomNightModeStart()J
    .locals 4

    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    invoke-virtual {p0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getForceInvertState()I
    .locals 5

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mForceInvertStates:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mForceInvertStates:Landroid/util/SparseIntArray;

    iget v3, p0, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    const/high16 v4, -0x80000000

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mForceInvertStates:Landroid/util/SparseIntArray;

    iget v3, p0, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mForceInvertStates:Landroid/util/SparseIntArray;

    iget p0, p0, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getNightMode()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    iget p0, p0, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getNightModeCustomType()I
    .locals 1

    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getNightModeCustomType_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget p0, p0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getNightPriorityAllowedPackagesFromScpm()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mNightPriorityAllowedPackagesFromScpm:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mNightPriorityAllowedPackagesFromScpm:Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getPackageNightMode(Ljava/lang/String;I)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    sget-object v1, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    invoke-virtual {v0, p1}, Lcom/android/server/UiModeManagerService;->isNightPriorityAllowedLocked(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "UiModeManager"

    const/4 v2, -0x1

    if-nez v0, :cond_0

    const-string/jumbo p0, "getPackageNightMode is not allowed for "

    invoke-static {p0, p1, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v0, Lcom/android/server/UiModeManagerService;->mNightPriorityAppliedPackages:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    monitor-enter v3

    :try_start_0
    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mNightPriorityAppliedPackages:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getValue(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/PackageConfigPersister;->findPackageConfiguration(ILjava/lang/String;)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;->mNightMode:Ljava/lang/Integer;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_3
    :goto_1
    const-string/jumbo p0, "getPackageNightMode cannot get config for "

    invoke-static {p0, p1, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_4
    const/4 p0, 0x2

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getProjectingPackages(I)Ljava/util/List;
    .locals 2

    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getProjectingPackages_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/UiModeManagerService;->populateWithRelevantActivePackageNames(ILjava/util/List;)I

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isNightModeLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isUiModeLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/android/server/UiModeManagerService$Shell;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, v1, Lcom/android/server/UiModeManagerService;->mService:Lcom/android/server/UiModeManagerService$Stub;

    invoke-direct {v0, v1}, Lcom/android/server/UiModeManagerService$Shell;-><init>(Lcom/android/server/UiModeManagerService$Stub;)V

    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mService:Lcom/android/server/UiModeManagerService$Stub;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public final releaseProjection(ILjava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$massertLegit(Lcom/android/server/UiModeManagerService;Ljava/lang/String;)V

    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.TOGGLE_AUTOMOTIVE_PROJECTION"

    const-string/jumbo v2, "toggleProjection"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->enforceCurrentUserIfVisibleBackgroundEnabled()V

    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$mreleaseProjectionUnchecked(Lcom/android/server/UiModeManagerService;ILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Must specify exactly one projection type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final removeOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->removeOnProjectionStateChangedListener_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, v1, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v2, v2, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v2, v2, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final requestProjection(Landroid/os/IBinder;ILjava/lang/String;)Z
    .locals 7

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1, p3}, Lcom/android/server/UiModeManagerService;->-$$Nest$massertLegit(Lcom/android/server/UiModeManagerService;Ljava/lang/String;)V

    add-int/lit8 v1, p2, -0x1

    and-int/2addr v1, p2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz p2, :cond_7

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "android.permission.TOGGLE_AUTOMOTIVE_PROJECTION"

    const-string/jumbo v4, "toggleProjection"

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->enforceCurrentUserIfVisibleBackgroundEnabled()V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, v1, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v4, v3, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    if-nez v4, :cond_2

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v4, v3, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v3, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v3, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v3, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move v4, v2

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/UiModeManagerService$ProjectionHolder;

    iget-object v5, v5, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mPackageName:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    monitor-exit v1

    return v0

    :cond_4
    add-int/2addr v4, v0

    goto :goto_2

    :cond_5
    if-ne p2, v0, :cond_6

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    monitor-exit v1

    return v2

    :cond_6
    new-instance v4, Lcom/android/server/UiModeManagerService$ProjectionHolder;

    iget-object v5, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    new-instance v6, Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda1;

    invoke-direct {v6, v5}, Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/UiModeManagerService;)V

    invoke-direct {v4, p3, p2, p1, v6}, Lcom/android/server/UiModeManagerService$ProjectionHolder;-><init>(Ljava/lang/String;ILandroid/os/IBinder;Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1, v4, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    const-string/jumbo p1, "UiModeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " set projection type "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "."

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/UiModeManagerService;->onProjectionStateChangedLocked(I)V

    monitor-exit v1

    return v0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "linkToDeath failed for projection requester: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v4, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "UiModeManager"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v1

    return v2

    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Must specify exactly one projection type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final resetNightPriorityAppliedPackages(I)V
    .locals 0

    return-void
.end method

.method public final setApplicationNightMode(I)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "Unknown mode: "

    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/16 p1, 0x20

    goto :goto_1

    :cond_3
    const/16 p1, 0x10

    :goto_1
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;-><init>(ILcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->setNightMode(I)V

    invoke-virtual {v0}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->commit()Z

    return-void
.end method

.method public final setAttentionModeThemeOverlay(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->setAttentionModeThemeOverlay_enforcePermission()V

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->enforceCurrentUserIfVisibleBackgroundEnabled()V

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget v2, v1, Lcom/android/server/UiModeManagerService;->mAttentionModeThemeOverlay:I

    if-eq v2, p1, :cond_0

    iput p1, v1, Lcom/android/server/UiModeManagerService;->mAttentionModeThemeOverlay:I

    new-instance p1, Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/UiModeManagerService$Stub;)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setCustomNightModeEnd(J)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Stub;->isNightModeLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    const-string/jumbo p0, "UiModeManager"

    const-string/jumbo p1, "Set custom time end, requires MODIFY_DAY_NIGHT_MODE permission"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->enforceCurrentUserIfVisibleBackgroundEnabled()V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr p1, v3

    :try_start_0
    invoke-static {p1, p2}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object p1
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1
    :try_start_1
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iput-object p1, p2, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    invoke-static {p2, v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$monCustomTimeUpdated(Lcom/android/server/UiModeManagerService;I)V
    :try_end_1
    .catch Ljava/time/DateTimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    :try_start_2
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->unregisterDeviceInactiveListenerLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final setCustomNightModeStart(J)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Stub;->isNightModeLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    const-string/jumbo p0, "UiModeManager"

    const-string/jumbo p1, "Set custom time start, requires MODIFY_DAY_NIGHT_MODE permission"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->enforceCurrentUserIfVisibleBackgroundEnabled()V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr p1, v3

    :try_start_0
    invoke-static {p1, p2}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object p1
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1
    :try_start_1
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iput-object p1, p2, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    invoke-virtual {p2, v0}, Lcom/android/server/UiModeManagerService;->persistNightMode(I)V

    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1, v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$monCustomTimeUpdated(Lcom/android/server/UiModeManagerService;I)V
    :try_end_1
    .catch Ljava/time/DateTimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    :try_start_2
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->unregisterDeviceInactiveListenerLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final setDesktopMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mDesktopModeEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setNightMode(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/UiModeManagerService$Stub;->setNightModeInternal(II)V

    return-void
.end method

.method public final setNightModeActivated(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget v0, v0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/UiModeManagerService$Stub;->setNightModeActivatedForModeInternal(IZZ)Z

    move-result p0

    return p0
.end method

.method public final setNightModeActivatedForCustomMode(IZ)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/UiModeManagerService$Stub;->setNightModeActivatedForModeInternal(IZZ)Z

    move-result p0

    return p0
.end method

.method public final setNightModeActivatedForModeInternal(IZZ)Z
    .locals 12

    const/4 v0, 0x1

    const-string/jumbo v1, "setNightModeActivated : "

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object p0, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    const-string/jumbo p0, "UiModeManager"

    const-string/jumbo p1, "Night mode locked, requires MODIFY_DAY_NIGHT_MODE permission"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iget-object v4, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget v5, v4, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    if-eq v2, v5, :cond_1

    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    sget-object p0, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    const-string/jumbo p0, "UiModeManager"

    const-string/jumbo p1, "Target user is not current user, INTERACT_ACROSS_USERS permission is required"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->enforceCurrentUserIfVisibleBackgroundEnabled()V

    if-ne p1, v0, :cond_2

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iput-boolean p2, v2, Lcom/android/server/UiModeManagerService;->mLastBedtimeRequestedNightMode:Z

    :cond_2
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget v4, v2, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    if-eq p1, v4, :cond_3

    return v3

    :cond_3
    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->-$$Nest$mcanSetNightMode(Lcom/android/server/UiModeManagerService;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string/jumbo p1, "UiModeManager"

    const-string p3, "Ignore setNightModeActivated : "

    const-string v0, ", mNightMode "

    invoke-static {p3, v0, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    iget-object v4, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->-$$Nest$mgetPackageName(Lcom/android/server/UiModeManagerService;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string/jumbo v5, "com.samsung.android.lool"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v6, v5, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    iget v6, v6, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    if-nez v6, :cond_5

    iget-object v5, v5, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v5, :cond_5

    check-cast v5, Lcom/android/server/twilight/TwilightService$1;

    invoke-virtual {v5}, Lcom/android/server/twilight/TwilightService$1;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v6

    if-eq p2, v6, :cond_5

    invoke-virtual {v5}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result p2

    const-string/jumbo v5, "UiModeManager"

    const-string/jumbo v6, "setNightModeActivated changes "

    invoke-static {v6, v5, p2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_5
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v5, v5, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v8, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v9, v8, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    iget v10, v9, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    if-eqz v10, :cond_8

    const/4 v11, 0x3

    if-ne v10, v11, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x2

    if-ne v10, v0, :cond_7

    if-eqz p2, :cond_7

    invoke-virtual {v9, v3}, Lcom/android/server/UiModeManagerService$1;->set(I)V

    goto :goto_1

    :cond_7
    if-ne v10, v3, :cond_a

    if-nez p2, :cond_a

    invoke-virtual {v9, v0}, Lcom/android/server/UiModeManagerService$1;->set(I)V

    goto :goto_1

    :cond_8
    :goto_0
    invoke-virtual {v8}, Lcom/android/server/UiModeManagerService;->unregisterDeviceInactiveListenerLocked()V

    iget-object v8, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    xor-int/lit8 v9, p2, 0x1

    iput-boolean v9, v8, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    iput-boolean p2, v8, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    iget v9, v8, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    iput v9, v8, Lcom/android/server/UiModeManagerService;->mOverrideNightModeUser:I

    invoke-virtual {v8, v9}, Lcom/android/server/UiModeManagerService;->persistNightModeOverrides(I)V

    iget-object v8, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v9, v8, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    if-eq v9, p2, :cond_9

    iput-boolean v3, v8, Lcom/android/server/UiModeManagerService;->mWaitForDeviceInactive:Z

    :cond_9
    iput-boolean p2, v8, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    :cond_a
    :goto_1
    if-eqz p3, :cond_b

    iget-object p3, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    const/16 v3, 0x3e8

    iput v3, p3, Lcom/android/server/UiModeManagerService;->mAttentionModeThemeOverlay:I

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_b
    :goto_2
    iget-object p3, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string/jumbo v3, "display_night_theme"

    iget-object v8, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget v8, v8, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    invoke-static {p3, v3, p2, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " by "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mNightMode "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object p1, p1, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mNightModeCustomType "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget p1, p1, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/UiModeManagerService$LogWrapper;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p1}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p1}, Lcom/android/server/UiModeManagerService;->applyConfigurationExternallyLocked()V

    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget p1, p0, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->persistNightMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v5

    return v0

    :catchall_1
    move-exception p0

    goto :goto_4

    :goto_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_4
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final setNightModeCustomType(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->setNightModeCustomType_enforcePermission()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/server/UiModeManagerService$Stub;->setNightModeInternal(II)V

    return-void
.end method

.method public final setNightModeInternal(II)V
    .locals 9

    const-string/jumbo v0, "setNightMode : "

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Stub;->isNightModeLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    const-string/jumbo p0, "UiModeManager"

    const-string/jumbo p1, "Night mode locked, requires MODIFY_DAY_NIGHT_MODE permission"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    if-ne p1, v1, :cond_2

    sget-object v3, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t set the custom type to "

    invoke-static {p2, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "Unknown mode: "

    invoke-static {p1, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    if-eq p1, v2, :cond_4

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$mcanSetNightMode(Lcom/android/server/UiModeManagerService;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo p0, "UiModeManager"

    const-string p2, "Ignore setNightMode : "

    invoke-static {p1, p2, p0}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->enforceCurrentUserIfVisibleBackgroundEnabled()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v5, v5, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v6, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v7, v6, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    iget v7, v7, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    if-ne v7, p1, :cond_5

    iget v8, v6, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    if-eq v8, p2, :cond_d

    :cond_5
    if-eqz v7, :cond_6

    if-ne v7, v1, :cond_7

    :cond_6
    invoke-virtual {v6}, Lcom/android/server/UiModeManagerService;->unregisterDeviceInactiveListenerLocked()V

    iget-object v6, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v7, v6, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v6, v6, Lcom/android/server/UiModeManagerService;->mCustomTimeListener:Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda2;

    invoke-virtual {v7, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_7
    iget-object v6, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    if-ne p1, v1, :cond_8

    move v7, p2

    goto :goto_1

    :cond_8
    const/4 v7, -0x1

    :goto_1
    iput v7, v6, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    iget-object v6, v6, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    invoke-virtual {v6, p1}, Lcom/android/server/UiModeManagerService$1;->set(I)V

    iget-object v6, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v6}, Lcom/android/server/UiModeManagerService;->resetNightModeOverrideLocked()Z

    iget-object v6, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v7, -0x2

    invoke-virtual {v6, v7}, Lcom/android/server/UiModeManagerService;->persistNightMode(I)V

    sget-object v6, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", customModeType : "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", by "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$mgetPackageName(Lcom/android/server/UiModeManagerService;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/UiModeManagerService$LogWrapper;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p1, v7}, Lcom/android/server/UiModeManagerService;->persistNightModeSettingDB(I)V

    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object p2, p1, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    iget p2, p2, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    if-ne p2, v1, :cond_c

    :cond_9
    invoke-virtual {p1}, Lcom/android/server/UiModeManagerService;->shouldApplyAutomaticChangesImmediately()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object p2, p1, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    iget p2, p2, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    if-ne p2, v1, :cond_a

    invoke-static {}, Ljava/time/LocalTime;->now()Ljava/time/LocalTime;

    move-result-object p2

    iget-object v1, p1, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    iget-object v6, p1, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    invoke-static {p2, v1, v6}, Landroid/util/TimeUtils;->isTimeBetween(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;)Z

    move-result p2

    iget-boolean p1, p1, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    xor-int/2addr p1, p2

    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    move v2, v0

    :goto_2
    if-nez v2, :cond_c

    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean p2, p1, Lcom/android/server/UiModeManagerService;->mAutoModeChangeImmediately:Z

    if-eqz p2, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {p1}, Lcom/android/server/UiModeManagerService;->registerDeviceInactiveListenerLocked()V

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_c
    :goto_3
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p1}, Lcom/android/server/UiModeManagerService;->unregisterDeviceInactiveListenerLocked()V

    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p0, v0, v0}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    :cond_d
    :goto_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_5
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final setNightPriorityAllowedPackagesFromScpm(Ljava/util/List;)V
    .locals 4

    const-string/jumbo v0, "setNightPriorityAllowedPackagesFromScpm "

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    const-string/jumbo p0, "UiModeManager"

    const-string/jumbo p1, "setNightPriorityAllowedPackagesFromScpm requires INTERACT_ACROSS_USERS_FULL permission"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    sget-object p0, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    const-string/jumbo p0, "UiModeManager"

    const-string/jumbo p1, "setNightPriorityAllowedPackagesFromScpm received invalid list"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, v1, Lcom/android/server/UiModeManagerService;->mNightPriorityAllowedPackagesFromScpm:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    const-string/jumbo v2, "UiModeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mNightPriorityAllowedPackagesFromScpm:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mNightPriorityAllowedPackagesFromScpm:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setPackageNightMode(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    const-string/jumbo p0, "UiModeManager"

    const-string/jumbo p1, "setPackageNightMode requires MODIFY_DAY_NIGHT_MODE permission"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/UiModeManagerService;->-$$Nest$msetPackageNightModeInnerLocked(Lcom/android/server/UiModeManagerService;Ljava/lang/String;II)Z

    return-void
.end method
