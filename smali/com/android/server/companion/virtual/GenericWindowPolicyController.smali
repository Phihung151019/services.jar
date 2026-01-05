.class public final Lcom/android/server/companion/virtual/GenericWindowPolicyController;
.super Landroid/window/DisplayWindowPolicyController;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final BLOCKED_APP_STREAMING_COMPONENT:Landroid/content/ComponentName;


# instance fields
.field public mActivityLaunchAllowedByDefault:Z

.field public final mActivityListener:Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;

.field public final mActivityPolicyExemptions:Landroid/util/ArraySet;

.field public final mActivityPolicyPackageExemptions:Landroid/util/ArraySet;

.field public final mAllowedUsers:Landroid/util/ArraySet;

.field public final mAttributionSource:Landroid/content/AttributionSource;

.field public final mCrossTaskNavigationAllowedByDefault:Z

.field public final mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

.field public mCurrentWindowFlags:I

.field public final mCustomHomeComponent:Landroid/content/ComponentName;

.field public final mDisplayCategories:Ljava/util/Set;

.field public mDisplayId:I

.field public final mDisplayIdSetLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mGenericWindowPolicyControllerLock:Ljava/lang/Object;

.field public final mHandler:Landroid/os/Handler;

.field public mIsMirrorDisplay:Z

.field public final mRunningAppsChangedListeners:Landroid/util/ArraySet;

.field public final mRunningUids:Landroid/util/ArraySet;

.field public mShowTasksInHostDeviceRecents:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/internal/app/BlockedAppStreamingActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->BLOCKED_APP_STREAMING_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/AttributionSource;Landroid/util/ArraySet;ZLjava/util/Set;Ljava/util/Set;ZLjava/util/Set;Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;Ljava/util/Set;ZLandroid/content/ComponentName;)V
    .locals 3

    invoke-direct {p0}, Landroid/window/DisplayWindowPolicyController;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mIsMirrorDisplay:Z

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayIdSetLatch:Ljava/util/concurrent/CountDownLatch;

    iput v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCurrentWindowFlags:I

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUids:Landroid/util/ArraySet;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListeners:Landroid/util/ArraySet;

    iput-object p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAttributionSource:Landroid/content/AttributionSource;

    iput-object p2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAllowedUsers:Landroid/util/ArraySet;

    iput-boolean p3, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityLaunchAllowedByDefault:Z

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1, p4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1, p5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyPackageExemptions:Landroid/util/ArraySet;

    iput-boolean p6, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCrossTaskNavigationAllowedByDefault:Z

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1, p7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    const/16 p1, 0x2000

    const/high16 p2, 0x80000

    invoke-virtual {p0, p1, p2}, Landroid/window/DisplayWindowPolicyController;->setInterestedWindowFlags(II)V

    iput-object p8, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;

    iput-object p9, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayCategories:Ljava/util/Set;

    iput-boolean p10, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mShowTasksInHostDeviceRecents:Z

    iput-object p11, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCustomHomeComponent:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final canActivityBeLaunched(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;IIZZLjava/util/function/Supplier;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_3

    iget-object v0, v1, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;

    iget-object v5, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    iget-object v5, v5, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mIntentInterceptors:Ljava/util/Map;

    monitor-enter v5

    :try_start_0
    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mIntentInterceptors:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v4

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Landroid/content/IntentFilter;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    invoke-virtual {v9}, Landroid/content/IntentFilter;->countActions()I

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v14

    const-string/jumbo v15, "VirtualDeviceImpl"

    invoke-virtual/range {v9 .. v15}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v8, :cond_0

    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Landroid/companion/virtual/IVirtualDeviceIntentInterceptor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;

    move-result-object v0

    new-instance v8, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v8}, Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;->onIntentIntercepted(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v7, v3

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v8, "VirtualDeviceImpl"

    const-string/jumbo v9, "Unable to call mActivityListener"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_3

    const-string/jumbo v0, "Virtual device intercepting intent"

    invoke-virtual {v1, v0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    return v4

    :cond_3
    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    goto :goto_3

    :goto_2
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :goto_3
    invoke-virtual {v1, v2, v5, v6, v7}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->canContainActivity(Landroid/content/pm/ActivityInfo;IIZ)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p6, :cond_4

    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v0, p7

    :goto_4
    invoke-virtual {v1, v2, v0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->notifyActivityBlocked(Landroid/content/pm/ActivityInfo;Ljava/util/function/Supplier;)V

    return v4

    :cond_5
    return v3
.end method

.method public final canContainActivity(Landroid/content/pm/ActivityInfo;IIZ)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->waitAndGetIsMirrorDisplay()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "Mirror virtual displays cannot contain activities."

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p0, p2}, Landroid/window/DisplayWindowPolicyController;->isWindowingModeSupported(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "Virtual device doesn\'t support windowing mode "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    return v1

    :cond_1
    iget p2, p1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v0, 0x10000

    and-int/2addr p2, v0

    if-nez p2, :cond_2

    const-string p1, "Activity requires android:canDisplayOnRemoteDevices=true"

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    return v1

    :cond_2
    iget-object p2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/UserHandle;->isSystem()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAllowedUsers:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Activity launch disallowed from user "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    return v1

    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    sget-object v2, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->BLOCKED_APP_STREAMING_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Landroid/os/UserHandle;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_4

    return v3

    :cond_4
    invoke-virtual {p2}, Landroid/os/UserHandle;->isSystem()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAllowedUsers:Landroid/util/ArraySet;

    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Activity launch disallowed from user "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    return v1

    :cond_5
    iget-object p2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayCategories:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p1, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    if-nez p2, :cond_c

    goto :goto_0

    :cond_6
    iget-object p2, p1, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    if-eqz p2, :cond_c

    iget-object v2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayCategories:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    :goto_0
    iget-object p2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyPackageExemptions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    iget-boolean p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityLaunchAllowedByDefault:Z

    monitor-exit p2

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_8
    :goto_1
    iget-boolean p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityLaunchAllowedByDefault:Z

    xor-int/2addr p1, v3

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    if-nez p1, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Activity launch disallowed by policy: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    return v1

    :cond_9
    if-eqz p4, :cond_b

    if-eqz p3, :cond_b

    iget-boolean p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCrossTaskNavigationAllowedByDefault:Z

    iget-object p2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eq p1, p2, :cond_a

    move p1, v3

    goto :goto_3

    :cond_a
    move p1, v1

    :goto_3
    if-nez p1, :cond_b

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cross task navigation disallowed by policy: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    return v1

    :cond_b
    return v3

    :goto_4
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_c
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "The activity\'s required display category \'"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not found on virtual display with the following categories: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayCategories:Ljava/util/Set;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    return v1
.end method

.method public final canShowTasksInHostDeviceRecents()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mShowTasksInHostDeviceRecents:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getCustomHomeComponent()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCustomHomeComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getRunningAppsChangedListenersSizeForTesting()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

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

.method public final keepActivityOnWindowFlagsChanged(Landroid/content/pm/ActivityInfo;II)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->waitAndGetDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    and-int/lit16 v1, p2, 0x2000

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCurrentWindowFlags:I

    and-int/lit16 v2, v2, 0x2000

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/virtual/GenericWindowPolicyController;ILandroid/content/pm/ActivityInfo;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCurrentWindowFlags:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/virtual/GenericWindowPolicyController;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iput p2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCurrentWindowFlags:I

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    const-wide/32 v2, 0xc05e3df

    invoke-static {v2, v3, v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_3

    and-int/lit16 p2, p2, 0x2000

    if-nez p2, :cond_2

    const/high16 p2, 0x80000

    and-int/2addr p2, p3

    if-eqz p2, :cond_3

    :cond_2
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->notifyActivityBlocked(Landroid/content/pm/ActivityInfo;Ljava/util/function/Supplier;)V

    const/4 p0, 0x0

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final logActivityLaunchBlocked(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Virtual device activity launch disallowed on display "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->waitAndGetDisplayId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", reason: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GenericWindowPolicyController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final notifyActivityBlocked(Landroid/content/pm/ActivityInfo;Ljava/util/function/Supplier;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->waitAndGetDisplayId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->waitAndGetIsMirrorDisplay()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/IntentSender;

    :goto_0
    iget-object v1, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    iget-object v2, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v2}, Landroid/companion/virtual/VirtualDeviceParams;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    :goto_1
    invoke-static {p1, v2}, Lcom/android/internal/app/BlockedAppStreamingActivity;->createIntent(Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDevicePolicy(I)I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const v4, 0x10008000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    :cond_3
    :goto_2
    :try_start_0
    iget-object v1, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListener:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-interface {v1, v0, v2, p1, p2}, Landroid/companion/virtual/IVirtualDeviceActivityListener;->onActivityLaunchBlocked(ILandroid/content/ComponentName;Landroid/os/UserHandle;Landroid/content/IntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unable to call mActivityListener for display: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "VirtualDeviceImpl"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_3
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getUid()I

    move-result p0

    const-string/jumbo p1, "virtual_devices.value_activity_blocked_count"

    invoke-static {p1, p0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    return-void
.end method

.method public final onRunningAppsChanged(Landroid/util/ArraySet;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUids:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUids:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->waitAndGetDisplayId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUids:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda2;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v1, v4}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/virtual/GenericWindowPolicyController;II)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListeners:Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda4;-><init>(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onTopActivityChanged(Landroid/content/ComponentName;II)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->waitAndGetDisplayId()I

    move-result p2

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/GenericWindowPolicyController;ILandroid/content/ComponentName;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final setActivityLaunchDefaultAllowed(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityLaunchAllowedByDefault:Z

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyPackageExemptions:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityLaunchAllowedByDefault:Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final waitAndGetDisplayId()I
    .locals 6

    const-string v0, "GenericWindowPolicyController"

    const/4 v1, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayIdSetLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo p0, "Timed out while waiting for GWPC displayId to be set."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    iget p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    return p0

    :catch_0
    const-string p0, "Interrupted while waiting for GWPC displayId to be set."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final waitAndGetIsMirrorDisplay()Z
    .locals 6

    const-string v0, "GenericWindowPolicyController"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayIdSetLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo p0, "Timed out while waiting for GWPC isMirrorDisplay to be set."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    iget-boolean p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mIsMirrorDisplay:Z

    return p0

    :catch_0
    const-string p0, "Interrupted while waiting for GWPC isMirrorDisplay to be set."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
