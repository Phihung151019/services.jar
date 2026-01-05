.class public final Lcom/android/server/accessibility/ProxyManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mA11yInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

.field public final mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

.field public mAppsOnVirtualDeviceListener:Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda3;

.field public final mContext:Landroid/content/Context;

.field public final mLastStates:Landroid/util/SparseIntArray;

.field public mLocalVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

.field public final mLock:Ljava/lang/Object;

.field public final mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

.field public final mProxyA11yServiceConnections:Landroid/util/SparseArray;

.field public final mSystemSupport:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

.field public mVirtualDeviceListener:Lcom/android/server/accessibility/ProxyManager$2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ProxyManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityWindowManager;Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;Lcom/android/server/accessibility/UiAutomationManager;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLastStates:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/accessibility/ProxyManager;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iput-object p3, p0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    iput-object p5, p0, Lcom/android/server/accessibility/ProxyManager;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    iput-object p6, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-class p1, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager;->mLocalVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    return-void
.end method

.method public static printClientsForDeviceId(Ljava/io/PrintWriter;Landroid/os/RemoteCallbackList;I)V
    .locals 4

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    iget v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    if-ne v2, p2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "            "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mPackageNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\n"

    invoke-static {p0, v1, v3, v2}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final broadcastToClientsLocked(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserState()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->broadcastForEachCookie(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->broadcastForEachCookie(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final clearConnectionAndUpdateState(I)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    iget v1, v1, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    const-class v5, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/companion/virtual/VirtualDeviceManager;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/server/accessibility/ProxyManager;->mVirtualDeviceListener:Lcom/android/server/accessibility/ProxyManager$2;

    invoke-virtual {v4, v5}, Landroid/companion/virtual/VirtualDeviceManager;->unregisterVirtualDeviceListener(Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;)V

    :cond_1
    :goto_0
    move v4, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_2
    const/4 v1, -0x1

    move v4, v3

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_6

    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    if-eqz v6, :cond_3

    iput-boolean v3, v6, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mIsProxy:Z

    :cond_3
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resetHasProxyIfNeededLocked()V

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v5, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;

    const/4 v6, 0x3

    invoke-direct {v5, p0, p1, v6}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/accessibility/ProxyManager;II)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyManager;->getLocalVdm()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/android/server/accessibility/ProxyManager;->mAppsOnVirtualDeviceListener:Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda3;

    if-eqz v5, :cond_4

    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;

    iget-object v6, v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    iget-object v6, v6, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v3, v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->mAppsOnVirtualDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v3, 0x0

    :try_start_4
    iput-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mAppsOnVirtualDeviceListener:Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda3;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p0

    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v5, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {v3, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->resetClientsLocked(ILandroid/os/RemoteCallbackList;)V

    iget-object v5, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->resetClientsLocked(ILandroid/os/RemoteCallbackList;)V

    invoke-virtual {v3, v2, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onClientChangeLocked(ZZ)V

    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mLastStates:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    monitor-exit v0

    goto :goto_4

    :goto_3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0

    :cond_5
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/ProxyManager;->onProxyChanged(IZ)V

    goto :goto_4

    :catchall_3
    move-exception p0

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0

    :cond_6
    :goto_4
    sget-boolean p0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz p0, :cond_7

    const-string/jumbo p0, "ProxyManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unregistered proxy for display id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v4

    :goto_5
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0
.end method

.method public final computeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v3, :cond_5

    iget v4, v3, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    iget v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    if-ne v4, v5, :cond_5

    iget-boolean v4, v3, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    const/16 v5, 0x20

    const v6, 0x41b83d

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    move v4, v5

    :goto_1
    iget v3, v3, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    or-int/2addr v3, v4

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    iget-object v4, v3, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v7, v3, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v7, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    invoke-virtual {v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v4

    :goto_2
    invoke-static {v4, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->isClientInPackageAllowlist(Landroid/accessibilityservice/AccessibilityServiceInfo;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v3, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-object v3, v3, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    iget-boolean v4, v3, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    if-eqz v4, :cond_3

    move v5, v6

    :cond_3
    iget v3, v3, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    or-int/2addr v3, v5

    goto :goto_4

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_4
    :goto_3
    move v3, v0

    :goto_4
    or-int/2addr v2, v3

    goto :goto_5

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_5
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    sget-boolean p0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz p0, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Relevant event types for device id "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "ProxyManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v2
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const-string v0, "    Number of proxy connections: "

    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v2, "Proxy manager state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Registered proxy connections:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserState()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v4, :cond_0

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v5, "        User clients for proxy\'s virtual device id"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v5, v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    invoke-static {p2, v0, v5}, Lcom/android/server/accessibility/ProxyManager;->printClientsForDeviceId(Ljava/io/PrintWriter;Landroid/os/RemoteCallbackList;I)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v5, "        Global clients for proxy\'s virtual device id"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v4, v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    invoke-static {p2, v2, v4}, Lcom/android/server/accessibility/ProxyManager;->printClientsForDeviceId(Ljava/io/PrintWriter;Landroid/os/RemoteCallbackList;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getFirstDeviceIdForUidLocked(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyManager;->getLocalVdm()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceIdsForUid(I)Landroid/util/ArraySet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public final getFirstProxyForDeviceIdLocked(I)Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v1, :cond_0

    iget v2, v1, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getInstalledAndEnabledServiceInfosLocked(II)Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v2, :cond_2

    iget v3, v2, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    if-ne v3, p2, :cond_2

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getInstalledAndEnabledServices()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_0
    iget v3, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFeedbackType:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getInstalledAndEnabledServices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget v4, v3, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    and-int/2addr v4, p1

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final getLocalVdm()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLocalVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iput-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLocalVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mLocalVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    return-object p0
.end method

.method public final getRecommendedTimeoutMillisLocked(I)J
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v3, :cond_0

    iget v4, v3, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    if-ne v4, p1, :cond_0

    iget v4, v3, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mInteractiveTimeout:I

    iget v3, v3, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mNonInteractiveTimeout:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1, v2}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getStateLocked(I)I
    .locals 8

    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    iget-object v0, v0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    sget-boolean v5, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    const-string/jumbo v6, "ProxyManager"

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v4, :cond_4

    iget v7, v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    if-ne v7, p1, :cond_4

    iget-boolean v4, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    goto :goto_2

    :cond_1
    move v4, v2

    :goto_2
    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Accessibility is enabled for all proxies: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Touch exploration is enabled for all proxies: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit8 v7, v4, 0x2

    if-eqz v7, :cond_2

    move v7, v2

    goto :goto_3

    :cond_2
    move v7, v1

    :goto_3
    invoke-static {v6, v5, v7}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_3
    or-int/2addr v0, v4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    if-eqz v5, :cond_8

    const-string p0, "For device id "

    const-string v3, " a11y is enabled: "

    invoke-static {p1, p0, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_6

    move v4, v2

    goto :goto_4

    :cond_6
    move v4, v1

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " touch exploration is enabled: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 p0, v0, 0x2

    if-eqz p0, :cond_7

    move v1, v2

    :cond_7
    invoke-static {v6, v3, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_8
    return v0
.end method

.method public final isProxyedDeviceId(I)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->getFirstProxyForDeviceIdLocked(I)Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string/jumbo p0, "ProxyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Tracking device "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_0
    return v0
.end method

.method public final isProxyedDisplay(I)Z
    .locals 4

    const-string/jumbo v0, "Tracking proxy display "

    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    sget-boolean v2, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ProxyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return p0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public notifyProxyOfRunningAppsChange(Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ProxyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "notifyProxyOfRunningAppsChange: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyManager;->getLocalVdm()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object v1

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v4, :cond_4

    iget v4, v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceIdsForUid(I)Landroid/util/ArraySet;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/ProxyManager;->onProxyChanged(IZ)V

    goto :goto_2

    :cond_6
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onProxyChanged(IZ)V
    .locals 4

    sget-boolean v0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v1, "ProxyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onProxyChanged called for deviceId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserState()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/accessibility/ProxyManager;->updateDeviceIdsIfNeededLocked(ILandroid/os/RemoteCallbackList;)V

    invoke-virtual {p0, p1, v2}, Lcom/android/server/accessibility/ProxyManager;->updateDeviceIdsIfNeededLocked(ILandroid/os/RemoteCallbackList;)V

    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateWindowsForAccessibilityCallbackLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;

    const/4 v3, 0x2

    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/accessibility/ProxyManager;II)V

    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/ProxyManager;->scheduleUpdateProxyClientsIfNeededLocked(IZ)V

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->scheduleNotifyProxyClientsOfServicesStateChangeLocked(I)V

    if-eqz v0, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Update proxy focus appearance at device id "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "ProxyManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->getFirstProxyForDeviceIdLocked(I)Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p2, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0, p1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/accessibility/ProxyManager;Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;)V

    iget-object p1, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyClearAccessibilityCacheLocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final registerProxy(Landroid/accessibilityservice/IAccessibilityServiceClient;IILcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    sget-boolean v3, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "ProxyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Register proxy for display id: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, v0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    const-class v4, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/virtual/VirtualDeviceManager;

    if-nez v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {v3, v2}, Landroid/companion/virtual/VirtualDeviceManager;->getDeviceIdForDisplayId(I)I

    move-result v3

    new-instance v8, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v8}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    const/4 v4, 0x3

    invoke-virtual {v8, v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setCapabilities(I)V

    const-string/jumbo v4, "ProxyClass"

    invoke-static {v2, v4}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/ComponentName;

    const-string/jumbo v6, "ProxyPackage"

    invoke-direct {v5, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setComponentName(Landroid/content/ComponentName;)V

    new-instance v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    iget-object v6, v0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    iget-object v10, v0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    iget-object v11, v0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/server/accessibility/ProxyManager;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    move-object/from16 v17, v5

    const/4 v5, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    move/from16 v9, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    invoke-direct/range {v4 .. v18}, Lcom/android/server/accessibility/AccessibilityServiceConnection;-><init>(Lcom/android/server/accessibility/AccessibilityUserState;Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;Lcom/android/server/wm/ActivityTaskManagerInternal;)V

    iput v2, v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDisplayId:I

    const/4 v5, 0x2

    iput v5, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mDisplayTypes:I

    iget-object v5, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050011

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mFocusStrokeWidth:I

    iget-object v5, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10600f4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mFocusColor:I

    iput v3, v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    iget-object v3, v0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v5, v0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v5, v0, Lcom/android/server/accessibility/ProxyManager;->mAppsOnVirtualDeviceListener:Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda3;

    if-nez v5, :cond_2

    new-instance v5, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda3;

    invoke-direct {v5, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/accessibility/ProxyManager;)V

    iput-object v5, v0, Lcom/android/server/accessibility/ProxyManager;->mAppsOnVirtualDeviceListener:Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda3;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ProxyManager;->getLocalVdm()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v6, v0, Lcom/android/server/accessibility/ProxyManager;->mAppsOnVirtualDeviceListener:Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda3;

    check-cast v5, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;

    iget-object v7, v5, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    iget-object v7, v7, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, v5, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->mAppsOnVirtualDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_0
    iget-object v5, v0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    iget-object v5, v0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    const-class v6, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/companion/virtual/VirtualDeviceManager;

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    iget-object v6, v0, Lcom/android/server/accessibility/ProxyManager;->mVirtualDeviceListener:Lcom/android/server/accessibility/ProxyManager$2;

    if-nez v6, :cond_4

    new-instance v6, Lcom/android/server/accessibility/ProxyManager$2;

    invoke-direct {v6, v0}, Lcom/android/server/accessibility/ProxyManager$2;-><init>(Lcom/android/server/accessibility/ProxyManager;)V

    iput-object v6, v0, Lcom/android/server/accessibility/ProxyManager;->mVirtualDeviceListener:Lcom/android/server/accessibility/ProxyManager$2;

    :cond_4
    iget-object v6, v0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/accessibility/ProxyManager;->mVirtualDeviceListener:Lcom/android/server/accessibility/ProxyManager$2;

    invoke-virtual {v5, v6, v7}, Landroid/companion/virtual/VirtualDeviceManager;->registerVirtualDeviceListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;)V

    :cond_5
    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    new-instance v3, Lcom/android/server/accessibility/ProxyManager$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/server/accessibility/ProxyManager$1;-><init>(Lcom/android/server/accessibility/ProxyManager;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V

    invoke-interface {v1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v3, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v3, v0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v5, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;

    invoke-direct {v5, v0, v2, v6}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/accessibility/ProxyManager;II)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-object v1, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClientBinder:Landroid/os/IBinder;

    iget-object v0, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget v1, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    iget-object v3, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-interface {v0, v4, v1, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V

    return-void

    :goto_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final scheduleNotifyProxyClientsOfServicesStateChangeLocked(I)V
    .locals 2

    sget-boolean v0, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Notify services state change at device id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ProxyManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/accessibility/ProxyManager;II)V

    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final scheduleUpdateProxyClientsIfNeededLocked(IZ)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->getStateLocked(I)I

    move-result v0

    sget-boolean v1, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "State for device id "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "ProxyManager"

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Last state for device id "

    invoke-static {p1, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mLastStates:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "force update: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mLastStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, v0, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/server/accessibility/ProxyManager;->mLastStates:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    new-instance p2, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/ProxyManager;II)V

    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setLocalVirtualDeviceManager(Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager;->mLocalVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    return-void
.end method

.method public final updateDeviceIdsIfNeededLocked(ILandroid/os/RemoteCallbackList;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyManager;->getLocalVdm()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p2, v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    if-eqz p1, :cond_4

    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    iget v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mUid:I

    invoke-virtual {p0, v3}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceIdsForUid(I)Landroid/util/ArraySet;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    iget v4, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    const-string v5, " are "

    const-string/jumbo v6, "ProxyManager"

    sget-boolean v7, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    iget-object v8, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mPackageNames:[Ljava/lang/String;

    if-eq v4, p1, :cond_3

    if-eqz v3, :cond_3

    if-eqz v7, :cond_2

    const-string/jumbo v3, "Packages moved to device id "

    invoke-static {p1, v3, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput p1, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    goto :goto_1

    :cond_3
    if-ne v4, p1, :cond_4

    if-nez v3, :cond_4

    iput v0, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    if-eqz v7, :cond_4

    const-string/jumbo v2, "Packages moved to the default device from device id "

    invoke-static {p1, v2, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method
