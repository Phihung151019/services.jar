.class public final Lcom/android/server/SensitiveContentProtectionManagerService;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mExemptedPackages:Landroid/util/ArraySet;

.field public mMediaProjectionSession:Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

.field mNotificationListener:Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;

.field public final mOnWindowRemovedListener:Lcom/android/server/SensitiveContentProtectionManagerService$$ExternalSyntheticLambda0;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPackagesShowingSensitiveContent:Landroid/util/ArraySet;

.field public mProjectionActive:Z

.field public final mProjectionCallback:Lcom/android/server/SensitiveContentProtectionManagerService$1;

.field public mProjectionManager:Landroid/media/projection/MediaProjectionManager;

.field public mRoleManager:Landroid/app/role/RoleManager;

.field public final mSensitiveContentProtectionLock:Ljava/lang/Object;

.field public mWindowManager:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static -$$Nest$monProjectionStart(Lcom/android/server/SensitiveContentProtectionManagerService;Landroid/media/projection/MediaProjectionInfo;)V
    .locals 18

    move-object/from16 v0, p0

    const-string/jumbo v1, "projection session is exempted, package ="

    iget-object v2, v0, Lcom/android/server/SensitiveContentProtectionManagerService;->mExemptedPackages:Landroid/util/ArraySet;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "android.permission.RECORD_SENSITIVE_CONTENT"

    invoke-virtual {v5, v6, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/media/projection/MediaProjectionInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/SensitiveContentProtectionManagerService;->mRoleManager:Landroid/app/role/RoleManager;

    const-string/jumbo v7, "android.app.role.COMPANION_DEVICE_APP_STREAMING"

    invoke-virtual {v6, v7, v5}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/media/projection/MediaProjectionInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "autofill_service"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    move v2, v4

    goto :goto_2

    :cond_5
    :goto_1
    move v2, v3

    :goto_2
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "disable_screen_share_protections_for_apps_and_notifications"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_6

    move v5, v3

    goto :goto_3

    :cond_6
    move v5, v4

    :goto_3
    iget-object v6, v0, Lcom/android/server/SensitiveContentProtectionManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual/range {p1 .. p1}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/media/projection/MediaProjectionInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    const-wide/16 v9, 0x0

    invoke-virtual {v6, v7, v9, v10, v8}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v6

    iget-object v7, v0, Lcom/android/server/SensitiveContentProtectionManagerService;->mSensitiveContentProtectionLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    new-instance v8, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    if-nez v2, :cond_7

    if-eqz v5, :cond_8

    :cond_7
    move v4, v3

    :cond_8
    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    invoke-virtual {v9}, Ljava/util/Random;->nextLong()J

    move-result-wide v9

    invoke-direct {v8, v6, v9, v10, v4}, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;-><init>(IJZ)V

    iput-object v8, v0, Lcom/android/server/SensitiveContentProtectionManagerService;->mMediaProjectionSession:Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    iget-wide v12, v8, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mSessionId:J

    iget v14, v8, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mUid:I

    iget-boolean v15, v8, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mIsExempted:Z

    const/16 v11, 0x33e

    const/16 v16, 0x1

    const/16 v17, 0x2

    invoke-static/range {v11 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIZII)V

    if-nez v2, :cond_b

    if-eqz v5, :cond_9

    goto :goto_5

    :cond_9
    iput-boolean v3, v0, Lcom/android/server/SensitiveContentProtectionManagerService;->mProjectionActive:Z

    iget-object v1, v0, Lcom/android/server/SensitiveContentProtectionManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v2, v0, Lcom/android/server/SensitiveContentProtectionManagerService;->mMediaProjectionSession:Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    iget-wide v2, v2, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mSessionId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->setBlockScreenCaptureForAppsSessionId(J)V

    invoke-virtual {v0}, Lcom/android/server/SensitiveContentProtectionManagerService;->updateAppsThatShouldBlockScreenCapture()V

    iget-object v1, v0, Lcom/android/server/SensitiveContentProtectionManagerService;->mPackagesShowingSensitiveContent:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_a

    iget-object v1, v0, Lcom/android/server/SensitiveContentProtectionManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/SensitiveContentProtectionManagerService;->mPackagesShowingSensitiveContent:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerInternal;->addBlockScreenCaptureForApps(Landroid/util/ArraySet;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_a
    :goto_4
    monitor-exit v7

    return-void

    :cond_b
    :goto_5
    const-string/jumbo v0, "SensitiveContentProtect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isFeatureDisabled="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    return-void

    :goto_6
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mExemptedPackages:Landroid/util/ArraySet;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mSensitiveContentProtectionLock:Ljava/lang/Object;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mPackagesShowingSensitiveContent:Landroid/util/ArraySet;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mProjectionActive:Z

    new-instance p1, Lcom/android/server/SensitiveContentProtectionManagerService$1;

    invoke-direct {p1, p0}, Lcom/android/server/SensitiveContentProtectionManagerService$1;-><init>(Lcom/android/server/SensitiveContentProtectionManagerService;)V

    iput-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mProjectionCallback:Lcom/android/server/SensitiveContentProtectionManagerService$1;

    new-instance p1, Lcom/android/server/SensitiveContentProtectionManagerService$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/SensitiveContentProtectionManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/SensitiveContentProtectionManagerService;)V

    iput-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mOnWindowRemovedListener:Lcom/android/server/SensitiveContentProtectionManagerService$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;

    invoke-direct {p1, p0}, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;-><init>(Lcom/android/server/SensitiveContentProtectionManagerService;)V

    iput-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mNotificationListener:Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;

    return-void
.end method


# virtual methods
.method public init(Landroid/media/projection/MediaProjectionManager;Lcom/android/server/wm/WindowManagerInternal;Landroid/content/pm/PackageManagerInternal;Landroid/app/role/RoleManager;Landroid/util/ArraySet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/projection/MediaProjectionManager;",
            "Lcom/android/server/wm/WindowManagerInternal;",
            "Landroid/content/pm/PackageManagerInternal;",
            "Landroid/app/role/RoleManager;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mProjectionManager:Landroid/media/projection/MediaProjectionManager;

    iput-object p2, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    iput-object p3, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iput-object p4, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mRoleManager:Landroid/app/role/RoleManager;

    iput-object p5, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mExemptedPackages:Landroid/util/ArraySet;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mProjectionCallback:Lcom/android/server/SensitiveContentProtectionManagerService$1;

    invoke-virtual {p1, p3, p2}, Landroid/media/projection/MediaProjectionManager;->addCallback(Landroid/media/projection/MediaProjectionManager$Callback;Landroid/os/Handler;)V

    :try_start_0
    iget-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mNotificationListener:Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p4

    const-class p5, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;

    invoke-direct {p3, p4, p5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p4, -0x1

    invoke-virtual {p1, p2, p3, p4}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mOnWindowRemovedListener:Lcom/android/server/SensitiveContentProtectionManagerService$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowManagerInternal;->registerOnWindowRemovedListener(Lcom/android/server/wm/WindowManagerInternal$OnWindowRemovedListener;)V

    return-void
.end method

.method public final onBootPhase(I)V
    .locals 6

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/media/projection/MediaProjectionManager;

    const-class p1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal;

    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/app/role/RoleManager;

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p1

    iget-object v5, p1, Lcom/android/server/SystemConfig;->mBugreportWhitelistedPackages:Landroid/util/ArraySet;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/SensitiveContentProtectionManagerService;->init(Landroid/media/projection/MediaProjectionManager;Lcom/android/server/wm/WindowManagerInternal;Landroid/content/pm/PackageManagerInternal;Landroid/app/role/RoleManager;Landroid/util/ArraySet;)V

    new-instance p0, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder;

    invoke-direct {p0, v0}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder;-><init>(Lcom/android/server/SensitiveContentProtectionManagerService;)V

    const-string/jumbo p1, "sensitive_content_protection_service"

    invoke-virtual {v0, p1, p0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mProjectionManager:Landroid/media/projection/MediaProjectionManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mProjectionCallback:Lcom/android/server/SensitiveContentProtectionManagerService$1;

    invoke-virtual {v0, v1}, Landroid/media/projection/MediaProjectionManager;->removeCallback(Landroid/media/projection/MediaProjectionManager$Callback;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mNotificationListener:Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/SensitiveContentProtectionManagerService;->onProjectionEnd()V

    :cond_1
    return-void
.end method

.method public final onProjectionEnd()V
    .locals 9

    iget-object v1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mSensitiveContentProtectionLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mProjectionActive:Z

    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mMediaProjectionSession:Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    if-eqz v0, :cond_0

    iget-wide v3, v0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mSessionId:J

    iget v5, v0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mUid:I

    iget-boolean v6, v0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mIsExempted:Z

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/16 v2, 0x33e

    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIZII)V

    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mMediaProjectionSession:Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    iget-object v2, v0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mAllSeenNotificationKeys:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    iget-object v3, v0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mSeenOtpNotificationKeys:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    iget-wide v4, v0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mSessionId:J

    const/16 v0, 0x33f

    invoke-static {v0, v4, v5, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJII)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mMediaProjectionSession:Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerInternal;->clearBlockedApps()V

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onStart()V
    .locals 0

    return-void
.end method

.method public setSensitiveContentProtection(Landroid/os/IBinder;Ljava/lang/String;IZ)V
    .locals 8

    const-string/jumbo v0, "Unexpectedly large number of sensitive windows, count: "

    iget-object v1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mSensitiveContentProtectionLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;

    invoke-direct {v2, p3, p1, p2}, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;-><init>(ILandroid/os/IBinder;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mPackagesShowingSensitiveContent:Landroid/util/ArraySet;

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mPackagesShowingSensitiveContent:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    const/16 p2, 0x64

    if-le p1, p2, :cond_1

    const-string/jumbo p1, "SensitiveContentProtect"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mPackagesShowingSensitiveContent:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mPackagesShowingSensitiveContent:Landroid/util/ArraySet;

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mProjectionActive:Z

    if-nez p1, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_3

    iget-object p2, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowManagerInternal;->addBlockScreenCaptureForApps(Landroid/util/ArraySet;)V

    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mMediaProjectionSession:Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    if-eqz p0, :cond_4

    iget v6, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mUid:I

    iget-wide v3, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mSessionId:J

    const/4 v7, 0x1

    const/16 v2, 0x343

    move v5, p3

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIII)V

    goto :goto_1

    :cond_3
    move v5, p3

    iget-object p2, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowManagerInternal;->removeBlockScreenCaptureForApps(Landroid/util/ArraySet;)V

    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mMediaProjectionSession:Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    if-eqz p0, :cond_4

    iget v6, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mUid:I

    iget-wide v3, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mSessionId:J

    const/4 v7, 0x2

    const/16 v2, 0x343

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIII)V

    :cond_4
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateAppsThatShouldBlockScreenCapture()V
    .locals 3

    const-string/jumbo v0, "SensitiveContentProtect"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mNotificationListener:Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SensitiveContentProtectionManagerService doesn\'t have access."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    const-string/jumbo p0, "Ranking map not initialized."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/SensitiveContentProtectionManagerService;->updateAppsThatShouldBlockScreenCapture(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

.method public final updateAppsThatShouldBlockScreenCapture(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 11

    const-string/jumbo v0, "SensitiveContentProtect"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mNotificationListener:Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "SensitiveContentProtectionManagerService doesn\'t have access."

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-array v2, v1, [Landroid/service/notification/StatusBarNotification;

    :goto_0
    iget-object v3, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mMediaProjectionSession:Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    const-string/jumbo v4, "Unable to parse null notification"

    if-eqz v3, :cond_2

    array-length v5, v2

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v2, v6

    if-nez v7, :cond_0

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRawRankingObject(Ljava/lang/String;)Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/service/notification/NotificationListenerService$Ranking;->hasSensitiveContent()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v3, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mAllSeenNotificationKeys:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v8, v3, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mSeenOtpNotificationKeys:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v3, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mAllSeenNotificationKeys:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    array-length v5, v2

    move v6, v1

    :goto_3
    if-ge v6, v5, :cond_7

    aget-object v7, v2, v6

    if-nez v7, :cond_3

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_3
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRawRankingObject(Ljava/lang/String;)Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/service/notification/NotificationListenerService$Ranking;->hasSensitiveContent()Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_4

    :cond_4
    move v8, v1

    :goto_4
    const/4 v9, 0x0

    if-eqz v8, :cond_5

    new-instance v8, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v7

    invoke-direct {v8, v7, v9, v10}, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;-><init>(ILandroid/os/IBinder;Ljava/lang/String;)V

    move-object v9, v8

    :cond_5
    if-eqz v9, :cond_6

    invoke-virtual {v3, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-lez p1, :cond_8

    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowManagerInternal;->addBlockScreenCaptureForApps(Landroid/util/ArraySet;)V

    :cond_8
    return-void
.end method
