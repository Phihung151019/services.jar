.class public Lcom/android/server/appop/AppOpsService;
.super Lcom/android/internal/app/IAppOpsService$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final AI_PRIVACY:Z

.field public static final DEBUG:Z

.field public static final DEBUG_MID:Z

.field public static final NON_PACKAGE_UIDS:[I

.field public static final OPS_RESTRICTED_ON_SUSPEND:[I

.field public static final RATE_LIMITER_WINDOW:Ljava/time/Duration;

.field public static final WRITE_DELAY:J


# instance fields
.field public final dpmi:Landroid/app/admin/DevicePolicyManagerInternal;

.field public mAcceptableLeftDistance:I

.field public final mActiveWatchers:Landroid/util/ArrayMap;

.field mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

.field public final mAppOpsManagerInternal:Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

.field mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

.field public final mAsyncOpWatchers:Landroid/util/ArrayMap;

.field public final mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

.field public volatile mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

.field public mCollectedRuntimePermissionMessage:Landroid/app/RuntimeAppOpAccessMessage;

.field final mConstants:Lcom/android/server/appop/AppOpsService$Constants;

.field public final mContext:Landroid/content/Context;

.field public mFastWriteScheduled:Z

.field public final mHandler:Landroid/os/Handler;

.field public volatile mHistoricalRegistry:Lcom/android/server/appop/LegacyHistoricalRegistry;

.field public mIgnoredCallback:Lcom/android/internal/app/IAppOpsCallback;

.field public final mInProgressStartOpEventPool:Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

.field public final mKnownDeviceIds:Landroid/util/SparseArray;

.field public mMessagesCollectedCount:F

.field public final mModeWatchers:Landroid/util/ArrayMap;

.field public final mNotedWatchers:Landroid/util/ArrayMap;

.field public final mOnPackageUpdatedReceiver:Lcom/android/server/appop/AppOpsService$4;

.field public final mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

.field public final mOpGlobalRestrictions:Landroid/util/ArrayMap;

.field public final mOpModeWatchers:Landroid/util/SparseArray;

.field public final mOpUserRestrictions:Landroid/util/ArrayMap;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPackageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

.field public final mPackageModeWatchers:Landroid/util/ArrayMap;

.field public final mPermissionAccessInformationController:Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;

.field public final mPermissionDataController:Lcom/samsung/android/kmxservice/ai/privacy/PermissionDataController;

.field public mProfileOwners:Landroid/util/SparseIntArray;

.field public mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

.field public mRarelyUsedPackages:Landroid/util/ArraySet;

.field public mRarelyUsedPackagesInitialized:Z

.field public final mRecentAccessesFile:Landroid/util/AtomicFile;

.field public mSampledAppOpCode:I

.field public mSampledPackage:Ljava/lang/String;

.field public mSamplingStrategy:I

.field public mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field public final mStartedWatchers:Landroid/util/ArrayMap;

.field public final mStorageFile:Landroid/util/AtomicFile;

.field public final mSwitchedOps:Landroid/util/SparseArray;

.field public mUidStateTracker:Lcom/android/server/appop/AppOpsUidStateTrackerImpl;

.field final mUidStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/appop/AppOpsService$UidState;",
            ">;"
        }
    .end annotation
.end field

.field public final mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

.field public final mWriteRunner:Lcom/android/server/appop/AppOpsService$1;

.field public mWriteScheduled:Z


# direct methods
.method public static -$$Nest$mcheckAudioOperationImpl(Lcom/android/server/appop/AppOpsService;IIILjava/lang/String;)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    const-string/jumbo v1, "checkZenModeRestrictionLocked return mode: "

    monitor-enter v0

    :try_start_0
    iget v2, v0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraAudioRestriction:I

    if-eqz v2, :cond_1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    const/16 v4, 0x1c

    if-ne p1, v4, :cond_1

    if-ne v2, v3, :cond_1

    :cond_0
    sget-object v2, Lcom/android/server/appop/AudioRestrictionManager;->CAMERA_AUDIO_RESTRICTIONS:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p2, "AudioRestriction"

    const-string/jumbo v1, "checkAudioOperation: MODE_IGNORED camera audio restrictions"

    invoke-static {p2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    const/4 p2, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    iget-object v2, v0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/appop/AudioRestrictionManager$Restriction;

    if-eqz p2, :cond_2

    iget-object v2, p2, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget p2, p2, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->mode:I

    goto :goto_0

    :cond_2
    move p2, v3

    :goto_0
    if-eqz p2, :cond_3

    const-string v2, "AudioRestriction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    goto :goto_1

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p2, v3

    :goto_1
    if-eqz p2, :cond_4

    return p2

    :cond_4
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result p0

    return p0

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static -$$Nest$mcheckOperationImpl(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;IZ)I
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v5, 0x0

    const-string/jumbo v7, "checkOperation"

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v6, p3

    move/from16 v4, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->validateOpRequest(IIIZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x1

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v0, :cond_b

    :cond_0
    const-string v0, "AppOps"

    const-string/jumbo v1, "checkOperationImpl return MODE+IGNORE because resolvedPackageName is null: packageName "

    const-string v4, " uid "

    const-string v5, " code "

    invoke-static {p2, v1, p3, v4, v5}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return v9

    :cond_1
    :try_start_0
    invoke-virtual {p0, p2, v0, p4}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v6, Lcom/android/server/appop/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I

    invoke-static {v6, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    const/4 v10, 0x0

    if-nez v6, :cond_2

    move v6, v10

    goto :goto_0

    :cond_2
    const-class v6, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v6, v7, v0}, Landroid/content/pm/PackageManagerInternal;->isPackageSuspended(ILjava/lang/String;)Z

    move-result v6

    :goto_0
    if-eqz v6, :cond_3

    goto/16 :goto_5

    :cond_3
    monitor-enter p0

    :try_start_1
    iget-object v7, v4, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v8, 0x1

    move-object v1, p0

    move v3, p1

    move v2, p2

    move-object v5, p4

    move/from16 v6, p5

    move-object v4, v0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$RestrictionBypass;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    monitor-exit p0

    return v9

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_4
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_5

    goto :goto_1

    :cond_5
    move v9, v10

    :cond_6
    :goto_1
    if-eqz v9, :cond_7

    monitor-exit p0

    return v10

    :cond_7
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    move/from16 v6, p5

    invoke-virtual {p0, v6, v0}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, p2, v0, v5}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(IILjava/lang/String;)I

    move-result v2

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v5

    if-eq v2, v5, :cond_9

    if-eqz p6, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getUidStateTracker()Lcom/android/server/appop/AppOpsUidStateTracker;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;

    invoke-virtual {v4, p2, v0, v2}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->evalMode(III)I

    move-result v2

    :goto_2
    monitor-exit p0

    return v2

    :cond_9
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-interface {v2, v0, v5, v4}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(IILjava/lang/String;)I

    move-result v2

    if-eqz p6, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getUidStateTracker()Lcom/android/server/appop/AppOpsUidStateTracker;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;

    invoke-virtual {v4, p2, v0, v2}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->evalMode(III)I

    move-result v2

    :goto_3
    monitor-exit p0

    return v2

    :goto_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "getAppOpMode"

    invoke-static {p2, v0, v1}, Lcom/android/server/appop/AppOpsService;->logVerifyAndGetBypassFailure(ILjava/lang/SecurityException;Ljava/lang/String;)V

    :cond_b
    :goto_5
    return v9
.end method

.method public static -$$Nest$mfinishOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 9

    invoke-virtual {p0, p3}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    invoke-virtual {p0, p2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    invoke-virtual {p0, p6}, Lcom/android/server/appop/AppOpsService;->isValidVirtualDeviceId(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "finishOperationImpl was a no-op as virtualDeviceId "

    const-string v1, " is invalid"

    const-string v2, "AppOps"

    invoke-static {p6, v0, v1, v2}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v1, p4}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static/range {p3 .. p4}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    :goto_0
    return-void

    :cond_2
    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    move-object v7, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/appop/AppOpsService;->finishOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static -$$Nest$mfinishProxyOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)V
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v3

    invoke-virtual {p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v9

    invoke-virtual {p3}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v8

    invoke-virtual {p3}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p3}, Landroid/content/AttributionSource;->getNextAttributionTag()Ljava/lang/String;

    move-result-object v11

    if-eqz p4, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/server/appop/AppOpsService;->isCallerAndAttributionTrusted(Landroid/content/AttributionSource;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/server/appop/AppOpsService;->verifyIncomingProxyUid(Landroid/content/AttributionSource;)V

    invoke-virtual {p0, p2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    invoke-virtual {p0, v8}, Lcom/android/server/appop/AppOpsService;->isValidVirtualDeviceId(I)Z

    move-result p3

    if-nez p3, :cond_1

    const-string/jumbo p0, "finishProxyOperationImpl was a no-op as virtualDeviceId "

    const-string p1, " is invalid"

    const-string p2, "AppOps"

    invoke-static {v8, p0, p1, p2}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    invoke-virtual {p0, p3, v0}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(ILjava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    invoke-virtual {p0, p3, v10}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(ILjava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v3, v0}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    move v5, v3

    if-nez v1, :cond_4

    const/4 v3, -0x1

    move-object v6, v4

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/appop/AppOpsService;->finishOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    move-object v6, v4

    :goto_1
    invoke-static {v9, v10}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, v5

    move-object v4, v6

    move v5, v9

    move-object v7, v11

    move-object v6, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/appop/AppOpsService;->finishOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public static -$$Nest$mnoteOperationImpl(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZI)Landroid/app/SyncNotedAppOp;
    .locals 15

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v4, 0x1

    const-string/jumbo v6, "noteOperation"

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v5, p3

    move/from16 v3, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->validateOpRequest(IIIZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    sget-boolean p0, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz p0, :cond_1

    :cond_0
    const-string/jumbo p0, "noteOperationImpl return MODE_IGNORED because resolvedPackageName is null: packageName "

    const-string v0, " uid "

    const-string v2, " code "

    move/from16 v3, p2

    invoke-static {v3, p0, v5, v0, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "AppOps"

    invoke-static {p0, v1, v0}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_1
    new-instance p0, Landroid/app/SyncNotedAppOp;

    const/4 v0, 0x1

    move-object/from16 v2, p4

    invoke-direct {p0, v0, v1, v2, v5}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_2
    move/from16 v3, p2

    move-object/from16 v2, p4

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v4

    move-object v4, v2

    move v2, v3

    move-object v3, v0

    move-object v0, p0

    move/from16 v5, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    invoke-virtual/range {v0 .. v14}, Lcom/android/server/appop/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIZLjava/lang/String;ZI)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static -$$Nest$mnoteProxyOperationImpl(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getUid()I

    move-result v6

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v9

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v15

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextAttributionTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextDeviceId()I

    move-result v16

    invoke-virtual {v0, v2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingProxyUid(Landroid/content/AttributionSource;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    invoke-virtual {v0, v9}, Lcom/android/server/appop/AppOpsService;->isValidVirtualDeviceId(I)Z

    move-result v8

    const/4 v10, 0x1

    const-string v11, "AppOps"

    if-nez v8, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "noteProxyOperationImpl returned MODE_IGNORED as virtualDeviceId "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is invalid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v10, v1, v7, v5}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v0, v8, v5}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v0, v8, v3}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(ILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    move-object v15, v5

    move-object v4, v7

    goto/16 :goto_9

    :cond_2
    if-eqz p6, :cond_3

    invoke-virtual {v0, v2}, Lcom/android/server/appop/AppOpsService;->isCallerAndAttributionTrusted(Landroid/content/AttributionSource;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v10

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-static {v6, v3}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v13, " code "

    if-nez v3, :cond_6

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v0, :cond_5

    :cond_4
    const-string/jumbo v0, "noteProxyOperationImpl::resolveProxyPackageName is null: proxiedPackageName "

    const-string v2, " proxyUid "

    invoke-static {v6, v0, v5, v2, v13}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v1, v11}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_5
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v10, v1, v7, v5}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    if-ne v14, v15, :cond_7

    move v14, v10

    goto :goto_1

    :cond_7
    const/4 v14, 0x0

    :goto_1
    iget-object v8, v0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "android.permission.UPDATE_APP_OPS_STATS"

    const/4 v12, -0x1

    invoke-virtual {v8, v10, v12, v6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_9

    if-eqz v14, :cond_8

    goto :goto_2

    :cond_8
    const/16 v17, 0x0

    goto :goto_3

    :cond_9
    :goto_2
    const/16 v17, 0x1

    :goto_3
    if-nez v2, :cond_c

    if-eqz v17, :cond_a

    const/4 v10, 0x2

    goto :goto_4

    :cond_a
    const/4 v12, 0x4

    move v10, v12

    :goto_4
    move-object v2, v11

    xor-int/lit8 v11, v17, 0x1

    const-string/jumbo v8, "proxy "

    move-object/from16 v12, p4

    invoke-static {v8, v12}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v12, v8

    const/4 v8, 0x0

    move-object v14, v5

    move v5, v9

    const/4 v9, 0x0

    move-object/from16 v19, v2

    move v2, v6

    const/4 v6, -0x1

    move-object/from16 v20, v7

    const/4 v7, 0x0

    move-object/from16 v21, v14

    const/4 v14, 0x1

    move-object/from16 v24, v13

    move/from16 v18, v15

    move-object/from16 v23, v19

    move-object/from16 v22, v20

    move-object/from16 v15, v21

    move/from16 v13, p5

    invoke-virtual/range {v0 .. v14}, Lcom/android/server/appop/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIZLjava/lang/String;ZI)Landroid/app/SyncNotedAppOp;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-virtual {v6}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v2

    move-object/from16 v6, v22

    invoke-direct {v0, v2, v1, v6, v15}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_b
    move-object/from16 v6, v22

    :goto_5
    move-object v7, v3

    move/from16 v0, v18

    goto :goto_6

    :cond_c
    move v2, v6

    move-object v6, v7

    move-object/from16 v23, v11

    move-object/from16 v24, v13

    move/from16 v18, v15

    move-object v15, v5

    move v5, v9

    goto :goto_5

    :goto_6
    invoke-static {v0, v15}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_f

    sget-boolean v2, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    if-nez v2, :cond_d

    sget-boolean v2, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v2, :cond_e

    :cond_d
    const-string/jumbo v2, "noteProxyOperationImpl::resolveProxiedPackageName is null: proxiedPackageName "

    const-string v3, " proxiedUid "

    move-object/from16 v4, v24

    invoke-static {v0, v2, v15, v3, v4}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_e
    new-instance v0, Landroid/app/SyncNotedAppOp;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, v6, v15}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_f
    if-eqz v17, :cond_10

    const/16 v8, 0x8

    :goto_7
    move v10, v8

    goto :goto_8

    :cond_10
    const/16 v8, 0x10

    goto :goto_7

    :goto_8
    const/4 v14, 0x1

    move/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    move-object v8, v4

    move v9, v5

    move-object v4, v6

    move/from16 v5, v16

    move v6, v2

    move v2, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v14}, Lcom/android/server/appop/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIZLjava/lang/String;ZI)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0

    :goto_9
    new-instance v0, Landroid/app/SyncNotedAppOp;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1, v4, v15}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static -$$Nest$mstartOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .locals 19

    move-object/from16 v7, p5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v4, 0x1

    const-string/jumbo v6, "startOperation"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v5, p4

    move/from16 v3, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->validateOpRequest(IIIZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move v3, v1

    const-string v1, " code "

    const-string v6, " uid "

    const-string v8, "AppOps"

    if-nez v4, :cond_2

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "startOperationImpl::resolvedPackageName is null: packageName "

    invoke-static {v2, v0, v5, v6, v1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v3, v8}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_1
    new-instance v0, Landroid/app/SyncNotedAppOp;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v3, v7, v5}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    const/16 v4, 0x66

    const-string v9, " result "

    if-eq v3, v4, :cond_3

    const/16 v4, 0x78

    if-eq v3, v4, :cond_3

    const/16 v4, 0x87

    if-ne v3, v4, :cond_6

    :cond_3
    const/16 v4, 0x1b

    invoke-virtual {v0, v4, v2, v5}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_6

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v0, :cond_5

    :cond_4
    const-string/jumbo v0, "startOperationImpl::checkOperation(OP_RECORD_AUDIO: packageName "

    invoke-static {v2, v0, v5, v6, v1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v4, v3, v7, v5}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_6
    const/16 v4, 0x86

    if-ne v3, v4, :cond_9

    const/16 v4, 0x1a

    invoke-virtual {v0, v4, v2, v5}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_9

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v0, :cond_8

    :cond_7
    const-string/jumbo v0, "startOperationImpl::checkOperation(OP_CAMERA: packageName "

    invoke-static {v2, v0, v5, v6, v1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v4, v3, v7, v5}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_9
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v13, p7

    move/from16 v14, p8

    move-object/from16 v15, p9

    move/from16 v16, p10

    move/from16 v17, p11

    move/from16 v18, p12

    move-object v1, v0

    move v4, v2

    move-object v6, v7

    move-object/from16 v2, p1

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v18}, Lcom/android/server/appop/AppOpsService;->startOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method public static -$$Nest$mstartProxyOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .locals 26

    move-object/from16 v1, p0

    move/from16 v8, p2

    move-object/from16 v0, p3

    move/from16 v14, p4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    move-result v5

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v12

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v3

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getNextAttributionTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getNextDeviceId()I

    move-result v9

    invoke-virtual {v1, v0}, Lcom/android/server/appop/AppOpsService;->verifyIncomingProxyUid(Landroid/content/AttributionSource;)V

    invoke-virtual {v1, v8}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    invoke-virtual {v1, v12}, Lcom/android/server/appop/AppOpsService;->isValidVirtualDeviceId(I)Z

    move-result v6

    const/4 v10, 0x1

    if-nez v6, :cond_0

    const-string v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startProxyOperationImpl returned MODE_IGNORED as proxyVirtualDeviceId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v10, v8, v7, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {v1, v9}, Lcom/android/server/appop/AppOpsService;->isValidVirtualDeviceId(I)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startProxyOperationImpl returned MODE_IGNORED as proxiedVirtualDeviceId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v10, v8, v7, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v1, v6, v2}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v1, v6, v4}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_16

    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/server/appop/AppOpsService;->isCallerAndAttributionTrusted(Landroid/content/AttributionSource;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p8, :cond_3

    move v15, v10

    goto :goto_0

    :cond_3
    const/4 v15, 0x0

    :goto_0
    invoke-static {v5, v2}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "AppOps"

    const-string/jumbo v1, "startProxyOperationImpl::resolvedProxyPackageName is null: proxiedPackageName "

    const-string v2, " proxyUid "

    const-string v3, " code "

    invoke-static {v5, v1, v4, v2, v3}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v8, v0}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_5
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v10, v8, v7, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_6
    const/4 v6, -0x1

    move/from16 v13, p11

    if-eqz v0, :cond_8

    if-eq v13, v6, :cond_8

    and-int/lit8 v0, p9, 0x8

    if-nez v0, :cond_7

    and-int/lit8 v0, p10, 0x8

    if-eqz v0, :cond_8

    :cond_7
    move v0, v10

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    if-ne v10, v3, :cond_9

    const/4 v10, 0x1

    :goto_2
    move/from16 p8, v0

    goto :goto_3

    :cond_9
    const/4 v10, 0x0

    goto :goto_2

    :goto_3
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v2

    const-string/jumbo v2, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v0, v2, v6, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_b

    if-nez v10, :cond_b

    if-eqz p8, :cond_a

    goto :goto_4

    :cond_a
    const/4 v10, 0x0

    goto :goto_5

    :cond_b
    :goto_4
    const/4 v10, 0x1

    :goto_5
    invoke-static {v3, v4}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_e

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    if-nez v0, :cond_c

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v0, :cond_d

    :cond_c
    const-string v0, "AppOps"

    const-string/jumbo v1, "startProxyOperationImpl::resolvedProxiedPackageName is null: proxiedPackageName "

    const-string v2, " proxiedUid "

    const-string v5, " code "

    invoke-static {v3, v1, v4, v2, v5}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v8, v0}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_d
    new-instance v0, Landroid/app/SyncNotedAppOp;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v8, v7, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_e
    if-eqz v10, :cond_f

    const/16 v0, 0x8

    :goto_6
    move/from16 v20, v0

    goto :goto_7

    :cond_f
    const/16 v0, 0x10

    goto :goto_6

    :goto_7
    if-nez v15, :cond_1e

    const-string/jumbo v0, "startOperation: allowing code "

    const-string/jumbo v15, "startOperation: reject #"

    const-string/jumbo v2, "startOperation: uid reject #"

    const-string/jumbo v4, "startOperation: no op for code "

    move-object/from16 v19, v4

    move-object v4, v7

    const/4 v7, 0x0

    move/from16 v21, v9

    move/from16 p3, v10

    move-object/from16 v10, v19

    move-object v9, v2

    move-object v2, v6

    move v6, v5

    move-object/from16 v5, v18

    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v19, v5

    move/from16 v18, v6

    move-object v6, v2

    move v2, v3

    :try_start_1
    iget-boolean v1, v7, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v1, :cond_10

    const/4 v1, 0x0

    move-object v5, v1

    goto :goto_8

    :cond_10
    move-object v5, v4

    :goto_8
    monitor-enter p0

    move-object v1, v4

    move-object v4, v5

    :try_start_2
    iget-boolean v5, v7, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z

    move-object v3, v6

    iget-object v6, v7, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v22, v7

    const/4 v7, 0x1

    move-object/from16 v23, v22

    move/from16 v22, v12

    move-object/from16 v12, v23

    move-object/from16 v23, v11

    move-object v11, v1

    move-object/from16 v1, p0

    :try_start_3
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v5

    move-object v6, v3

    if-nez v5, :cond_12

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v0, :cond_11

    const-string v0, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " uid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " package "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " flags: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_11
    :goto_9
    new-instance v0, Landroid/app/SyncNotedAppOp;

    const/4 v3, 0x2

    invoke-direct {v0, v3, v8, v4, v6}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    move-object v5, v6

    move v4, v8

    move-object v7, v11

    move/from16 v3, v21

    goto/16 :goto_11

    :cond_12
    const/4 v3, 0x1

    invoke-virtual {v1, v5, v8, v2, v3}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v10

    iget-object v3, v5, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget-object v7, v12, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v8, 0x0

    move-object v12, v5

    move-object/from16 p8, v10

    move-object v10, v3

    move-object v5, v4

    move-object v4, v6

    move/from16 v6, v21

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$RestrictionBypass;Z)Z

    move-result v7

    move-object/from16 v25, v4

    move v4, v3

    move v3, v6

    move-object v6, v5

    move-object/from16 v5, v25

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v8

    iget-object v13, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    move-object/from16 v21, v11

    iget v11, v10, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    move/from16 v24, v7

    invoke-virtual {v1, v3, v8}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13, v11, v8, v7}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(IILjava/lang/String;)I

    move-result v7

    invoke-static {v8}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v11

    if-eq v7, v11, :cond_14

    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v11, v10, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-virtual {v1, v3, v8}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v11, v8, v12}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(IILjava/lang/String;)I

    move-result v7

    invoke-virtual {v10, v4, v7}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v7

    invoke-static {v7, v14}, Lcom/android/server/appop/AppOpsService;->shouldStartForMode(IZ)Z

    move-result v10

    if-nez v10, :cond_18

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v0, :cond_13

    const-string v0, "AppOps"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " for code "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") uid "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " package "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " flags: "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v7, v4, v6, v5}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    :goto_a
    move-object/from16 v7, v21

    goto/16 :goto_11

    :cond_14
    if-eq v8, v4, :cond_15

    const/4 v7, 0x1

    invoke-virtual {v1, v12, v8, v2, v7}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v10

    goto :goto_b

    :cond_15
    move-object/from16 v10, p8

    :goto_b
    iget-object v7, v10, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v9, v10, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v11, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object v12, v10, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget v10, v10, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-interface {v11, v9, v10, v12}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(IILjava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v9, v10}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v7

    if-eqz v7, :cond_18

    if-eqz v14, :cond_16

    const/4 v9, 0x3

    if-eq v7, v9, :cond_18

    :cond_16
    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v0, :cond_17

    const-string v0, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " for code "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") uid "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " package "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " flags: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v7, v4, v6, v5}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_a

    :cond_18
    sget-boolean v7, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v7, :cond_19

    const-string v7, "AppOps"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " uid "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " package "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " restricted: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " flags: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_19
    move/from16 v0, v24

    :goto_c
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-instance v7, Landroid/app/SyncNotedAppOp;

    invoke-direct {v7, v0, v4, v6, v5}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    goto/16 :goto_a

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    :goto_d
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    move-object/from16 v1, p0

    move-object v5, v6

    move-object/from16 v23, v11

    move/from16 v22, v12

    :goto_e
    move/from16 v3, v21

    move-object/from16 v21, v4

    move v4, v8

    goto :goto_f

    :catch_1
    move-exception v0

    move-object/from16 v19, v5

    move/from16 v18, v6

    move-object/from16 v23, v11

    move/from16 v22, v12

    move-object v5, v2

    move v2, v3

    goto :goto_e

    :goto_f
    invoke-static {v2}, Landroid/os/Process;->isIsolated(I)Z

    move-result v6

    if-eqz v6, :cond_1a

    const-string v0, "AppOps"

    const-string v6, "Cannot startOperation: isolated process"

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_1a
    const-string v6, "AppOps"

    const-string v7, "Cannot startOperation"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    new-instance v0, Landroid/app/SyncNotedAppOp;

    move-object/from16 v7, v21

    const/4 v6, 0x2

    invoke-direct {v0, v6, v4, v7, v5}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    :goto_11
    invoke-virtual {v0}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v6

    invoke-static {v6, v14}, Lcom/android/server/appop/AppOpsService;->shouldStartForMode(IZ)Z

    move-result v6

    if-nez v6, :cond_1b

    goto/16 :goto_15

    :cond_1b
    if-eqz p3, :cond_1c

    const/4 v13, 0x2

    :goto_12
    const/16 v17, 0x1

    goto :goto_13

    :cond_1c
    const/4 v13, 0x4

    goto :goto_12

    :goto_13
    xor-int/lit8 v15, p3, 0x1

    const-string/jumbo v0, "proxy "

    move-object/from16 v6, p6

    invoke-static {v0, v6}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v6, v2

    move-object v2, v1

    move v1, v6

    move/from16 v17, p7

    move-object/from16 v21, v7

    move-object/from16 v6, v19

    move/from16 v8, v22

    move-object/from16 v7, v23

    move/from16 v19, p11

    move/from16 v22, v3

    move-object/from16 v23, v5

    move/from16 v5, v18

    move-object/from16 v3, p1

    move/from16 v18, p9

    invoke-virtual/range {v2 .. v19}, Lcom/android/server/appop/AppOpsService;->startOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v2

    invoke-static {v2, v14}, Lcom/android/server/appop/AppOpsService;->shouldStartForMode(IZ)Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_15

    :cond_1d
    move v9, v5

    move-object v10, v6

    move-object v11, v7

    move v12, v8

    move/from16 v8, v22

    move v5, v1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v15, p5

    move-object/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, p10

    move/from16 v19, p11

    move/from16 v13, v20

    move-object/from16 v7, v21

    move-object/from16 v6, v23

    goto :goto_14

    :cond_1e
    move-object/from16 v23, v6

    move-object/from16 v21, v7

    move v8, v9

    move-object/from16 v10, v18

    move v9, v5

    move v5, v3

    move-object/from16 v2, p0

    move/from16 v4, p2

    move/from16 v15, p5

    move-object/from16 v16, p6

    move/from16 v17, p7

    move/from16 v19, p11

    move/from16 v13, v20

    move/from16 v18, p10

    move-object/from16 v3, p1

    :goto_14
    invoke-virtual/range {v2 .. v19}, Lcom/android/server/appop/AppOpsService;->startOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_1f
    :goto_16
    new-instance v0, Landroid/app/SyncNotedAppOp;

    const/4 v6, 0x2

    invoke-direct {v0, v6, v8, v7, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "ro.boot.debug_level"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0x4948"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    const-string v3, "0x494d"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    const-string/jumbo v0, "ro.security.ai.privacy"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/appop/AppOpsService;->AI_PRIVACY:Z

    if-eqz v2, :cond_0

    const-wide/16 v0, 0x3e8

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x1b7740

    :goto_0
    sput-wide v0, Lcom/android/server/appop/AppOpsService;->WRITE_DELAY:J

    const/16 v0, 0x1a

    const/4 v1, 0x3

    const/16 v2, 0x1c

    const/16 v3, 0x1b

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/appop/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/appop/AppOpsService;->NON_PACKAGE_UIDS:[I

    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/appop/AppOpsService;->RATE_LIMITER_WINDOW:Ljava/time/Duration;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3e9
        0x3ea
        0x411
        0x403
        0x431
        0x7d0
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    new-instance v0, Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    new-instance v2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

    invoke-direct {v2, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, v2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;->mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

    new-instance v0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

    invoke-direct {v0, p0}, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;-><init>(Lcom/android/server/appop/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsManagerInternal:Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->dpmi:Landroid/app/admin/DevicePolicyManagerInternal;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mKnownDeviceIds:Landroid/util/SparseArray;

    const-string/jumbo v1, "platform_compat"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/appop/AppOpsService$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/appop/AppOpsService$1;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Lcom/android/server/appop/AppOpsService$1;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/selinux/RateLimiter;

    sget-object v2, Lcom/android/server/appop/AppOpsService;->RATE_LIMITER_WINDOW:Ljava/time/Duration;

    invoke-direct {v1, v2}, Lcom/android/server/selinux/RateLimiter;-><init>(Ljava/time/Duration;)V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mSwitchedOps:Landroid/util/SparseArray;

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/appop/AppOpsService;->mSampledAppOpCode:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mIgnoredCallback:Lcom/android/internal/app/IAppOpsCallback;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/appop/AudioRestrictionManager;

    invoke-direct {v2}, Lcom/android/server/appop/AudioRestrictionManager;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    new-instance v2, Lcom/android/server/appop/AppOpsService$4;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/appop/AppOpsService$4;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOnPackageUpdatedReceiver:Lcom/android/server/appop/AppOpsService$4;

    iput-object p4, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "default:0"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;

    invoke-direct {v0, p4}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPermissionAccessInformationController:Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;

    new-instance v0, Lcom/samsung/android/kmxservice/ai/privacy/PermissionDataController;

    invoke-direct {v0, p4}, Lcom/samsung/android/kmxservice/ai/privacy/PermissionDataController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPermissionDataController:Lcom/samsung/android/kmxservice/ai/privacy/PermissionDataController;

    move v0, v1

    :goto_0
    const/16 v2, 0xa5

    if-ge v0, v2, :cond_0

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mSwitchedOps:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    invoke-static {v4, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-boolean v0, Landroid/permission/PermissionManager;->USE_ACCESS_CHECKING_SERVICE:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;

    const-class v2, Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-direct {v0, v2}, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;-><init>(Lcom/android/server/appop/AppOpsCheckingServiceInterface;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;

    new-instance v2, Lcom/android/server/appop/AppOpsCheckingServiceImpl;

    invoke-direct {v2, p2, p0, p3, p4}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;-><init>(Ljava/io/File;Lcom/android/server/appop/AppOpsService;Landroid/os/Handler;Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;-><init>(Lcom/android/server/appop/AppOpsCheckingServiceInterface;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    :goto_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    new-instance v2, Lcom/android/server/appop/AppOpsService$3;

    invoke-direct {v2, p0}, Lcom/android/server/appop/AppOpsService$3;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-interface {v0, v2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->addAppOpsModeChangedListener(Lcom/android/server/appop/AppOpsService$3;)Z

    new-instance v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;

    new-instance v2, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-direct {v0, p4, p3, v2}, Lcom/android/server/appop/AppOpsRestrictionsImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda8;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    invoke-static {p0, v1, v1}, Lcom/android/server/LockGuard;->installLock(Ljava/lang/Object;IZ)V

    new-instance v0, Landroid/util/AtomicFile;

    const-string/jumbo v1, "appops_legacy"

    invoke-direct {v0, p2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mStorageFile:Landroid/util/AtomicFile;

    new-instance p2, Landroid/util/AtomicFile;

    const-string/jumbo v1, "appops_accesses"

    invoke-direct {p2, p1, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/appop/AppOpsService;->mRecentAccessesFile:Landroid/util/AtomicFile;

    iput-object p3, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/server/appop/AppOpsService$Constants;

    invoke-direct {p1, p0, p3}, Lcom/android/server/appop/AppOpsService$Constants;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    invoke-virtual {p2}, Landroid/util/AtomicFile;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/server/appop/AppOpsService;->readRecentAccesses(Landroid/util/AtomicFile;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/appop/AppOpsService;->readRecentAccesses(Landroid/util/AtomicFile;)V

    :goto_2
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->readState()V

    invoke-static {}, Landroid/app/AppOpsManager;->invalidateAppOpModeCache()V

    invoke-static {}, Landroid/app/AppOpsManager;->disableAppOpModeCache()V

    new-instance p1, Lcom/android/server/appop/LegacyHistoricalRegistry;

    invoke-direct {p1, p0, p4}, Lcom/android/server/appop/LegacyHistoricalRegistry;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/LegacyHistoricalRegistry;

    return-void
.end method

.method public static addCallbacks(Ljava/util/HashMap;IILjava/lang/String;ILandroid/util/ArraySet;)Ljava/util/HashMap;
    .locals 5

    if-nez p5, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :cond_1
    invoke-virtual {p5}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p5, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$ModeCallback;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v3, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->addChange(Ljava/util/ArrayList;IILjava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    if-eq v4, v3, :cond_2

    invoke-virtual {p0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public static addChange(Ljava/util/ArrayList;IILjava/lang/String;I)Ljava/util/ArrayList;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$ChangeRec;

    iget v4, v3, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    if-ne v4, p1, :cond_1

    iget-object v3, v3, Lcom/android/server/appop/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    new-instance v0, Lcom/android/server/appop/AppOpsService$ChangeRec;

    invoke-direct {v0, p1, p2, p4, p3}, Lcom/android/server/appop/AppOpsService$ChangeRec;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object p0
.end method

.method public static checkSystemUid(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, " must by called by the system"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, "AppOps service (appops) dump options:"

    const-string v1, "  -h"

    const-string v2, "    Print this help text."

    const-string v3, "  --op [OP]"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    Limit output to data associated with the given app op code."

    const-string v1, "  --mode [MODE]"

    const-string v2, "    Limit output to data associated with the given app op mode."

    const-string v3, "  --package [PACKAGE]"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    Limit output to data associated with the given package name."

    const-string v1, "  --attributionTag [attributionTag]"

    const-string v2, "    Limit output to data associated with the given attribution tag."

    const-string v3, "  --include-discrete [n]"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    Include discrete ops limited to n per dimension. Use zero for no limit."

    const-string v1, "  --watchers"

    const-string v2, "    Only output the watcher sections."

    const-string v3, "  --history"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    Only output history."

    const-string v1, "  --uid-state-changes"

    const-string v2, "    Include logs about uid state changes."

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static dumpStatesLocked(Ljava/io/PrintWriter;Ljava/lang/String;IJLcom/android/server/appop/AppOpsService$Op;JLjava/text/SimpleDateFormat;Ljava/util/Date;)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p9

    iget-object v3, v1, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    const-string/jumbo v4, "default:0"

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_d

    and-int/lit8 v8, p2, 0x4

    if-eqz v8, :cond_0

    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v9, p1

    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    move-object/from16 v24, v3

    move/from16 v25, v5

    move/from16 v21, v7

    move-object v5, v4

    goto/16 :goto_6

    :cond_0
    move-object/from16 v9, p1

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "        "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "=[\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v10, v1, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v10, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArrayMap;

    if-nez v10, :cond_2

    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    :cond_2
    new-instance v11, Landroid/util/ArrayMap;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Landroid/util/ArrayMap;-><init>(I)V

    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/appop/AttributedOp;

    invoke-virtual {v10}, Lcom/android/server/appop/AttributedOp;->createAttributedOpEntryLocked()Landroid/app/AppOpsManager$AttributedOpEntry;

    move-result-object v10

    invoke-virtual {v11, v8, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    new-instance v10, Landroid/app/AppOpsManager$OpEntry;

    iget-object v12, v1, Lcom/android/server/appop/AppOpsService$Op;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v12, v12, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v13, v1, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    iget v14, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v15, v1, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-interface {v12, v14, v13, v15}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(IILjava/lang/String;)I

    move-result v12

    invoke-direct {v10, v14, v12, v11}, Landroid/app/AppOpsManager$OpEntry;-><init>(IILjava/util/Map;)V

    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-virtual {v10}, Landroid/app/AppOpsManager$AttributedOpEntry;->collectKeys()Landroid/util/ArraySet;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_a

    invoke-virtual {v11, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v6

    const-wide/16 v18, 0x0

    invoke-static/range {v16 .. v17}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v14

    move-object v15, v11

    move/from16 v20, v12

    invoke-virtual {v10, v6, v6, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(III)J

    move-result-wide v11

    move/from16 v21, v7

    move-object/from16 v22, v8

    invoke-virtual {v10, v6, v6, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(III)J

    move-result-wide v7

    move-object/from16 v24, v3

    move-object/from16 v23, v4

    invoke-virtual {v10, v6, v6, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(III)J

    move-result-wide v3

    invoke-virtual {v10, v6, v6, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v6

    move-object/from16 v33, v25

    move/from16 v25, v5

    move-object/from16 v5, v33

    goto :goto_2

    :cond_4
    const/4 v14, 0x0

    const/4 v6, -0x1

    move/from16 v25, v5

    move-object v5, v14

    :goto_2
    cmp-long v26, v11, v18

    const-string v9, "          "

    move-object/from16 v27, v10

    const-string/jumbo v10, "]"

    move/from16 v28, v13

    const-string v13, ", attributionTag="

    move-object/from16 v29, v15

    const-string v15, ", pkg="

    const-string/jumbo v1, "uid="

    move-wide/from16 v30, v7

    const-string v7, " proxy["

    const-string v8, ")"

    move-object/from16 v32, v10

    const-string v10, " ("

    if-lez v26, :cond_7

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v26, v9

    const-string v9, "Access: "

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static/range {v16 .. v17}, Landroid/app/AppOpsManager;->keyToString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v11, v12}, Ljava/util/Date;->setTime(J)V

    invoke-virtual/range {p8 .. p9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-long v11, v11, p6

    invoke-static {v11, v12, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    cmp-long v9, v3, v18

    if-lez v9, :cond_5

    const-string v9, " duration="

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    :cond_5
    if-ltz v6, :cond_6

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v3, v32

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move-object/from16 v3, v32

    :goto_3
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    goto :goto_4

    :cond_7
    move-object/from16 v26, v9

    move-object/from16 v3, v32

    :goto_4
    cmp-long v4, v30, v18

    if-lez v4, :cond_9

    move-object/from16 v4, v26

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "Reject: "

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static/range {v16 .. v17}, Landroid/app/AppOpsManager;->keyToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v11, v30

    invoke-virtual {v2, v11, v12}, Ljava/util/Date;->setTime(J)V

    invoke-virtual/range {p8 .. p9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-long v9, v11, p6

    invoke-static {v9, v10, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-ltz v6, :cond_8

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    :cond_9
    add-int/lit8 v13, v28, 0x1

    move-object/from16 v9, p1

    move-object/from16 v1, p5

    move/from16 v12, v20

    move/from16 v7, v21

    move-object/from16 v8, v22

    move-object/from16 v4, v23

    move-object/from16 v3, v24

    move/from16 v5, v25

    move-object/from16 v10, v27

    move-object/from16 v11, v29

    goto/16 :goto_1

    :cond_a
    move-object/from16 v24, v3

    move-object/from16 v23, v4

    move/from16 v25, v5

    move/from16 v21, v7

    move-object/from16 v22, v8

    const-wide/16 v18, 0x0

    iget-object v3, v1, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v5, v23

    invoke-virtual {v3, v5, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AttributedOp;

    invoke-virtual {v3}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, v3, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const-wide v6, 0x7fffffffffffffffL

    move-wide/from16 v14, v18

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v4, :cond_b

    iget-object v9, v3, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    iget-wide v10, v9, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartElapsedTime:J

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iget v9, v9, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    int-to-long v9, v9

    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_b
    const-string v3, "          Running start at: "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-long v3, p3, v6

    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    const-wide/16 v3, 0x1

    cmp-long v3, v14, v3

    if-lez v3, :cond_c

    const-string v3, "          startNesting="

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v14, v15}, Ljava/io/PrintWriter;->println(J)V

    :cond_c
    const-string v3, "        ]\n"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_6
    add-int/lit8 v7, v21, 0x1

    move-object v4, v5

    move-object/from16 v3, v24

    move/from16 v5, v25

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method public static ensureHistoricalOpRequestIsValid(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJJI)V
    .locals 4

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-eq p0, v2, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v3

    :goto_0
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    goto :goto_2

    :cond_1
    if-ne p0, v2, :cond_2

    move p0, v1

    goto :goto_1

    :cond_2
    move p0, v3

    :goto_1
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    :goto_2
    and-int/lit8 p0, p4, 0x2

    if-eqz p0, :cond_3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_3
    if-nez p1, :cond_4

    move p0, v1

    goto :goto_3

    :cond_4
    move p0, v3

    :goto_3
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    :goto_4
    and-int/lit8 p0, p4, 0x4

    if-nez p0, :cond_6

    if-nez p2, :cond_5

    move p0, v1

    goto :goto_5

    :cond_5
    move p0, v3

    :goto_5
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    :cond_6
    and-int/lit8 p0, p4, 0x8

    if-eqz p0, :cond_7

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_7
    if-nez p3, :cond_8

    move p0, v1

    goto :goto_6

    :cond_8
    move p0, v3

    :goto_6
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    :goto_7
    const/16 p0, 0xf

    invoke-static {p4, p0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    invoke-static {p5, p6}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    cmp-long p0, p7, p5

    if-lez p0, :cond_9

    goto :goto_8

    :cond_9
    move v1, v3

    :goto_8
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    const/16 p0, 0x1f

    invoke-static {p9, p0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    return-void
.end method

.method public static getOpEntryForResult(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Landroid/app/AppOpsManager$OpEntry;
    .locals 4

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    if-nez p1, :cond_0

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AttributedOp;

    invoke-virtual {v3}, Lcom/android/server/appop/AttributedOp;->createAttributedOpEntryLocked()Landroid/app/AppOpsManager$AttributedOpEntry;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/app/AppOpsManager$OpEntry;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Op;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v2, p0, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget v3, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3, v2, p0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(IILjava/lang/String;)I

    move-result p0

    invoke-direct {p1, v3, p0, v0}, Landroid/app/AppOpsManager$OpEntry;-><init>(IILjava/util/Map;)V

    return-object p1
.end method

.method public static getPackagesForUid(I)[Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_1
    return-object p0
.end method

.method public static isAttributionInPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedAttribution;

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v0
.end method

.method public static isAttributionTagDefined(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1, p2}, Lcom/android/server/appop/AppOpsService;->isAttributionInPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/server/appop/AppOpsService;->isAttributionInPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static logVerifyAndGetBypassFailure(ILjava/lang/SecurityException;Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    const-string v1, "Cannot "

    const-string v2, "AppOps"

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": isolated UID"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v3, 0x2710

    if-ge v0, v3, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": non-application UID "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static resolveNonAppUid(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move p0, v1

    goto :goto_1

    :sswitch_0
    const-string/jumbo v2, "audioserver"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x5

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "shell"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x4

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "media"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x3

    goto :goto_1

    :sswitch_3
    const-string/jumbo v2, "root"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x2

    goto :goto_1

    :sswitch_4
    const-string/jumbo v2, "cameraserver"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    goto :goto_1

    :sswitch_5
    const-string/jumbo v2, "dumpstate"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    move p0, v0

    :goto_1
    packed-switch p0, :pswitch_data_0

    return v1

    :pswitch_0
    const/16 p0, 0x411

    return p0

    :pswitch_1
    const/16 p0, 0x3f5

    return p0

    :pswitch_2
    return v0

    :pswitch_3
    const/16 p0, 0x417

    return p0

    :pswitch_4
    const/16 p0, 0x7d0

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x4faa5ce3 -> :sswitch_5
        -0x1dbbd58 -> :sswitch_4
        0x3580e2 -> :sswitch_3
        0x62f6fe4 -> :sswitch_2
        0x6855e30 -> :sswitch_1
        0x50251299 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public static shouldBlockCommand(ILjava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    const-string v0, "INTERACT_ACROSS_PROFILES"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "allow"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-static {p0, p1}, Lcom/android/server/appop/AppOpsService;->shouldBlockCommand$1(ILjava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static shouldBlockCommand$1(ILjava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    const-string/jumbo v1, "appops"

    invoke-interface {v0, v1, p1, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->shouldBlockCommand(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static shouldStartForMode(IZ)Z
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->addHistoricalOps_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/LegacyHistoricalRegistry;

    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Interaction before persistence initialized"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    invoke-virtual {p1, v1, v2}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->offerFirst(Ljava/lang/Object;)Z

    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lcom/android/server/appop/LegacyHistoricalRegistry;->persistPendingHistory(Ljava/util/List;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final checkAudioOperation(IIILjava/lang/String;)I
    .locals 6

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v2, :cond_0

    new-instance v5, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v5, p0, v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;I)V

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkAudioOperation(IIILjava/lang/String;Lcom/android/internal/util/function/QuadFunction;)I

    move-result p0

    return p0

    :cond_0
    move-object v2, v1

    move v1, p1

    move-object p1, v2

    move v2, p2

    move v3, p3

    move-object v4, p4

    new-instance v5, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda3;

    const/4 p0, 0x0

    invoke-direct {v5, p1, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    invoke-interface/range {v0 .. v5}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkAudioOperation(IIILjava/lang/String;Lcom/android/internal/util/function/QuadFunction;)I

    move-result p0

    return p0

    :cond_1
    move-object v2, v1

    move v1, p1

    move-object p1, v2

    move v2, p2

    move v3, p3

    move-object v4, p4

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v0, :cond_2

    new-instance v5, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda3;

    const/4 p0, 0x0

    invoke-direct {v5, p1, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    invoke-interface/range {v0 .. v5}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkAudioOperation(IIILjava/lang/String;Lcom/android/internal/util/function/QuadFunction;)I

    move-result p0

    return p0

    :cond_2
    invoke-static {p1, v1, v2, v3, v4}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mcheckAudioOperationImpl(Lcom/android/server/appop/AppOpsService;IIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final checkOperation(IILjava/lang/String;)I
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    invoke-static {}, Landroid/os/Process;->myPid()I

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkOperation(IIIZLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final checkOperationForDevice(IILjava/lang/String;Ljava/lang/String;I)I
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    invoke-static {}, Landroid/os/Process;->myPid()I

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    const/4 v4, 0x0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    move v3, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkOperation(IIIZLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final checkOperationRaw(IILjava/lang/String;Ljava/lang/String;)I
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    invoke-static {}, Landroid/os/Process;->myPid()I

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkOperation(IIIZLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final checkOperationRawForDevice(IILjava/lang/String;Ljava/lang/String;I)I
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    invoke-static {}, Landroid/os/Process;->myPid()I

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    const/4 v4, 0x1

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    move v3, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkOperation(IIIZLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final checkPackage(ILjava/lang/String;)I
    .locals 7

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v2, p1

    move-object v1, p2

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService;->resolveNonAppUid(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x0

    if-eq p0, v2, :cond_1

    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    const/4 p2, 0x1

    if-eqz p0, :cond_0

    move p0, p2

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    if-eqz p0, :cond_2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v0, p0, v1, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_2

    :cond_1
    return p1

    :catch_0
    :cond_2
    const/4 p0, 0x2

    return p0
.end method

.method public final clearHistory()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->clearHistory_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/LegacyHistoricalRegistry;

    invoke-virtual {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->clearHistoricalRegistry()V

    iget-object p0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsXmlRegistry;

    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->clearHistory()V

    return-void
.end method

.method public final collectAsyncNotedOp(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v4, p5

    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    and-int/lit8 v2, p3, 0x9

    if-eqz v2, :cond_1

    if-eqz p8, :cond_1

    :try_start_1
    invoke-virtual {v1, v4}, Lcom/android/server/appop/AppOpsService;->switchPackageIfBootTimeOrRarelyUsedLocked(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->reportRuntimeAppOpAccessMessageInternalLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v1

    move-object v10, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v9, v1

    goto/16 :goto_3

    :cond_1
    :goto_0
    move-object v9, v1

    move-object v10, v4

    :goto_1
    :try_start_2
    new-instance v11, Landroid/util/Pair;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v11, v10, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, v9, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/os/RemoteCallbackList;

    if-nez v12, :cond_2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception v0

    goto/16 :goto_3

    :cond_2
    const/4 v13, 0x1

    :try_start_3
    new-array v14, v13, [Z

    const/4 v15, 0x0

    aput-boolean v15, v14, v15

    move v2, v15

    :goto_2
    move/from16 v1, p4

    if-ge v2, v1, :cond_5

    move v3, v2

    move v2, v0

    new-instance v0, Landroid/app/AsyncNotedAppOp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move/from16 v1, p2

    move-object/from16 v4, p7

    move/from16 v16, v3

    move-object/from16 v3, p6

    invoke-direct/range {v0 .. v6}, Landroid/app/AsyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;J)V

    move/from16 v17, v2

    aput-boolean v15, v14, v15

    move-object v1, v0

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;

    move/from16 v5, p1

    move/from16 v3, p2

    move-object/from16 v6, p6

    move-object v4, v10

    move-object v2, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;-><init>(Landroid/app/AsyncNotedAppOp;[ZILjava/lang/String;ILjava/lang/String;)V

    move-object/from16 v18, v1

    move-object v1, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    aget-boolean v1, v2, v15

    if-nez v1, :cond_4

    iget-object v1, v9, Lcom/android/server/appop/AppOpsService;->mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v13}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v3, v9, Lcom/android/server/appop/AppOpsService;->mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v11, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0xa

    if-le v0, v3, :cond_4

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v0, v16, 0x1

    move-object/from16 v10, p5

    move-object v14, v2

    move v2, v0

    move/from16 v0, v17

    goto :goto_2

    :cond_5
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final collectNoteOpCallsForValidation(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public final collectOps(Lcom/android/server/appop/AppOpsService$Ops;[ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v2, "android.permission.GET_APP_OPS_STATS"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    const/16 v1, 0x7d0

    if-nez p2, :cond_3

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move v2, v0

    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$Op;

    iget v4, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v4}, Landroid/app/AppOpsManager;->opRestrictsRead(I)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    if-le v2, v1, :cond_2

    goto :goto_5

    :cond_2
    invoke-static {v3, p3}, Lcom/android/server/appop/AppOpsService;->getOpEntryForResult(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    add-int/2addr v3, v2

    move v2, v3

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    move v3, v0

    :goto_3
    array-length v4, p2

    if-ge v0, v4, :cond_6

    aget v4, p2, v0

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$Op;

    if-eqz v4, :cond_8

    if-nez v2, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    iget v5, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v5}, Landroid/app/AppOpsManager;->opRestrictsRead(I)Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez p0, :cond_5

    goto :goto_4

    :cond_5
    if-le v3, v1, :cond_7

    :cond_6
    move-object p2, v2

    move v2, v3

    goto :goto_5

    :cond_7
    invoke-static {v4, p3}, Lcom/android/server/appop/AppOpsService;->getOpEntryForResult(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    add-int/2addr v4, v3

    move v3, v4

    :cond_8
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    :goto_5
    if-le v2, v1, :cond_a

    const-string p0, "AppOps"

    const-string/jumbo p1, "The number of attributed op entries has exceeded the threshold. This could be due to DoS attack from malicious apps. The result is throttled."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-object p2
.end method

.method public final collectRuntimeAppOpAccessMessage()Landroid/app/RuntimeAppOpAccessMessage;
    .locals 5

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->getInstrumentationSourceUid(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    return-object v3

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.GET_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCollectedRuntimePermissionMessage:Landroid/app/RuntimeAppOpAccessMessage;

    iput-object v3, p0, Lcom/android/server/appop/AppOpsService;->mCollectedRuntimePermissionMessage:Landroid/app/RuntimeAppOpAccessMessage;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final collectUidOps(Lcom/android/server/appop/AppOpsService$UidState;[I)Ljava/util/ArrayList;
    .locals 5

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget p1, p1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-interface {p0, p1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getNonDefaultUidModes(I)Landroid/util/SparseIntArray;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-object p1

    :cond_1
    const/4 v1, 0x0

    if-nez p2, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p2

    new-instance v2, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {p0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    sget-object v4, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v2, p2, v3, v4}, Landroid/app/AppOpsManager$OpEntry;-><init>(IILjava/util/Map;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object p1

    :cond_3
    :goto_2
    array-length v0, p2

    if-ge v1, v0, :cond_6

    aget v0, p2, v1

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_5

    if-nez p1, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    new-instance v2, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    sget-object v4, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v2, v0, v3, v4}, Landroid/app/AppOpsManager$OpEntry;-><init>(IILjava/util/Map;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-object p1
.end method

.method public final doForAllAttributedOpsInUidLocked(ILjava/util/function/Consumer;)V
    .locals 12

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appop/AppOpsService$UidState;

    if-nez p0, :cond_0

    goto :goto_4

    :cond_0
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_4

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_3

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$Op;

    iget-object v6, v5, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v7, v0

    :goto_2
    if-ge v7, v6, :cond_2

    iget-object v8, v5, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v9

    move v10, v0

    :goto_3
    if-ge v10, v9, :cond_1

    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/appop/AttributedOp;

    invoke-interface {p2, v11}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_4
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 37
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v4, "AppOps"

    invoke-static {v3, v4, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_44

    :cond_0
    const/4 v4, 0x0

    const/4 v13, 0x0

    const/16 v5, 0xa

    if-eqz v0, :cond_15

    move v6, v5

    move v7, v13

    move v8, v7

    move v9, v8

    move v10, v9

    move/from16 v16, v10

    move/from16 v17, v16

    move/from16 v18, v17

    const/16 p1, -0x1

    const/4 v11, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    move-object v5, v4

    :goto_0
    array-length v3, v0

    if-ge v7, v3, :cond_14

    aget-object v3, v0, v7

    const/16 v19, 0x1

    const-string v12, "-h"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {v2}, Lcom/android/server/appop/AppOpsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_1
    const-string v12, "-a"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    move/from16 v18, v19

    goto/16 :goto_3

    :cond_2
    const-string v12, "--op"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    add-int/lit8 v7, v7, 0x1

    array-length v3, v0

    if-lt v7, v3, :cond_3

    const-string/jumbo v0, "No argument for --op option"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_3
    aget-object v3, v0, v7

    invoke-static {v2, v3}, Lcom/android/server/appop/AppOpsService$Shell;->-$$Nest$smstrOpToOp(Ljava/io/PrintWriter;Ljava/lang/String;)I

    move-result v15

    or-int/lit8 v10, v10, 0x8

    if-gez v15, :cond_12

    goto/16 :goto_44

    :cond_4
    const-string v12, "--package"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    add-int/lit8 v7, v7, 0x1

    array-length v3, v0

    if-lt v7, v3, :cond_5

    const-string/jumbo v0, "No argument for --package option"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_5
    aget-object v3, v0, v7

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v12, v5

    move/from16 v20, v6

    const-wide/32 v5, 0xc02000

    :try_start_1
    invoke-interface {v4, v3, v5, v6, v13}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v14
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-object v12, v5

    move/from16 v20, v6

    :catch_1
    :goto_1
    if-gez v14, :cond_6

    const-string/jumbo v0, "Unknown package: "

    invoke-static {v2, v0, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-static {v14}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v14

    or-int/lit8 v10, v10, 0x3

    move-object v4, v3

    :cond_7
    move-object v5, v12

    :goto_2
    move/from16 v6, v20

    goto/16 :goto_3

    :cond_8
    move-object v12, v5

    move/from16 v20, v6

    const-string v5, "--attributionTag"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    add-int/lit8 v7, v7, 0x1

    array-length v3, v0

    if-lt v7, v3, :cond_9

    const-string/jumbo v0, "No argument for --attributionTag option"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_9
    aget-object v3, v0, v7

    or-int/lit8 v10, v10, 0x4

    move-object v5, v3

    goto :goto_2

    :cond_a
    const-string v5, "--mode"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    add-int/lit8 v7, v7, 0x1

    array-length v3, v0

    if-lt v7, v3, :cond_b

    const-string/jumbo v0, "No argument for --mode option"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_b
    aget-object v3, v0, v7

    invoke-static {v2, v3}, Lcom/android/server/appop/AppOpsService$Shell;->strModeToMode(Ljava/io/PrintWriter;Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_7

    goto/16 :goto_44

    :cond_c
    const-string v5, "--watchers"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    move-object v5, v12

    move/from16 v9, v19

    goto :goto_2

    :cond_d
    const-string v5, "--include-discrete"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    add-int/lit8 v7, v7, 0x1

    array-length v3, v0

    if-lt v7, v3, :cond_e

    const-string/jumbo v0, "No argument for --include-discrete option"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_e
    :try_start_2
    aget-object v3, v0, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move v6, v3

    move-object v5, v12

    move/from16 v16, v19

    goto :goto_3

    :catch_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Wrong parameter: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v0, v7

    invoke-static {v1, v0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void

    :cond_f
    const-string v5, "--history"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    move-object v5, v12

    move/from16 v8, v19

    goto/16 :goto_2

    :cond_10
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_11

    invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_11

    const-string/jumbo v0, "Unknown option: "

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_11
    const-string v5, "--uid-state-changes"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    move-object v5, v12

    move/from16 v17, v19

    goto/16 :goto_2

    :cond_12
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v0, "Unknown command: "

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_14
    move-object v12, v5

    move/from16 v20, v6

    move-object v0, v4

    move v5, v10

    move-object v3, v12

    move v4, v14

    move v6, v15

    move v12, v8

    move v14, v9

    move v15, v11

    :goto_4
    const/16 v19, 0x1

    goto :goto_5

    :cond_15
    const/16 p1, -0x1

    move/from16 v6, p1

    move v15, v6

    move-object v0, v4

    move-object v3, v0

    move/from16 v20, v5

    move v5, v13

    move v12, v5

    move v14, v12

    move/from16 v16, v14

    move/from16 v17, v16

    move/from16 v18, v17

    move v4, v15

    goto :goto_4

    :goto_5
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    monitor-enter p0

    :try_start_3
    const-string v9, "Current AppOps Service state:"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez v12, :cond_16

    if-nez v14, :cond_16

    iget-object v9, v1, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    invoke-virtual {v9, v2}, Lcom/android/server/appop/AppOpsService$Constants;->dump(Ljava/io/PrintWriter;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_45

    :cond_16
    :goto_6
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    move-object v11, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move/from16 p3, v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    if-nez v5, :cond_18

    if-gez v15, :cond_18

    iget-object v10, v1, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    if-eqz v10, :cond_18

    if-nez p3, :cond_18

    if-nez v12, :cond_18

    const-string v10, "  Profile owners:"

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v22, v3

    const/4 v10, 0x0

    :goto_7
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v10, v3, :cond_17

    const-string v3, "    User #"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v10}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_17
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    goto :goto_8

    :cond_18
    move-object/from16 v22, v3

    :goto_8
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_1f

    if-nez v12, :cond_1f

    move/from16 v24, v5

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/16 v23, 0x0

    :goto_9
    iget-object v5, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_1e

    if-ltz v6, :cond_19

    iget-object v5, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    if-eq v6, v5, :cond_19

    move-object/from16 v25, v7

    move-wide/from16 v27, v8

    goto :goto_c

    :cond_19
    iget-object v5, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    move-object/from16 v25, v7

    move-wide/from16 v27, v8

    move/from16 v26, v23

    const/4 v7, 0x0

    const/16 v23, 0x0

    :goto_a
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v7, v8, :cond_1d

    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appop/AppOpsService$ModeCallback;

    if-eqz v0, :cond_1a

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    if-eq v4, v9, :cond_1a

    goto :goto_b

    :cond_1a
    if-nez v10, :cond_1b

    const-string v9, "  Op mode watchers:"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v10, v19

    :cond_1b
    if-nez v23, :cond_1c

    const-string v9, "    Op "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-static {v9}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, ":"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v23, v19

    :cond_1c
    const-string v9, "      #"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v9, ": "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    move/from16 v26, v19

    :goto_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_1d
    move/from16 v23, v26

    :goto_c
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v7, v25

    move-wide/from16 v8, v27

    goto/16 :goto_9

    :cond_1e
    move-object/from16 v25, v7

    move-wide/from16 v27, v8

    goto :goto_d

    :cond_1f
    move/from16 v24, v5

    move-object/from16 v25, v7

    move-wide/from16 v27, v8

    const/16 v23, 0x0

    :goto_d
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_23

    if-gez v6, :cond_23

    if-nez v12, :cond_23

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_e
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v3, v7, :cond_23

    if-eqz v0, :cond_20

    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_20

    goto :goto_10

    :cond_20
    if-nez v5, :cond_21

    const-string v5, "  Package mode watchers:"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v5, v19

    :cond_21
    const-string v7, "    Pkg "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    const/4 v8, 0x0

    :goto_f
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v9

    if-ge v8, v9, :cond_22

    const-string v9, "      #"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v9, ": "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_22
    move/from16 v23, v19

    :goto_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_23
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_26

    if-gez v6, :cond_26

    if-nez v12, :cond_26

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_11
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v3, v7, :cond_26

    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/AppOpsService$ModeCallback;

    if-eqz v0, :cond_24

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    if-eq v4, v8, :cond_24

    goto :goto_12

    :cond_24
    if-nez v5, :cond_25

    const-string v5, "  All op mode watchers:"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v5, v19

    :cond_25
    const-string v8, "    "

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, ": "

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    move/from16 v23, v19

    :goto_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_26
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_2f

    if-gez v15, :cond_2f

    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_13
    iget-object v9, v1, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v3, v9, :cond_2e

    iget-object v9, v1, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v9, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-gtz v10, :cond_27

    goto :goto_14

    :cond_27
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v10, v23

    check-cast v10, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    if-ltz v6, :cond_28

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v23

    if-gez v23, :cond_28

    goto :goto_14

    :cond_28
    if-eqz v0, :cond_29

    iget v5, v10, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mWatchingUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    if-eq v4, v5, :cond_29

    :goto_14
    move/from16 v23, v3

    goto :goto_17

    :cond_29
    if-nez v8, :cond_2a

    const-string v5, "  All op active watchers:"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v8, v19

    :cond_2a
    const-string v5, "    "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " ->"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "        ["

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_15
    if-ge v7, v5, :cond_2d

    if-lez v7, :cond_2b

    move/from16 v23, v3

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_16

    :cond_2b
    move/from16 v23, v3

    :goto_16
    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v3, v5, -0x1

    if-ge v7, v3, :cond_2c

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    :cond_2c
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v23

    goto :goto_15

    :cond_2d
    move/from16 v23, v3

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "        "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_17
    add-int/lit8 v3, v23, 0x1

    goto/16 :goto_13

    :cond_2e
    move/from16 v23, v19

    :cond_2f
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_38

    if-gez v15, :cond_38

    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v5, 0x0

    const/4 v10, 0x0

    :goto_18
    if-ge v10, v3, :cond_37

    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-gtz v8, :cond_30

    goto :goto_19

    :cond_30
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/AppOpsService$StartedCallback;

    if-ltz v6, :cond_31

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v8

    if-gez v8, :cond_31

    goto :goto_19

    :cond_31
    if-eqz v0, :cond_32

    iget v8, v9, Lcom/android/server/appop/AppOpsService$StartedCallback;->mWatchingUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    if-eq v4, v8, :cond_32

    :goto_19
    move/from16 v23, v3

    goto :goto_1c

    :cond_32
    if-nez v5, :cond_33

    const-string v5, "  All op started watchers:"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v5, v19

    :cond_33
    const-string v8, "    "

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, " ->"

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "        ["

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v8

    move/from16 v23, v3

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v8, :cond_36

    if-lez v3, :cond_34

    move/from16 v29, v5

    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_1b

    :cond_34
    move/from16 v29, v5

    :goto_1b
    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v5, v8, -0x1

    if-ge v3, v5, :cond_35

    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(C)V

    :cond_35
    add-int/lit8 v3, v3, 0x1

    move/from16 v5, v29

    goto :goto_1a

    :cond_36
    move/from16 v29, v5

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "        "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    move/from16 v5, v29

    :goto_1c
    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v23

    goto/16 :goto_18

    :cond_37
    move/from16 v23, v19

    :cond_38
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_41

    if-gez v15, :cond_41

    const/4 v3, 0x0

    const/4 v10, 0x0

    :goto_1d
    iget-object v5, v1, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v10, v5, :cond_40

    iget-object v5, v1, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-gtz v7, :cond_39

    const/4 v7, 0x0

    goto :goto_1e

    :cond_39
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appop/AppOpsService$NotedCallback;

    if-ltz v6, :cond_3a

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v9

    if-gez v9, :cond_3a

    goto :goto_1e

    :cond_3a
    if-eqz v0, :cond_3b

    iget v9, v8, Lcom/android/server/appop/AppOpsService$NotedCallback;->mWatchingUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    if-eq v4, v9, :cond_3b

    :goto_1e
    move/from16 v23, v3

    const/16 v3, 0x2c

    goto :goto_22

    :cond_3b
    if-nez v3, :cond_3c

    const-string v3, "  All op noted watchers:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v3, v19

    :cond_3c
    const-string v9, "    "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, " ->"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v9, "        ["

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v9

    :goto_1f
    if-ge v7, v9, :cond_3f

    if-lez v7, :cond_3d

    move/from16 v23, v3

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_20

    :cond_3d
    move/from16 v23, v3

    const/16 v3, 0x20

    :goto_20
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v3, v9, -0x1

    if-ge v7, v3, :cond_3e

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_21

    :cond_3e
    const/16 v3, 0x2c

    :goto_21
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v23

    goto :goto_1f

    :cond_3f
    move/from16 v23, v3

    const/16 v3, 0x2c

    const-string/jumbo v5, "]"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "        "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_22
    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v23

    goto/16 :goto_1d

    :cond_40
    move/from16 v23, v19

    :cond_41
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    invoke-virtual {v3}, Lcom/android/server/appop/AudioRestrictionManager;->hasActiveRestrictions()Z

    move-result v3

    if-eqz v3, :cond_44

    if-gez v6, :cond_44

    if-eqz v0, :cond_44

    if-gez v15, :cond_44

    if-nez p3, :cond_44

    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    invoke-virtual {v3, v2}, Lcom/android/server/appop/AudioRestrictionManager;->dump(Ljava/io/PrintWriter;)Z

    move-result v3

    if-nez v3, :cond_43

    if-eqz v23, :cond_42

    goto :goto_23

    :cond_42
    const/4 v10, 0x0

    goto :goto_24

    :cond_43
    :goto_23
    move/from16 v10, v19

    :goto_24
    move/from16 v23, v10

    :cond_44
    if-eqz v23, :cond_45

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    :cond_45
    const/4 v3, 0x0

    :goto_25
    iget-object v5, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_6a

    iget-object v5, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$UidState;

    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v8, v5, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-interface {v7, v8}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getNonDefaultUidModes(I)Landroid/util/SparseIntArray;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez p3, :cond_46

    if-eqz v12, :cond_47

    :cond_46
    move-wide v8, v13

    move v13, v6

    move-wide v6, v8

    move/from16 v29, v3

    move v14, v4

    move-object/from16 v3, v22

    move/from16 v5, v24

    move-wide/from16 v8, v27

    :goto_26
    const/16 v21, 0x0

    goto/16 :goto_41

    :cond_47
    if-gez v6, :cond_49

    if-nez v0, :cond_49

    if-ltz v15, :cond_48

    goto :goto_27

    :cond_48
    move/from16 v29, v3

    move/from16 p1, v4

    move-object/from16 v34, v11

    goto/16 :goto_36

    :cond_49
    :goto_27
    if-ltz v6, :cond_4b

    if-eqz v7, :cond_4a

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v9

    if-ltz v9, :cond_4a

    goto :goto_28

    :cond_4a
    const/4 v10, 0x0

    goto :goto_29

    :cond_4b
    :goto_28
    move/from16 v10, v19

    :goto_29
    if-eqz v0, :cond_4d

    iget-object v9, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    if-ne v4, v9, :cond_4c

    goto :goto_2a

    :cond_4c
    const/4 v9, 0x0

    goto :goto_2b

    :cond_4d
    :goto_2a
    move/from16 v9, v19

    :goto_2b
    if-gez v15, :cond_4e

    move/from16 v26, v19

    goto :goto_2c

    :cond_4e
    const/16 v26, 0x0

    :goto_2c
    if-nez v26, :cond_51

    if-eqz v7, :cond_51

    move/from16 v29, v3

    const/4 v3, 0x0

    :goto_2d
    if-nez v26, :cond_50

    move/from16 p1, v4

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_52

    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    if-ne v4, v15, :cond_4f

    move/from16 v26, v19

    :cond_4f
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, p1

    goto :goto_2d

    :cond_50
    :goto_2e
    move/from16 p1, v4

    goto :goto_2f

    :cond_51
    move/from16 v29, v3

    goto :goto_2e

    :cond_52
    :goto_2f
    if-eqz v8, :cond_5a

    const/4 v3, 0x0

    :goto_30
    if-eqz v10, :cond_54

    if-eqz v9, :cond_54

    if-nez v26, :cond_53

    goto :goto_31

    :cond_53
    move/from16 v31, v9

    move-object/from16 v34, v11

    goto/16 :goto_34

    :cond_54
    :goto_31
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_53

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$Ops;

    if-nez v10, :cond_55

    if-eqz v4, :cond_55

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v30

    if-ltz v30, :cond_55

    move/from16 v10, v19

    :cond_55
    move/from16 v30, v3

    if-nez v26, :cond_57

    const/4 v3, 0x0

    :goto_32
    if-nez v26, :cond_57

    move/from16 v31, v9

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v3, v9, :cond_58

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/AppOpsService$Op;

    move/from16 v32, v3

    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    move/from16 v33, v10

    iget-object v10, v9, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    move-object/from16 v34, v11

    iget v11, v9, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v9, v9, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-interface {v3, v11, v9, v10}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(IILjava/lang/String;)I

    move-result v3

    if-ne v3, v15, :cond_56

    move/from16 v26, v19

    :cond_56
    add-int/lit8 v3, v32, 0x1

    move/from16 v9, v31

    move/from16 v10, v33

    move-object/from16 v11, v34

    goto :goto_32

    :cond_57
    move/from16 v31, v9

    :cond_58
    move/from16 v33, v10

    move-object/from16 v34, v11

    if-nez v31, :cond_59

    iget-object v3, v4, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    move/from16 v9, v19

    goto :goto_33

    :cond_59
    move/from16 v9, v31

    :goto_33
    add-int/lit8 v3, v30, 0x1

    move/from16 v10, v33

    move-object/from16 v11, v34

    goto :goto_30

    :goto_34
    move/from16 v9, v31

    goto :goto_35

    :cond_5a
    move-object/from16 v34, v11

    :goto_35
    if-eqz v10, :cond_5b

    if-eqz v9, :cond_5b

    if-nez v26, :cond_5c

    :cond_5b
    move-wide v8, v13

    move v13, v6

    move-wide v6, v8

    move/from16 v14, p1

    move-object/from16 v3, v22

    move/from16 v5, v24

    move-wide/from16 v8, v27

    move-object/from16 v11, v34

    goto/16 :goto_26

    :cond_5c
    :goto_36
    const-string v3, "  Uid "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v5, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v2, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v13, v14}, Lcom/android/server/appop/AppOpsService$UidState;->dump(Ljava/io/PrintWriter;J)V

    if-eqz v7, :cond_5f

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    const/4 v10, 0x0

    :goto_37
    if-ge v10, v3, :cond_5f

    invoke-virtual {v7, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v7, v10}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    if-ltz v6, :cond_5d

    if-eq v6, v4, :cond_5d

    goto :goto_38

    :cond_5d
    if-ltz v15, :cond_5e

    if-eq v15, v5, :cond_5e

    goto :goto_38

    :cond_5e
    const-string v9, "      "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ": mode="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_38
    add-int/lit8 v10, v10, 0x1

    goto :goto_37

    :cond_5f
    if-nez v8, :cond_61

    :cond_60
    move-wide v8, v13

    move v13, v6

    move-wide v6, v8

    move/from16 v14, p1

    move-object/from16 v3, v22

    move/from16 v5, v24

    move-wide/from16 v8, v27

    move-object/from16 v11, v34

    const/16 v21, 0x0

    goto/16 :goto_40

    :cond_61
    const/4 v3, 0x0

    :goto_39
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_60

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$Ops;

    if-eqz v0, :cond_63

    iget-object v5, v4, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_63

    :cond_62
    move-wide/from16 v35, v13

    move v13, v6

    move-wide/from16 v6, v35

    move/from16 v14, p1

    move/from16 v23, v3

    move-object/from16 v3, v22

    move/from16 v5, v24

    move-object/from16 v11, v34

    const/16 v21, 0x0

    move-object/from16 v22, v8

    move-wide/from16 v8, v27

    goto/16 :goto_3f

    :cond_63
    const/4 v5, 0x0

    const/4 v10, 0x0

    :goto_3a
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_62

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/AppOpsService$Op;

    iget v9, v7, Lcom/android/server/appop/AppOpsService$Op;->op:I

    if-ltz v6, :cond_64

    if-eq v6, v9, :cond_64

    move/from16 v23, v3

    move/from16 v26, v5

    goto :goto_3b

    :cond_64
    if-ltz v15, :cond_65

    iget-object v11, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    move/from16 v23, v3

    iget-object v3, v7, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    move/from16 v26, v5

    iget v5, v7, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-interface {v11, v9, v5, v3}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(IILjava/lang/String;)I

    move-result v3

    if-eq v15, v3, :cond_66

    :goto_3b
    move-wide/from16 v35, v13

    move v13, v6

    move-wide/from16 v6, v35

    move/from16 v14, p1

    move-object/from16 v3, v22

    move/from16 v5, v24

    move-object/from16 v11, v34

    const/16 v21, 0x0

    move-object/from16 v24, v4

    move-object/from16 v22, v8

    move-wide/from16 v8, v27

    goto/16 :goto_3e

    :cond_65
    move/from16 v23, v3

    move/from16 v26, v5

    :cond_66
    if-nez v10, :cond_67

    const-string v3, "    Package "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v4, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v30, v19

    goto :goto_3c

    :cond_67
    move/from16 v30, v10

    :goto_3c
    const-string v3, "      "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object v5, v7, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget v10, v7, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v11, v7, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-interface {v3, v10, v11, v5}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(IILjava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v3

    if-eq v3, v9, :cond_69

    const-string v5, " / switch "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$Op;

    if-nez v5, :cond_68

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v3

    goto :goto_3d

    :cond_68
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object v9, v5, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget v10, v5, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v5, v5, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-interface {v3, v10, v5, v9}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(IILjava/lang/String;)I

    move-result v3

    :goto_3d
    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_69
    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-wide v9, v13

    move v13, v6

    move-wide v5, v9

    move/from16 v3, v24

    move-object/from16 v24, v4

    move v4, v3

    move/from16 v14, p1

    move-object/from16 v3, v22

    move-object/from16 v10, v25

    move-object/from16 v11, v34

    const/16 v21, 0x0

    move-object/from16 v22, v8

    move-wide/from16 v8, v27

    invoke-static/range {v2 .. v11}, Lcom/android/server/appop/AppOpsService;->dumpStatesLocked(Ljava/io/PrintWriter;Ljava/lang/String;IJLcom/android/server/appop/AppOpsService$Op;JLjava/text/SimpleDateFormat;Ljava/util/Date;)V

    move-wide v6, v5

    move-object/from16 v25, v10

    move v5, v4

    move/from16 v10, v30

    :goto_3e
    add-int/lit8 v4, v26, 0x1

    move/from16 p1, v5

    move v5, v4

    move-object/from16 v4, v24

    move/from16 v24, p1

    move-wide/from16 v27, v8

    move-object/from16 v34, v11

    move/from16 p1, v14

    move-object/from16 v8, v22

    move-object/from16 v22, v3

    move/from16 v3, v23

    move-wide/from16 v35, v6

    move v6, v13

    move-wide/from16 v13, v35

    goto/16 :goto_3a

    :goto_3f
    add-int/lit8 v4, v23, 0x1

    move/from16 v24, v5

    move-wide/from16 v27, v8

    move-object/from16 v34, v11

    move/from16 p1, v14

    move-object/from16 v8, v22

    move-object/from16 v22, v3

    move v3, v4

    move-wide/from16 v35, v6

    move v6, v13

    move-wide/from16 v13, v35

    goto/16 :goto_39

    :goto_40
    move/from16 v23, v19

    :goto_41
    add-int/lit8 v4, v29, 0x1

    move-object/from16 v22, v3

    move v3, v4

    move/from16 v24, v5

    move-wide/from16 v27, v8

    move v4, v14

    move-wide/from16 v35, v6

    move v6, v13

    move-wide/from16 v13, v35

    goto/16 :goto_25

    :cond_6a
    move v14, v4

    move v13, v6

    move-object/from16 v3, v22

    move/from16 v5, v24

    if-eqz v23, :cond_6b

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    :cond_6b
    const-string v4, "  AppOps Restrictions."

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    check-cast v4, Lcom/android/server/appop/AppOpsRestrictionsImpl;

    invoke-virtual {v4, v2, v0, v13}, Lcom/android/server/appop/AppOpsRestrictionsImpl;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    if-nez v12, :cond_6d

    if-nez p3, :cond_6d

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    iget-object v4, v1, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    iget-object v4, v4, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v4, :cond_6c

    iget-object v4, v1, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    iget-object v4, v4, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    instance-of v4, v4, Lcom/android/server/policy/AppOpsPolicy;

    if-eqz v4, :cond_6c

    iget-object v4, v1, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    iget-object v4, v4, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    check-cast v4, Lcom/android/server/policy/AppOpsPolicy;

    invoke-virtual {v4, v2}, Lcom/android/server/policy/AppOpsPolicy;->dumpTags(Ljava/io/PrintWriter;)V

    goto :goto_42

    :cond_6c
    const-string v4, "  AppOps policy not set."

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6d
    :goto_42
    if-nez v18, :cond_6e

    if-eqz v17, :cond_6f

    :cond_6e
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v4, "Uid State Changes Event Log:"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService;->getUidStateTracker()Lcom/android/server/appop/AppOpsUidStateTracker;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;

    invoke-virtual {v4, v2}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->dumpEvents(Ljava/io/PrintWriter;)V

    :cond_6f
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v12, :cond_70

    if-nez p3, :cond_70

    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/LegacyHistoricalRegistry;

    move-object/from16 v6, p2

    move-object v7, v0

    move-object v8, v3

    move v4, v13

    move v3, v14

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/appop/LegacyHistoricalRegistry;->dump(IIILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    goto :goto_43

    :cond_70
    move-object v4, v3

    move-object v3, v0

    :goto_43
    if-eqz v16, :cond_71

    const-string v0, "Discrete accesses: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/LegacyHistoricalRegistry;

    move-object v1, v2

    move-object v8, v11

    move v6, v13

    move v2, v14

    move/from16 v9, v20

    move-object/from16 v7, v25

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/appop/LegacyHistoricalRegistry;->dumpDiscreteData(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;IILjava/text/SimpleDateFormat;Ljava/util/Date;I)V

    :cond_71
    :goto_44
    return-void

    :goto_45
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public final enforceManageAppOpsModes(III)V
    .locals 2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, p2, :cond_1

    if-ltz p3, :cond_1

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    if-ne p1, p2, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "android.permission.MANAGE_APP_OPS_MODES"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final extractAsyncOps(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final finishOperationForDevice(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final finishOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 11

    const-string/jumbo v0, "Operation not started: uid="

    const-string v8, "Attribution not found: uid="

    const-string/jumbo v9, "Operation not found: uid="

    const/4 v7, 0x0

    move-object v1, p0

    move v6, p3

    move-object v5, p4

    move/from16 v3, p5

    move-object/from16 v2, p6

    move-object/from16 v4, p7

    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-boolean v1, p3, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v10, 0x0

    if-nez v1, :cond_0

    move-object v4, v10

    goto :goto_0

    :cond_0
    move-object/from16 v4, p7

    :goto_0
    monitor-enter p0

    :try_start_2
    iget-boolean v5, p3, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z

    iget-object v6, p3, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v7, 0x1

    move-object v1, p0

    move/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p3, p2, v2, v7}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v10

    :goto_1
    if-nez v10, :cond_2

    const-string p1, "AppOps"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pkg="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") op="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_4

    :cond_2
    iget-object p3, v10, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    move/from16 v5, p8

    invoke-virtual {p0, v5, p2}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p3, v5, v6}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/ArrayMap;

    invoke-virtual {p3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/appop/AttributedOp;

    if-nez p3, :cond_3

    const-string p1, "AppOps"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pkg="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") op="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_3
    invoke-virtual {p3}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p3}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    const-string p1, "AppOps"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pkg="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") op="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    :goto_2
    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2, p2}, Lcom/android/server/appop/AttributedOp;->finishOrPause(Landroid/os/IBinder;ZZ)V

    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catch_0
    move-exception v0

    move/from16 v2, p5

    :goto_5
    move-object p0, v0

    goto :goto_6

    :catch_1
    move-exception v0

    move v2, v3

    goto :goto_5

    :goto_6
    const-string/jumbo p1, "finishOperation"

    invoke-static {v2, p0, p1}, Lcom/android/server/appop/AppOpsService;->logVerifyAndGetBypassFailure(ILjava/lang/SecurityException;Ljava/lang/String;)V

    return-void
.end method

.method public final finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)V

    return-void
.end method

.method public final finishProxyOperationWithState(Landroid/os/IBinder;ILandroid/content/AttributionSourceState;Z)V
    .locals 1

    new-instance v0, Landroid/content/AttributionSource;

    invoke-direct {v0, p3}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)V

    return-void
.end method

.method public final getHistoricalOps(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/os/RemoteCallback;)V
    .locals 14

    move-object/from16 v12, p12

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    move v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p6

    move-wide/from16 v5, p7

    move-wide/from16 v7, p9

    move/from16 v9, p11

    invoke-static/range {v0 .. v9}, Lcom/android/server/appop/AppOpsService;->ensureHistoricalOpRequestIsValid(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJJI)V

    const-string/jumbo v1, "callback cannot be null"

    invoke-static {v12, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    and-int/lit8 v2, p6, 0x1

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-ne p1, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ActivityManagerInternal;->getInstrumentationSourceUid(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v1, v4, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v5

    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-ne v4, v6, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    :try_start_0
    iget-object v6, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v10, v6, v5, v7}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v6, v7, :cond_3

    move v6, v2

    goto :goto_2

    :cond_3
    move v6, v5

    :goto_2
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    const-string/jumbo v10, "android.permission.GET_HISTORICAL_APP_OPS_STATS"

    invoke-virtual {v7, v10, v8, v9}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_4

    goto :goto_3

    :cond_4
    move v2, v5

    :goto_3
    if-nez v4, :cond_5

    if-nez v1, :cond_5

    if-nez v6, :cond_5

    if-nez v2, :cond_5

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda11;

    invoke-direct {p1, v12}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda11;-><init>(Landroid/os/RemoteCallback;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const-string/jumbo v5, "getHistoricalOps"

    const-string/jumbo v6, "android.permission.GET_APP_OPS_STATS"

    invoke-virtual {v1, v6, v2, v4, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    :goto_4
    const/4 v1, 0x0

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v5, v2

    goto :goto_5

    :cond_6
    move-object v5, v1

    :goto_5
    and-int/lit8 v2, p5, 0x4

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/permission/PermissionManager;->getIndicatorExemptedPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    goto :goto_6

    :cond_7
    move-object v2, v1

    :goto_6
    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :cond_8
    move-object v11, v1

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v13

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda0;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/LegacyHistoricalRegistry;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-static/range {v0 .. v12}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/DodecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p0

    invoke-virtual {v13, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :catch_0
    return-void
.end method

.method public final getHistoricalOpsFromDiskRaw(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/os/RemoteCallback;)V
    .locals 14

    move v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p6

    move-wide/from16 v5, p7

    move-wide/from16 v7, p9

    move/from16 v9, p11

    invoke-static/range {v0 .. v9}, Lcom/android/server/appop/AppOpsService;->ensureHistoricalOpRequestIsValid(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJJI)V

    const-string/jumbo v0, "callback cannot be null"

    move-object/from16 v12, p12

    invoke-static {v12, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v4, "getHistoricalOps"

    const-string/jumbo v5, "android.permission.MANAGE_APPOPS"

    invoke-virtual {v0, v5, v1, v2, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    const/4 v0, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v0

    :goto_0
    and-int/lit8 v1, p5, 0x4

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/permission/PermissionManager;->getIndicatorExemptedPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :cond_2
    move-object v11, v0

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v13

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda0;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/LegacyHistoricalRegistry;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-static/range {v0 .. v12}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/DodecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p0

    invoke-virtual {v13, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;
    .locals 6

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$Op;

    if-nez v0, :cond_1

    if-nez p4, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/server/appop/AppOpsService$Op;

    iget-object v2, p1, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget-object v3, p1, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    move-object v1, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$Op;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;II)V

    invoke-virtual {p1, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    if-eqz p4, :cond_2

    iget-boolean p0, v1, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    if-nez p0, :cond_2

    const/4 p0, 0x1

    iput-boolean p0, v1, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    iget-object p1, v1, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Lcom/android/server/appop/AppOpsService$1;

    sget-wide p2, Lcom/android/server/appop/AppOpsService;->WRITE_DELAY:J

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-object v0
.end method

.method public final getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 12

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.GET_APP_OPS_STATS"

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    :goto_0
    invoke-static {p1, p2}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_2
    monitor-enter p0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p0

    move v6, p1

    :try_start_0
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object p0

    if-nez p0, :cond_3

    monitor-exit v5

    return-object v2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_3
    const-string/jumbo p1, "default:0"

    invoke-virtual {v5, p0, p3, p1}, Lcom/android/server/appop/AppOpsService;->collectOps(Lcom/android/server/appop/AppOpsService$Ops;[ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance p3, Landroid/app/AppOpsManager$PackageOps;

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget p0, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-direct {p3, v0, p0, p1}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v5

    return-object p2

    :cond_5
    :goto_1
    monitor-exit v5

    return-object v2

    :goto_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/appop/AppOpsService$Ops;

    if-nez p1, :cond_2

    if-nez p6, :cond_1

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p1, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-direct {p1, p2, p0}, Lcom/android/server/appop/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;)V

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p6, :cond_5

    if-eqz p5, :cond_3

    iput-object p5, p1, Lcom/android/server/appop/AppOpsService$Ops;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    :cond_3
    if-eqz p3, :cond_5

    iget-object p0, p1, Lcom/android/server/appop/AppOpsService$Ops;->knownAttributionTags:Landroid/util/ArraySet;

    invoke-virtual {p0, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_4

    iget-object p0, p1, Lcom/android/server/appop/AppOpsService$Ops;->validAttributionTags:Landroid/util/ArraySet;

    invoke-virtual {p0, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_4
    iget-object p0, p1, Lcom/android/server/appop/AppOpsService$Ops;->validAttributionTags:Landroid/util/ArraySet;

    invoke-virtual {p0, p3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_5
    return-object p1
.end method

.method public final getPackageListAndResample()Ljava/util/List;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Lcom/android/server/pm/PackageList;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/pm/PackageList;->mPackageNames:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v8, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v9, v3, 0x1

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    const-wide/16 v5, 0x1000

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(IIJLjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/appop/AppOpsService;->isSamplingTarget(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move v3, v9

    goto :goto_0

    :cond_1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/appop/AppOpsService;->resamplePackageAndAppOpLocked(Ljava/util/List;)V

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    :cond_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "PackageManagerInternal not loaded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getPackagesForOps([I)Ljava/util/List;
    .locals 1

    const-string/jumbo v0, "default:0"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getPackagesForOpsForDevice([ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getPackagesForOpsForDevice([ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 16

    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.GET_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    move-object v7, v6

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_6

    iget-object v8, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appop/AppOpsService$UidState;

    iget-object v9, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_2

    :cond_1
    if-nez v2, :cond_3

    iget v9, v8, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    if-eq v0, v9, :cond_3

    :cond_2
    :goto_2
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_3
    iget-object v8, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v9, :cond_2

    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/appop/AppOpsService$Ops;

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-virtual {v1, v11, v12, v13}, Lcom/android/server/appop/AppOpsService;->collectOps(Lcom/android/server/appop/AppOpsService$Ops;[ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    if-eqz v14, :cond_5

    if-nez v7, :cond_4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    new-instance v15, Landroid/app/AppOpsManager$PackageOps;

    iget-object v3, v11, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v11, v11, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v11, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-direct {v15, v3, v11, v14}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_7

    return-object v6

    :cond_7
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v7}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0

    :goto_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getPersistentDeviceIdForOp(II)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Landroid/permission/PermissionManager;->resolveDeviceIdForPermissionCheck(Landroid/content/Context;ILjava/lang/String;)I

    move-result p1

    const-string/jumbo p2, "default:0"

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-nez v0, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getPersistentIdForDevice(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mKnownDeviceIds:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Ljava/lang/String;

    :cond_2
    if-eqz p2, :cond_3

    return-object p2

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "Requested persistentId for invalid virtualDeviceId: "

    invoke-static {p1, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getUidOps(I[I)Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.GET_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object p1

    if-nez p1, :cond_0

    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->collectUidOps(Lcom/android/server/appop/AppOpsService$UidState;[I)Ljava/util/ArrayList;

    move-result-object p2

    if-nez p2, :cond_1

    monitor-exit p0

    return-object v4

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/app/AppOpsManager$PackageOps;

    iget p1, p1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-direct {v1, v4, p1, p2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p2, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-direct {p2, p0, p1}, Lcom/android/server/appop/AppOpsService$UidState;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p2

    :cond_1
    return-object v0
.end method

.method public final getUidStateTracker()Lcom/android/server/appop/AppOpsUidStateTracker;
    .locals 7

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStateTracker:Lcom/android/server/appop/AppOpsUidStateTrackerImpl;

    if-nez v0, :cond_1

    new-instance v1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/ActivityManagerInternal;

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/appop/AppOpsService;)V

    sget-object v4, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    iget-object v5, p0, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    move-object v6, v3

    new-instance v3, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;

    invoke-direct {v3, v0, v6}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;-><init>(Landroid/os/Handler;Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda13;)V

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;-><init>(Landroid/app/ActivityManagerInternal;Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;Lcom/android/internal/os/Clock;Lcom/android/server/appop/AppOpsService$Constants;Ljava/lang/Thread;)V

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStateTracker:Lcom/android/server/appop/AppOpsUidStateTrackerImpl;

    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v2, Lcom/android/server/appop/AppOpsService$2;

    invoke-direct {v2, p0}, Lcom/android/server/appop/AppOpsService$2;-><init>(Lcom/android/server/appop/AppOpsService;)V

    iget-object v3, v1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v1, v1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Callback is already registered."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mUidStateTracker:Lcom/android/server/appop/AppOpsUidStateTrackerImpl;

    return-object p0
.end method

.method public final getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    :cond_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "UserManagerInternal not loaded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public initializeUidStates()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    sget-object v2, Lcom/android/server/appop/AppOpsService;->NON_PACKAGE_UIDS:[I

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget v6, v2, v5

    iget-object v7, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->contains(I)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    new-instance v8, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-direct {v8, p0, v6}, Lcom/android/server/appop/AppOpsService$UidState;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    invoke-virtual {v7, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_0
    :goto_1
    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez v2, :cond_2

    const-class v2, Lcom/android/server/pm/PackageManagerLocal;

    invoke-static {v2}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerLocal;

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    :cond_2
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v3

    :goto_2
    array-length v5, v0

    if-ge v4, v5, :cond_3

    aget v5, v0, v4

    invoke-virtual {p0, v5, v3, v1}, Lcom/android/server/appop/AppOpsService;->initializeUserUidStatesLocked(ILjava/util/Map;Landroid/util/SparseBooleanArray;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v1, v3}, Lcom/android/server/appop/AppOpsService;->trimUidStatesLocked(Landroid/util/SparseBooleanArray;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v2}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :goto_3
    if-eqz v2, :cond_4

    :try_start_3
    invoke-interface {v2}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "PackageManagerLocal not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_5
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public final initializeUserUidStatesLocked(ILjava/util/Map;Landroid/util/SparseBooleanArray;)V
    .locals 10

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    invoke-virtual {p3, v7, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_1
    invoke-virtual {p0, v7, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v4

    iget-object v1, v4, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$Ops;

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-direct {v1, v5, v4}, Lcom/android/server/appop/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;)V

    iget-object v2, v4, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v2, p1, v5}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getNonDefaultPackageModes(ILjava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v8

    const/4 v2, 0x0

    move v9, v2

    :goto_1
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v9, v2, :cond_4

    invoke-virtual {v8, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_3

    new-instance v2, Lcom/android/server/appop/AppOpsService$Op;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/appop/AppOpsService$Op;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;II)V

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    move-object v3, p0

    :goto_2
    add-int/lit8 v9, v9, 0x1

    move-object p0, v3

    goto :goto_1

    :cond_4
    move-object v3, p0

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v1, 0x2710

    if-ge p0, v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v7}, Landroid/os/Process;->toSdkSandboxUid(I)I

    move-result p0

    if-eqz p3, :cond_6

    invoke-virtual {p3, p0, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_6
    invoke-virtual {v3, p0, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    :goto_3
    move-object p0, v3

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public final isCallerAndAttributionTrusted(Landroid/content/AttributionSource;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    return v2

    :cond_1
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v3, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {p0, v3, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final isDeviceProvisioningPackage(ILjava/lang/String;)Z
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/pm/ProtectedPackages;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/pm/ProtectedPackages;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Lcom/android/server/pm/ProtectedPackages;->isDeviceProvisioningPackage(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    array-length p1, p0

    move p2, v2

    :goto_0
    if-ge p2, p1, :cond_3

    aget-object v3, p0, p2

    invoke-virtual {v0, v3}, Lcom/android/server/pm/ProtectedPackages;->isDeviceProvisioningPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public final isIncomingPackageValid(ILjava/lang/String;)Z
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    invoke-static {v0, p2}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_3

    invoke-static {v2}, Lcom/android/server/appop/AppOpsService;->resolveNonAppUid(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    if-nez v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found from "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppOps"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    :goto_1
    return v1
.end method

.method public final isOpRestrictedLocked(IILjava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$RestrictionBypass;Z)Z
    .locals 12

    move-object/from16 v0, p6

    const/4 v1, 0x0

    if-eqz p5, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    move v3, v1

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_4

    iget-object v5, p0, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;

    iget-object v6, v5, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v6, v6, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    iget-object v5, v5, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->mToken:Landroid/os/IBinder;

    check-cast v6, Lcom/android/server/appop/AppOpsRestrictionsImpl;

    iget-object v6, v6, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseBooleanArray;

    if-nez v5, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v5, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    :goto_1
    if-eqz v5, :cond_3

    sget-boolean p0, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    if-nez p0, :cond_2

    sget-boolean p0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz p0, :cond_c

    :cond_2
    const-string p0, "AppOps"

    const-string/jumbo p1, "mOpGlobalRestrictions "

    invoke-static {p2, p1, p0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/16 v2, 0x1a

    if-ne p2, v2, :cond_6

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "android.hardware.type.automotive"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v5, p3}, Landroid/hardware/SensorPrivacyManager;->isCameraPrivacyEnabled(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_6
    :goto_2
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    move v2, v1

    :goto_3
    if-ge v2, p1, :cond_e

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;

    move v8, p2

    move-object v7, p3

    move-object/from16 v11, p4

    move/from16 v9, p7

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->hasRestriction(Ljava/lang/String;IZILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {p2}, Landroid/app/AppOpsManager;->opAllowSystemBypassRestriction(I)Landroid/app/AppOpsManager$RestrictionBypass;

    move-result-object p1

    if-eqz p1, :cond_a

    monitor-enter p0

    :try_start_1
    iget-boolean v2, p1, Landroid/app/AppOpsManager$RestrictionBypass;->isSystemUid:Z

    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    iget-boolean v2, v0, Landroid/app/AppOpsManager$RestrictionBypass;->isSystemUid:Z

    if-eqz v2, :cond_7

    monitor-exit p0

    return v1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :cond_7
    iget-boolean v2, p1, Landroid/app/AppOpsManager$RestrictionBypass;->isPrivileged:Z

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    iget-boolean v2, v0, Landroid/app/AppOpsManager$RestrictionBypass;->isPrivileged:Z

    if-eqz v2, :cond_8

    monitor-exit p0

    return v1

    :cond_8
    iget-boolean p1, p1, Landroid/app/AppOpsManager$RestrictionBypass;->isRecordAudioRestrictionExcept:Z

    if-eqz p1, :cond_9

    if-eqz v0, :cond_9

    iget-boolean p1, v0, Landroid/app/AppOpsManager$RestrictionBypass;->isRecordAudioRestrictionExcept:Z

    if-eqz p1, :cond_9

    monitor-exit p0

    return v1

    :cond_9
    monitor-exit p0

    goto :goto_5

    :goto_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_a
    :goto_5
    iget p0, v6, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->callingRestriction:I

    if-lez p0, :cond_c

    sget-boolean p0, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    if-nez p0, :cond_b

    sget-boolean p0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz p0, :cond_c

    :cond_b
    const-string p0, "AppOps"

    const-string/jumbo p1, "User "

    const-string v0, ", OP "

    const-string v1, " is restricted by "

    invoke-static {v10, p2, p1, v0, v1}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, v6, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->callingRestriction:I

    invoke-static {p1, p2, p0}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_c
    return v4

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    :goto_6
    return v1
.end method

.method public final isOperationActive(IILjava/lang/String;)Z
    .locals 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.WATCH_APPOPS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {p2, p3}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    return v1

    :cond_2
    monitor-enter p0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v3, p2

    :try_start_0
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object p0

    if-nez p0, :cond_3

    monitor-exit v2

    return v1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appop/AppOpsService$Op;

    if-nez p0, :cond_4

    monitor-exit v2

    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Op;->isRunning()Z

    move-result p0

    monitor-exit v2

    return p0

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isProxying(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p4, p5, p1}, Lcom/android/server/appop/AppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {p0}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p4, :cond_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :cond_1
    :try_start_1
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {p0}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p4, :cond_2

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :cond_2
    const/16 p4, 0x18

    :try_start_2
    invoke-virtual {p0, p4}, Landroid/app/AppOpsManager$OpEntry;->getLastProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result p4

    int-to-long p4, p4

    cmp-long p4, v0, p4

    if-nez p4, :cond_3

    invoke-virtual {p0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :cond_4
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final isSamplingTarget(Landroid/content/pm/PackageInfo;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez p1, :cond_1

    return v0

    :cond_1
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    return v4

    :catch_0
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public final isUidOpGrantedByRole(II)Z
    .locals 4

    invoke-static {p2}, Landroid/app/AppOpsManager;->opIsUidAppOpPermission(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_1
    :try_start_1
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p2, v0, p1}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const p1, 0x8000

    and-int/2addr p0, p1

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final isValidVirtualDeviceId(I)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string p0, "AppOps"

    const-string/jumbo p1, "VirtualDeviceManagerInternal is null when device Id is non-default"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    check-cast v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;

    iget-object v1, v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    iget-object v1, v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->isValidVirtualDeviceId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mKnownDeviceIds:Landroid/util/SparseArray;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getPersistentIdForDevice(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return v0

    :cond_2
    return v2
.end method

.method public final noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .locals 10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    invoke-static {}, Landroid/os/Process;->myPid()I

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    const/4 v5, 0x0

    const/4 v9, 0x1

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteOperation(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZI)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public final noteOperationForDevice(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .locals 10

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    const/4 v9, 0x1

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteOperation(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZI)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public final noteOperationUnchecked(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIZLjava/lang/String;ZI)Landroid/app/SyncNotedAppOp;
    .locals 21

    move-object/from16 v0, p8

    const-string v9, "."

    const-string/jumbo v10, "noteOperationUnchecked: allowing code "

    const-string/jumbo v11, "noteOperationUnchecked: reject #"

    const-string/jumbo v12, "noteOperationUnchecked: uid reject #"

    const-string/jumbo v13, "noteOperationUnchecked::isOpRestrictedLocked : packageName "

    const-string/jumbo v8, "Noting op not finished: uid "

    const-string/jumbo v14, "mUidStates.get("

    const-string/jumbo v15, "noting OP_BLUETOOTH_CONNECT returned MODE_ERRORED as #getOpsLocked returned null for uid: "

    const-string/jumbo v1, "noteOperationUnchecked: no op for code "

    const/4 v7, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x6f

    move/from16 v3, p2

    move-object/from16 v2, p3

    move-object/from16 v4, p4

    move/from16 v6, p6

    move-object/from16 v5, p7

    move-object/from16 v16, v1

    move-object/from16 v1, p0

    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v5, v2

    :try_start_1
    iget-boolean v1, v7, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v6, v4

    :goto_0
    move-object/from16 v1, p7

    if-eqz v0, :cond_1

    invoke-static {v5, v1, v0}, Lcom/android/server/appop/AppOpsService;->isAttributionTagDefined(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v0, v2

    :cond_1
    monitor-enter p0

    :try_start_2
    iget-boolean v5, v7, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z

    move-object v4, v6

    iget-object v6, v7, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    move-object v2, v7

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-object/from16 v17, v2

    move/from16 v2, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v5

    move-object v6, v4

    if-nez v5, :cond_5

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v4, p5

    move/from16 v7, p10

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IIILjava/lang/String;Ljava/lang/String;II)V

    move-object v4, v5

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    const/16 v7, 0x6f

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_3
    :goto_2
    const-string v0, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v7, v16

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " uid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "flags: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p10 .. p10}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :goto_3
    if-ne v2, v7, :cond_4

    const-string v0, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " packageName: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " attributionTag: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " pvr.isAttributionTagValid: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, v17

    iget-boolean v7, v15, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " pvr.bypass: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v15, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "): "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v0, Landroid/app/SyncNotedAppOp;

    const/4 v14, 0x2

    invoke-direct {v0, v14, v2, v6, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v0

    :cond_5
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v7, p5

    move-object/from16 v15, v17

    const/4 v14, 0x1

    move-object/from16 p4, v0

    invoke-virtual {v1, v5, v2, v3, v14}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v0

    invoke-virtual {v1, v7, v2}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v0, v6, v14}, Lcom/android/server/appop/AppOpsService$Op;->getOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AttributedOp;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v16

    move-object/from16 v17, v0

    if-eqz v16, :cond_6

    const-string v0, "AppOps"

    move-object/from16 v18, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " pkg "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " code "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " startTime of in progress event="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v14, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    move-object/from16 v19, v9

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    move-object/from16 v16, v10

    iget-wide v9, v8, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartTime:J

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    move-object/from16 v18, v6

    move-object/from16 v19, v9

    move-object/from16 v16, v10

    :goto_4
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0

    iget-object v9, v5, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget-object v6, v15, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v8, 0x0

    move v10, v3

    move v3, v2

    move v2, v10

    move v10, v7

    move-object v7, v6

    move v6, v10

    move/from16 v10, p10

    move-object/from16 v20, v5

    move-object/from16 v5, v18

    const/16 v15, 0x6f

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$RestrictionBypass;Z)Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v6, v5

    if-eqz v7, :cond_9

    :try_start_3
    invoke-virtual {v9}, Lcom/android/server/appop/AppOpsService$UidState;->getState()I

    move-result v0

    invoke-virtual {v14, v0, v10}, Lcom/android/server/appop/AttributedOp;->rejected(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v4, p5

    move v7, v10

    :try_start_4
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IIILjava/lang/String;Ljava/lang/String;II)V

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v0, :cond_8

    :cond_7
    const-string v0, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " uid "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " code "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    new-instance v0, Landroid/app/SyncNotedAppOp;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v2, v6, v5}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_b

    :cond_9
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v4, p5

    move v7, v10

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    if-eqz v8, :cond_b

    const/16 v10, 0x3e8

    if-ne v8, v10, :cond_a

    goto :goto_5

    :cond_a
    const/4 v8, 0x0

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v8, 0x1

    :goto_6
    if-eqz v8, :cond_c

    goto/16 :goto_8

    :cond_c
    iget-object v8, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v10, v9, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-virtual {v1, v4, v0}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v10, v0, v13}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(IILjava/lang/String;)I

    move-result v8

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v10

    if-eq v8, v10, :cond_10

    iget-object v8, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v10, v9, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-virtual {v1, v4, v0}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v10, v0, v11}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(IILjava/lang/String;)I

    move-result v8

    invoke-virtual {v9, v2, v8}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v8

    if-eqz v8, :cond_15

    sget-boolean v10, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    if-nez v10, :cond_d

    sget-boolean v10, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v10, :cond_e

    :cond_d
    const-string v10, "AppOps"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " for code "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") uid "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " package "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " flags: "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-virtual {v9}, Lcom/android/server/appop/AppOpsService$UidState;->getState()I

    move-result v0

    invoke-virtual {v14, v0, v7}, Lcom/android/server/appop/AttributedOp;->rejected(II)V

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IIILjava/lang/String;Ljava/lang/String;II)V

    if-ne v2, v15, :cond_f

    const/4 v14, 0x2

    if-ne v8, v14, :cond_f

    const-string v0, "AppOps"

    const-string/jumbo v3, "noting OP_BLUETOOTH_CONNECT returned MODE_ERRORED as uid mode is MODE_ERRORED"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v8, v2, v6, v5}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v0

    :cond_10
    if-eq v0, v2, :cond_11

    move-object/from16 v4, v20

    const/4 v8, 0x1

    invoke-virtual {v1, v4, v0, v3, v8}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v4

    goto :goto_7

    :cond_11
    move-object/from16 v4, v17

    :goto_7
    iget-object v8, v4, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v10, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v12, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object v13, v4, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget v4, v4, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v12, v10, v4, v13}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(IILjava/lang/String;)I

    move-result v4

    invoke-virtual {v8, v10, v4}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v8

    if-eqz v8, :cond_15

    sget-boolean v4, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    if-nez v4, :cond_12

    sget-boolean v4, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v4, :cond_13

    :cond_12
    const-string v4, "AppOps"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " for code "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") uid "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " package "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " flags: "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    invoke-virtual {v9}, Lcom/android/server/appop/AppOpsService$UidState;->getState()I

    move-result v0

    invoke-virtual {v14, v0, v7}, Lcom/android/server/appop/AttributedOp;->rejected(II)V

    move/from16 v4, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IIILjava/lang/String;Ljava/lang/String;II)V

    if-ne v2, v15, :cond_14

    const/4 v14, 0x2

    if-ne v8, v14, :cond_14

    const-string v0, "AppOps"

    const-string/jumbo v1, "noting OP_BLUETOOTH_CONNECT returned MODE_ERRORED as package mode is MODE_ERRORED"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v8, v2, v6, v5}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v0

    :cond_15
    :goto_8
    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v0, :cond_17

    const-string v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v4, v16

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " uid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " package "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_16

    const-string v4, ""

    goto :goto_9

    :cond_16
    move-object/from16 v4, v19

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_9
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " flags: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p10 .. p10}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    const/4 v8, 0x0

    move-object/from16 v1, p0

    move/from16 v4, p5

    move/from16 v7, p10

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IIILjava/lang/String;Ljava/lang/String;II)V

    move-object v8, v1

    move v10, v2

    move-object/from16 v18, v6

    move/from16 v0, p9

    invoke-virtual {v8, v0, v10}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lcom/android/server/appop/AppOpsService$UidState;->getState()I

    move-result v5

    move-object/from16 v3, p4

    move/from16 v1, p6

    move-object/from16 v2, p7

    move/from16 v6, p10

    move/from16 v7, p14

    move-object v0, v14

    const/4 v11, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/appop/AttributedOp;->accessed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    if-eqz p11, :cond_18

    move/from16 v2, p2

    move-object/from16 v6, p3

    move/from16 v4, p10

    move/from16 v9, p13

    move/from16 v5, p14

    move-object v1, v8

    move v3, v10

    move-object/from16 v7, v18

    move-object/from16 v8, p12

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/appop/AppOpsService;->collectAsyncNotedOp(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move v2, v3

    move-object v5, v6

    move-object v6, v7

    goto :goto_a

    :cond_18
    move-object/from16 v5, p3

    move v2, v10

    move-object/from16 v6, v18

    :goto_a
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v11, v2, v6, v5}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v0

    :goto_b
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    move/from16 v2, p1

    move/from16 v3, p2

    const/16 v15, 0x6f

    goto :goto_c

    :catch_1
    move-exception v0

    move-object v5, v2

    const/16 v15, 0x6f

    move/from16 v2, p1

    :goto_c
    const-string/jumbo v1, "noteOperation"

    invoke-static {v3, v0, v1}, Lcom/android/server/appop/AppOpsService;->logVerifyAndGetBypassFailure(ILjava/lang/SecurityException;Ljava/lang/String;)V

    if-ne v2, v15, :cond_19

    const-string v1, "AppOps"

    const-string/jumbo v6, "noting OP_BLUETOOTH_CONNECT returned MODE_ERRORED as verifyAndGetBypass returned a SecurityException for package: "

    const-string v7, " and uid: "

    const-string v8, " and attributionTag: "

    invoke-static {v3, v6, v5, v7, v8}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19
    new-instance v0, Landroid/app/SyncNotedAppOp;

    const/4 v14, 0x2

    invoke-direct {v0, v14, v2, v4, v5}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final noteOperationsInBatch(Ljava/util/Map;)V
    .locals 12

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$NotedOp;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-virtual {v1}, Landroid/app/AppOpsManager$NotedOp;->getOp()I

    move-result v3

    invoke-virtual {v1}, Landroid/app/AppOpsManager$NotedOp;->getUid()I

    move-result v4

    invoke-virtual {v1}, Landroid/app/AppOpsManager$NotedOp;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Landroid/app/AppOpsManager$NotedOp;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/app/AppOpsManager$NotedOp;->getVirtualDeviceId()I

    move-result v7

    invoke-virtual {v1}, Landroid/app/AppOpsManager$NotedOp;->getShouldCollectAsyncNotedOp()Z

    move-result v8

    invoke-virtual {v1}, Landroid/app/AppOpsManager$NotedOp;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Landroid/app/AppOpsManager$NotedOp;->getShouldCollectMessage()Z

    move-result v10

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteOperation(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZI)Landroid/app/SyncNotedAppOp;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .locals 0

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public final noteProxyOperationWithState(ILandroid/content/AttributionSourceState;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-object v0, p2

    new-instance p2, Landroid/content/AttributionSource;

    invoke-direct {p2, v0}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public final notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/appop/AppOpsService$ModeCallback;

    move-object v2, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Lcom/android/server/appop/AppOpsService$ModeCallback;IILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final notifyOpChanged(Lcom/android/server/appop/AppOpsService$ModeCallback;IILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x2

    iget v1, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchedOpCode:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSwitchedOps:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput p2, v0, v2

    move-object p2, v0

    goto :goto_0

    :cond_1
    filled-new-array {v1}, [I

    move-result-object p2

    :goto_0
    array-length v0, p2

    :goto_1
    if-ge v2, v0, :cond_4

    aget v1, p2, v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    iget v5, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mCallingPid:I

    iget v6, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mCallingUid:I

    invoke-virtual {p0, v1, v5, v6}, Lcom/android/server/appop/AppOpsService;->shouldIgnoreCallback(III)Z

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    :catch_0
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    :cond_2
    :try_start_1
    iget-object v5, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    if-eqz p4, :cond_3

    move-object v6, p4

    goto :goto_3

    :cond_3
    const-string v6, ""

    :goto_3
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5, v1, p3, v6, p5}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final notifyWatchersOnDefaultDevice(II)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_1

    :cond_0
    :try_start_2
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v5, 0x0

    const-string/jumbo v6, "default:0"

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v0

    move-object v1, p0

    :goto_0
    move-object p1, v0

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :catchall_2
    move-exception v0

    goto :goto_0
.end method

.method public final offsetHistory(J)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->offsetHistory_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/LegacyHistoricalRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/appop/LegacyHistoricalRegistry;->offsetHistory(J)V

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/LegacyHistoricalRegistry;

    iget-object p0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsXmlRegistry;

    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mInMemoryLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->getAllDiscreteOps()Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->clearHistory()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v2, p1, p2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->-$$Nest$moffsetHistory(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;J)V

    invoke-virtual {p0, v2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->persistDiscreteOpsLocked(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/android/server/appop/AppOpsService$Shell;

    invoke-direct {v0, p0, p0}, Lcom/android/server/appop/AppOpsService$Shell;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService;)V

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

.method public packageRemoved(ILjava/lang/String;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->packageRemovedLocked(ILjava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final packageRemovedLocked(ILjava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/LegacyHistoricalRegistry;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$Ops;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-interface {v1, p1, p2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->removePackage(ILjava/lang/String;)Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    if-ge p2, p0, :cond_5

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$Op;

    move v2, p1

    :goto_1
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, v1, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    move v4, p1

    :goto_2
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AttributedOp;

    :goto_3
    invoke-virtual {v5}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v5, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-virtual {v5, v6, p1, p1}, Lcom/android/server/appop/AttributedOp;->finishOrPause(Landroid/os/IBinder;ZZ)V

    goto :goto_3

    :cond_1
    :goto_4
    invoke-virtual {v5}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v5, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-virtual {v5, v6, p1, p1}, Lcom/android/server/appop/AttributedOp;->finishOrPause(Landroid/os/IBinder;ZZ)V

    goto :goto_4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    :goto_5
    return-void
.end method

.method public final permissionToOpCode(Ljava/lang/String;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public prepareInternalCallbacks()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    new-instance v1, Lcom/android/server/appop/AppOpsService$8;

    invoke-direct {v1, p0}, Lcom/android/server/appop/AppOpsService$8;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->addUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    return-void
.end method

.method public final pruneOpLocked(Lcom/android/server/appop/AppOpsService$Op;ILjava/lang/String;)V
    .locals 8

    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$Op;->removeAttributionsWithNoTime()V

    iget-object v0, p1, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p2, p1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    iget-object p3, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-static {p2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    iget p1, p1, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-interface {p3, p2, v0, p1, v3}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->setPackageMode(IIILjava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget-object p2, p1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-interface {p2, p1, p0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->removePackage(ILjava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public final readPackage(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 30

    move-object/from16 v0, p1

    const/4 v1, 0x0

    const-string/jumbo v2, "n"

    invoke-interface {v0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v9

    :cond_0
    :goto_0
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v10, 0x1

    if-eq v3, v10, :cond_11

    const/4 v11, 0x3

    if-ne v3, v11, :cond_1

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v9, :cond_11

    :cond_1
    if-eq v3, v11, :cond_0

    const/4 v12, 0x4

    if-ne v3, v12, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "uid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v13, "Unknown element under <pkg>: "

    const-string v14, "AppOps"

    if-eqz v3, :cond_10

    invoke-interface {v0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v4, p0

    invoke-virtual {v4, v3, v10}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v5

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v15

    :goto_1
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    if-eq v3, v10, :cond_3

    if-ne v3, v11, :cond_4

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v15, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v27, v9

    goto/16 :goto_8

    :cond_4
    :goto_2
    if-eq v3, v11, :cond_f

    if-ne v3, v12, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "op"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    new-instance v3, Lcom/android/server/appop/AppOpsService$Op;

    iget v8, v5, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-direct/range {v3 .. v8}, Lcom/android/server/appop/AppOpsService$Op;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;II)V

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    :cond_6
    :goto_3
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v7

    if-eq v7, v10, :cond_7

    if-ne v7, v11, :cond_8

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v4, :cond_7

    goto :goto_4

    :cond_7
    move/from16 v27, v9

    goto/16 :goto_6

    :cond_8
    :goto_4
    if-eq v7, v11, :cond_6

    if-ne v7, v12, :cond_9

    goto :goto_3

    :cond_9
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "st"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string/jumbo v7, "id"

    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "default:0"

    invoke-virtual {v3, v3, v7, v8}, Lcom/android/server/appop/AppOpsService$Op;->getOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AttributedOp;

    move-result-object v16

    invoke-interface {v0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v25

    invoke-static {v7, v8}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v26

    const-string/jumbo v7, "t"

    const-wide/16 v10, 0x0

    invoke-interface {v0, v1, v7, v10, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v17

    const-string/jumbo v7, "r"

    move/from16 v27, v9

    invoke-interface {v0, v1, v7, v10, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    const-string/jumbo v7, "d"

    move-wide/from16 v28, v10

    const-wide/16 v10, -0x1

    invoke-interface {v0, v1, v7, v10, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v19

    const-string/jumbo v7, "pp"

    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v7, "pu"

    const/4 v10, -0x1

    invoke-interface {v0, v1, v7, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v21

    const-string/jumbo v7, "pc"

    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    cmp-long v7, v17, v28

    if-lez v7, :cond_a

    const-string/jumbo v24, "default:0"

    invoke-virtual/range {v16 .. v26}, Lcom/android/server/appop/AttributedOp;->accessed(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_a
    move-object/from16 v7, v16

    move/from16 v10, v25

    move/from16 v11, v26

    cmp-long v16, v8, v28

    if-lez v16, :cond_c

    invoke-virtual {v7, v10, v11, v8, v9}, Lcom/android/server/appop/AttributedOp;->rejected(IIJ)V

    goto :goto_5

    :cond_b
    move/from16 v27, v9

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Unknown element under <op>: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_c
    :goto_5
    move/from16 v9, v27

    const/4 v10, 0x1

    const/4 v11, 0x3

    goto/16 :goto_3

    :goto_6
    iget-object v4, v5, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$Ops;

    if-nez v4, :cond_d

    new-instance v4, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-direct {v4, v6, v5}, Lcom/android/server/appop/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;)V

    iget-object v7, v5, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget v7, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {v4, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_7

    :cond_e
    move/from16 v27, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_7
    const/4 v10, 0x1

    const/4 v11, 0x3

    move-object/from16 v4, p0

    move/from16 v9, v27

    goto/16 :goto_1

    :cond_f
    move-object/from16 v4, p0

    goto/16 :goto_1

    :cond_10
    move/from16 v27, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_8
    move/from16 v9, v27

    goto/16 :goto_0

    :cond_11
    return-void
.end method

.method public final readRecentAccesses(Landroid/util/AtomicFile;)V
    .locals 7

    const-string/jumbo v0, "No existing app ops "

    monitor-enter p1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->clearAllModes()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v2, v4, :cond_7

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    :cond_1
    :goto_1
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    if-eq v4, v3, :cond_6

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v2, :cond_6

    goto :goto_2

    :catchall_0
    move-exception v1

    goto/16 :goto_6

    :catch_0
    move-exception v1

    goto :goto_4

    :cond_2
    :goto_2
    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "pkg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/server/appop/AppOpsService;->readPackage(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v5, "uid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :cond_5
    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element under <app-ops>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_6
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_8

    :cond_7
    :try_start_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "no start tag found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_4
    :try_start_6
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->clearAllModes()V

    goto :goto_3

    :catch_1
    :goto_5
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception p0

    goto :goto_9

    :goto_6
    :try_start_9
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->clearAllModes()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catch_2
    :try_start_b
    throw v1

    :catch_3
    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; starting empty"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :goto_7
    return-void

    :goto_8
    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw v0

    :goto_9
    monitor-exit p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    throw p0
.end method

.method public readState()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->readState()V

    return-void
.end method

.method public final rebootHistory(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->rebootHistory_enforcePermission()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/LegacyHistoricalRegistry;

    invoke-virtual {v1}, Lcom/android/server/appop/LegacyHistoricalRegistry;->shutdown()V

    if-lez v0, :cond_1

    invoke-static {p1, p2}, Landroid/os/SystemClock;->sleep(J)V

    :cond_1
    new-instance p1, Lcom/android/server/appop/LegacyHistoricalRegistry;

    iget-object p2, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/LegacyHistoricalRegistry;

    iget-object v0, p2, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Lcom/android/server/appop/AppOpsService;

    iget-object v1, p2, Lcom/android/server/appop/LegacyHistoricalRegistry;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, v1}, Lcom/android/server/appop/LegacyHistoricalRegistry;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/content/Context;)V

    iget v0, p2, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    iput v0, p1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    iget-wide v0, p2, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    iput-wide v0, p1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    iget-wide v0, p2, Lcom/android/server/appop/LegacyHistoricalRegistry;->mIntervalCompressionMultiplier:J

    iput-wide v0, p1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mIntervalCompressionMultiplier:J

    iget-object p2, p2, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsXmlRegistry;

    iput-object p2, p1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsXmlRegistry;

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/LegacyHistoricalRegistry;

    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/LegacyHistoricalRegistry;

    iget-object p2, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/appop/LegacyHistoricalRegistry;->systemReady(Landroid/content/ContentResolver;)V

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/LegacyHistoricalRegistry;

    invoke-virtual {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->persistPendingHistory()V

    return-void
.end method

.method public final refreshAttributionsLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)V
    .locals 18

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedAttribution;

    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getInheritFrom()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_0

    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getInheritFrom()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v4, p0

    iget-object v6, v4, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move/from16 v7, p2

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/AppOpsService$UidState;

    if-nez v6, :cond_2

    goto/16 :goto_b

    :cond_2
    iget-object v6, v6, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$Ops;

    if-nez v0, :cond_3

    goto/16 :goto_b

    :cond_3
    iput-object v3, v0, Lcom/android/server/appop/AppOpsService$Ops;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Ops;->knownAttributionTags:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_a

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/AppOpsService$Op;

    iget-object v8, v7, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    :goto_3
    if-ltz v8, :cond_9

    iget-object v9, v7, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    :goto_4
    if-ltz v10, :cond_8

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 p1, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    const/4 v2, 0x0

    goto/16 :goto_a

    :cond_4
    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iget-object v13, v7, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v13, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v7, v7, v12, v13}, Lcom/android/server/appop/AppOpsService$Op;->getOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AttributedOp;

    move-result-object v12

    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/appop/AttributedOp;

    invoke-virtual {v13}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v14

    if-nez v14, :cond_6

    invoke-virtual {v13}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v14

    if-eqz v14, :cond_5

    goto :goto_5

    :cond_5
    move-object/from16 p1, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    const/4 v2, 0x0

    goto :goto_9

    :cond_6
    :goto_5
    invoke-virtual {v13}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v14

    if-eqz v14, :cond_7

    iget-object v14, v13, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_6

    :cond_7
    iget-object v14, v13, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    :goto_6
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v5, "Ignoring "

    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " app-ops, running: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v15, "AppOps"

    invoke-static {v15, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v5, :cond_5

    invoke-virtual {v14, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 p1, v0

    move-object/from16 v0, v16

    check-cast v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v1

    :try_start_0
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v17, v2

    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_0
    move-object/from16 v17, v2

    const/4 v2, 0x0

    :catch_1
    :goto_8
    iget-object v1, v12, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v1, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

    invoke-virtual {v1, v0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    goto :goto_7

    :goto_9
    iget-object v0, v12, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    iget-object v1, v13, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-static {v0, v1}, Lcom/android/server/appop/AttributedOp;->add(Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v0

    iput-object v0, v12, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    iget-object v0, v12, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    iget-object v1, v13, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-static {v0, v1}, Lcom/android/server/appop/AttributedOp;->add(Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v0

    iput-object v0, v12, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    :goto_a
    add-int/lit8 v10, v10, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    goto/16 :goto_4

    :cond_8
    move-object/from16 p1, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    const/4 v2, 0x0

    add-int/lit8 v8, v8, -0x1

    move-object/from16 v2, v17

    goto/16 :goto_3

    :cond_9
    move-object/from16 p1, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    const/4 v2, 0x0

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v17

    goto/16 :goto_2

    :cond_a
    :goto_b
    return-void
.end method

.method public final reloadNonHistoricalState()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v3, "reloadNonHistoricalState"

    const-string/jumbo v4, "android.permission.MANAGE_APPOPS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->writeState()V

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->readState()V

    return-void
.end method

.method public final removeUser(I)V
    .locals 2

    const-string/jumbo v0, "removeUser"

    invoke-static {v0}, Lcom/android/server/appop/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    const-wide/16 p0, 0x1388

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final reportRuntimeAppOpAccessMessageAndGetConfig(Ljava/lang/String;Landroid/app/SyncNotedAppOp;Ljava/lang/String;)Lcom/android/internal/app/MessageSamplingConfig;
    .locals 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string v1, "AppOps"

    const-string/jumbo v3, "reportRuntimeAppOpAccessMessageAndGetConfig pid: "

    const-string v4, " uid: "

    const-string v5, " packageName: "

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " message: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->switchPackageIfBootTimeOrRarelyUsedLocked(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/16 v7, 0x1

    if-nez v0, :cond_2

    :try_start_1
    new-instance p1, Lcom/android/internal/app/MessageSamplingConfig;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p2

    sget-object p3, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p2, v7, v8, p3}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object p2

    invoke-virtual {p2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p2, p3}, Lcom/android/internal/app/MessageSamplingConfig;-><init>(IIJ)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/app/SyncNotedAppOp;->getOp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Landroid/app/SyncNotedAppOp;->getAttributionTag()Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v1, p0

    move-object v4, p1

    move-object v6, p3

    :try_start_3
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->reportRuntimeAppOpAccessMessageInternalLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/android/internal/app/MessageSamplingConfig;

    iget p1, v1, Lcom/android/server/appop/AppOpsService;->mSampledAppOpCode:I

    iget p2, v1, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p3

    sget-object v0, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p3, v7, v8, v0}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object p3

    invoke-virtual {p3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/internal/app/MessageSamplingConfig;-><init>(IIJ)V

    monitor-exit v1

    return-object p0

    :catchall_1
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v1, p0

    goto :goto_0

    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final reportRuntimeAppOpAccessMessageInternalLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledAppOpCode:I

    const/16 v1, 0xa5

    invoke-static {p2, v0, v1}, Landroid/app/AppOpsManager;->leftCircularDistance(III)I

    move-result v0

    iget v1, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    const/4 v2, 0x4

    if-ge v1, v0, :cond_0

    iget v3, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    if-eq v3, v2, :cond_0

    goto :goto_0

    :cond_0
    if-le v1, v0, :cond_1

    iget v1, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    if-eq v1, v2, :cond_1

    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    :cond_1
    iget v0, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v0

    iget v2, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    new-instance v1, Landroid/app/RuntimeAppOpAccessMessage;

    iget v7, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Landroid/app/RuntimeAppOpAccessMessage;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mCollectedRuntimePermissionMessage:Landroid/app/RuntimeAppOpAccessMessage;

    :cond_2
    :goto_0
    return-void
.end method

.method public final requestPermissionAccessInformation()V
    .locals 3

    const-string/jumbo v0, "requestPermissionAccessInformation"

    const-string v1, "AppOps"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPermissionAccessInformationController:Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;

    invoke-virtual {v0}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->AI_PRIVACY:Z

    if-eqz v0, :cond_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mPermissionDataController:Lcom/samsung/android/kmxservice/ai/privacy/PermissionDataController;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/ai/privacy/PermissionDataController;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    return-void
.end method

.method public final resampleAppOpForPackageLocked(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    if-eqz p2, :cond_0

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p2

    const/16 v0, 0xa5

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    iput p2, p0, Lcom/android/server/appop/AppOpsService;->mSampledAppOpCode:I

    const/16 p2, 0xa4

    iput p2, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    return-void
.end method

.method public final resamplePackageAndAppOpLocked(Ljava/util/List;)V
    .locals 3

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->resampleAppOpForPackageLocked(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->resampleAppOpForPackageLocked(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public final resetAllModes(ILjava/lang/String;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const-string/jumbo v7, "resetAllModes"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    const-wide/16 v7, 0x2000

    invoke-interface {v6, v0, v7, v8, v4}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move v6, v5

    :goto_0
    invoke-virtual {v1, v2, v3, v6}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0

    :try_start_1
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    const/4 v9, 0x0

    move-object v10, v9

    move-object v9, v2

    move-object v2, v10

    const/4 v10, 0x0

    :goto_1
    if-ltz v3, :cond_13

    iget-object v11, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/appop/AppOpsService$UidState;

    iget-object v12, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v13, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-interface {v12, v13}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getNonDefaultUidModes(I)Landroid/util/SparseIntArray;

    move-result-object v12

    if-eqz v12, :cond_5

    iget v13, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    if-eq v13, v6, :cond_1

    if-ne v6, v5, :cond_5

    :cond_1
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    sub-int/2addr v13, v7

    :goto_2
    if-ltz v13, :cond_5

    invoke-virtual {v12, v13}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    invoke-static {v15}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v12, v13}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v18

    iget v14, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-virtual {v1, v14, v15}, Lcom/android/server/appop/AppOpsService;->isUidOpGrantedByRole(II)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v14, 0x0

    :goto_3
    move/from16 p1, v7

    goto :goto_4

    :cond_2
    invoke-static {v15}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v14

    goto :goto_3

    :goto_4
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v8, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-interface {v7, v8, v15, v14}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->setUidMode(III)Z

    iget v7, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v7}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move-object v14, v2

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v8, :cond_3

    aget-object v17, v7, v2

    iget v5, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    move/from16 v20, v2

    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/util/ArraySet;

    move/from16 v16, v5

    invoke-static/range {v14 .. v19}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;ILandroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v14

    move-object/from16 v2, v17

    iget v5, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    move/from16 v21, v3

    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/util/ArraySet;

    move-object/from16 v17, v2

    move/from16 v16, v5

    invoke-static/range {v14 .. v19}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;ILandroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v14

    move-object/from16 v3, v17

    move/from16 v2, v18

    iget v5, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v9, v15, v5, v3, v2}, Lcom/android/server/appop/AppOpsService;->addChange(Ljava/util/ArrayList;IILjava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v9

    add-int/lit8 v3, v20, 0x1

    move/from16 v18, v2

    move v2, v3

    move/from16 v3, v21

    const/4 v5, -0x1

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_13

    :cond_3
    move-object v2, v14

    :goto_6
    move/from16 v21, v3

    goto :goto_7

    :cond_4
    move/from16 p1, v7

    goto :goto_6

    :goto_7
    add-int/lit8 v13, v13, -0x1

    move/from16 v7, p1

    move/from16 v3, v21

    const/4 v5, -0x1

    goto/16 :goto_2

    :cond_5
    move/from16 v21, v3

    move/from16 p1, v7

    iget-object v3, v11, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, -0x1

    goto/16 :goto_e

    :cond_6
    const/4 v3, -0x1

    if-eq v4, v3, :cond_7

    iget v5, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-eq v4, v5, :cond_7

    goto/16 :goto_e

    :cond_7
    iget-object v5, v11, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    move-object v15, v8

    check-cast v15, Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_8

    :cond_8
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    move-object v12, v2

    :goto_9
    if-ltz v8, :cond_10

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Op;

    iget v13, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v14, v1, Lcom/android/server/appop/AppOpsService;->dpmi:Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v14, :cond_9

    invoke-virtual {v14, v13}, Landroid/app/admin/DevicePolicyManagerInternal;->supportsResetOp(I)Z

    move-result v13

    if-eqz v13, :cond_9

    iget v2, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v13, v1, Lcom/android/server/appop/AppOpsService;->dpmi:Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-virtual {v13, v2, v0, v4}, Landroid/app/admin/DevicePolicyManagerInternal;->resetOp(ILjava/lang/String;I)V

    goto/16 :goto_d

    :cond_9
    iget v13, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v13}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v13

    if-eqz v13, :cond_f

    iget-object v13, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object v14, v2, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget v3, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v0, v2, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-interface {v13, v3, v0, v14}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(IILjava/lang/String;)I

    move-result v0

    iget v3, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    iget v13, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v13}, Landroid/app/AppOpsManager;->opIsPackageAppOpPermission(I)Z

    move-result v14

    if-nez v14, :cond_a

    const/4 v3, 0x0

    goto :goto_b

    :cond_a
    iget-object v14, v1, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v13}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v14, v13, v15, v3}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const v13, 0x8000

    and-int/2addr v3, v13

    if-eqz v3, :cond_b

    move/from16 v3, p1

    goto :goto_a

    :cond_b
    const/4 v3, 0x0

    :goto_a
    :try_start_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_b
    if-eqz v3, :cond_c

    const/4 v3, 0x0

    goto :goto_c

    :cond_c
    iget v3, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v3

    :goto_c
    if-ne v0, v3, :cond_d

    goto :goto_d

    :cond_d
    iget-object v10, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object v13, v2, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget v14, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    move/from16 v18, v0

    iget v0, v2, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-interface {v10, v14, v3, v0, v13}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->setPackageMode(IIILjava/lang/String;)V

    iget-object v0, v2, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v14, v0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    iget v13, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/util/ArraySet;

    move/from16 v16, v18

    invoke-static/range {v12 .. v17}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;ILandroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v12

    iget v13, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/util/ArraySet;

    invoke-static/range {v12 .. v17}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;ILandroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v0

    move/from16 v3, v16

    iget v10, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v9, v10, v14, v15, v3}, Lcom/android/server/appop/AppOpsService;->addChange(Ljava/util/ArrayList;IILjava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$Op;->removeAttributionsWithNoTime()V

    iget-object v2, v2, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_e
    move/from16 v10, p1

    move-object v12, v0

    goto :goto_d

    :catchall_1
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_f
    :goto_d
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v0, p2

    const/4 v3, -0x1

    goto/16 :goto_9

    :cond_10
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v2, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-interface {v0, v2, v15}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->removePackage(ILjava/lang/String;)Z

    :cond_11
    move-object/from16 v0, p2

    move-object v2, v12

    const/4 v3, -0x1

    goto/16 :goto_8

    :cond_12
    :goto_e
    add-int/lit8 v3, v21, -0x1

    move/from16 v7, p1

    move-object/from16 v0, p2

    const/4 v5, -0x1

    goto/16 :goto_1

    :cond_13
    if-eqz v10, :cond_14

    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    :cond_14
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$ModeCallback;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/ArrayList;

    const/4 v10, 0x0

    :goto_10
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_17

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/appop/AppOpsService$ChangeRec;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v3, "default:0"

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getAllPersistentDeviceIds()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_15
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_11
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    iget-object v13, v1, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda9;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda9;-><init>(I)V

    iget v3, v11, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v11, Lcom/android/server/appop/AppOpsService$ChangeRec;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v11, Lcom/android/server/appop/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v1, p0

    goto :goto_11

    :cond_16
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p0

    goto :goto_10

    :cond_17
    move-object/from16 v1, p0

    goto :goto_f

    :cond_18
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v8, 0x0

    :goto_12
    if-ge v8, v0, :cond_1a

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$ChangeRec;

    iget v3, v1, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    iget v4, v1, Lcom/android/server/appop/AppOpsService$ChangeRec;->uid:I

    iget-object v5, v1, Lcom/android/server/appop/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v6

    iget v7, v1, Lcom/android/server/appop/AppOpsService$ChangeRec;->previous_mode:I

    const-class v1, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/os/storage/StorageManagerInternal;

    if-eqz v2, :cond_19

    invoke-virtual/range {v2 .. v7}, Landroid/os/storage/StorageManagerInternal;->onAppOpsChanged(IILjava/lang/String;II)V

    :cond_19
    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    :cond_1a
    return-void

    :goto_13
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public final resetHistoryParameters()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->resetHistoryParameters_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/LegacyHistoricalRegistry;

    invoke-virtual {v0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Interaction before persistence initialized"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-wide v2, Lcom/android/server/appop/LegacyHistoricalRegistry;->DEFAULT_SNAPSHOT_INTERVAL_MILLIS:J

    const-wide/16 v4, 0xa

    const/4 v1, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/LegacyHistoricalRegistry;->setHistoryParameters(IJJ)V

    iget-object p0, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsXmlRegistry;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/appop/DiscreteOpsRegistry;->mDebugMode:Z

    return-void
.end method

.method public final resetPackageOpsNoHistory(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->resetPackageOpsNoHistory_enforcePermission()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v2, v3, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$UidState;

    if-nez v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    iget-object v1, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$Ops;

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-interface {v2, v0, p1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->removePackage(ILjava/lang/String;)Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    :cond_2
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final scheduleFastWriteLocked()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mFastWriteScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mFastWriteScheduled:Z

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Lcom/android/server/appop/AppOpsService$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Lcom/android/server/appop/AppOpsService$1;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IZII)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    if-eqz v4, :cond_2

    iget v6, v4, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mWatchingUid:I

    if-ltz v6, :cond_0

    if-eq v6, p2, :cond_0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    :cond_1
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    return-void

    :cond_4
    iget-object v11, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v1, p0

    move-object v5, p3

    move-object/from16 v6, p4

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/DecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final scheduleOpNotedIfNeededLocked(IIILjava/lang/String;Ljava/lang/String;II)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$NotedCallback;

    if-eqz v4, :cond_2

    iget v6, v4, Lcom/android/server/appop/AppOpsService$NotedCallback;->mWatchingUid:I

    if-ltz v6, :cond_0

    if-eq v6, p2, :cond_0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    :cond_1
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    return-void

    :cond_4
    iget-object v10, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v1, p0

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/NonaConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IIIIII)V
    .locals 14

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$StartedCallback;

    if-eqz v4, :cond_2

    iget v6, v4, Lcom/android/server/appop/AppOpsService$StartedCallback;->mWatchingUid:I

    move/from16 v7, p2

    if-ltz v6, :cond_0

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    :cond_1
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move/from16 v7, p2

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move/from16 v7, p2

    if-nez v2, :cond_4

    return-void

    :cond_4
    iget-object v13, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v1, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-static/range {v0 .. v12}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/DodecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setAudioRestriction(IIII[Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    invoke-virtual {p0, p3}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    iget-object p3, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    monitor-enter p3

    :try_start_0
    iget-object v0, p3, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p3, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    if-eqz p4, :cond_3

    new-instance v1, Lcom/android/server/appop/AudioRestrictionManager$Restriction;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->NO_EXCEPTIONS:Landroid/util/ArraySet;

    iput-object v2, v1, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    iput p4, v1, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->mode:I

    if-eqz p5, :cond_2

    array-length p4, p5

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, p4}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, v1, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p4, :cond_2

    aget-object v3, p5, v2

    if-eqz v3, :cond_1

    iget-object v4, v1, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p4, -0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p3, p0, p1, p4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :goto_2
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setCameraAudioRestriction(I)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    monitor-enter v0

    :try_start_0
    iput p1, v0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraAudioRestriction:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;-><init>(I)V

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, p0, v1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;-><init>(I)V

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setCheckOpsDelegate(Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setHistoryParameters(IJI)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->setHistoryParameters_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/LegacyHistoricalRegistry;

    int-to-long v4, p4

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/LegacyHistoricalRegistry;->setHistoryParameters(IJJ)V

    return-void
.end method

.method public final setMode(IILjava/lang/String;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService;->setMode(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    return-void
.end method

.method public final setMode(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    .locals 9

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/android/server/appop/AppOpsService;->shouldBlockCommand(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "AppOps"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo p5, "shouldBlockCommand "

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p2, p0}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x3a

    if-ne p1, v0, :cond_1

    :try_start_0
    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isMockLocationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p0, p2, p3}, Lcom/android/server/appop/AppOpsService;->isDeviceProvisioningPackage(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "AppOps"

    const-string p1, "Cannot set op mode for device provisioning app by Shell"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    const/4 p1, 0x0

    :try_start_1
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    monitor-enter p0

    :try_start_2
    iget-object v7, v0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v3, p2

    move-object v4, p3

    :try_start_3
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v2, p0, v1, v3, v8}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_6

    iget-object p0, v2, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object p2, p1, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget p3, p1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v0, p1, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-interface {p0, p3, v0, p2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(IILjava/lang/String;)I

    move-result p0

    if-eq p0, p4, :cond_6

    iget-object p0, v2, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object p2, p1, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget p3, p1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v0, p1, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-interface {p0, p3, v0, p2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(IILjava/lang/String;)I

    move-result p0

    iput-object p5, v2, Lcom/android/server/appop/AppOpsService;->mIgnoredCallback:Lcom/android/internal/app/IAppOpsCallback;

    iget-object p2, v2, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object p3, p1, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget p5, p1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget p1, p1, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-interface {p2, p5, p4, p1, p3}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->setPackageMode(IIILjava/lang/String;)V

    :goto_2
    move v5, p0

    goto :goto_4

    :catchall_0
    move-exception v0

    :goto_3
    move-object p0, v0

    goto :goto_6

    :cond_6
    const/4 p0, 0x3

    goto :goto_2

    :goto_4
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-class p0, Landroid/os/storage/StorageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/os/storage/StorageManagerInternal;

    if-eqz v0, :cond_7

    move v2, v3

    move-object v3, v4

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/storage/StorageManagerInternal;->onAppOpsChanged(IILjava/lang/String;II)V

    :cond_7
    :goto_5
    return-void

    :catchall_1
    move-exception v0

    move-object v2, p0

    goto :goto_3

    :goto_6
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catch_1
    move-exception v0

    move v3, p2

    move-object p0, v0

    const-string/jumbo p1, "setMode"

    invoke-static {v3, p0, p1}, Lcom/android/server/appop/AppOpsService;->logVerifyAndGetBypassFailure(ILjava/lang/SecurityException;Ljava/lang/String;)V

    return-void
.end method

.method public final setUidMode(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/appop/AppOpsService;->setUidMode(IIILcom/android/internal/app/IAppOpsCallback;)V

    return-void
.end method

.method public final setUidMode(IIILcom/android/internal/app/IAppOpsCallback;)V
    .locals 25

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v4, p3

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AppOps"

    const-string/jumbo v5, "uid "

    const-string v6, " OP_"

    invoke-static {v2, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " := "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " by uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v1, v0, v5, v2}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/server/appop/AppOpsService;->shouldBlockCommand(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "shouldBlockCommand "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/server/appop/AppOpsService;->isDeviceProvisioningPackage(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "AppOps"

    const-string v1, "Cannot set uid mode for device provisioning app by Shell"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v5

    const/4 v7, 0x0

    if-nez p4, :cond_11

    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    if-nez v8, :cond_3

    goto/16 :goto_b

    :cond_3
    invoke-virtual {v8, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto/16 :goto_b

    :cond_4
    aget-object v10, v0, v7

    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mSwitchedOps:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, [I

    array-length v15, v14

    move v9, v7

    :goto_0
    if-ge v9, v15, :cond_11

    aget v0, v14, v9

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    :goto_1
    move/from16 v21, v9

    move-object/from16 v17, v14

    move/from16 v18, v15

    goto/16 :goto_a

    :cond_5
    iget-object v11, v1, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const/4 v12, -0x1

    invoke-virtual {v11, v0, v12, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_1

    :cond_6
    :try_start_0
    invoke-virtual {v8, v0, v7}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v11
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v11}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v12

    if-nez v12, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result v12

    const/16 v13, 0x17

    if-lt v12, v13, :cond_8

    const/16 v16, 0x1

    goto :goto_2

    :cond_8
    move/from16 v16, v7

    :goto_2
    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v13

    iget-object v12, v11, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    const-string v6, ", permission="

    const-string v7, ", mode="

    move-object/from16 v17, v14

    const-string v14, ", switchCode="

    move/from16 v18, v15

    const-string/jumbo v15, "setUidMode() called with a mode inconsistent with runtime permission state, this is discouraged and you should revoke the runtime permission instead: uid="

    const-string v3, "AppOps"

    const/16 v19, 0x8

    if-eqz v12, :cond_e

    invoke-virtual {v8, v12, v10}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_c

    if-eqz v4, :cond_9

    const/4 v12, 0x1

    goto :goto_3

    :cond_9
    const/4 v12, 0x0

    :goto_3
    if-eqz v12, :cond_a

    if-eqz v16, :cond_a

    move-object/from16 v20, v8

    invoke-static {v2, v5, v15, v14, v7}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v21, v9

    iget-object v9, v11, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    invoke-static {v8, v9, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    move-object/from16 v20, v8

    move/from16 v21, v9

    :goto_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    :try_start_1
    iget-object v9, v11, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    if-eqz v12, :cond_b

    move/from16 v12, v19

    goto :goto_5

    :cond_b
    const/4 v12, 0x0

    :goto_5
    const/16 v11, 0x8

    move-object/from16 v8, v20

    invoke-virtual/range {v8 .. v13}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    :catchall_0
    move-exception v0

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_c
    move/from16 v21, v9

    :goto_6
    if-eqz v4, :cond_d

    const/4 v9, 0x4

    if-eq v4, v9, :cond_d

    :goto_7
    const/4 v9, 0x1

    goto :goto_8

    :cond_d
    const/4 v9, 0x0

    goto :goto_8

    :cond_e
    move/from16 v21, v9

    if-eqz v4, :cond_d

    goto :goto_7

    :goto_8
    if-eqz v9, :cond_f

    if-eqz v16, :cond_f

    invoke-static {v2, v5, v15, v14, v7}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    if-eqz v9, :cond_10

    move/from16 v12, v19

    goto :goto_9

    :cond_10
    const/4 v12, 0x0

    :goto_9
    const/16 v11, 0x8

    move-object v9, v0

    :try_start_2
    invoke-virtual/range {v8 .. v13}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a

    :catchall_1
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catch_0
    move-exception v0

    move/from16 v21, v9

    move-object/from16 v17, v14

    move/from16 v18, v15

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_a
    add-int/lit8 v9, v21, 0x1

    move-object/from16 v14, v17

    move/from16 v15, v18

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_11
    :goto_b
    monitor-enter p0

    :try_start_3
    invoke-static {v5}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v6

    if-nez v6, :cond_14

    if-ne v4, v0, :cond_12

    monitor-exit p0

    goto/16 :goto_f

    :catchall_2
    move-exception v0

    goto/16 :goto_10

    :cond_12
    const/16 v0, 0x2710

    if-lt v2, v0, :cond_13

    const-string v0, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Trying to set mode for unknown uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    new-instance v6, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-direct {v6, v1, v2}, Lcom/android/server/appop/AppOpsService$UidState;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v7, v6, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    const-string/jumbo v8, "default:0"

    invoke-interface {v0, v7, v5, v8}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(IILjava/lang/String;)I

    move-result v0

    invoke-static {v5}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v7

    if-eq v0, v7, :cond_15

    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v7, v6, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    const-string/jumbo v8, "default:0"

    invoke-interface {v0, v7, v5, v8}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(IILjava/lang/String;)I

    move-result v0

    :goto_c
    move-object/from16 v7, p4

    goto :goto_d

    :cond_15
    const/4 v0, 0x3

    goto :goto_c

    :goto_d
    iput-object v7, v1, Lcom/android/server/appop/AppOpsService;->mIgnoredCallback:Lcom/android/internal/app/IAppOpsCallback;

    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v6, v6, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-interface {v7, v6, v5, v4}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->setUidMode(III)Z

    move-result v6

    if-nez v6, :cond_16

    monitor-exit p0

    goto :goto_f

    :cond_16
    const/4 v6, 0x2

    if-eq v4, v6, :cond_18

    if-eq v4, v0, :cond_18

    const/4 v6, 0x1

    if-ne v4, v6, :cond_17

    goto :goto_e

    :cond_17
    move v6, v3

    :goto_e
    invoke-virtual {v1, v5, v2, v6}, Lcom/android/server/appop/AppOpsService;->updateStartedOpModeForUidForDefaultDeviceLocked(IIZ)V

    :cond_18
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-class v1, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManagerInternal;

    if-eqz v1, :cond_19

    const/4 v3, 0x0

    move/from16 v24, v5

    move v5, v0

    move-object v0, v1

    move/from16 v1, v24

    invoke-virtual/range {v0 .. v5}, Landroid/os/storage/StorageManagerInternal;->onAppOpsChanged(IILjava/lang/String;II)V

    :cond_19
    :goto_f
    return-void

    :goto_10
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public final setUserRestriction(IZLandroid/os/IBinder;ILandroid/os/PackageTagsList;)V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    const-string/jumbo v4, "android.permission.MANAGE_APP_OPS_RESTRICTIONS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p4, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Need INTERACT_ACROSS_USERS_FULL or INTERACT_ACROSS_USERS to interact cross user "

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;ILandroid/os/PackageTagsList;)V

    return-void
.end method

.method public final setUserRestrictionNoCheck(IZLandroid/os/IBinder;ILandroid/os/PackageTagsList;)V
    .locals 4

    const-string/jumbo v0, "setUserRestrictionNoCheck code: "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    new-instance v1, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;

    invoke-direct {v1, p0, p3}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "Calling Pid:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    monitor-exit p0

    return-void

    :cond_0
    :goto_0
    invoke-virtual {v1, p1, p2, p5, p4}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->setRestriction(IZLandroid/os/PackageTagsList;I)Z

    move-result p5

    if-eqz p5, :cond_1

    iget-object p5, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, p0, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p5, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {v0, p0, p1, p2, p4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    iget-object p1, v1, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object p1, p1, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    iget-object p2, v1, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    check-cast p1, Lcom/android/server/appop/AppOpsRestrictionsImpl;

    iget-object p1, p1, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v1, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    const/4 p2, 0x0

    invoke-interface {p1, v1, p2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final setUserRestrictions(Landroid/os/Bundle;Landroid/os/IBinder;I)V
    .locals 7

    const-string/jumbo v0, "setUserRestrictions"

    invoke-static {v0}, Lcom/android/server/appop/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const/16 v1, 0xa5

    if-ge v2, v1, :cond_1

    invoke-static {v2}, Landroid/app/AppOpsManager;->opToRestriction(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;ILandroid/os/PackageTagsList;)V

    goto :goto_1

    :cond_0
    move-object v1, p0

    move-object v4, p2

    move v5, p3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-object p0, v1

    move-object p2, v4

    move p3, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final shouldCollectNotes(I)Z
    .locals 3

    const/16 v0, 0xa4

    const-string/jumbo v1, "opCode"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    invoke-static {p1}, Landroid/app/AppOpsManager;->shouldForceCollectNoteForOp(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result p1

    if-eq p1, v1, :cond_3

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1

    :catch_0
    return v2
.end method

.method public final shouldIgnoreCallback(III)Z
    .locals 0

    invoke-static {p1}, Landroid/app/AppOpsManager;->opRestrictsRead(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "android.permission.MANAGE_APPOPS"

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final shutdown()V
    .locals 2

    const-string v0, "AppOps"

    const-string/jumbo v1, "Writing app ops before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    iput-boolean v1, p0, Lcom/android/server/appop/AppOpsService;->mFastWriteScheduled:Z

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Lcom/android/server/appop/AppOpsService$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->writeRecentAccesses()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->shutdown()V

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/LegacyHistoricalRegistry;

    invoke-virtual {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->shutdown()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .locals 13

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public final startOperationForDevice(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .locals 0

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-virtual/range {p0 .. p12}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public final startOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .locals 22

    move-object/from16 v0, p9

    move/from16 v10, p12

    const-string/jumbo v11, "startOperationUnchecked: allowing code "

    const-string/jumbo v12, "startOperationUnchecked: reject #"

    const-string/jumbo v13, "startOperationUnchecked: uid reject #"

    const-string/jumbo v14, "startOperationUnchecked: no op for code "

    const/4 v7, 0x0

    const/4 v15, 0x2

    move-object/from16 v1, p0

    move/from16 v3, p3

    move-object/from16 v2, p4

    move-object/from16 v4, p5

    move/from16 v6, p7

    move-object/from16 v5, p8

    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v4, v2

    :try_start_1
    iget-boolean v1, v8, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object/from16 v5, p5

    :goto_0
    move-object/from16 v1, p8

    if-eqz v0, :cond_1

    invoke-static {v4, v1, v0}, Lcom/android/server/appop/AppOpsService;->isAttributionTagDefined(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v0, v2

    :cond_1
    monitor-enter p0

    move-object v4, v5

    :try_start_2
    iget-boolean v5, v8, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z

    iget-object v6, v8, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v5

    const/4 v9, 0x0

    if-nez v5, :cond_4

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p6

    move/from16 v7, p11

    move/from16 v10, p16

    move/from16 v11, p17

    move-object v5, v4

    move-object/from16 v4, p4

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IIIIII)V

    move-object v6, v5

    move v9, v7

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :cond_2
    :goto_1
    const-string v0, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " uid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " package "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " flags: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v15, v2, v6, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v0

    :cond_4
    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v7, p6

    move-object v6, v4

    move v14, v9

    move-object/from16 v4, p4

    move/from16 v9, p11

    const/4 v15, 0x1

    invoke-virtual {v1, v5, v2, v3, v15}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v14

    invoke-virtual {v1, v7, v2}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v14, v6, v15}, Lcom/android/server/appop/AppOpsService$Op;->getOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AttributedOp;

    move-result-object v15

    move-object/from16 v16, v0

    iget-object v0, v5, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget-object v8, v8, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    move-object v7, v8

    const/4 v8, 0x0

    move/from16 v17, v3

    move v3, v2

    move/from16 v2, v17

    move-object/from16 v17, v14

    move-object v14, v5

    move-object v5, v6

    move/from16 v6, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$RestrictionBypass;Z)Z

    move-result v7

    move/from16 v21, v3

    move v3, v2

    move/from16 v2, v21

    invoke-static {v2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v8

    move-object/from16 v18, v5

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    move/from16 v19, v7

    if-eqz v5, :cond_6

    const/16 v7, 0x3e8

    if-ne v5, v7, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v5, 0x1

    :goto_3
    if-eqz v5, :cond_7

    move-object v13, v1

    move v14, v2

    move-object v1, v4

    move-object/from16 v20, v11

    :goto_4
    move-object/from16 v2, v18

    :goto_5
    const/16 v17, 0x0

    goto/16 :goto_8

    :cond_7
    iget-object v5, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v7, v0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    move-object/from16 v20, v11

    invoke-virtual {v1, v6, v8}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v7, v8, v11}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(IILjava/lang/String;)I

    move-result v5

    invoke-static {v8}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v7

    if-eq v5, v7, :cond_b

    invoke-virtual {v0, v2, v5}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v5

    invoke-static {v5, v10}, Lcom/android/server/appop/AppOpsService;->shouldStartForMode(IZ)Z

    move-result v7

    if-nez v7, :cond_a

    sget-boolean v7, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    if-nez v7, :cond_8

    sget-boolean v7, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v7, :cond_9

    :cond_8
    const-string v7, "AppOps"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " for code "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") uid "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " package "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " flags: "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$UidState;->getState()I

    move-result v0

    invoke-virtual {v15, v0, v9}, Lcom/android/server/appop/AttributedOp;->rejected(II)V

    move/from16 v10, p16

    move/from16 v11, p17

    move v8, v5

    move v7, v9

    move-object/from16 v5, v18

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IIIIII)V

    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v8, v2, v5, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v0

    :cond_a
    move v7, v9

    move-object v13, v1

    move v14, v2

    move-object v1, v4

    goto/16 :goto_4

    :cond_b
    move v7, v9

    move-object/from16 v5, v18

    const/4 v9, 0x0

    if-eq v8, v2, :cond_c

    const/4 v13, 0x1

    invoke-virtual {v1, v14, v8, v3, v13}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v14

    goto :goto_6

    :cond_c
    const/4 v13, 0x1

    move-object/from16 v14, v17

    :goto_6
    iget-object v6, v14, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v11, v14, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v9, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object v13, v14, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget v14, v14, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    invoke-interface {v9, v11, v14, v13}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(IILjava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v11, v9}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_d

    if-eqz v10, :cond_e

    const/4 v9, 0x3

    if-eq v6, v9, :cond_d

    goto :goto_7

    :cond_d
    move-object v13, v1

    move v14, v2

    move-object v1, v4

    move-object v2, v5

    goto/16 :goto_5

    :cond_e
    :goto_7
    :try_start_3
    sget-boolean v9, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v9, :cond_f

    :try_start_4
    sget-boolean v9, Lcom/android/server/appop/AppOpsService;->DEBUG:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v9, :cond_10

    :cond_f
    :try_start_5
    const-string v9, "AppOps"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " for code "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") uid "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " package "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " flags: "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$UidState;->getState()I

    move-result v0

    invoke-virtual {v15, v0, v7}, Lcom/android/server/appop/AttributedOp;->rejected(II)V

    move/from16 v10, p16

    move/from16 v11, p17

    move v8, v6

    const/4 v9, 0x0

    move/from16 v6, p6

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IIIIII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v13, v1

    move v14, v2

    move-object v1, v4

    move-object v2, v5

    :try_start_6
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v8, v14, v2, v1}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    move-object v13, v1

    goto/16 :goto_e

    :goto_8
    sget-boolean v4, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v4, :cond_11

    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v6, v20

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " restricted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, v19

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " flags: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p11 .. p11}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_9

    :cond_11
    move/from16 v8, v19

    :goto_9
    if-eqz v8, :cond_12

    move/from16 v9, p10

    :try_start_7
    invoke-virtual {v13, v9, v14}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$UidState;->getState()I

    move-result v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v1, p1

    move/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v9, p16

    move/from16 v10, p17

    move-object/from16 v18, v2

    move/from16 v19, v8

    move-object v0, v15

    move-object/from16 v5, v16

    move/from16 v2, p6

    move/from16 v8, p11

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/appop/AttributedOp;->startedOrPaused(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZZ)V

    move/from16 v9, v17

    :goto_a
    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p11

    move/from16 v10, p16

    move/from16 v11, p17

    move-object v1, v13

    move v2, v14

    move-object/from16 v5, v18

    move/from16 v8, v19

    goto :goto_b

    :catch_0
    move-exception v0

    goto :goto_d

    :cond_12
    move/from16 v9, p10

    move-object v1, v0

    move-object/from16 v18, v2

    move/from16 v19, v8

    move-object v0, v15

    move-object/from16 v5, v16

    invoke-virtual {v13, v9, v14}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$UidState;->getState()I

    move-result v7

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v1, p1

    move/from16 v2, p6

    move/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v8, p11

    move/from16 v9, p16

    move/from16 v10, p17

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/appop/AttributedOp;->startedOrPaused(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v9, 0x1

    goto :goto_a

    :goto_b
    :try_start_8
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IIIIII)V

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz p13, :cond_13

    if-nez v8, :cond_13

    const/4 v0, 0x1

    const/4 v1, 0x1

    move-object/from16 p5, p0

    move/from16 p7, p2

    move/from16 p6, p3

    move-object/from16 p10, p4

    move-object/from16 p12, p14

    move/from16 p13, p15

    move/from16 p8, v0

    move/from16 p9, v1

    move-object/from16 p11, v5

    invoke-virtual/range {p5 .. p13}, Lcom/android/server/appop/AppOpsService;->collectAsyncNotedOp(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move/from16 v2, p7

    move-object/from16 v4, p10

    goto :goto_c

    :cond_13
    move/from16 v2, p2

    move-object/from16 v4, p4

    :goto_c
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v8, v2, v5, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :goto_d
    :try_start_9
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_e
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    move/from16 v2, p2

    move/from16 v3, p3

    goto :goto_f

    :catch_2
    move-exception v0

    move-object v4, v2

    move/from16 v2, p2

    :goto_f
    const-string/jumbo v1, "startOperation"

    invoke-static {v3, v0, v1}, Lcom/android/server/appop/AppOpsService;->logVerifyAndGetBypassFailure(ILjava/lang/SecurityException;Ljava/lang/String;)V

    new-instance v0, Landroid/app/SyncNotedAppOp;

    move-object/from16 v1, p5

    invoke-direct {v0, v15, v2, v1, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .locals 0

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-virtual/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public final startProxyOperationWithState(Landroid/os/IBinder;ILandroid/content/AttributionSourceState;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .locals 1

    move-object v0, p3

    new-instance p3, Landroid/content/AttributionSource;

    invoke-direct {p3, v0}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-virtual/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public final startWatchingActive([ILcom/android/internal/app/IAppOpsActiveCallback;)V
    .locals 8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.WATCH_APPOPS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    move v3, v0

    :goto_0
    const/4 v6, 0x0

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid op code in: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-static {p1, v6, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    :cond_1
    if-nez p2, :cond_2

    return-void

    :cond_2
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_3

    :try_start_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    move-object v7, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_4

    :goto_1
    :try_start_2
    new-instance v0, Lcom/android/server/appop/AppOpsService$ActiveCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v1, p0

    move-object v2, p2

    :try_start_3
    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$ActiveCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsActiveCallback;III)V

    array-length p0, p1

    :goto_2
    if-ge v6, p0, :cond_4

    aget p2, p1, v6

    invoke-virtual {v7, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_3
    move-object p1, v0

    goto :goto_4

    :cond_4
    monitor-exit v1

    return-void

    :catchall_2
    move-exception v0

    move-object v1, p0

    goto :goto_3

    :goto_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final startWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/RemoteCallbackList$Builder;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Landroid/os/RemoteCallbackList$Builder;-><init>(I)V

    new-instance v2, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList$Builder;->setInterfaceDiedCallback(Landroid/os/RemoteCallbackList$Builder$InterfaceDiedCallback;)Landroid/os/RemoteCallbackList$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList$Builder;->build()Landroid/os/RemoteCallbackList;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/appop/AppOpsService$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/appop/AppOpsService$9;-><init>(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V

    :cond_1
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/appop/AppOpsService;->startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    return-void
.end method

.method public final startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    .locals 10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid op code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa4

    const/4 v7, -0x1

    invoke-static {p1, v7, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    if-nez p4, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, p2, v3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    move v8, v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :goto_1
    monitor-enter p0

    if-eq p1, v7, :cond_2

    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v9, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto/16 :goto_6

    :cond_2
    move v9, p1

    :goto_2
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_4

    if-ne p1, v7, :cond_3

    const/4 p1, -0x2

    :cond_3
    move v4, p1

    goto :goto_3

    :cond_4
    move v4, v9

    :goto_3
    :try_start_1
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p4}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/appop/AppOpsService$ModeCallback;

    if-nez p1, :cond_5

    new-instance v0, Lcom/android/server/appop/AppOpsService$ModeCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v1, p0

    move v3, p3

    move-object v2, p4

    :try_start_2
    invoke-direct/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$ModeCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;IIII)V

    iget-object p0, v1, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {v2}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    goto :goto_5

    :catchall_1
    move-exception v0

    :goto_4
    move-object p1, v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v1, p0

    goto :goto_4

    :cond_5
    move-object v1, p0

    :goto_5
    if-eq v9, v7, :cond_7

    iget-object p0, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {p0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-nez p0, :cond_6

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    iget-object p3, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {p3, v9, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_6
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz v8, :cond_9

    iget-object p0, v1, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-nez p0, :cond_8

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    iget-object p3, v1, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {p3, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_9
    monitor-exit v1

    return-void

    :goto_6
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final startWatchingNoted([ILcom/android/internal/app/IAppOpsNotedCallback;)V
    .locals 8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.WATCH_APPOPS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    move v3, v0

    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "Ops cannot be null or empty"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid op code in: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa4

    const/4 v6, 0x0

    invoke-static {p1, v6, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    const-string v0, "Callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_1

    :try_start_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move-object v7, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_4

    :goto_1
    :try_start_2
    new-instance v0, Lcom/android/server/appop/AppOpsService$NotedCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v1, p0

    move-object v2, p2

    :try_start_3
    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$NotedCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsNotedCallback;III)V

    array-length p0, p1

    :goto_2
    if-ge v6, p0, :cond_2

    aget p2, p1, v6

    invoke-virtual {v7, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_3
    move-object p1, v0

    goto :goto_4

    :cond_2
    monitor-exit v1

    return-void

    :catchall_2
    move-exception v0

    move-object v1, p0

    goto :goto_3

    :goto_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final startWatchingStarted([ILcom/android/internal/app/IAppOpsStartedCallback;)V
    .locals 8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.WATCH_APPOPS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    move v3, v0

    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "Ops cannot be null or empty"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid op code in: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa4

    const/4 v6, 0x0

    invoke-static {p1, v6, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    const-string v0, "Callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsStartedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_1

    :try_start_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsStartedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move-object v7, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_4

    :goto_1
    :try_start_2
    new-instance v0, Lcom/android/server/appop/AppOpsService$StartedCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v1, p0

    move-object v2, p2

    :try_start_3
    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$StartedCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsStartedCallback;III)V

    array-length p0, p1

    :goto_2
    if-ge v6, p0, :cond_2

    aget p2, p1, v6

    invoke-virtual {v7, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_3
    move-object p1, v0

    goto :goto_4

    :cond_2
    monitor-exit v1

    return-void

    :catchall_2
    move-exception v0

    move-object v1, p0

    goto :goto_3

    :goto_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final stopWatchingActive(Lcom/android/internal/app/IAppOpsActiveCallback;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    if-nez p1, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    iget-object v4, v3, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallback:Lcom/android/internal/app/IAppOpsActiveCallback;

    invoke-interface {v4}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final stopWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/RemoteCallbackList;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/appop/AppOpsService$ModeCallback;

    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-gtz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final stopWatchingNoted(Lcom/android/internal/app/IAppOpsNotedCallback;)V
    .locals 5

    const-string v0, "Callback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$NotedCallback;

    iget-object v4, v3, Lcom/android/server/appop/AppOpsService$NotedCallback;->mCallback:Lcom/android/internal/app/IAppOpsNotedCallback;

    invoke-interface {v4}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final stopWatchingStarted(Lcom/android/internal/app/IAppOpsStartedCallback;)V
    .locals 5

    const-string v0, "Callback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsStartedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$StartedCallback;

    iget-object v4, v3, Lcom/android/server/appop/AppOpsService$StartedCallback;->mCallback:Lcom/android/internal/app/IAppOpsStartedCallback;

    invoke-interface {v4}, Lcom/android/internal/app/IAppOpsStartedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final switchPackageIfBootTimeOrRarelyUsedLocked(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    const/4 v1, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    invoke-virtual {p0, p1, v1}, Lcom/android/server/appop/AppOpsService;->resampleAppOpForPackageLocked(Ljava/lang/String;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    invoke-virtual {p0, p1, v1}, Lcom/android/server/appop/AppOpsService;->resampleAppOpForPackageLocked(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public final systemReady()V
    .locals 12

    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->systemReady()V

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->initializeUidStates()V

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/appop/AppOpsService$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "app_ops_constants"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$Constants;->updateConstants()V

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/LegacyHistoricalRegistry;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/appop/LegacyHistoricalRegistry;->systemReady(Landroid/content/ContentResolver;)V

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mOnPackageUpdatedReceiver:Lcom/android/server/appop/AppOpsService$4;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->prepareInternalCallbacks()V

    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/appop/AppOpsService$4;

    const/4 v0, 0x1

    invoke-direct {v7, p0, v0}, Lcom/android/server/appop/AppOpsService$4;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, v4

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/appop/AppOpsService$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/appop/AppOpsService$1;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    new-instance v1, Lcom/android/server/appop/AppOpsService$7;

    invoke-direct {v1, p0}, Lcom/android/server/appop/AppOpsService$7;-><init>(Lcom/android/server/appop/AppOpsService;)V

    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mExternalSourcesPolicy:Lcom/android/server/appop/AppOpsService$7;

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/SensorPrivacyManager;->getInstance(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    return-void
.end method

.method public final trimUidStatesLocked(Landroid/util/SparseBooleanArray;Ljava/util/Map;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_5

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_4

    const/16 v3, 0x4e1f

    if-gt v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$UidState;

    iget-object v2, v2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_2

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageState;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v4, v1}, Lcom/android/server/appop/AppOpsService;->refreshAttributionsLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final uidRemoved(I)V
    .locals 5

    const-string/jumbo v0, "Tried to remove existing UID. uid: "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string p0, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " name: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$UidState;->clear()V

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final updateStartedOpModeForUidForDefaultDeviceLocked(IIZ)V
    .locals 47

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/server/appop/AppOpsService$UidState;

    if-nez v8, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v9

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v9, :cond_f

    iget-object v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/android/server/appop/AppOpsService$Ops;

    move/from16 v2, p1

    if-eqz v12, :cond_1

    invoke-virtual {v12, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$Op;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    goto/16 :goto_8

    :cond_2
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object v5, v3, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget v6, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v7, v3, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-interface {v4, v6, v7, v5}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    goto/16 :goto_8

    :cond_3
    iget-object v3, v3, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    const-string/jumbo v4, "default:0"

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/util/ArrayMap;

    move v15, v10

    :goto_2
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v15, v3, :cond_e

    invoke-virtual {v14, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AttributedOp;

    const/4 v4, 0x1

    if-eqz p3, :cond_8

    invoke-virtual {v3}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v3}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    iget-object v5, v3, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    if-nez v5, :cond_5

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5, v4}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v5, v3, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    :cond_5
    move v5, v10

    :goto_3
    iget-object v6, v3, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    iget-object v6, v3, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    iget-object v7, v3, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    iget-object v13, v6, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    invoke-virtual {v7, v13, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v6, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    invoke-virtual {v3, v7, v10, v4}, Lcom/android/server/appop/AttributedOp;->finishOrPause(Landroid/os/IBinder;ZZ)V

    iget-object v7, v3, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v13, v7, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v4, v7, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v7, v7, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget v10, v6, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mVirtualDeviceId:I

    iget v2, v6, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionFlags:I

    iget v6, v6, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionChainId:I

    move/from16 v23, v2

    iget-object v2, v3, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    move-object/from16 v16, v2

    iget-object v2, v3, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    const/16 v22, 0x0

    move-object/from16 v20, v2

    move/from16 v18, v4

    move/from16 v24, v6

    move-object/from16 v19, v7

    move/from16 v21, v10

    move/from16 v17, v13

    invoke-virtual/range {v16 .. v24}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IZII)V

    add-int/lit8 v5, v5, 0x1

    move/from16 v2, p1

    const/4 v4, 0x1

    const/4 v10, 0x0

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    iput-object v2, v3, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    :cond_7
    :goto_4
    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_8
    invoke-virtual {v3}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v12, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v4, v3, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object v2

    iget-object v6, v2, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    iget-object v2, v12, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v4, v3, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v10, v3

    const/16 v25, 0x1

    move-object v3, v2

    move/from16 v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$RestrictionBypass;Z)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v10}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    iget-object v0, v10, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-nez v0, :cond_a

    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, v10, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, v10, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    :cond_a
    iget-object v0, v10, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v10, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    move/from16 v4, v25

    goto :goto_5

    :cond_b
    const/4 v4, 0x0

    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_6
    iget-object v3, v10, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_d

    iget-object v3, v10, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    iget-object v5, v10, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    iget-object v6, v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    invoke-virtual {v5, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartElapsedTime:J

    iput-wide v0, v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartTime:J

    iget-object v5, v10, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v5, v5, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/LegacyHistoricalRegistry;

    iget-object v6, v10, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v7, v6, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v13, v6, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v6, v6, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    move-wide/from16 v34, v0

    iget-object v0, v10, Lcom/android/server/appop/AttributedOp;->persistentDeviceId:Ljava/lang/String;

    iget-object v1, v10, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    move-object/from16 v30, v0

    iget v0, v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mUidState:I

    move/from16 v32, v0

    iget v0, v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mFlags:I

    move/from16 v33, v0

    iget v0, v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionFlags:I

    move/from16 v36, v0

    iget v0, v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionChainId:I

    const/16 v38, 0x1

    move/from16 v37, v0

    move-object/from16 v31, v1

    move-object/from16 v26, v5

    move-object/from16 v29, v6

    move/from16 v27, v7

    move/from16 v28, v13

    invoke-virtual/range {v26 .. v38}, Lcom/android/server/appop/LegacyHistoricalRegistry;->incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIII)V

    if-eqz v4, :cond_c

    iget-object v0, v10, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v10, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v5, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v6, v1, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v1, v1, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v7, v10, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    iget v13, v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mVirtualDeviceId:I

    move-object/from16 v16, v0

    iget v0, v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionFlags:I

    move/from16 v23, v0

    iget v0, v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionChainId:I

    const/16 v22, 0x1

    move/from16 v24, v0

    move-object/from16 v19, v1

    move/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v20, v7

    move/from16 v21, v13

    invoke-virtual/range {v16 .. v24}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IZII)V

    :cond_c
    iget-object v0, v10, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v10, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v5, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v6, v1, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v1, v1, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v7, v10, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    iget v13, v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mVirtualDeviceId:I

    move-object/from16 v36, v0

    iget v0, v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mFlags:I

    move/from16 v42, v0

    iget v0, v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionFlags:I

    iget v3, v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionChainId:I

    const/16 v43, 0x0

    const/16 v44, 0x2

    move/from16 v45, v0

    move-object/from16 v39, v1

    move/from16 v46, v3

    move/from16 v37, v5

    move/from16 v38, v6

    move-object/from16 v40, v7

    move/from16 v41, v13

    invoke-virtual/range {v36 .. v46}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IIIIII)V

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v0, v34

    goto/16 :goto_6

    :cond_d
    const/4 v2, 0x0

    iput-object v2, v10, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    :goto_7
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v1, p2

    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_e
    :goto_8
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_f
    :goto_9
    return-void
.end method

.method public final validateOpRequest(IIIZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    if-eqz p4, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/appop/AppOpsService;->isValidVirtualDeviceId(I)Z

    move-result p1

    const/4 p4, 0x0

    const-string v0, "AppOps"

    if-nez p1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": error due to virtualDeviceId "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is invalid"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p4

    :cond_1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p1, p5}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": error due to package: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is invalid for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p4

    :cond_2
    invoke-static {p2, p5}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": error due to unable to resolve uid: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p4

    :cond_3
    return-object p0
.end method

.method public final verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object v1, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object p0

    return-object p0
.end method

.method public final verifyAndGetBypass(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string/jumbo v5, "package "

    const-string/jumbo v6, "attributionTag "

    const-string/jumbo v7, "attributionTag "

    const/16 v8, 0x2710

    const/4 v10, 0x0

    if-nez p2, :cond_2

    new-instance v0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    if-lez v2, :cond_1

    if-ge v2, v8, :cond_1

    :goto_0
    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, v1, Lcom/android/server/appop/AppOpsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    :goto_1
    invoke-direct {v0, v10, v9}, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;-><init>(Landroid/app/AppOpsManager$RestrictionBypass;Z)V

    return-object v0

    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSdkSandboxPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v12

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-virtual {v0, v11, v12, v13}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_3
    move/from16 v0, p2

    :goto_2
    monitor-enter p0

    :try_start_1
    iget-object v11, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/appop/AppOpsService$UidState;

    if-eqz v11, :cond_5

    iget-object v12, v11, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v11, v11, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/appop/AppOpsService$Ops;

    if-eqz v11, :cond_5

    if-eqz v3, :cond_4

    iget-object v12, v11, Lcom/android/server/appop/AppOpsService$Ops;->knownAttributionTags:Landroid/util/ArraySet;

    invoke-virtual {v12, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    :cond_4
    :goto_3
    iget-object v12, v11, Lcom/android/server/appop/AppOpsService$Ops;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    if-eqz v12, :cond_5

    new-instance v0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    iget-object v2, v11, Lcom/android/server/appop/AppOpsService$Ops;->validAttributionTags:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {v0, v12, v2}, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;-><init>(Landroid/app/AppOpsManager$RestrictionBypass;Z)V

    monitor-exit p0

    return-object v0

    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    const-string/jumbo v12, "com.android.shell"

    invoke-static {v2, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/16 v12, 0x7d0

    goto :goto_4

    :cond_6
    invoke-static {v2}, Lcom/android/server/appop/AppOpsService;->resolveNonAppUid(Ljava/lang/String;)I

    move-result v12

    :goto_4
    const/4 v13, -0x1

    if-eq v12, v13, :cond_c

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-eq v12, v3, :cond_9

    if-nez p6, :cond_7

    const-string v1, "AppOps"

    const-string v3, "Bad call made by uid "

    const-string v4, ". Package \""

    const-string v5, "\" does not belong to uid "

    invoke-static {v11, v3, v4, v2, v5}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-static {v0, v4, v1, v3}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_7
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v1, :cond_8

    const-string v1, " but it is really "

    invoke-static {v12, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_8
    const-string v1, " but it is not"

    :goto_5
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Specified package \""

    const-string v5, "\" under uid "

    invoke-static {v4, v2, v5}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_9
    new-instance v0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    sget-object v2, Landroid/app/AppOpsManager$RestrictionBypass;->UNRESTRICTED:Landroid/app/AppOpsManager$RestrictionBypass;

    if-nez v4, :cond_a

    goto :goto_6

    :cond_a
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-lez v3, :cond_b

    if-ge v3, v8, :cond_b

    :goto_6
    const/4 v9, 0x1

    goto :goto_7

    :cond_b
    iget-object v1, v1, Lcom/android/server/appop/AppOpsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    :goto_7
    invoke-direct {v0, v2, v9}, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;-><init>(Landroid/app/AppOpsManager$RestrictionBypass;Z)V

    return-object v0

    :cond_c
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    :try_start_2
    const-class v16, Landroid/content/pm/PackageManagerInternal;

    invoke-static/range {v16 .. v16}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v9, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v16

    if-nez v16, :cond_d

    goto :goto_8

    :cond_d
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v17

    move-object/from16 v10, v17

    :goto_8
    const/16 v17, 0x0

    if-eqz v10, :cond_10

    invoke-static {v10, v3}, Lcom/android/server/appop/AppOpsService;->isAttributionInPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v12

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v13

    invoke-static {v8, v13}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8

    new-instance v13, Landroid/app/AppOpsManager$RestrictionBypass;

    move/from16 p5, v8

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v8

    move-object/from16 v18, v10

    const/16 v10, 0x3e8

    if-ne v8, v10, :cond_e

    const/4 v8, 0x1

    goto :goto_9

    :cond_e
    move/from16 v8, v17

    :goto_9
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageState;->isPrivileged()Z

    move-result v10

    iget-object v1, v1, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    move/from16 v19, v12

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-wide/from16 v20, v14

    :try_start_3
    const-string/jumbo v14, "android.permission.EXEMPT_FROM_AUDIO_RECORD_RESTRICTIONS"

    const/4 v15, -0x1

    invoke-virtual {v1, v14, v15, v12}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_a

    :cond_f
    move/from16 v1, v17

    :goto_a
    invoke-direct {v13, v8, v10, v1}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    move/from16 v12, p5

    move/from16 v17, v19

    goto :goto_b

    :catchall_1
    move-exception v0

    move-wide/from16 v20, v14

    goto/16 :goto_f

    :cond_10
    move-object/from16 v18, v10

    move-wide/from16 v20, v14

    const/4 v13, 0x0

    :goto_b
    if-nez v17, :cond_14

    if-eqz v4, :cond_11

    invoke-virtual {v9, v4}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v10

    goto :goto_c

    :catchall_2
    move-exception v0

    goto/16 :goto_f

    :cond_11
    const/4 v10, 0x0

    :goto_c
    invoke-static {v10, v3}, Lcom/android/server/appop/AppOpsService;->isAttributionInPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v17

    if-eqz v18, :cond_12

    if-eqz v17, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " declared in manifest of the proxy package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", this is not advised"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_12
    if-eqz v18, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not declared in manifest of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not found, can\'t check for attributionTag "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_d
    const-string v3, "AppOps"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_14
    move/from16 v1, v17

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eq v12, v0, :cond_17

    if-nez p6, :cond_15

    const-string v1, "AppOps"

    const-string v3, "Bad call made by uid "

    const-string v4, ". Package \""

    const-string v5, "\" does not belong to uid "

    invoke-static {v11, v3, v4, v2, v5}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-static {v0, v4, v1, v3}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_15
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v1, :cond_16

    const-string v1, " but it is really "

    invoke-static {v12, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_16
    const-string v1, " but it is not"

    :goto_e
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Specified package \""

    const-string v5, "\" under uid "

    invoke-static {v0, v4, v2, v5, v1}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_17
    new-instance v0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    invoke-direct {v0, v13, v1}, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;-><init>(Landroid/app/AppOpsManager$RestrictionBypass;Z)V

    return-object v0

    :goto_f
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :goto_10
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public final verifyIncomingOp(I)V
    .locals 3

    if-ltz p1, :cond_2

    const/16 v0, 0xa5

    if-ge p1, v0, :cond_2

    invoke-static {p1}, Landroid/app/AppOpsManager;->opRestrictsRead(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v2, "android.permission.MANAGE_APPOPS"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v2, "android.permission.GET_APP_OPS_STATS"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "android.permission.MANAGE_APP_OPS_MODES"

    invoke-virtual {p0, v1, p1, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "verifyIncomingOp: uid "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " does not have any of {MANAGE_APPOPS, GET_APP_OPS_STATS, MANAGE_APP_OPS_MODES}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad operation #"

    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final verifyIncomingProxyUid(Landroid/content/AttributionSource;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public final verifyIncomingUid(I)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public final writePermissionAccessInformation(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    const-string v1, "AppOps"

    :try_start_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mPermissionAccessInformationController:Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    :try_start_1
    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->write(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v8, p6

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    sget-boolean p1, Lcom/android/server/appop/AppOpsService;->AI_PRIVACY:Z

    if-eqz p1, :cond_0

    :try_start_2
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mPermissionDataController:Lcom/samsung/android/kmxservice/ai/privacy/PermissionDataController;

    invoke-virtual {p0, v3, v4, v5, v8}, Lcom/samsung/android/kmxservice/ai/privacy/PermissionDataController;->write(IILjava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_3
    return-void
.end method

.method public writeRecentAccesses()V
    .locals 32

    move-object/from16 v1, p0

    const-string v2, "Failed to write state: "

    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mRecentAccessesFile:Landroid/util/AtomicFile;

    monitor-enter v3

    :try_start_0
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mRecentAccessesFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mPermissionAccessInformationController:Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;

    invoke-virtual {v0}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->flushAsync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v24, v3

    goto/16 :goto_e

    :catch_0
    move-exception v0

    :try_start_2
    const-string v4, "AppOps"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/server/appop/AppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v6, "app-ops"

    invoke-interface {v5, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "v"

    const/4 v7, 0x1

    invoke-interface {v5, v0, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_10

    move-object v8, v0

    const/4 v7, 0x0

    :goto_1
    :try_start_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_f

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v10, :cond_1

    if-eqz v8, :cond_0

    :try_start_5
    const-string/jumbo v8, "pkg"

    invoke-interface {v5, v0, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_2
    move-object/from16 v24, v3

    goto/16 :goto_b

    :cond_0
    :goto_3
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    const-string/jumbo v10, "pkg"

    invoke-interface {v5, v0, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "n"

    invoke-interface {v5, v0, v10, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_1
    :try_start_6
    const-string/jumbo v10, "uid"

    invoke-interface {v5, v0, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "n"

    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v11

    invoke-interface {v5, v0, v10, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    :goto_4
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_e

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$OpEntry;

    const-string/jumbo v12, "op"

    invoke-interface {v5, v0, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "n"

    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v13

    invoke-interface {v5, v0, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v12

    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v13

    invoke-static {v13}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v13
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eq v12, v13, :cond_2

    :try_start_7
    const-string/jumbo v12, "m"

    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v13

    invoke-interface {v5, v0, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_2
    :try_start_8
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-virtual {v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->collectKeys()Landroid/util/ArraySet;

    move-result-object v15

    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v6

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v6, :cond_c

    invoke-virtual {v15, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    move/from16 v18, v6

    move/from16 v17, v7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move/from16 v16, v0

    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v0

    move-object/from16 v19, v4

    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v4

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    invoke-virtual {v14, v0, v0, v4}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(III)J

    move-result-wide v8

    move/from16 v22, v10

    move-object/from16 v23, v11

    invoke-virtual {v14, v0, v0, v4}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(III)J

    move-result-wide v10
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 v25, v2

    move-object/from16 v24, v3

    :try_start_9
    invoke-virtual {v14, v0, v0, v4}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(III)J

    move-result-wide v2

    invoke-virtual {v14, v0, v0, v4}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v0

    const-wide/16 v26, 0x0

    cmp-long v4, v8, v26

    if-gtz v4, :cond_3

    cmp-long v28, v10, v26

    if-gtz v28, :cond_3

    cmp-long v28, v2, v26

    if-gtz v28, :cond_3

    if-nez v0, :cond_3

    move-object/from16 v29, v12

    move-object/from16 v30, v14

    move-object/from16 v31, v15

    goto/16 :goto_9

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    move-result-object v29

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v0

    move-object/from16 v30, v28

    move/from16 v28, v4

    move-object/from16 v4, v30

    move-object/from16 v30, v29

    move-object/from16 v29, v12

    move-object/from16 v12, v30

    :goto_7
    move-object/from16 v30, v14

    goto :goto_8

    :catchall_1
    move-exception v0

    goto/16 :goto_e

    :catch_2
    move-exception v0

    move-object/from16 v2, v25

    goto/16 :goto_b

    :cond_4
    const/4 v0, -0x1

    move/from16 v28, v4

    move-object/from16 v29, v12

    const/4 v4, 0x0

    const/4 v12, 0x0

    goto :goto_7

    :goto_8
    const-string/jumbo v14, "st"

    move-object/from16 v31, v15

    const/4 v15, 0x0

    invoke-interface {v5, v15, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v13, :cond_5

    const-string/jumbo v14, "id"

    invoke-interface {v5, v15, v14, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    const-string/jumbo v14, "n"

    const/4 v15, 0x0

    invoke-interface {v5, v15, v14, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    if-lez v28, :cond_6

    const-string/jumbo v6, "t"

    invoke-interface {v5, v15, v6, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    cmp-long v6, v10, v26

    if-lez v6, :cond_7

    const-string/jumbo v6, "r"

    const/4 v15, 0x0

    invoke-interface {v5, v15, v6, v10, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    cmp-long v6, v2, v26

    if-lez v6, :cond_8

    const-string/jumbo v6, "d"

    const/4 v15, 0x0

    invoke-interface {v5, v15, v6, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    if-eqz v4, :cond_9

    const-string/jumbo v2, "pp"

    const/4 v15, 0x0

    invoke-interface {v5, v15, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9
    if-eqz v12, :cond_a

    const-string/jumbo v2, "pc"

    const/4 v15, 0x0

    invoke-interface {v5, v15, v2, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a
    if-ltz v0, :cond_b

    const-string/jumbo v2, "pu"

    const/4 v15, 0x0

    invoke-interface {v5, v15, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b
    const-string/jumbo v0, "st"

    const/4 v15, 0x0

    invoke-interface {v5, v15, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_9
    add-int/lit8 v0, v16, 0x1

    move/from16 v7, v17

    move/from16 v6, v18

    move-object/from16 v4, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    move/from16 v10, v22

    move-object/from16 v11, v23

    move-object/from16 v3, v24

    move-object/from16 v2, v25

    move-object/from16 v12, v29

    move-object/from16 v14, v30

    move-object/from16 v15, v31

    goto/16 :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v25, v2

    goto/16 :goto_2

    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_d
    move-object/from16 v25, v2

    move-object/from16 v24, v3

    move-object/from16 v19, v4

    move/from16 v17, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move/from16 v22, v10

    const-string/jumbo v0, "op"

    const/4 v15, 0x0

    invoke-interface {v5, v15, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v10, v22, 0x1

    move/from16 v7, v17

    move-object/from16 v4, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    move-object/from16 v3, v24

    move-object/from16 v2, v25

    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_e
    move-object/from16 v25, v2

    move-object/from16 v24, v3

    move-object/from16 v19, v4

    move/from16 v17, v7

    move-object/from16 v20, v8

    const-string/jumbo v0, "uid"

    const/4 v15, 0x0

    invoke-interface {v5, v15, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v7, v17, 0x1

    move-object/from16 v4, v19

    move-object/from16 v8, v20

    move-object/from16 v3, v24

    move-object/from16 v2, v25

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_f
    move-object/from16 v25, v2

    move-object/from16 v24, v3

    if-eqz v8, :cond_11

    const-string/jumbo v0, "pkg"

    const/4 v15, 0x0

    invoke-interface {v5, v15, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_a

    :cond_10
    move-object/from16 v25, v2

    move-object/from16 v24, v3

    :cond_11
    :goto_a
    const-string/jumbo v0, "app-ops"

    const/4 v15, 0x0

    invoke-interface {v5, v15, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mRecentAccessesFile:Landroid/util/AtomicFile;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object/from16 v2, v25

    :try_start_a
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_c

    :catch_4
    move-exception v0

    :goto_b
    :try_start_b
    const-string v3, "AppOps"

    const-string v4, "Failed to write state, restoring backup."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mRecentAccessesFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_c
    monitor-exit v24
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/LegacyHistoricalRegistry;

    iget-object v0, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsXmlRegistry;

    invoke-virtual {v0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->writeAndClearOldAccessHistory()V

    goto :goto_d

    :catch_5
    move-exception v0

    move-object/from16 v24, v3

    :try_start_c
    const-string v1, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v24

    :goto_d
    return-void

    :goto_e
    monitor-exit v24
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    throw v0
.end method
