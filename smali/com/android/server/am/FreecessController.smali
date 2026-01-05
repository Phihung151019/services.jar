.class public final Lcom/android/server/am/FreecessController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static CACHED_RESTRICTED_BINDER:Z

.field public static DEFAULT_RECV_BUFSIZE:I

.field public static FASTOLAF_FEATURE_DEALY_SERVICE:Z

.field public static FASTOLAF_FEATURE_LESSUFZ:Z

.field public static FASTOLAF_FEATURE_MOREFZ:Z

.field public static FASTOLAF_IMPROVE_SPEED:Z

.field public static FASTOLAF_PENDING_JOB:Z

.field public static FASTOLAF_REDUCE_PROTECT_TIME:Z

.field public static FEATURE_SERVICE_GUARD:Z

.field public static final IS_MINIMIZE_OLAF_LOCK:Z

.field public static final IS_SUPPORT_CALM_MODE:Z

.field public static IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

.field public static final NETLINK_KFREECESS:I

.field public static final productModel:Ljava/lang/String;

.field public static final sCountry:Ljava/lang/String;


# instance fields
.field public FREECESS_ENHANCEMENT:Z

.field public FREECESS_LRS_ENABLED:Z

.field public final calmModeFilterList:Ljava/util/Set;

.field public cntFailFreeze:I

.field public cntFailUnfreeze:I

.field public final fastOlafUfzList:Ljava/util/Set;

.field public final filterList:Ljava/util/Set;

.field public mAlarmManagerInternal:Lcom/android/server/alarm/AlarmManagerService$LocalService;

.field public mAm:Lcom/android/server/am/ActivityManagerService;

.field public mCalmModeAllowListFromGameUI:Lcom/android/server/am/FreecessPkgMap;

.field public final mCalmModeDefaultAllowList:Ljava/util/Set;

.field public mCalmModeEnabled:Z

.field public final mCameraDeviceStateCallback:Lcom/android/server/am/FreecessController$1;

.field public mCarModeOn:Z

.field public final mConfigFreecess:I

.field public mContext:Landroid/content/Context;

.field public final mCtsGtsList:Ljava/util/Set;

.field public mCustomFreqManager:Landroid/os/CustomFrequencyManager;

.field public mEmergencyModeOn:Z

.field public final mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

.field public final mFreecessOlafUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

.field public final mFreezeExemption:Ljava/util/Set;

.field public final mFreezeExemptionChina:Ljava/util/Set;

.field public final mFreezeExemptionStartsWith:Ljava/util/Set;

.field public final mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

.field public final mFrozenPidListSelfLocked:Ljava/util/HashSet;

.field public final mGPSAllowList:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mGameModeEnabled:Z

.field public mGpsDefaultAllowList:Ljava/util/List;

.field public mInputManagerService:Lcom/android/server/input/InputManagerService;

.field public mIsDumpstateWorking:Z

.field public mIsFreecessEnable:Z

.field public mIsKernelSupportFreecess:Z

.field public mIsOLAFEnabled:Z

.field public mIsQuickFreezeEnabled:Z

.field public mIsScreenOnFreecessEnabled:Z

.field public mIsSmartSwitchWorking:Z

.field public mIsUsingCgroupV2:Z

.field public mLastTopUid:I

.field public mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field public mLocationManager:Landroid/location/ILocationManager;

.field public final mMapFrozenUidPidList:Lcom/android/server/am/FreecessController$UidPidMap;

.field public final mMapShareUidPkgList:Lcom/android/server/am/FreecessController$UidPidMap;

.field public mMismatchFlag:Z

.field public final mMonitorFreezedList:Ljava/util/ArrayList;

.field public mNMs:Landroid/os/INetworkManagementService;

.field public final mOLAFAllowListForDebug:Ljava/util/ArrayList;

.field public final mOLAFBlockList:Ljava/util/ArrayList;

.field public final mOLAFExemption:Ljava/util/Set;

.field public final mOLAFExemptionGlobal:Ljava/util/Set;

.field public final mOLAFExemptionStartsWith:Ljava/util/Set;

.field public final mOLAFOn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mOlafJobExemptionList:Ljava/util/Set;

.field public mOlafTargetPkg:Ljava/lang/String;

.field public mOlafTargetUserId:I

.field public final mPendingBlocklistForGPS:Ljava/util/ArrayList;

.field public final mPendingIntents:Ljava/util/ArrayList;

.field public final mPendingIntentsIdle:Ljava/util/ArrayList;

.field public final mPendingRemoveConnectionMap:Landroid/util/ArrayMap;

.field public mPidUnfreezeEnabled:Z

.field public final mProcessObserver:Lcom/android/server/am/FreecessController$2;

.field public final mRestrictedPackages:Lcom/android/server/am/FreecessPkgMap;

.field public mScreenOn:Z

.field public mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

.field public final mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

.field public mSkipTriggerLcdOnFreeze:Z

.field public mUidIdleCheck:Z

.field public final olafUfzList:Ljava/util/Set;

.field public olafUnfreezeEstimatedTime:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string/jumbo v0, "sys.config.mars_min_olaf_lock"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/FreecessController;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/am/FreecessController;->productModel:Ljava/lang/String;

    const-string/jumbo v2, "ro.product.vendor.model"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/am/FreecessController;->productModel:Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string/jumbo v4, "SM-G98"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string/jumbo v5, "SM-G99"

    if-nez v4, :cond_0

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "SM-N98"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    :cond_0
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "SM-S91"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "SM-S92"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "SM-S93"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    sput-boolean v1, Lcom/android/server/am/FreecessController;->IS_SUPPORT_CALM_MODE:Z

    :cond_2
    sput-boolean v1, Lcom/android/server/am/FreecessController;->FASTOLAF_PENDING_JOB:Z

    sput-boolean v1, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_DEALY_SERVICE:Z

    sput-boolean v1, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_MOREFZ:Z

    sput-boolean v1, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_LESSUFZ:Z

    sput-boolean v1, Lcom/android/server/am/FreecessController;->FASTOLAF_REDUCE_PROTECT_TIME:Z

    sput-boolean v1, Lcom/android/server/am/FreecessController;->FASTOLAF_IMPROVE_SPEED:Z

    sput-boolean v0, Lcom/android/server/am/FreecessController;->FEATURE_SERVICE_GUARD:Z

    sput-boolean v0, Lcom/android/server/am/FreecessController;->CACHED_RESTRICTED_BINDER:Z

    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/FreecessController;->sCountry:Ljava/lang/String;

    const/16 v0, 0x1b

    sput v0, Lcom/android/server/am/FreecessController;->NETLINK_KFREECESS:I

    const-string/jumbo v0, "ro.board.platform"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v4, "mt"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x1f

    sput v0, Lcom/android/server/am/FreecessController;->NETLINK_KFREECESS:I

    :cond_3
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "A366"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    sput-boolean v1, Lcom/android/server/am/FreecessHandler;->mOlafEnterDelay:Z

    :cond_4
    const/16 v0, 0x9c

    sput v0, Lcom/android/server/am/FreecessController;->DEFAULT_RECV_BUFSIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsUsingCgroupV2:Z

    new-instance v1, Lcom/android/server/am/FreecessPkgMap;

    invoke-direct {v1}, Lcom/android/server/am/FreecessPkgMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    new-instance v1, Lcom/android/server/am/FreecessPkgMap;

    invoke-direct {v1}, Lcom/android/server/am/FreecessPkgMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    new-instance v1, Lcom/android/server/am/FreecessPkgMap;

    invoke-direct {v1}, Lcom/android/server/am/FreecessPkgMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/FreecessController;->mRestrictedPackages:Lcom/android/server/am/FreecessPkgMap;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/FreecessController;->mOlafJobExemptionList:Ljava/util/Set;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsKernelSupportFreecess:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/FreecessController;->mPidUnfreezeEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    const-string/jumbo v3, "sys.config.mars_freecess_lrs"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/am/FreecessController;->FREECESS_LRS_ENABLED:Z

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    const-string v3, "4"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/am/FreecessController;->mConfigFreecess:I

    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mSkipTriggerLcdOnFreeze:Z

    iput-boolean v2, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCarModeOn:Z

    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mEmergencyModeOn:Z

    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsDumpstateWorking:Z

    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsSmartSwitchWorking:Z

    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mOLAFOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    sget-object v2, Lcom/android/server/am/mars/database/MARsListManager;->HEALTH_KEY_LIST:Ljava/util/List;

    sget-object v2, Lcom/android/server/am/mars/database/MARsListManager$ListManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsListManager;

    iget-object v3, v2, Lcom/android/server/am/mars/database/MARsListManager;->mFreezeExemption:Ljava/util/Set;

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mFreezeExemption:Ljava/util/Set;

    iget-object v3, v2, Lcom/android/server/am/mars/database/MARsListManager;->mFreezeExemptionStartsWith:Ljava/util/Set;

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mFreezeExemptionStartsWith:Ljava/util/Set;

    iget-object v3, v2, Lcom/android/server/am/mars/database/MARsListManager;->mFreezeExemptionChina:Ljava/util/Set;

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mFreezeExemptionChina:Ljava/util/Set;

    iget-object v3, v2, Lcom/android/server/am/mars/database/MARsListManager;->mOLAFExemptionGlobal:Ljava/util/Set;

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mOLAFExemptionGlobal:Ljava/util/Set;

    iget-object v3, v2, Lcom/android/server/am/mars/database/MARsListManager;->mOLAFExemption:Ljava/util/Set;

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mOLAFExemption:Ljava/util/Set;

    iget-object v3, v2, Lcom/android/server/am/mars/database/MARsListManager;->mOLAFExemptionStartsWith:Ljava/util/Set;

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mOLAFExemptionStartsWith:Ljava/util/Set;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mOLAFBlockList:Ljava/util/ArrayList;

    iget-object v3, v2, Lcom/android/server/am/mars/database/MARsListManager;->mPendingIntentList:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    iget-object v3, v2, Lcom/android/server/am/mars/database/MARsListManager;->mPendingIntentIdleList:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mPendingIntentsIdle:Ljava/util/ArrayList;

    iget-object v3, v2, Lcom/android/server/am/mars/database/MARsListManager;->mPendingBlocklistForGPS:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mPendingBlocklistForGPS:Ljava/util/ArrayList;

    iget-object v3, v2, Lcom/android/server/am/mars/database/MARsListManager;->mCtsGtsList:Ljava/util/Set;

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mCtsGtsList:Ljava/util/Set;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mGpsDefaultAllowList:Ljava/util/List;

    iget-object v3, v2, Lcom/android/server/am/mars/database/MARsListManager;->mFilterList:Ljava/util/Set;

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->filterList:Ljava/util/Set;

    iget-object v3, v2, Lcom/android/server/am/mars/database/MARsListManager;->mOlafUfzList:Ljava/util/Set;

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->olafUfzList:Ljava/util/Set;

    iget-object v3, v2, Lcom/android/server/am/mars/database/MARsListManager;->mFastOlafUfzList:Ljava/util/Set;

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->fastOlafUfzList:Ljava/util/Set;

    iget-object v3, v2, Lcom/android/server/am/mars/database/MARsListManager;->mCalmModeFilterList:Ljava/util/Set;

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->calmModeFilterList:Ljava/util/Set;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mFreecessOlafUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v3, -0xa

    iput v3, p0, Lcom/android/server/am/FreecessController;->mOlafTargetUserId:I

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mGPSAllowList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Lcom/android/server/am/FreecessController$UidPidMap;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v3, Lcom/android/server/am/FreecessController$UidPidMap;->mUidPidMap:Landroid/util/ArrayMap;

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Lcom/android/server/am/FreecessController$UidPidMap;

    new-instance v3, Lcom/android/server/am/FreecessController$1;

    invoke-direct {v3, p0}, Lcom/android/server/am/FreecessController$1;-><init>(Lcom/android/server/am/FreecessController;)V

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mCameraDeviceStateCallback:Lcom/android/server/am/FreecessController$1;

    new-instance v3, Lcom/android/server/am/FreecessController$UidPidMap;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v3, Lcom/android/server/am/FreecessController$UidPidMap;->mUidPidMap:Landroid/util/ArrayMap;

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mMapShareUidPkgList:Lcom/android/server/am/FreecessController$UidPidMap;

    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mGameModeEnabled:Z

    iget-object v2, v2, Lcom/android/server/am/mars/database/MARsListManager;->mCalmModeDefaultList:Ljava/util/Set;

    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mCalmModeDefaultAllowList:Ljava/util/Set;

    iput-object v1, p0, Lcom/android/server/am/FreecessController;->mCalmModeAllowListFromGameUI:Lcom/android/server/am/FreecessPkgMap;

    new-instance v2, Lcom/android/server/am/FreecessController$2;

    invoke-direct {v2, p0}, Lcom/android/server/am/FreecessController$2;-><init>(Lcom/android/server/am/FreecessController;)V

    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mProcessObserver:Lcom/android/server/am/FreecessController$2;

    iput-object v1, p0, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mMismatchFlag:Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mPendingRemoveConnectionMap:Landroid/util/ArrayMap;

    return-void
.end method

.method public static convertLevelChangeInfoToString(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const-string v2, " "

    if-lez v1, :cond_0

    const-string/jumbo v1, "[OLAF] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_1

    const-string/jumbo p0, "[IMP] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static freezeTargetProcess(ILjava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "android.app.stubs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.android.app.cts."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "android.os.cts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static getInstance()Lcom/android/server/am/FreecessController;
    .locals 1

    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    return-object v0
.end method

.method public static isMainProcDepend(Lcom/android/server/am/ProcessRecord;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_4

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessProviderRecord;->getProviderAt(I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eq v3, p0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_1
    if-ltz v3, :cond_3

    iget-object v4, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ContentProviderConnection;

    if-eqz v4, :cond_2

    iget-object v5, v4, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_2

    iget-boolean v6, v5, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-nez v6, :cond_2

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v6, :cond_2

    iget v6, v5, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-eqz v6, :cond_2

    sget v7, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v6, v7, :cond_2

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    if-nez v6, :cond_1

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-object v5, v4, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget v4, v4, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    monitor-exit v5

    if-lez v4, :cond_2

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static shouldSkipShareUid()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_MOREFZ:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->isChinaPolicyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static updateFrozenStatusByFreezeType(Lcom/android/server/am/FreecessPkgStatus;Z)V
    .locals 2

    iget v0, p0, Lcom/android/server/am/FreecessPkgStatus;->freezedType:I

    iget-object p0, p0, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOffFreezed:Z

    iput-boolean p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    iput-boolean p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOffFreezed:Z

    return-void

    :cond_2
    iput-boolean p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    return-void
.end method


# virtual methods
.method public canUidBeFrozen(Ljava/util/ArrayList;)Lcom/android/server/am/FreezeResult;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/server/am/FreezeResult;"
        }
    .end annotation

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_b

    :cond_0
    sget-object v0, Lcom/android/server/am/FreezeResult;->FREEZE_SUCCESS:Lcom/android/server/am/FreezeResult;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move-object v3, v0

    :cond_1
    if-ge v2, v1, :cond_11

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordFromPidLocked(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    if-eqz v5, :cond_d

    iget-boolean v3, v5, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    if-nez v3, :cond_c

    iget-boolean v3, v5, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    if-eqz v3, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object v3, v5, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-lez v3, :cond_3

    sget-object v3, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_EXECUTING_SERVICE:Lcom/android/server/am/FreezeResult;

    goto/16 :goto_a

    :cond_3
    iget-object v3, v5, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    iget v3, v3, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceiversSize:I

    if-lez v3, :cond_4

    sget-object v3, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_RUNNING_INTENT:Lcom/android/server/am/FreezeResult;

    goto/16 :goto_a

    :cond_4
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCpHelper:Lcom/android/server/am/ContentProviderHelper;

    iget-object v4, v3, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_6

    :try_start_0
    iget-object v6, v3, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ContentProviderRecord;

    if-eqz v6, :cond_5

    iget-object v6, v6, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_5

    if-ne v6, v5, :cond_5

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :goto_1
    const-string v4, "ContentProviderHelper"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    sget-object v3, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_LAUNCHING_PROVIDER:Lcom/android/server/am/FreezeResult;

    goto/16 :goto_a

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v6, v5, Lcom/android/server/am/ProcessRecord;->mStartUptime:J

    sub-long/2addr v3, v6

    sget-boolean v6, Lcom/android/server/am/FreecessController;->FASTOLAF_REDUCE_PROTECT_TIME:Z

    if-eqz v6, :cond_7

    const/16 v6, 0x5dc

    goto :goto_3

    :cond_7
    const/16 v6, 0x7d0

    :goto_3
    int-to-long v6, v6

    cmp-long v3, v3, v6

    if-gez v3, :cond_8

    sget-object v3, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_START_PROCESS:Lcom/android/server/am/FreezeResult;

    goto/16 :goto_a

    :cond_8
    iget-object v3, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v4, v3, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    if-gtz v4, :cond_a

    iget v4, v3, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    const/16 v5, 0xc

    if-eq v4, v5, :cond_a

    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_9
    sget-object v3, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_FOREGROUND_ADJ:Lcom/android/server/am/FreezeResult;

    goto/16 :goto_a

    :cond_a
    iget v3, v3, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    const/4 v4, 0x3

    if-gt v3, v4, :cond_b

    sget-object v3, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_BOUND_TOP:Lcom/android/server/am/FreezeResult;

    goto/16 :goto_a

    :cond_b
    move-object v3, v0

    goto/16 :goto_a

    :cond_c
    :goto_4
    sget-object v3, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_ALREADY_DIED:Lcom/android/server/am/FreezeResult;

    goto/16 :goto_a

    :cond_d
    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v5, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v5

    if-nez v5, :cond_10

    sget-object v5, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v5, "can\'t read "

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/proc/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/comm"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_0
    move-exception p0

    move-object v6, v7

    goto :goto_8

    :catch_2
    move-exception v6

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_8

    :catch_3
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_5
    :try_start_4
    const-string v8, "FreecessController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v7, :cond_e

    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_e
    :goto_6
    const-string v4, ""

    :goto_7
    const-string/jumbo v5, "logcat"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    sget-object v3, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_RUNNING_LOGCAT:Lcom/android/server/am/FreezeResult;

    goto :goto_a

    :goto_8
    if-eqz v6, :cond_f

    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_9

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_f
    :goto_9
    throw p0

    :cond_10
    :goto_a
    if-eq v3, v0, :cond_1

    :cond_11
    return-object v3

    :cond_12
    return-object v0

    :cond_13
    :goto_b
    sget-object p0, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_NO_RUNNING_PROCESS:Lcom/android/server/am/FreezeResult;

    return-object p0
.end method

.method public final cancelCalmMode()V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget-object v2, v2, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/FreecessPkgStatus;

    sget-object v6, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    iget-object v7, v5, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v8, v5, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v6, v8, v7}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunOn(ILjava/lang/String;)Z

    move-result v7

    iget-object v8, v5, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v9, v5, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v6, v9, v8}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v6, v5, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    if-eqz v6, :cond_3

    iput-boolean v3, v5, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :cond_1
    :goto_1
    const-string v6, "CalmMode"

    invoke-virtual {p0, v5, v6, v3}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    iput-boolean v3, v5, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v5, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    iget-object v1, v1, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :goto_3
    iput-boolean v3, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v4

    move v5, v3

    :goto_4
    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v6, v6, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_9

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v6, v6, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    move v7, v3

    :goto_5
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_8

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/MARsPackageInfo;

    iput v3, v8, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    iget-object v9, v8, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v9, :cond_6

    iget v9, v9, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/16 v10, 0x9

    if-ne v9, v10, :cond_6

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    goto :goto_6

    :catchall_1
    move-exception p0

    goto :goto_8

    :cond_6
    :goto_6
    iget-object v9, v8, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-nez v9, :cond_7

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    :goto_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_a

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MARsPackageInfo;

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v7, v5, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v8, v5, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v6, v8, v7}, Lcom/android/server/am/MARsPkgMap;->remove(ILjava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v5, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v2, "Calm"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CancelPolicy-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " UFZ-"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_8
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_9
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public checkFgsPkgSkipToFreeze(Lcom/android/server/am/FreecessPkgStatus;)Z
    .locals 4

    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->getForegroundServiceStartTime(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-eqz v2, :cond_1

    if-eqz p0, :cond_3

    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    if-eqz p0, :cond_2

    const p0, 0x40001e21

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->serviceTypes:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    const-string v0, " has important fgs type according Google fg Api , skip to freeze it. "

    const-string v2, "FreecessController"

    invoke-static {p0, p1, v0, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    if-eqz p0, :cond_3

    :cond_2
    return v1

    :cond_3
    return v0
.end method

.method public final closeSocketsForFreecessFirewallChain()V
    .locals 5

    const-string v0, "Error occured while closeSocketsForFreecessFirewallChain: "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    if-nez v3, :cond_0

    const-string/jumbo v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    if-eqz p0, :cond_1

    :try_start_0
    const-string/jumbo v3, "fw_oem_deny_1"

    const/4 v4, 0x7

    invoke-interface {p0, v4, v3}, Landroid/os/INetworkManagementService;->closeSocketsForFreecess(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string v3, "FreecessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public final deleteRemovedPackage(ILjava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v2, v0, p2}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "PkgRemoved"

    invoke-virtual {p0, v0, p2, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->updateShareUidPkgList(I)V

    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessPkgMap;->remove(ILjava/lang/String;)V

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dumpFreecess(Ljava/io/PrintWriter;)V
    .locals 14

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    :try_start_0
    const-string v2, "FREECESS STATE"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "-FreecessEnabled : "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Y"

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_1b

    :cond_0
    const-string/jumbo v2, "N"

    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "-KernelSupport : "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/FreecessController;->mIsKernelSupportFreecess:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "Y"

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "N"

    :goto_1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " -FreecessEnhancementEnabled : "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "Y"

    goto :goto_2

    :cond_2
    const-string/jumbo v2, "N"

    :goto_2
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " -EnhancedBackgroundRestricted : (Binder:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/am/FreecessController;->CACHED_RESTRICTED_BINDER:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "Y,"

    goto :goto_3

    :cond_3
    const-string/jumbo v2, "N,"

    :goto_3
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Intent:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "N)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " -ChinaPolicyEnabled : "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    const-string/jumbo v0, "Y"

    goto :goto_4

    :cond_4
    const-string/jumbo v0, "N"

    :goto_4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " -Mimimize_OLAF_lock : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "Y"

    goto :goto_5

    :cond_5
    const-string/jumbo v0, "N"

    :goto_5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " -QuickFreezeEnabled : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "Y"

    goto :goto_6

    :cond_6
    const-string/jumbo v0, "N"

    :goto_6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " -PidUfzEnabled : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mPidUnfreezeEnabled:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "Y"

    goto :goto_7

    :cond_7
    const-string/jumbo v0, "N"

    :goto_7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " -RestrictJobDuringOlaf : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/FreecessController;->FASTOLAF_PENDING_JOB:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "Y"

    goto :goto_8

    :cond_8
    const-string/jumbo v0, "N"

    :goto_8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " -DealyServiceDuringOlaf : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_DEALY_SERVICE:Z

    if-eqz v0, :cond_9

    const-string/jumbo v0, "Y"

    goto :goto_9

    :cond_9
    const-string/jumbo v0, "N"

    :goto_9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " -UsingCgroupV2 : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsUsingCgroupV2:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, "Y"

    goto :goto_a

    :cond_a
    const-string/jumbo v0, "N"

    :goto_a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " -FASTOLAF_FEATURE_MOREFZ : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_MOREFZ:Z

    if-eqz v0, :cond_b

    const-string/jumbo v0, "Y"

    goto :goto_b

    :cond_b
    const-string/jumbo v0, "N"

    :goto_b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " -FASTOLAF_FEATURE_LESSUFZ : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_LESSUFZ:Z

    if-eqz v0, :cond_c

    const-string/jumbo v0, "Y"

    goto :goto_c

    :cond_c
    const-string/jumbo v0, "N"

    :goto_c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " -CALM : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "Y"

    goto :goto_d

    :cond_d
    const-string/jumbo v0, "N"

    :goto_d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " -GAME : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mGameModeEnabled:Z

    if-eqz v0, :cond_e

    const-string/jumbo v0, "Y"

    goto :goto_e

    :cond_e
    const-string/jumbo v0, "N"

    :goto_e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " -fastolaf_protect_freeze : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/FreecessController;->FASTOLAF_REDUCE_PROTECT_TIME:Z

    if-eqz v0, :cond_f

    const-string/jumbo v0, "Y"

    goto :goto_f

    :cond_f
    const-string/jumbo v0, "N"

    :goto_f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " -FASTOLAF_IMPROVE_SPEED : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/FreecessController;->FASTOLAF_IMPROVE_SPEED:Z

    if-eqz v0, :cond_10

    const-string/jumbo v0, "Y"

    goto :goto_10

    :cond_10
    const-string/jumbo v0, "N"

    :goto_10
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " -LRsEnabled : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->FREECESS_LRS_ENABLED:Z

    if-eqz v0, :cond_11

    const-string/jumbo v0, "Y"

    goto :goto_11

    :cond_11
    const-string/jumbo v0, "N"

    :goto_11
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " -cntFail(FZ/UFZ) : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/server/am/FreecessController;->cntFailFreeze:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/FreecessController;->cntFailUnfreeze:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "ACTIVITY MANAGER Freecess (dumpsys activity freecess)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "mFreecessManagedPackages --- size "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v0}, Lcom/android/server/am/FreecessPkgMap;->totalSize()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "%-9s%-6s%-5s%-4s%-2s|%s %s"

    const-string/jumbo v2, "Uid"

    const-string/jumbo v3, "Share"

    const-string v4, "Idle"

    const-string/jumbo v5, "Top"

    const-string/jumbo v6, "S"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->values()[Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    move v11, v10

    :goto_12
    if-ge v11, v9, :cond_12

    aget-object v12, v8, v11

    invoke-virtual {v12}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->getTypeNum()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    const-string/jumbo v13, "T%-3d|"

    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    :cond_12
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Pkg"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v10

    :goto_13
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget-object v2, v2, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_15

    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget-object v2, v2, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    move v3, v10

    :goto_14
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_14

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/FreecessPkgStatus;

    if-eqz v4, :cond_13

    invoke-virtual {v4, p1}, Lcom/android/server/am/FreecessPkgStatus;->dumpState(Ljava/io/PrintWriter;)V

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_15
    move v0, v10

    :goto_15
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget-object v2, v2, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_18

    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget-object v2, v2, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    move v3, v10

    :goto_16
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_17

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/FreecessPkgStatus;

    iget-object v5, v4, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-object v5, v5, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mUnfreezeAbuseDetections:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_16

    goto :goto_17

    :cond_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "since "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-wide v6, v6, Lcom/android/server/am/mars/MARsFreezeStateRecord;->initialStateTime:J

    invoke-static {v6, v7}, Lcom/android/server/am/mars/MARsUtils;->formatDateTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has abuse unfreeze "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-object v6, v6, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mUnfreezeAbuseDetections:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ---last abnormal time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-object v4, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mUnfreezeAbuseDetections:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/server/am/mars/MARsUtils;->formatDateTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_15

    :cond_18
    const-string/jumbo v0, "mFreezedPackages --- size "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v0}, Lcom/android/server/am/FreecessPkgMap;->totalSize()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    move v0, v10

    :goto_18
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget-object v2, v2, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget-object v2, v2, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    move v3, v10

    :goto_19
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1a

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/FreecessPkgStatus;

    if-eqz v4, :cond_19

    invoke-virtual {v4, p1}, Lcom/android/server/am/FreecessPkgStatus;->dumpFreezeRecord(Ljava/io/PrintWriter;)V

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_1b
    const-string/jumbo v0, "mMonitorFreezedList --- size "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    :goto_1a
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_1c

    const-string v0, "%d "

    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1a

    :cond_1c
    const-string p0, ""

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-eqz p0, :cond_1d

    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string p1, "Freecess"

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    :cond_1d
    return-void

    :goto_1b
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final dumpFreecessCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10

    const-string/jumbo v0, "dumpMARsCommand(netd off)uid = "

    const-string/jumbo v1, "dumpMARsCommand(netd on)uid = "

    array-length v2, p2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->dumpFreecess(Ljava/io/PrintWriter;)V

    return-void

    :cond_0
    const-string/jumbo v2, "fastolaf_improve_speed"

    aget-object v4, p2, v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "on"

    aget-object v6, p2, v5

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sput-boolean v3, Lcom/android/server/am/FreecessController;->FASTOLAF_IMPROVE_SPEED:Z

    goto :goto_0

    :cond_1
    sput-boolean v4, Lcom/android/server/am/FreecessController;->FASTOLAF_IMPROVE_SPEED:Z

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "MARstest -- FASTOLAF_IMPROVE_SPEED "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Lcom/android/server/am/FreecessController;->FASTOLAF_IMPROVE_SPEED:Z

    invoke-static {v2, v6, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    :cond_2
    const-string/jumbo v2, "binder_restriction"

    aget-object v6, p2, v3

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    aget-object v2, p2, v5

    const-string/jumbo v6, "on"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/FreecessController;->CACHED_RESTRICTED_BINDER:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "restrict binder in cached state : "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Lcom/android/server/am/FreecessController;->CACHED_RESTRICTED_BINDER:Z

    invoke-static {v2, v6, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    :cond_3
    const-string/jumbo v2, "service_guard"

    aget-object v6, p2, v3

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    aget-object v2, p2, v5

    const-string/jumbo v6, "on"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/FreecessController;->FEATURE_SERVICE_GUARD:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "service_guard has turned to "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Lcom/android/server/am/FreecessController;->FEATURE_SERVICE_GUARD:Z

    invoke-static {v2, v6, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    :cond_4
    const-string/jumbo v2, "pending_jobscheduler"

    aget-object v6, p2, v3

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "on"

    aget-object v6, p2, v5

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sput-boolean v3, Lcom/android/server/am/FreecessController;->FASTOLAF_PENDING_JOB:Z

    :cond_5
    const-string/jumbo v2, "off"

    aget-object v6, p2, v5

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sput-boolean v4, Lcom/android/server/am/FreecessController;->FASTOLAF_PENDING_JOB:Z

    :cond_6
    const-string/jumbo v2, "delay_service"

    aget-object v6, p2, v3

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v2, "on"

    aget-object v6, p2, v5

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sput-boolean v3, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_DEALY_SERVICE:Z

    :cond_7
    const-string/jumbo v2, "off"

    aget-object v6, p2, v5

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sput-boolean v4, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_DEALY_SERVICE:Z

    :cond_8
    const-string/jumbo v2, "reduce_protect_time"

    aget-object v6, p2, v3

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string/jumbo v2, "on"

    aget-object v6, p2, v5

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sput-boolean v3, Lcom/android/server/am/FreecessController;->FASTOLAF_REDUCE_PROTECT_TIME:Z

    goto :goto_1

    :cond_9
    const-string/jumbo v2, "off"

    aget-object v6, p2, v5

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sput-boolean v4, Lcom/android/server/am/FreecessController;->FASTOLAF_REDUCE_PROTECT_TIME:Z

    :cond_a
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "MARstest -- FASTOLAF_REDUCE_PROTECT_TIME "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Lcom/android/server/am/FreecessController;->FASTOLAF_REDUCE_PROTECT_TIME:Z

    invoke-static {v2, v6, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    :cond_b
    const-string/jumbo v2, "moreFz"

    aget-object v6, p2, v3

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string/jumbo v2, "on"

    aget-object v6, p2, v5

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    sput-boolean v3, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_MOREFZ:Z

    :cond_c
    const-string/jumbo v2, "off"

    aget-object v6, p2, v5

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    sput-boolean v4, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_MOREFZ:Z

    :cond_d
    const-string/jumbo v2, "lessUfz"

    aget-object v6, p2, v3

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string/jumbo v2, "on"

    aget-object v6, p2, v5

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    sput-boolean v3, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_LESSUFZ:Z

    :cond_e
    const-string/jumbo v2, "off"

    aget-object v6, p2, v5

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    sput-boolean v4, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_LESSUFZ:Z

    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "MARstest -- FASTOLAF_FEATURE_LESSUFZ: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_LESSUFZ:Z

    invoke-static {v2, v6, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    :cond_10
    const-string/jumbo v2, "list"

    aget-object v6, p2, v3

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->dumpFreecess(Ljava/io/PrintWriter;)V

    :cond_11
    const-string/jumbo v2, "freecess"

    aget-object v6, p2, v3

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v6, 0x3

    if-eqz v2, :cond_17

    array-length v2, p2

    if-ge v2, v6, :cond_12

    const-string v2, "FreecessController"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "dumpMARsCommand(freecess ) !"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v8, p2, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    const-string/jumbo v2, "MARstest -- freecess enabled has turned to false"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_12
    const-string/jumbo v2, "on"

    aget-object v7, p2, v5

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "1"

    aget-object v7, p2, v6

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {p0, v3}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    goto :goto_3

    :cond_13
    const-string v2, "0"

    aget-object v7, p2, v6

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "FreecessController"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "dumpMARsCommand(freecess off) ! +   "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v8, p2, v5

    invoke-static {v7, v8, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    iget-object v7, v2, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v7, :cond_14

    goto :goto_2

    :cond_14
    invoke-virtual {v7, v3}, Landroid/os/Handler;->removeMessages(I)V

    :goto_2
    const-string v7, "Debug"

    invoke-virtual {v2, v7}, Lcom/android/server/am/FreecessHandler;->sendResetAllStateMsg(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    goto :goto_3

    :cond_15
    const-string/jumbo v2, "off"

    aget-object v7, p2, v5

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "1"

    aget-object v7, p2, v6

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {p0, v3}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    goto :goto_3

    :cond_16
    const-string v2, "0"

    aget-object v7, p2, v6

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {p0, v4}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    :cond_17
    :goto_3
    const-string/jumbo v2, "netd"

    aget-object v7, p2, v3

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string/jumbo v2, "on"

    aget-object v7, p2, v5

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/server/am/FreecessController;->setFirewallChainEnabled(Z)V

    aget-object v0, p2, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v4}, Lcom/android/server/am/FreecessController;->updateFreezedUidFirewall(IZ)V

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->closeSocketsForFreecessFirewallChain()V

    const-string v0, "FreecessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, p2, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const-string v0, "FreecessController"

    const-string/jumbo v1, "dumpMARsCommand(netd on) parseInt error!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_18
    const-string/jumbo v1, "off"

    aget-object v2, p2, v5

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    :try_start_1
    aget-object v1, p2, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1, v3}, Lcom/android/server/am/FreecessController;->updateFreezedUidFirewall(IZ)V

    invoke-virtual {p0, v4}, Lcom/android/server/am/FreecessController;->setFirewallChainEnabled(Z)V

    const-string v1, "FreecessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, p2, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    const-string v0, "FreecessController"

    const-string/jumbo v1, "dumpMARsCommand(netd off) parseInt error!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    :goto_4
    const-string/jumbo v0, "olaf"

    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string/jumbo v0, "on"

    aget-object v1, p2, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iput-boolean v3, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    goto/16 :goto_7

    :cond_1a
    const-string/jumbo v0, "off"

    aget-object v1, p2, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iput-boolean v4, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    goto/16 :goto_7

    :cond_1b
    const-string/jumbo v0, "debug"

    aget-object v1, p2, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    xor-int/2addr v0, v3

    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "olaf debugging mode is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v1, :cond_1c

    const-string/jumbo v1, "on"

    goto :goto_5

    :cond_1c
    const-string/jumbo v1, "off"

    :goto_5
    const-string v2, " now!"

    invoke-static {p1, v1, v2, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_7

    :cond_1d
    const-string/jumbo v0, "enter"

    aget-object v1, p2, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    aget-object v0, p2, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/am/FreecessController;->enterOLAF(IILjava/lang/String;)V

    goto/16 :goto_7

    :cond_1e
    const-string/jumbo v0, "exit"

    aget-object v1, p2, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->exitOLAF()V

    goto/16 :goto_7

    :cond_1f
    const-string/jumbo v0, "allowlist"

    aget-object v1, p2, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string/jumbo v0, "add"

    aget-object v1, p2, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_20
    const-string/jumbo v0, "remove"

    aget-object v2, p2, v6

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_21
    const-string/jumbo v0, "clear"

    aget-object v1, p2, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_7

    :cond_22
    const-string/jumbo v0, "list"

    aget-object v1, p2, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "list size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v4

    :goto_6
    if-ge v2, v1, :cond_23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/2addr v2, v3

    check-cast v7, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    :cond_23
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_24
    :goto_7
    const-string/jumbo v0, "qkfz"

    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string/jumbo v0, "switch"

    aget-object v1, p2, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    xor-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    goto :goto_8

    :cond_25
    const-string/jumbo v0, "on"

    aget-object v1, p2, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iput-boolean v3, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    goto :goto_8

    :cond_26
    const-string/jumbo v0, "off"

    aget-object v1, p2, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iput-boolean v4, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    :cond_27
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Quick fz is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    if-eqz v1, :cond_28

    const-string/jumbo v1, "on"

    goto :goto_9

    :cond_28
    const-string/jumbo v1, "off"

    :goto_9
    const-string v2, " now!"

    invoke-static {p1, v1, v2, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_29
    const-string/jumbo v0, "frz"

    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    aget-object v0, p2, v5

    const-string/jumbo v1, "force"

    iget-boolean v2, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-nez v2, :cond_2a

    goto :goto_c

    :cond_2a
    sget-object v2, Lcom/android/server/am/FreezeResult;->FREEZE_SUCCESS:Lcom/android/server/am/FreezeResult;

    sget-object v7, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v7

    :try_start_2
    invoke-virtual {p0, v4, v0}, Lcom/android/server/am/FreecessController;->getPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v8

    if-eqz v8, :cond_2b

    iget-object v9, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v9, v9, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    if-nez v9, :cond_2b

    invoke-virtual {p0, v8}, Lcom/android/server/am/FreecessController;->isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result v9

    if-nez v9, :cond_2b

    invoke-virtual {p0, v5, v8, v1}, Lcom/android/server/am/FreecessController;->freezeInnerLocked(ILcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Lcom/android/server/am/FreezeResult;

    move-result-object v1

    goto :goto_a

    :catchall_0
    move-exception p0

    goto :goto_b

    :cond_2b
    move-object v1, v2

    :goto_a
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v2, v1, :cond_2c

    sget-object v2, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v2, v4, v0, v3}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(ILjava/lang/String;Z)V

    const-string v7, "FRZ"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "CMD "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 0[IMP]"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/am/FreezeResult;->getKey()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_2c
    const-string v2, "FreecessController"

    const-string v7, "Command freezing "

    const-string v8, " is skipped. due to "

    invoke-static {v7, v0, v8}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/server/am/FreezeResult;->getKey()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :goto_b
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_2d
    :goto_c
    const-string/jumbo v0, "ufz"

    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    aget-object v0, p2, v5

    const-string/jumbo v1, "force"

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2e
    const-string/jumbo v0, "lrs"

    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string/jumbo v0, "on"

    aget-object v1, p2, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iput-boolean v3, p0, Lcom/android/server/am/FreecessController;->FREECESS_LRS_ENABLED:Z

    const-string/jumbo v0, "lrs set enable"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d

    :cond_2f
    const-string/jumbo v0, "off"

    aget-object v1, p2, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    iput-boolean v4, p0, Lcom/android/server/am/FreecessController;->FREECESS_LRS_ENABLED:Z

    const-string/jumbo v0, "lrs set disable"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_30
    :goto_d
    const-string/jumbo v0, "uid_idle"

    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    array-length v0, p2

    if-ge v0, v6, :cond_33

    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    if-eqz v0, :cond_31

    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    if-nez v0, :cond_31

    move v0, v3

    goto :goto_e

    :cond_31
    move v0, v4

    :goto_e
    xor-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->setUidIdleCheckMode(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MARstest -- uid idle check mode has turned to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v2, v1, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    if-eqz v2, :cond_32

    iget-boolean v1, v1, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    if-nez v1, :cond_32

    move v1, v3

    goto :goto_f

    :cond_32
    move v1, v4

    :goto_f
    invoke-static {v0, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    goto :goto_10

    :cond_33
    const-string/jumbo v0, "on"

    aget-object v1, p2, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p0, v3}, Lcom/android/server/am/FreecessController;->setUidIdleCheckMode(Z)V

    goto :goto_10

    :cond_34
    const-string/jumbo v0, "off"

    aget-object v1, p2, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p0, v4}, Lcom/android/server/am/FreecessController;->setUidIdleCheckMode(Z)V

    :cond_35
    :goto_10
    const-string/jumbo v0, "window"

    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_4
    aget-object v1, p2, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    if-eqz v2, :cond_36

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v2, :cond_36

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->hasFloatingOrOnScreenWindow(I)Z

    move-result v2

    if-eqz v2, :cond_36

    move v2, v3

    goto :goto_11

    :catchall_1
    move-exception p0

    goto :goto_13

    :cond_36
    move v2, v4

    :goto_11
    const-string v7, "FreecessController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "dumpMARsCommand(window) "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ishasFloatingWindow:"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_12

    :catch_2
    :try_start_5
    const-string v1, "FreecessController"

    const-string/jumbo v2, "dumpMARsCommand(window) parseInt error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_14

    :goto_13
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_37
    :goto_14
    const-string/jumbo v0, "mfsr"

    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    move v0, v4

    :goto_15
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget-object v1, v1, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_3b

    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget-object v1, v1, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    move v2, v4

    :goto_16
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v2, v7, :cond_3a

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/FreecessPkgStatus;

    iget-object v7, v7, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v8, p2, v3

    const-string/jumbo v9, "mfsr"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_39

    const-string/jumbo v8, "ver"

    aget-object v9, p2, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_38

    aget-object v8, p2, v6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mDetectionVer:I

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "set real time detection as ver:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v7, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mDetectionVer:I

    invoke-static {v8, v7, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    goto :goto_17

    :cond_38
    const-string/jumbo v8, "history"

    aget-object v9, p2, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_39

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v7, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreecessParent:Lcom/android/server/am/FreecessPkgStatus;

    iget-object v9, v9, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " detection version:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mDetectionVer:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->dumpUfzContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_39
    :goto_17
    add-int/2addr v2, v3

    goto :goto_16

    :cond_3a
    add-int/2addr v0, v3

    goto/16 :goto_15

    :cond_3b
    const-string/jumbo p0, "generate_report"

    aget-object p2, p2, v3

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3e

    sget-boolean p0, Lcom/android/server/am/mars/EventRecorder;->mFeatureEnable:Z

    sget-object p0, Lcom/android/server/am/mars/EventRecorder$EventRecorderHolder;->INSTANCE:Lcom/android/server/am/mars/EventRecorder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p2, Lcom/android/server/am/mars/EventRecorder;->mFeatureEnable:Z

    if-nez p2, :cond_3c

    goto :goto_1c

    :cond_3c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/mars/EventRecorder;->performWrite(J)V

    sget-object p0, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    new-instance p0, Ljava/io/File;

    const-string p2, "/data/log/mars/stats.txt"

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_7
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :goto_18
    :try_start_8
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3d

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_18

    :catchall_2
    move-exception p0

    goto :goto_19

    :cond_3d
    :try_start_9
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_1b

    :goto_19
    :try_start_a
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_1a

    :catchall_3
    move-exception p1

    :try_start_b
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1a
    throw p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catch_3
    move-exception p0

    :try_start_c
    const-string p1, "EventRecorder"

    const-string p2, "Error at reportEvents"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :goto_1b
    sget-object p0, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1c

    :catchall_4
    move-exception p0

    sget-object p1, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    :cond_3e
    :goto_1c
    return-void
.end method

.method public final enterOLAF(IILjava/lang/String;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mOLAFOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCarModeOn:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mEmergencyModeOn:Z

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-string/jumbo v0, "com.google.android.youtube"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const-string/jumbo v0, "com.jingdong.app.mall"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_8

    const/16 v0, 0x64

    if-ge p2, v0, :cond_5

    goto :goto_2

    :cond_5
    const/16 v0, 0x1388

    if-le p2, v0, :cond_6

    move p2, v0

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-gtz v3, :cond_7

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    monitor-exit v2

    goto :goto_1

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_8
    :goto_1
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v0, :cond_9

    const-string v0, "FreecessController"

    const-string v1, "Enter OLAF! pkgName: "

    const-string v2, ", uid: "

    const-string v3, ", mills: "

    invoke-static {p1, v1, p3, v2, v3}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, p2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_9
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mOLAFOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/am/FreecessHandler;->sendOLAFMsg(ILjava/lang/String;Z)V

    :cond_a
    :goto_2
    return-void
.end method

.method public final exitOLAF()V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v0, :cond_0

    const-string v0, "FreecessController"

    const-string v1, "Exit OLAF!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mOLAFOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_2

    :goto_0
    return-void

    :cond_2
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :goto_1
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/am/FreecessHandler;->sendOLAFMsg(ILjava/lang/String;Z)V

    return-void
.end method

.method public final freeze(IIILjava/lang/String;)Lcom/android/server/am/FreezeResult;
    .locals 9

    const/4 v0, 0x3

    if-ne p3, v0, :cond_b

    const-string/jumbo p3, "com.samsung.android.spay"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p0, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_EXCLUDE_LIST:Lcom/android/server/am/FreezeResult;

    return-object p0

    :cond_0
    sget-boolean p3, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object p3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {p3, p2, p4}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    sget-object p0, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_NOT_TARGET:Lcom/android/server/am/FreezeResult;

    return-object p0

    :cond_1
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p2, p4}, Lcom/android/server/am/FreecessController;->getPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p3

    if-nez p3, :cond_2

    sget-object p0, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_UNKNOWN:Lcom/android/server/am/FreezeResult;

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p3}, Lcom/android/server/am/FreecessPkgStatus;->isFreezeProtected()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v3, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    iget-object p0, p3, Lcom/android/server/am/FreecessPkgStatus;->protectionElapsedRealtime:Ljava/lang/Long;

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p3, Lcom/android/server/am/FreecessPkgStatus;->protectionElapsedRealtime:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v6, p1, v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget v4, p3, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v8, p3, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v5, p3, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/FreecessHandler;->triggerScreenOnFreezeWithDelay(IIJLjava/lang/String;)V

    sget-object p0, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_PROTECTED:Lcom/android/server/am/FreezeResult;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p0

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/server/am/FreecessController;->isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object p0, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_EXCLUDE_LIST:Lcom/android/server/am/FreezeResult;

    monitor-exit v1

    return-object p0

    :cond_4
    iget-object p3, p3, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v2, p3, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    if-eqz v2, :cond_5

    iget-boolean p3, p3, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    if-eqz p3, :cond_5

    sget-object p0, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_ALREADY_FROZEN:Lcom/android/server/am/FreezeResult;

    monitor-exit v1

    return-object p0

    :cond_5
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->updateRunningLocationPackages()V

    sget-object p3, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter$BlueToothConnectedFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;

    invoke-virtual {p3}, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->updateBTUsingPackages()V

    sget-object p3, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    invoke-virtual {p3}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    monitor-enter v1

    :try_start_5
    sget-object p3, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p3, 0xe

    invoke-static {p3, p2, p1, p4}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_6

    invoke-static {p3}, Lcom/android/server/am/FreezeResult;->fromInt(I)Lcom/android/server/am/FreezeResult;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_6
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iget-object p3, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p3, :cond_7

    invoke-virtual {p3, p1}, Lcom/android/server/wm/WindowManagerService;->hasFloatingOrOnScreenWindow(I)Z

    move-result p3

    if-eqz p3, :cond_7

    sget-object p0, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_FLOATING_WINDOW:Lcom/android/server/am/FreezeResult;

    return-object p0

    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->isReceivingTouchEvent(I)Z

    move-result p3

    if-eqz p3, :cond_8

    sget-object p0, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_RECEIVING_TOUCH_EVENT:Lcom/android/server/am/FreezeResult;

    return-object p0

    :cond_8
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p3

    if-eqz p3, :cond_9

    sget-object p3, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-virtual {p3, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidIdle(I)Z

    move-result p3

    if-nez p3, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->makePkgIdle(I)V

    :cond_9
    monitor-enter v1

    :try_start_6
    invoke-virtual {p0, p2, p4}, Lcom/android/server/am/FreecessController;->getPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p1

    if-nez p1, :cond_a

    sget-object p0, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_UNKNOWN:Lcom/android/server/am/FreezeResult;

    monitor-exit v1

    return-object p0

    :catchall_3
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_a
    const-string p2, "Bg"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/am/FreecessController;->freezeLocked(ILcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Lcom/android/server/am/FreezeResult;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :goto_0
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :goto_1
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0

    :goto_2
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0

    :cond_b
    const/4 v0, 0x2

    if-ne p3, v0, :cond_11

    sget-object p3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter p3

    :try_start_9
    invoke-virtual {p0, p2, p4}, Lcom/android/server/am/FreecessController;->getPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/FreecessController;->isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object p0, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_EXCLUDE_LIST:Lcom/android/server/am/FreezeResult;

    monitor-exit p3

    return-object p0

    :catchall_4
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_c
    if-eqz v1, :cond_d

    iget-object v1, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v1, v1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    if-eqz v1, :cond_d

    sget-object p0, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_ALREADY_FROZEN:Lcom/android/server/am/FreezeResult;

    monitor-exit p3

    return-object p0

    :cond_d
    monitor-exit p3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-virtual {v1, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidIdle(I)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->makePkgIdle(I)V

    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->isReceivingTouchEvent(I)Z

    move-result p1

    if-eqz p1, :cond_f

    sget-object p0, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_RECEIVING_TOUCH_EVENT:Lcom/android/server/am/FreezeResult;

    return-object p0

    :cond_f
    monitor-enter p3

    :try_start_a
    invoke-virtual {p0, p2, p4}, Lcom/android/server/am/FreecessController;->getPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p1

    if-nez p1, :cond_10

    sget-object p0, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_UNKNOWN:Lcom/android/server/am/FreezeResult;

    monitor-exit p3

    return-object p0

    :catchall_5
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_10
    const-string p2, "LEV"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/am/FreecessController;->freezeLocked(ILcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Lcom/android/server/am/FreezeResult;

    move-result-object p0

    monitor-exit p3

    return-object p0

    :goto_3
    monitor-exit p3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw p0

    :goto_4
    :try_start_b
    monitor-exit p3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw p0

    :cond_11
    sget-object p0, Lcom/android/server/am/FreezeResult;->FREEZE_SUCCESS:Lcom/android/server/am/FreezeResult;

    return-object p0
.end method

.method public freezeAllProcesses(ILjava/util/ArrayList;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/2addr v3, v0

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {p0, p1, v4, v0}, Lcom/android/server/am/FreecessController;->requestProcessFrozen(ILjava/lang/Integer;Z)Z

    move-result v5

    if-nez v5, :cond_0

    iget p2, p0, Lcom/android/server/am/FreecessController;->cntFailFreeze:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/android/server/am/FreecessController;->cntFailFreeze:I

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "cntFailFreeze="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/am/FreecessController;->cntFailFreeze:I

    const-string v0, ", uid="

    const-string v1, ", fpid="

    invoke-static {p0, p1, v0, v1, p2}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-boolean p1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    const-string p2, "DEV"

    invoke-virtual {p1, p2, p0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    iget-object v5, p0, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Lcom/android/server/am/FreecessController$UidPidMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    monitor-enter v5

    :try_start_0
    iget-object v7, v5, Lcom/android/server/am/FreecessController$UidPidMap;->mUidPidMap:Landroid/util/ArrayMap;

    new-instance v8, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda2;

    invoke-direct {v8, v0}, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v7, v6, v8}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v5

    iget-object v6, p0, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    monitor-enter v6

    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_1
    return v0
.end method

.method public final freezeForCalmMode(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v0, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->isExceptionListAppForCalmMode(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget v3, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->isShouldFreezeSharedUidPackage(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x11

    invoke-static {v4, v2, v3, v1}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/am/FreecessController;->freezeInnerLocked(ILcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Lcom/android/server/am/FreezeResult;

    move-result-object p0

    sget-object v2, Lcom/android/server/am/FreezeResult;->FREEZE_SUCCESS:Lcom/android/server/am/FreezeResult;

    const/4 v4, 0x1

    const-string v5, " "

    if-ne p0, v2, :cond_5

    iput-boolean v4, p1, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FZ"

    invoke-virtual {v0, p1, p0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_5
    const-string/jumbo p1, "freeze calm "

    const-string p2, " skip reason "

    invoke-static {v3, p1, v5, v1, p2}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/am/FreezeResult;->getKey()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FreecessController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_6
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final freezeInnerLocked(ILcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Lcom/android/server/am/FreezeResult;
    .locals 7

    invoke-virtual {p2}, Lcom/android/server/am/FreecessPkgStatus;->isFreezeProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_PROTECTED:Lcom/android/server/am/FreezeResult;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, p2, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/server/am/FreecessController;->getAllRunningPackagePids(IZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/am/FreecessController;->canUidBeFrozen(Ljava/util/ArrayList;)Lcom/android/server/am/FreezeResult;

    move-result-object v1

    sget-object v3, Lcom/android/server/am/FreezeResult;->FREEZE_SUCCESS:Lcom/android/server/am/FreezeResult;

    if-eq v1, v3, :cond_1

    return-object v1

    :cond_1
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    const-wide/16 v4, 0x40

    if-eqz v1, :cond_2

    const-string/jumbo v1, "freezeUid "

    const-string v6, " type : "

    invoke-static {v2, p1, v1, v6}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/android/server/am/FreecessController;->freezeAllProcesses(ILjava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/FreecessController;->onUidFrozen(ILcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2, v0}, Lcom/android/server/am/FreecessController;->unfreezeAllProcesses(ILjava/util/ArrayList;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    iget-object p3, p2, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    const-string v0, "FZ-fail"

    invoke-virtual {p3, p0, p1, v0}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->updateUnfreezeState(JLjava/lang/String;)V

    const/4 p0, 0x0

    iput-boolean p0, p3, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    iput-boolean p0, p3, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    iput-boolean p0, p3, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    iput-boolean p0, p3, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOffFreezed:Z

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "UFZ : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p2, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const-string p2, ") because failed to freeze"

    const-string p3, "FreecessController"

    invoke-static {p1, p2, p3, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :goto_0
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    if-eqz p0, :cond_5

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_5
    if-eqz v1, :cond_6

    return-object v3

    :cond_6
    sget-object p0, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_KERNEL_WRITE_FAIL:Lcom/android/server/am/FreezeResult;

    return-object p0
.end method

.method public final freezeLocked(ILcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Lcom/android/server/am/FreezeResult;
    .locals 5

    sget-object v0, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_DISABLE:Lcom/android/server/am/FreezeResult;

    sget-object v1, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_ALREADY_FROZEN:Lcom/android/server/am/FreezeResult;

    sget-object v2, Lcom/android/server/am/FreezeResult;->FREEZE_SUCCESS:Lcom/android/server/am/FreezeResult;

    sget-object v3, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_SCREEN_STATE_MISMATCH:Lcom/android/server/am/FreezeResult;

    const/4 v4, 0x3

    if-ne p1, v4, :cond_7

    iget-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/am/FreecessController;->checkFgsPkgSkipToFreeze(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_FOREGROUND_SERVICE:Lcom/android/server/am/FreezeResult;

    return-object p0

    :cond_1
    iget-boolean p1, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    if-nez p1, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    if-eqz p1, :cond_5

    iget-object p1, p2, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v0, p1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    if-eqz v0, :cond_5

    iget-boolean p1, p1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0, p2}, Lcom/android/server/am/FreecessController;->isShouldFreezeSharedUidPackage(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result p1

    iget-object p3, p2, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p2, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v0, p1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    :cond_4
    const-string p1, "Bg"

    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/am/FreecessController;->onUidFrozen(ILcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    const-string/jumbo p1, "Olaf2Bg "

    const-string v0, " "

    invoke-static {p1, p3, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p2, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "OVR"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is OLAF FZed, override it with bg fz."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FreecessController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_5
    iget-object p1, p2, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean p1, p1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v4, p2, p3}, Lcom/android/server/am/FreecessController;->freezeInnerLocked(ILcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Lcom/android/server/am/FreezeResult;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 v4, 0x2

    if-ne p1, v4, :cond_c

    iget-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-nez p1, :cond_9

    :cond_8
    :goto_1
    return-object v0

    :cond_9
    iget-object p1, p2, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean p1, p1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    if-eqz p1, :cond_a

    :goto_2
    return-object v1

    :cond_a
    iget-boolean p1, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    if-eqz p1, :cond_b

    :goto_3
    return-object v3

    :cond_b
    invoke-virtual {p0, v4, p2, p3}, Lcom/android/server/am/FreecessController;->freezeInnerLocked(ILcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Lcom/android/server/am/FreezeResult;

    move-result-object p0

    return-object p0

    :cond_c
    return-object v2
.end method

.method public getAllRunningPackagePids(IZLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v0, "/sys/fs/cgroup/apps/uid_"

    invoke-static {v2, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    const-string v7, "FreecessController"

    const/4 v9, 0x1

    if-eqz v6, :cond_a

    array-length v0, v6

    if-lez v0, :cond_a

    array-length v10, v6

    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_9

    aget-object v12, v6, v11

    const-string/jumbo v13, "pid_"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    if-nez v0, :cond_0

    move v13, v9

    goto :goto_1

    :cond_0
    move v13, v0

    :goto_1
    iget-boolean v0, v1, Lcom/android/server/am/FreecessController;->mIsUsingCgroupV2:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "_"

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez v4, :cond_2

    iget-boolean v0, v1, Lcom/android/server/am/FreecessController;->mIsUsingCgroupV2:Z

    if-nez v0, :cond_7

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/cgroup.procs"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :try_start_0
    new-instance v14, Ljava/io/InputStreamReader;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v12}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v14, v0, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v15, Ljava/io/BufferedReader;

    invoke-direct {v15, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/16 v16, 0x0

    :cond_3
    :goto_2
    :try_start_2
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    if-nez v16, :cond_4

    move/from16 v16, v9

    :cond_4
    iget-boolean v8, v1, Lcom/android/server/am/FreecessController;->mIsUsingCgroupV2:Z

    if-nez v8, :cond_5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v8, v0

    goto :goto_4

    :cond_5
    :goto_3
    if-eqz v4, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_6
    :try_start_3
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v8, v0

    goto :goto_6

    :goto_4
    :try_start_5
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {v8, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_3
    move-exception v0

    move-object v8, v0

    const/16 v16, 0x0

    :goto_6
    :try_start_7
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception v0

    :try_start_8
    invoke-virtual {v8, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v8
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_1
    move-exception v0

    const/16 v16, 0x0

    :goto_8
    const-string v8, "Error occurred when reading "

    const-string v14, " - "

    invoke-static {v2, v8, v14}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    if-nez p2, :cond_7

    if-nez v16, :cond_7

    const-string/jumbo v0, "getAllRunningPackagePids: Failed to read pid from "

    invoke-static {v0, v12, v7}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move v0, v13

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_9
    if-nez p2, :cond_c

    if-nez v0, :cond_c

    const-string/jumbo v0, "getAllRunningPackagePids: Cannot find any pid for u="

    invoke-static {v2, v0, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_a
    if-nez p2, :cond_c

    const-string/jumbo v0, "getAllRunningPackagePids: ls failed or empty for "

    const-string v8, " isNull="

    invoke-static {v0, v5, v8}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v6, :cond_b

    goto :goto_a

    :cond_b
    const/4 v9, 0x0

    :goto_a
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_b
    if-nez p2, :cond_f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v1, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Lcom/android/server/am/FreecessController$UidPidMap;

    invoke-virtual {v1, v0}, Lcom/android/server/am/FreecessController$UidPidMap;->getPidList(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v8, 0x0

    :cond_d
    :goto_c
    if-ge v8, v1, :cond_f

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v8, v8, 0x1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    if-eqz v4, :cond_d

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_f
    return-void
.end method

.method public final getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;
    .locals 2

    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget-object p0, p0, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/FreecessPkgStatus;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getFrozenPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;
    .locals 2

    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/FreecessPkgStatus;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;
    .locals 7

    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget-object v1, v1, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/FreecessPkgStatus;

    if-eqz v1, :cond_1

    iget v3, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    if-ne v3, p1, :cond_1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    move-object v1, v2

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_5

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-eqz v3, :cond_2

    const-string v4, ".cts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->updateShareUidPkgList(I)V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/16 v4, 0x100f

    int-to-long v4, v4

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-interface {v2, v3, v4, v5, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v2

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/content/pm/IPackageManager;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Lcom/android/server/am/FreecessPkgStatus;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {v5, v3, p1, v6, v4}, Lcom/android/server/am/FreecessPkgStatus;-><init>(Ljava/lang/String;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_3

    :try_start_2
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    if-eqz v1, :cond_3

    iput-object v1, v5, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v1, v5

    goto :goto_1

    :cond_3
    :goto_0
    monitor-enter v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v1, v3, p1, v5}, Lcom/android/server/am/FreecessPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p0, v5}, Lcom/android/server/am/FreecessController;->updateAllowListForFreecess(Lcom/android/server/am/FreecessPkgStatus;)V

    monitor-exit v0

    return-object v5

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    return-object v1

    :goto_1
    const-string p1, "FreecessController"

    const-string/jumbo v0, "getPackageStatus() failed to create ps "

    invoke-static {v0, p0, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_5
    return-object v1

    :goto_2
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public final getPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, ".cts"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget-object v2, v2, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/FreecessPkgStatus;

    if-eqz v0, :cond_1

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/16 v3, 0x100f

    int-to-long v3, v3

    invoke-interface {v2, p2, v3, v4, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, p2}, Landroid/content/pm/IPackageManager;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Lcom/android/server/am/FreecessPkgStatus;

    invoke-direct {v5, p2, v3, p1, v4}, Lcom/android/server/am/FreecessPkgStatus;-><init>(Ljava/lang/String;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object p1, v2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    if-eqz p1, :cond_2

    iput-object p1, v5, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p0

    move-object v0, v5

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/am/FreecessController;->updateShareUidPkgList(I)V

    monitor-enter v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {p1, p2, v3, v5}, Lcom/android/server/am/FreecessPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p0, v5}, Lcom/android/server/am/FreecessController;->updateAllowListForFreecess(Lcom/android/server/am/FreecessPkgStatus;)V

    monitor-exit v1

    return-object v5

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_3
    return-object v0

    :goto_1
    const-string p1, "FreecessController"

    const-string/jumbo p2, "getPackageStatus() failed to create ps "

    invoke-static {p2, p0, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_4
    return-object v0

    :goto_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/os/HandlerThread;Landroid/os/HandlerThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->setScreenOnFreecessEnabled(Z)V

    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->reportSocketResult(Z)V

    sget-object p1, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p3, p4}, Lcom/android/server/am/FreecessHandler;->init(Landroid/content/Context;Landroid/os/HandlerThread;Landroid/os/HandlerThread;)V

    return-void
.end method

.method public injectPkgStatus(ILjava/lang/String;ILcom/android/server/am/FreecessPkgStatus;)V
    .locals 2

    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/am/FreecessPkgMap;->put(ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p4}, Lcom/android/server/am/FreecessController;->updateAllowListForFreecess(Lcom/android/server/am/FreecessPkgStatus;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isExceptionListAppForCalmMode(Lcom/android/server/am/FreecessPkgStatus;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->isInFreezeExemptionList(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/am/FreecessController;->isInOlafAllowList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mCalmModeDefaultAllowList:Ljava/util/Set;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v0

    :cond_3
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mCalmModeAllowListFromGameUI:Lcom/android/server/am/FreecessPkgMap;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {p0, v2, v1}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    return v0

    :cond_4
    sget-object p0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter$LatestProtectedPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    const/16 v3, 0x11

    invoke-virtual {p0, v2, p1, v3, v1}, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->filter(IIILjava/lang/String;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_5

    return v0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public final isFreezedPackage(ILjava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;)Z
    .locals 4

    if-eqz p1, :cond_7

    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->targetSdkVersion:I

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    const/16 v2, 0x22

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->serviceTypes:I

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "com.samsung.android.voc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "com.sec.android.app.voicenote"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p1, Lcom/android/server/am/FreecessPkgStatus;->isInAllowList:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->isShouldFreezeSharedUidPackage(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result p0

    if-nez p0, :cond_5

    :cond_4
    :goto_0
    return v3

    :cond_5
    iget p0, p1, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is doing GC, skip to freeze it."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FreecessController"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_6
    sget-object p0, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter$BlueToothConnectedFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->mBTAllowList:Ljava/util/List;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v3

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public final isInFreecessExcludeList(Lcom/android/server/am/MARsPackageInfo;)Z
    .locals 1

    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    :try_start_0
    iget p1, p1, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isInFreezeExemptionList(Lcom/android/server/am/FreecessPkgStatus;)Z
    .locals 5

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreezeExemptionChina:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mFreezeExemptionChina:Ljava/util/Set;

    iget-object v4, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v1

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v1

    goto :goto_1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreezeExemption:Ljava/util/Set;

    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreezeExemptionStartsWith:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    return v0

    :cond_3
    :goto_2
    return v2
.end method

.method public final isInOlafAllowList(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mOLAFExemption:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mOLAFExemptionStartsWith:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sget-boolean v1, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_MOREFZ:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->isChinaPolicyEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    return v0

    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mOLAFExemptionGlobal:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final isQuickFreezeEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    return p0
.end method

.method public isReceivingTouchEvent(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->isUidTouched(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isShouldFreezeSharedUidPackage(Lcom/android/server/am/FreecessPkgStatus;)Z
    .locals 7

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object p1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mMapShareUidPkgList:Lcom/android/server/am/FreecessController$UidPidMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/am/FreecessController$UidPidMap;->mUidPidMap:Landroid/util/ArrayMap;

    monitor-enter v4

    :try_start_0
    iget-object v2, v2, Lcom/android/server/am/FreecessController$UidPidMap;->mUidPidMap:Landroid/util/ArrayMap;

    new-instance v5, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda2;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v2, v3, v5}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-le v2, v1, :cond_1

    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mMapShareUidPkgList:Lcom/android/server/am/FreecessController$UidPidMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/FreecessController$UidPidMap;->mUidPidMap:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/FreecessController$UidPidMap;->mUidPidMap:Landroid/util/ArrayMap;

    new-instance v3, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda2;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p0, v0, v3}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v2

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_1
    return v1
.end method

.method public final kernelFreecessReport(Lcom/android/server/am/mars/netlink/StructFreeCessMsg;)V
    .locals 7

    iget v0, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->mod:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget p1, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->target_uid:I

    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Receive cfb-module info(uid:"

    const-string v1, ") from kernel"

    const-string v2, "FreecessController"

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "Cfb"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreecessController;->killPkgForCalmMode(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_6

    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    return-void

    :cond_3
    iget p1, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->target_uid:I

    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    if-eqz v0, :cond_4

    const-string v0, "FreecessController"

    const-string/jumbo v1, "Receive packet-module info(uid:"

    const-string v2, ") from kernel"

    invoke-static {p1, v1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-boolean v3, v0, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_6
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v3, :cond_7

    goto/16 :goto_6

    :cond_7
    const-string/jumbo v0, "Packet"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_8
    iget v0, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->target_uid:I

    iget p1, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->flag:I

    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    if-eqz v2, :cond_9

    const-string v2, "FreecessController"

    const-string/jumbo v4, "Receive signal-module info(uid: "

    const-string v5, ",pid: "

    const-string v6, ") from kernel"

    invoke-static {v0, p1, v4, v5, v6}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Lcom/android/server/am/FreecessController$UidPidMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    monitor-enter v2

    :try_start_2
    iget-object v6, v2, Lcom/android/server/am/FreecessController$UidPidMap;->mUidPidMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_a

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_a

    move v4, v1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto/16 :goto_8

    :cond_a
    move v4, v3

    :goto_2
    monitor-exit v2

    iget-object v5, p0, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Lcom/android/server/am/FreecessController$UidPidMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    monitor-enter v5

    :try_start_3
    iget-object v6, v5, Lcom/android/server/am/FreecessController$UidPidMap;->mUidPidMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_7

    :cond_b
    move v2, v3

    :goto_3
    monitor-exit v5

    if-le v2, v1, :cond_c

    goto :goto_4

    :cond_c
    move v1, v3

    :goto_4
    iget-boolean v2, p0, Lcom/android/server/am/FreecessController;->mPidUnfreezeEnabled:Z

    if-eqz v2, :cond_f

    if-eqz v4, :cond_f

    if-eqz v1, :cond_f

    if-lez p1, :cond_f

    const-string/jumbo v1, "Signal"

    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v4

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/server/am/FreecessController;->mPidUnfreezeEnabled:Z

    if-eqz v5, :cond_d

    if-eqz v2, :cond_e

    iget-object v1, v2, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v1, v1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    if-eqz v1, :cond_e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/FreecessController;->unfreezeProcess(ILjava/lang/Integer;)Z

    move-result p0

    if-eqz p0, :cond_e

    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    const-string/jumbo v1, "PROC: Signal <u="

    const-string v2, ", p="

    const-string v3, ">"

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "UFZ"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    :cond_e
    :goto_5
    monitor-exit v4

    return-void

    :catchall_3
    move-exception v0

    move-object p0, v0

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw p0

    :cond_f
    if-eqz v2, :cond_10

    iget-boolean v2, p0, Lcom/android/server/am/FreecessController;->mIsUsingCgroupV2:Z

    if-eqz v2, :cond_10

    if-eqz v1, :cond_10

    if-lez p1, :cond_10

    :goto_6
    return-void

    :cond_10
    const-string/jumbo p1, "Signal"

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/am/FreecessController;->protectFreezePackage(ILjava/lang/String;J)V

    return-void

    :goto_7
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :goto_8
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0

    :cond_11
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mMismatchFlag:Z

    if-eqz v0, :cond_12

    const-string/jumbo v0, "mismatch"

    :goto_9
    move-object v6, v0

    goto :goto_a

    :cond_12
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->rpcname:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :goto_a
    iget v2, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->target_uid:I

    iget v3, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->cmd:I

    iget v4, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->code:I

    iget v5, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->flag:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/FreecessController;->reportBinderUid(IIIILjava/lang/String;)V

    return-void
.end method

.method public final killPkgForCalmMode(ILjava/lang/String;)Z
    .locals 10

    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    :cond_1
    move v1, p2

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->isExceptionListAppForCalmMode(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object v8, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget v5, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v9, "CalmMode"

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityManagerService;->killProcessForMARs(IIIZLjava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v2

    :try_start_1
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {p1, v8, v5}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-object p2, p1, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/16 p2, 0x8

    iput p2, p1, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    iget-object p2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v0, p1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {p2, v1, v0}, Lcom/android/server/am/MARsPkgMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v0, p1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILcom/android/server/am/MARsPackageInfo;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_3
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p1, "EXE"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "CalmMode "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_4
    :goto_2
    const/4 p0, 0x1

    return p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final makePkgIdle(I)V
    .locals 6

    const-string/jumbo v0, "Try to make pkg idle: <"

    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-boolean v3, v2, Lcom/android/server/am/FreecessPkgStatus;->isMakeIdleCalled:Z

    if-eqz v3, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    iget-object v3, v2, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v4, v2, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/android/server/am/FreecessPkgStatus;->isMakeIdleCalled:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    if-eqz v1, :cond_2

    const-string v1, "FreecessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ">."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/ActivityManagerService;->makePackageIdle(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "FreecessController"

    const-string/jumbo v0, "makePkgIdleIfNeeded Exception : "

    invoke-static {p0, v0, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final matchFreezeState(ILjava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean p2, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    const/4 v1, 0x1

    if-eq v1, p2, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onUidFrozen(ILcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v2, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    iput v1, v2, Lcom/android/server/am/FreecessPkgStatus;->freezedType:I

    invoke-static {v2, v5}, Lcom/android/server/am/FreecessController;->updateFrozenStatusByFreezeType(Lcom/android/server/am/FreecessPkgStatus;Z)V

    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v4, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    iget-object v6, v2, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v7, v2, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v4, v7, v6}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-boolean v6, Lcom/android/server/am/mars/EventRecorder;->mFeatureEnable:Z

    sget-object v6, Lcom/android/server/am/mars/EventRecorder$EventRecorderHolder;->INSTANCE:Lcom/android/server/am/mars/EventRecorder;

    iget v7, v2, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v8, Lcom/android/server/am/mars/EventRecorder;->mFeatureEnable:Z

    if-nez v8, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, v6, Lcom/android/server/am/mars/EventRecorder;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-object v11, v6, Lcom/android/server/am/mars/EventRecorder;->mPendingWrite:Ljava/util/ArrayDeque;

    new-instance v12, Lcom/android/server/am/mars/events/FreezeEvent;

    sget-object v13, Lcom/android/server/am/mars/events/EventType;->FREEZE:Lcom/android/server/am/mars/events/EventType;

    invoke-direct {v12, v13, v7, v8, v9}, Lcom/android/server/am/mars/events/Event;-><init>(Lcom/android/server/am/mars/events/EventType;Ljava/lang/Integer;J)V

    iput-object v3, v12, Lcom/android/server/am/mars/events/FreezeEvent;->reason:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object v7, v6, Lcom/android/server/am/mars/EventRecorder;->mPendingWrite:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->size()I

    move-result v7

    const/16 v11, 0xfa

    if-le v7, v11, :cond_1

    invoke-virtual {v6, v8, v9}, Lcom/android/server/am/mars/EventRecorder;->performWriteAsync(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v10

    goto :goto_2

    :goto_1
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_2
    iget-object v6, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v7, v2, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v6, v6, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    iget-object v6, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v7, v2, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v8, v2, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v8, v7, v2}, Lcom/android/server/am/FreecessPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_3
    sget-object v9, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    iget v6, v2, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v7, v9, Lcom/android/server/am/FreecessHandler;->mHandleAmsLockHandler:Lcom/android/server/am/FreecessHandler$BluetoothHandler;

    if-nez v7, :cond_4

    goto :goto_3

    :cond_4
    const-string/jumbo v7, "uid"

    invoke-static {v6, v7}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    iget-object v7, v9, Lcom/android/server/am/FreecessHandler;->mHandleAmsLockHandler:Lcom/android/server/am/FreecessHandler$BluetoothHandler;

    const/16 v8, 0x18

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v6, v9, Lcom/android/server/am/FreecessHandler;->mHandleAmsLockHandler:Lcom/android/server/am/FreecessHandler$BluetoothHandler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_3
    if-ne v1, v5, :cond_5

    return-void

    :cond_5
    const/4 v6, 0x0

    iput-boolean v6, v2, Lcom/android/server/am/FreecessPkgStatus;->isMakeIdleCalled:Z

    iget-object v7, v2, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v7, Lcom/android/server/am/mars/MARsFreezeStateRecord;->freezedTime:J

    sget-object v8, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->FREEZE_TOTAL:Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    invoke-virtual {v8}, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->getTypeNum()I

    move-result v8

    iget-object v7, v7, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreezeCounts:[I

    aget v10, v7, v8

    add-int/2addr v10, v5

    aput v10, v7, v8

    iget-object v7, v2, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v8, v2, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v4, v8, v7}, Lcom/android/server/am/MARsPolicyManager;->getAutorunForFreezedPackage(ILjava/lang/String;)I

    move-result v7

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    if-eq v7, v5, :cond_7

    :cond_6
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v7

    if-nez v7, :cond_8

    iget-boolean v7, v0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    if-nez v7, :cond_8

    :cond_7
    move v7, v5

    goto :goto_4

    :cond_8
    move v7, v6

    :goto_4
    iget-object v8, v2, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v10, v2, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-virtual {v4, v10, v8}, Lcom/android/server/am/MARsPolicyManager;->getAutorunForFreezedPackage(ILjava/lang/String;)I

    move-result v8

    iget-boolean v10, v0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    if-eqz v10, :cond_b

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v10

    if-eqz v10, :cond_9

    if-eqz v8, :cond_a

    :cond_9
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v8

    if-nez v8, :cond_b

    :cond_a
    move v8, v5

    goto :goto_5

    :cond_b
    move v8, v6

    :goto_5
    iput-boolean v7, v2, Lcom/android/server/am/FreecessPkgStatus;->monitorPacketFlag:Z

    iput-boolean v8, v2, Lcom/android/server/am/FreecessPkgStatus;->restrictNetworkFlag:Z

    const/16 v10, 0x13

    iget v11, v2, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v9, v10, v11}, Lcom/android/server/am/FreecessHandler;->sendUpdateBTMsg(II)V

    if-eqz v8, :cond_c

    iget v8, v2, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v0, v8, v6}, Lcom/android/server/am/FreecessController;->updateFreezedUidFirewall(IZ)V

    iget v8, v2, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v4, v8}, Lcom/android/server/am/MARsPolicyManager;->closeSocketsForUid(I)V

    :cond_c
    iget v4, v2, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v8, v0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    monitor-enter v8

    :try_start_1
    iget-object v10, v0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    check-cast v10, Ljava/util/HashSet;

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    iget-object v10, v0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    check-cast v10, Ljava/util/HashSet;

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :catchall_1
    move-exception v0

    goto/16 :goto_c

    :cond_d
    :goto_6
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v9, v4, v5}, Lcom/android/server/am/FreecessHandler;->sendOnFreezeStateChanged(IZ)V

    iget-object v13, v2, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v10, v2, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v11, v2, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    if-eqz v7, :cond_e

    move v14, v5

    goto :goto_7

    :cond_e
    const/4 v4, -0x1

    move v14, v4

    :goto_7
    const/4 v4, 0x3

    if-ne v1, v4, :cond_f

    move v15, v5

    goto :goto_8

    :cond_f
    move v15, v6

    :goto_8
    const/16 v17, 0x1

    const/4 v12, 0x1

    const/16 v16, 0x0

    invoke-virtual/range {v9 .. v17}, Lcom/android/server/am/FreecessHandler;->sendFreecessSettlementMsg(IIZLjava/lang/String;IZZI)V

    iget-object v1, v0, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Lcom/android/server/am/FreecessController$UidPidMap;

    iget v4, v2, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/am/FreecessController$UidPidMap;->getPidList(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {v9, v1, v5}, Lcom/android/server/am/FreecessHandler;->sendReportToBroadcastQueueMsg(Ljava/util/ArrayList;Z)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    :cond_10
    :goto_9
    if-ge v6, v4, :cond_11

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/2addr v6, v5

    check-cast v7, Ljava/lang/Integer;

    iget-object v8, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordFromPidLocked(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v8, v8, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-eqz v8, :cond_10

    if-eqz v7, :cond_10

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getInstance()Lcom/android/server/chimera/ppn/PerProcessNandswap;

    move-result-object v9

    iget v10, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v11, v7, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget-object v12, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v13, v8, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-boolean v14, v7, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->onProcessFrozen(IILjava/lang/String;IZ)V

    goto :goto_9

    :cond_11
    sget-object v0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    iget-object v4, v2, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v6, v0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v6, :cond_12

    goto :goto_a

    :cond_12
    const/16 v7, 0xb

    invoke-virtual {v6, v7, v4}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    iget-object v6, v0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v6, v7, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v8, "packageName"

    invoke-virtual {v7, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "uid"

    invoke-virtual {v7, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, v0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v6, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_13
    :goto_a
    const-string v0, "FreecessController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "FZ : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " reason: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [cached:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lcom/android/server/am/FreecessPkgStatus;->isCached:Z

    if-eqz v1, :cond_14

    const-string/jumbo v1, "O"

    goto :goto_b

    :cond_14
    const-string/jumbo v1, "X"

    :goto_b
    invoke-static {v4, v1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_c
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final onUidUnfrozen(Lcom/android/server/am/FreecessPkgStatus;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    iput v5, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedType:I

    invoke-static {v1, v5}, Lcom/android/server/am/FreecessController;->updateFrozenStatusByFreezeType(Lcom/android/server/am/FreecessPkgStatus;Z)V

    iget-object v4, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v6, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget-object v7, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v6, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v7, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lcom/android/server/am/FreecessPkgMap;->remove(ILjava/lang/String;)V

    :cond_0
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v4, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    iget-object v6, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v4, v7, v6}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/android/server/am/mars/EventRecorder;->mFeatureEnable:Z

    sget-object v4, Lcom/android/server/am/mars/EventRecorder$EventRecorderHolder;->INSTANCE:Lcom/android/server/am/mars/EventRecorder;

    iget v6, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, v1, Lcom/android/server/am/FreecessPkgStatus;->latestProcState:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v8, Lcom/android/server/am/mars/EventRecorder;->mFeatureEnable:Z

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, v4, Lcom/android/server/am/mars/EventRecorder;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    new-instance v11, Lcom/android/server/am/mars/events/UnFreezeEvent;

    sget-object v12, Lcom/android/server/am/mars/events/EventType;->UNFREEZE:Lcom/android/server/am/mars/events/EventType;

    invoke-direct {v11, v12, v6, v8, v9}, Lcom/android/server/am/mars/events/Event;-><init>(Lcom/android/server/am/mars/events/EventType;Ljava/lang/Integer;J)V

    iput-object v3, v11, Lcom/android/server/am/mars/events/UnFreezeEvent;->reason:Ljava/lang/String;

    iput v7, v11, Lcom/android/server/am/mars/events/UnFreezeEvent;->procStateBeforeEvent:I

    iput v7, v11, Lcom/android/server/am/mars/events/UnFreezeEvent;->procStateAfterEvent:I

    iget-object v7, v4, Lcom/android/server/am/mars/EventRecorder;->mPendingWrite:Ljava/util/ArrayDeque;

    invoke-virtual {v7, v11}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object v7, v4, Lcom/android/server/am/mars/EventRecorder;->mPendingWrite:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->size()I

    move-result v7

    const/16 v12, 0xfa

    if-le v7, v12, :cond_2

    invoke-virtual {v4, v8, v9}, Lcom/android/server/am/mars/EventRecorder;->performWriteAsync(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v4, v4, Lcom/android/server/am/mars/EventRecorder;->mLatestUnfreezeEvent:Landroid/util/ArrayMap;

    invoke-virtual {v4, v6, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v10

    goto :goto_2

    :goto_1
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_2
    sget-boolean v4, Lcom/android/server/am/FreecessController;->FEATURE_SERVICE_GUARD:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    iget v6, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v7, v4, Lcom/android/server/am/FreecessHandler;->mHandleAmsLockHandler:Lcom/android/server/am/FreecessHandler$BluetoothHandler;

    if-nez v7, :cond_4

    goto :goto_3

    :cond_4
    const/16 v8, 0x1a

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v9, "uid"

    invoke-virtual {v8, v9, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v7, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v4, v4, Lcom/android/server/am/FreecessHandler;->mHandleAmsLockHandler:Lcom/android/server/am/FreecessHandler$BluetoothHandler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    :goto_3
    const-string/jumbo v4, "OLAF:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    return-void

    :cond_6
    iget-object v4, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7, v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->updateUnfreezeState(JLjava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/am/FreecessPkgStatus;->monitorPacketFlag:Z

    iget-boolean v6, v1, Lcom/android/server/am/FreecessPkgStatus;->restrictNetworkFlag:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    :try_start_1
    sget-object v9, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    iget v10, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    const/16 v11, 0x14

    invoke-virtual {v9, v11, v10}, Lcom/android/server/am/FreecessHandler;->sendUpdateBTMsg(II)V

    if-eqz v6, :cond_7

    iget v6, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    const/4 v10, 0x1

    invoke-virtual {v0, v6, v10}, Lcom/android/server/am/FreecessController;->updateFreezedUidFirewall(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_9

    :cond_7
    :goto_4
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget v6, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v10, v0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    monitor-enter v10

    :try_start_2
    iget-object v7, v0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    check-cast v7, Ljava/util/HashSet;

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    monitor-exit v10

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_8

    :cond_8
    iget-object v0, v0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v9, v6, v5}, Lcom/android/server/am/FreecessHandler;->sendOnFreezeStateChanged(IZ)V

    :goto_5
    iget-object v13, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v10, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v11, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    if-eqz v4, :cond_9

    move v14, v5

    goto :goto_6

    :cond_9
    const/4 v0, -0x1

    move v14, v0

    :goto_6
    const/16 v17, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v9 .. v17}, Lcom/android/server/am/FreecessHandler;->sendFreecessSettlementMsg(IIZLjava/lang/String;IZZI)V

    iput-boolean v5, v1, Lcom/android/server/am/FreecessPkgStatus;->monitorPacketFlag:Z

    iput-boolean v5, v1, Lcom/android/server/am/FreecessPkgStatus;->restrictNetworkFlag:Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v9, v2, v5}, Lcom/android/server/am/FreecessHandler;->sendReportToBroadcastQueueMsg(Ljava/util/ArrayList;Z)V

    :cond_a
    iget-object v0, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget-object v4, v9, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v4, :cond_b

    goto :goto_7

    :cond_b
    const/16 v5, 0xb

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, v9, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_c
    :goto_7
    const-string v0, "FreecessController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "UFZ : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " reason: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v3, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_8
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :goto_9
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final protectFreezePackage(ILjava/lang/String;J)V
    .locals 2

    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3, p4}, Lcom/android/server/am/FreecessPkgStatus;->updateProtectionTime(J)V

    iget-object p3, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean p3, p3, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move p0, v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    iget-object p2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(ILjava/lang/String;Z)V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final protectFreezePackage(ILjava/lang/String;JLjava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p3, p4}, Lcom/android/server/am/FreecessPkgStatus;->updateProtectionTime(J)V

    iget-object p3, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean p3, p3, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    invoke-virtual {p0, v1, p5, p3}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move p0, v2

    move p3, p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(ILjava/lang/String;Z)V

    :cond_1
    return p3

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final releaseFreezedAppPid(II)V
    .locals 8

    const-string/jumbo v0, "UFZ : release pid "

    const-string/jumbo v1, "UFZ error : pid "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    move v2, v5

    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    const-string v7, "CustomFrequencyManagerService"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/CustomFrequencyManager;

    iput-object v6, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-eqz p0, :cond_3

    if-eqz v2, :cond_3

    const-string/jumbo v2, "freeze"

    invoke-virtual {p0, p1, p2, v5, v2}, Landroid/os/CustomFrequencyManager;->requestFreezeSlowdown(IIZLjava/lang/String;)I

    move-result p0

    const/4 p2, -0x1

    if-ne p0, p2, :cond_2

    const-string p0, "FreecessController"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (when app died or watchdog half)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string p0, "FreecessController"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (when app died or watchdog half)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_4
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final reportBinderUid(IIIILjava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    const/4 v6, 0x1

    if-ne v4, v6, :cond_10

    const-string/jumbo v4, "u="

    const-string v7, ""

    if-eqz v5, :cond_12

    sget-object v8, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v8

    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    goto :goto_0

    :cond_0
    move v6, v10

    :goto_0
    if-eqz v6, :cond_1

    iget-object v7, v9, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v10, v9, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    :goto_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v8, "free_buffer_full"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    const/4 v8, -0x1

    if-eq v3, v8, :cond_3

    :cond_2
    const-string/jumbo v8, "mismatch"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_3
    const-string v3, "Binder(1)-"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/FreecessController;->killPkgForCalmMode(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_7

    :cond_4
    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordFromPidLocked(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v11

    if-eqz v6, :cond_6

    sget-object v3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v3, v10, v7}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-boolean v3, Lcom/android/server/am/FreecessController;->CACHED_RESTRICTED_BINDER:Z

    if-eqz v3, :cond_5

    if-eqz v11, :cond_5

    iget-object v3, v11, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v1, "FreecessController"

    const-string/jumbo v3, "pid "

    const-string v4, " "

    const-string v5, " received async transactions while frozen, binder buffer full."

    invoke-static {v2, v3, v4, v7, v5}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    :try_start_1
    const-string v14, "AsyncBinderFull while frozen"

    const/16 v17, 0x1

    const/16 v12, 0xd

    const/16 v13, 0x3ea

    const/16 v16, 0x1

    move-object v15, v14

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_5
    const-string v2, "Binder(1)-"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    return-void

    :cond_6
    if-eqz v11, :cond_12

    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3

    :try_start_3
    iget-object v5, v11, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_7

    iget-object v5, v11, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :cond_7
    :goto_2
    iget v5, v11, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5, v9}, Lcom/android/server/am/FreecessController;->freezeTargetProcess(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "FreecessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not mars target, try google freezer ufz p="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1, v11}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeTemporarily(ILcom/android/server/am/ProcessRecord;)V

    :cond_8
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_3
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_9
    sget-object v2, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    sget-object v2, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    const/16 v4, 0x9

    invoke-virtual {v2, v4, v9, v9, v5}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    sget-object v2, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-eqz v2, :cond_a

    const-string/jumbo v2, "android.media.IAudioFocusDispatcher"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->semGetAudioFocusedPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "Binder(1)- focus audio"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    return-void

    :cond_a
    const-string/jumbo v2, "android.service.notification"

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x2

    if-ne v3, v2, :cond_12

    const-string v2, "Binder(1)-"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    return-void

    :cond_b
    const-string/jumbo v2, "accessibility"

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$AccessibilityAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;

    iget-object v3, v2, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_5
    iget-object v2, v2, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    monitor-exit v3

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_4

    :cond_c
    monitor-exit v3

    return-void

    :goto_4
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :cond_d
    :goto_5
    const-string v2, "Binder(1)-"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    return-void

    :cond_e
    const/16 v3, 0x11

    invoke-virtual {v2, v3, v9, v9, v5}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    sget-object v2, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v2, v2, Lcom/android/server/am/mars/util/UidStateMgr;->mUidForegroundList:Lcom/android/server/am/mars/util/ConcurrentList;

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "Binder(1)-"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    return-void

    :cond_f
    if-eqz v6, :cond_12

    const/16 v3, 0x1c

    invoke-virtual {v2, v3, v7, v9, v5}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "Binder(1)-"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    return-void

    :goto_6
    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :cond_10
    sget-boolean v6, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    if-eqz v6, :cond_11

    const-string v6, "FreecessController"

    const-string/jumbo v7, "Receive binder-module info(callerPid:0,uid:"

    const-string v8, ",code:"

    const-string v9, ",interfaceToken:"

    invoke-static {v1, v3, v7, v8, v9}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ",flag:"

    const-string v8, ") from kernel"

    invoke-static {v4, v5, v7, v8, v3}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const-string v3, "Binder(0)"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/FreecessController;->killPkgForCalmMode(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_12
    :goto_7
    return-void

    :cond_13
    const-string v3, "Binder(0)"

    sget-boolean v4, Lcom/android/server/am/FreecessController;->CACHED_RESTRICTED_BINDER:Z

    if-eqz v4, :cond_15

    iget-object v4, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordFromPidLocked(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    if-eqz v5, :cond_14

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v1, "FreecessController"

    const-string/jumbo v3, "pid "

    const-string v4, " "

    invoke-static {v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v4, " received sync transactions while frozen, killing"

    invoke-static {v2, v3, v4, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    :try_start_7
    const-string/jumbo v8, "Sync transaction while in frozen state"

    const/4 v11, 0x1

    const/16 v6, 0xd

    const/16 v7, 0x3ea

    const/4 v10, 0x1

    move-object v9, v8

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_4
    move-exception v0

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_14
    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    return-void

    :cond_15
    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    return-void
.end method

.method public final reportSocketResult(Z)V
    .locals 10

    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    if-eqz v0, :cond_0

    const-string v0, "FreecessController"

    const-string/jumbo v1, "Receive socket exception from kernel"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsKernelSupportFreecess:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mProcessObserver:Lcom/android/server/am/FreecessController$2;

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    :cond_1
    sget-object p1, Lcom/android/server/am/FreecessTrigger$FreecessTriggerHolder;->INSTANCE:Lcom/android/server/am/FreecessTrigger;

    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    iput-object v0, p1, Lcom/android/server/am/FreecessTrigger;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    const-string/jumbo v2, "sec.app.policy.UPDATE.ssrm_update_freecess"

    invoke-static {v0, v1, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    const-string/jumbo v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    const-string/jumbo v3, "android.intent.action.ACTION_SHUTDOWN"

    const-string/jumbo v4, "android.intent.action.REBOOT"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p1, Lcom/android/server/am/FreecessTrigger;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/am/FreecessTrigger;->mIntentReceiver:Lcom/android/server/am/FreecessTrigger$1;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/android/server/am/FreecessTrigger;->mContext:Landroid/content/Context;

    const/4 v9, 0x4

    const/4 v7, 0x0

    iget-object v5, p1, Lcom/android/server/am/FreecessTrigger;->mPkgIntentReceiver:Lcom/android/server/am/FreecessTrigger$2;

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.intent.action.SMARTSWITCH_WORK_START"

    const-string/jumbo v1, "com.samsung.android.intent.action.SMARTSWITCH_WORK_ONGOING"

    const-string/jumbo v2, "com.samsung.android.intent.action.SMARTSWITCH_WORK_FINISH"

    invoke-static {v0, v1, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v5

    iget-object v3, p1, Lcom/android/server/am/FreecessTrigger;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/android/server/am/FreecessTrigger;->mSmartSwitchIntentReceiver:Lcom/android/server/am/FreecessTrigger$2;

    const/4 v8, 0x2

    const-string/jumbo v6, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const-string/jumbo p1, "input"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    check-cast p1, Lcom/android/server/input/InputManagerService;

    iput-object p1, p0, Lcom/android/server/am/FreecessController;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    iget-boolean p1, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->setFirewallChainEnabled(Z)V

    :cond_2
    return-void
.end method

.method public final requestProcessFrozen(ILjava/lang/Integer;Z)Z
    .locals 12

    const-string v0, "FreecessController"

    const-string/jumbo v1, "there is an error at "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    if-eqz p3, :cond_0

    const-string/jumbo v4, "freezeProcess"

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "unfreezeProcess"

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v7, 0x40

    const/4 v9, -0x1

    :try_start_0
    sget-boolean v10, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    if-eqz v10, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v10}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_1
    iget-object v10, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    const-string v11, "CustomFrequencyManagerService"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/CustomFrequencyManager;

    iput-object v10, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    :cond_2
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string/jumbo v11, "freeze"

    invoke-virtual {p0, v10, p1, p3, v11}, Landroid/os/CustomFrequencyManager;->requestFreezeSlowdown(IIZLjava/lang/String;)I

    move-result v9

    if-eq v9, v6, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ". uid="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    if-eqz p0, :cond_3

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :cond_4
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    if-eqz p0, :cond_5

    :goto_2
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    :cond_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    :goto_3
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    if-eqz p0, :cond_5

    goto :goto_2

    :goto_4
    if-ne v9, v6, :cond_6

    move v5, v6

    :cond_6
    return v5

    :goto_5
    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    if-eqz p1, :cond_7

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    :cond_7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final restrictJobsByOlaf(IZ)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/FreecessController;->FASTOLAF_PENDING_JOB:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.intent.action.OLAF_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "job_restriction"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const-string/jumbo v1, "olaf_target_uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "restrictJobsByOlaf: restrict="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", uid="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FreecessController"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-direct {p2, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    return-void
.end method

.method public final sendFreecessMsg2kernel(IIII)I
    .locals 2

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/am/mars/netlink/FreecessNetlinkMessage;->newFreecessRequest(IIIII)[B

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    if-eqz p0, :cond_0

    sget p2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget p3, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object p4

    invoke-static {p0, p2, p3, p4}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    const/4 p2, 0x0

    const/16 p3, 0x9c

    invoke-static {p0, p1, p2, p3}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final setFirewallChainEnabled(Z)V
    .locals 4

    const-string v0, "Error occured while setFirewallChainEnabled: "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    if-nez v3, :cond_0

    const-string/jumbo v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    if-eqz p0, :cond_1

    const/4 v3, 0x7

    :try_start_0
    invoke-interface {p0, v3, p1}, Landroid/os/INetworkManagementService;->setFirewallChainEnabled(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "FreecessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public final setFreecessEnableForSpecificReason(IZ)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    const-string/jumbo v2, "default"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "SmartSwitch"

    goto :goto_0

    :cond_1
    const-string v2, "BugReport"

    :goto_0
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_2

    const-string/jumbo v5, "ON"

    goto :goto_1

    :cond_2
    const-string/jumbo v5, "OFF"

    :goto_1
    const-string v6, " by "

    invoke-static {v4, v5, v6, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "FRZ"

    invoke-virtual {v3, v5, v4}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    if-eqz p2, :cond_4

    invoke-virtual {p0, p2}, Lcom/android/server/am/FreecessController;->setScreenOnFreecessEnabled(Z)V

    iput-boolean p2, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    iput-boolean p2, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    invoke-virtual {v3}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v4}, Lcom/android/server/am/MARsHandler;->sendRepeatTriggerMsgToMainHandler()V

    :cond_3
    return-void

    :cond_4
    sget-object v5, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    invoke-virtual {v5, p1}, Lcom/android/server/am/FreecessHandler;->sendSetFreecessEnableDelayedMsg(I)V

    invoke-virtual {v3}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, v4, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6
    :goto_2
    iget-object p1, v5, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :goto_3
    invoke-virtual {p0, p2}, Lcom/android/server/am/FreecessController;->setScreenOnFreecessEnabled(Z)V

    iget-object p1, v5, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-eqz p1, :cond_8

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_8
    iput-boolean p2, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    iput-boolean p2, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    invoke-virtual {p0, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    return-void
.end method

.method public final setFreecessPolicyFromSCPM(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    const-string/jumbo v1, "true"

    :try_start_0
    new-instance v2, Lcom/android/server/am/FreecessPolicy;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/android/server/am/FreecessPolicy;->googleFreezeExemptionList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    const-string/jumbo v3, "master_switch"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p1, Lcom/android/server/am/FreecessPolicy;->masterSwitch:Z

    const-string/jumbo p1, "freeze_enhanced_mode"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v3, Lcom/android/server/am/FreecessPolicy;->quickFreezeEnabled:Z

    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, v3, Lcom/android/server/am/FreecessPolicy;->lessUnfreezeEnabled:Z

    const-string/jumbo p1, "freeze_timeout"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/android/server/am/FreecessPolicy;->quickFreezeCheckTime:I

    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "google_freeze_timeout"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v1, Lcom/android/server/am/FreecessPolicy;->googleFreezeTime:I

    const-string/jumbo p1, "google_freezer_exemption_list"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v4, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/android/server/am/FreecessPolicy;->googleFreezeExemptionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    iget-boolean v0, p1, Lcom/android/server/am/FreecessPolicy;->masterSwitch:Z

    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    iget-boolean v0, p1, Lcom/android/server/am/FreecessPolicy;->quickFreezeEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    iget-boolean v0, p1, Lcom/android/server/am/FreecessPolicy;->lessUnfreezeEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mPidUnfreezeEnabled:Z

    sget-object v0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    iget v0, p1, Lcom/android/server/am/FreecessPolicy;->quickFreezeCheckTime:I

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/am/FreecessHandler;->mScreenOnQuickFreezeCheckDelay:J

    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    iget p1, p1, Lcom/android/server/am/FreecessPolicy;->googleFreezeTime:I

    int-to-long v1, p1

    iput-wide v1, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreecessPolicy:Lcom/android/server/am/FreecessPolicy;

    iget-object p0, p0, Lcom/android/server/am/FreecessPolicy;->googleFreezeExemptionList:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    sget-object p1, Lcom/android/server/am/mars/database/MARsListManager;->HEALTH_KEY_LIST:Ljava/util/List;

    sget-object p1, Lcom/android/server/am/mars/database/MARsListManager$ListManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsListManager;

    iget-object v0, p1, Lcom/android/server/am/mars/database/MARsListManager;->mGoogleFreezerExemptionList:Ljava/util/Set;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p1, p1, Lcom/android/server/am/mars/database/MARsListManager;->mGoogleFreezerExemptionList:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "setFreecessPolicyFromSCPM Exception error!"

    const-string v0, "FreecessController"

    invoke-static {p0, p1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final setIsDoingGC(IZ)V
    .locals 1

    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget p1, p0, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setScreenOnFreecessEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mSkipTriggerLcdOnFreeze:Z

    :cond_0
    return-void
.end method

.method public final setScreenOnState(Z)V
    .locals 7

    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v6, "TopApp-ScreenOn"

    const-wide/16 v4, 0x2710

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/FreecessController;->protectFreezePackage(ILjava/lang/String;JLjava/lang/String;)Z

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->unfreezeWallPaperPackage()V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    sget-object p0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter p0

    :try_start_0
    iget p1, v1, Lcom/android/server/am/FreecessController;->mLastTopUid:I

    invoke-virtual {v1, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setUidIdleCheckMode(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "FRECESS DEBUGGING MODE CHANGED ! Uid Idle Checking will be "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    const-string v0, "FreecessController"

    invoke-static {v0, p1, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_0
    return-void
.end method

.method public final shouldDelayService(Lcom/android/server/am/ServiceRecord;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_DEALY_SERVICE:Z

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v0, v0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_4

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/am/ProcessList;->getSharedIsolatedProcess(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0, v3, v2}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string/jumbo v2, "com.samsung"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "com.sec"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "com.google"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "com.android"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const-string v2, ".cts."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const-string v2, ".cts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mCtsGtsList:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    return v1

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "delay service: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    const-string v0, "FreecessController"

    invoke-static {p0, p1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method public final triggerCalmMode(Ljava/util/ArrayList;)V
    .locals 11

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    iget-object v2, v2, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p1, :cond_3

    new-instance v3, Lcom/android/server/am/FreecessPkgMap;

    invoke-direct {v3}, Lcom/android/server/am/FreecessPkgMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_2

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v8, v6

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    aget-object v8, v6, v2

    :try_start_0
    aget-object v6, v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v6, "FreecessController"

    const-string v9, "CalmMode parseInt error!"

    invoke-static {v6, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v8, v7, v6}, Lcom/android/server/am/FreecessPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mCalmModeAllowListFromGameUI:Lcom/android/server/am/FreecessPkgMap;

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getVisibleWinSurfacePkgList()Ljava/util/ArrayList;

    move-result-object p1

    :cond_4
    sget-object v5, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    invoke-virtual {v5}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    iput-boolean v0, v5, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mIsUsingAudioList:Z

    sget-object v5, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v5

    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget-object v6, v6, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    move v7, v2

    :goto_3
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_8

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/FreecessPkgStatus;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_5

    iget-object v9, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_5
    const-string v9, "CalmMode First trigger"

    invoke-virtual {p0, v8, v9}, Lcom/android/server/am/FreecessController;->freezeForCalmMode(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-boolean v9, v8, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    if-eqz v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    iget-object v9, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v9, v9, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    if-eqz v9, :cond_7

    invoke-virtual {p0, v8}, Lcom/android/server/am/FreecessController;->isExceptionListAppForCalmMode(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result v9

    if-nez v9, :cond_7

    iput-boolean v0, v8, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    :cond_7
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_8
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    iput-boolean v2, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mIsUsingAudioList:Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, " ["

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "CalmMode "

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_5
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final triggerOLAF(ILjava/lang/String;)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v7

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v7, v8, v2}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(ILjava/lang/String;)V

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    const-string/jumbo v8, "activity"

    invoke-virtual {v0, v7, v2, v8}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    sget-boolean v7, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    const-wide/16 v8, 0x40

    if-eqz v7, :cond_0

    const-string/jumbo v7, "Trigger OLAF"

    invoke-static {v8, v9, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->getVisibleWinSurfacePkgList()Ljava/util/ArrayList;

    move-result-object v7

    :cond_1
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    sget-boolean v10, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    if-eqz v10, :cond_1c

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sget-object v15, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v15

    move-wide/from16 v16, v8

    :try_start_0
    iget-object v8, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget-object v8, v8, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v9, v14, :cond_3

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/FreecessPkgStatus;

    sget-boolean v18, Lcom/android/server/am/FreecessController;->FASTOLAF_IMPROVE_SPEED:Z

    if-eqz v18, :cond_2

    if-eqz v14, :cond_2

    sget-object v11, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    iget v12, v14, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v11, v11, Lcom/android/server/am/mars/util/UidStateMgr;->mUidGoneList:Lcom/android/server/am/mars/util/ConcurrentList;

    invoke-virtual {v11, v12}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_2
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_1b

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v12, v12, 0x1

    check-cast v14, Lcom/android/server/am/FreecessPkgStatus;

    sget-object v15, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v15

    if-eqz v14, :cond_4

    :try_start_1
    iget-object v13, v14, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    if-nez v13, :cond_5

    :cond_4
    move-wide/from16 v19, v5

    move-wide/from16 v21, v8

    goto/16 :goto_7

    :cond_5
    iget v13, v14, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v13

    if-eqz v13, :cond_6

    monitor-exit v15

    move-wide/from16 v19, v5

    :goto_3
    move-wide/from16 v21, v8

    goto/16 :goto_8

    :catchall_1
    move-exception v0

    goto/16 :goto_9

    :cond_6
    iget-object v13, v14, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v13, v13, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    if-eqz v13, :cond_7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v19, v5

    const-string v5, " "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v14, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":s0"

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    monitor-exit v15

    goto :goto_3

    :cond_7
    move-wide/from16 v19, v5

    if-eqz v2, :cond_8

    iget-object v5, v14, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget v5, v14, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    if-ne v5, v1, :cond_8

    monitor-exit v15

    goto :goto_3

    :cond_8
    iget-object v5, v14, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    if-eqz v5, :cond_9

    invoke-static {}, Lcom/android/server/am/FreecessController;->shouldSkipShareUid()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v0, v14}, Lcom/android/server/am/FreecessController;->isShouldFreezeSharedUidPackage(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result v5

    if-nez v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v14, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":s1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    monitor-exit v15

    goto :goto_3

    :cond_9
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v5

    iget-object v6, v14, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v13, v14, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    move-wide/from16 v21, v8

    const/4 v8, 0x4

    invoke-virtual {v5, v13, v8, v6}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(IILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v14, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":s2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    monitor-exit v15

    goto/16 :goto_8

    :cond_a
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-eqz v5, :cond_c

    iget-object v5, v14, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    if-eqz v5, :cond_c

    sget-object v6, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    iget-object v6, v6, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultHomePackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    sget-boolean v5, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v5, :cond_b

    const-string v5, "FreecessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "skip to freeze prev app:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v14, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", uid : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v14, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v14, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":s3"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    monitor-exit v15

    goto/16 :goto_8

    :cond_c
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_e

    iget-object v5, v14, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    sget-boolean v5, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v5, :cond_d

    const-string v5, "FreecessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v14, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v14, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") has window surface, skip to freeze"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v14, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":s4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    monitor-exit v15

    goto/16 :goto_8

    :cond_e
    iget-boolean v5, v14, Lcom/android/server/am/FreecessPkgStatus;->isOlafAllowList:Z

    if-eqz v5, :cond_10

    sget-boolean v5, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v5, :cond_f

    const-string v5, "FreecessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v14, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v14, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") olaf allowlist, skip to freeze"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v14, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":s5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    monitor-exit v15

    goto/16 :goto_8

    :cond_10
    iget-object v5, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    iget-object v6, v14, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    iget-object v5, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    iget v6, v14, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    goto/16 :goto_6

    :cond_11
    sget-object v5, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    iget v6, v14, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v5, v5, Lcom/android/server/am/mars/util/UidStateMgr;->mTopUidList:Lcom/android/server/am/mars/util/ConcurrentList;

    invoke-virtual {v5, v6}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    sget-boolean v5, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v5, :cond_12

    const-string v5, "FreecessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v14, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v14, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") is top app, skip to freeze"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v14, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":s7"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    monitor-exit v15

    goto/16 :goto_8

    :cond_13
    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->isQuickFreezeEnabled()Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, v14, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    if-eqz v5, :cond_15

    iget-boolean v5, v5, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    if-eqz v5, :cond_15

    sget-boolean v5, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v5, :cond_14

    const-string v5, "FreecessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BG freezed, skip OLAF freeze for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v14, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v14, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v14, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":s8"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    monitor-exit v15

    goto/16 :goto_8

    :cond_15
    sget-object v5, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    iget-object v6, v14, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v8, v14, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v9, v14, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0xa

    invoke-static {v5, v8, v9, v6}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_16

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v14, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    monitor-exit v15

    goto/16 :goto_8

    :cond_16
    const-string/jumbo v5, "OLAF"

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v14, v5}, Lcom/android/server/am/FreecessController;->freezeInnerLocked(ILcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Lcom/android/server/am/FreezeResult;

    move-result-object v5

    sget-object v6, Lcom/android/server/am/FreezeResult;->FREEZE_SUCCESS:Lcom/android/server/am/FreezeResult;

    if-ne v5, v6, :cond_17

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v14, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_17
    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v14, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/am/FreezeResult;->getKey()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sub-long v5, v5, v21

    const-wide/16 v8, 0x5

    cmp-long v5, v5, v8

    if-ltz v5, :cond_18

    const-wide/16 v5, 0x1

    :try_start_2
    invoke-virtual {v15, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-wide v8, v5

    goto :goto_5

    :cond_18
    move-wide/from16 v8, v21

    :goto_5
    monitor-exit v15

    move-wide/from16 v5, v19

    goto/16 :goto_2

    :cond_19
    :goto_6
    sget-boolean v5, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v5, :cond_1a

    const-string v5, "FreecessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v14, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v14, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") olaf debug allowlist, skip to freeze"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v14, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":s6"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    monitor-exit v15

    goto :goto_8

    :goto_7
    monitor-exit v15

    :goto_8
    move-wide/from16 v5, v19

    move-wide/from16 v8, v21

    goto/16 :goto_2

    :goto_9
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_1b
    move-wide/from16 v19, v5

    goto/16 :goto_10

    :goto_a
    :try_start_4
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_1c
    move-wide/from16 v19, v5

    move-wide/from16 v16, v8

    sget-object v5, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v5

    :try_start_5
    iget-object v6, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget-object v6, v6, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    const/4 v8, 0x0

    :goto_b
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_2b

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/FreecessPkgStatus;

    iget-object v10, v9, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    if-eqz v10, :cond_1d

    iget-boolean v10, v10, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    if-eqz v10, :cond_1d

    :goto_c
    const/16 v10, 0xa

    const/4 v13, 0x4

    goto/16 :goto_f

    :catchall_2
    move-exception v0

    goto/16 :goto_14

    :cond_1d
    if-eqz v2, :cond_1e

    iget-object v10, v9, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    iget v10, v9, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    if-ne v10, v1, :cond_1e

    goto :goto_c

    :cond_1e
    iget-object v10, v9, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    if-eqz v10, :cond_1f

    goto :goto_c

    :cond_1f
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v10

    iget-object v11, v9, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v12, v9, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const/4 v13, 0x4

    invoke-virtual {v10, v12, v13, v11}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(IILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_21

    :cond_20
    :goto_d
    const/16 v10, 0xa

    goto/16 :goto_f

    :cond_21
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v10, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-eqz v10, :cond_22

    iget-object v10, v9, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    if-eqz v10, :cond_22

    sget-object v11, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    iget-object v11, v11, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultHomePackage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_22

    sget-boolean v10, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v10, :cond_20

    const-string v10, "FreecessController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "skip to freeze prev app:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", uid : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v9, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_22
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_23

    iget-object v10, v9, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_23

    sget-boolean v10, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v10, :cond_20

    const-string v10, "FreecessController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v9, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " has window surface, skip to freeze"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_23
    iget-boolean v10, v9, Lcom/android/server/am/FreecessPkgStatus;->isOlafAllowList:Z

    if-eqz v10, :cond_24

    sget-boolean v10, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v10, :cond_20

    const-string v10, "FreecessController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v9, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " olaf allowlist, skip to freeze"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_24
    iget-object v10, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    iget-object v11, v9, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_25

    iget-object v10, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    iget v11, v9, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_26

    :cond_25
    const/16 v10, 0xa

    goto/16 :goto_e

    :cond_26
    sget-object v10, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    iget v11, v9, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v10, v10, Lcom/android/server/am/mars/util/UidStateMgr;->mTopUidList:Lcom/android/server/am/mars/util/ConcurrentList;

    invoke-virtual {v10, v11}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_27

    const-string v10, "FreecessController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v9, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is top app, skip to freeze"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_27
    sget-object v10, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    iget-object v11, v9, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v12, v9, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v14, v9, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v10, 0xa

    invoke-static {v10, v12, v14, v11}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_28

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v9, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_28
    const-string/jumbo v11, "OLAF"

    const/4 v12, 0x1

    invoke-virtual {v0, v12, v9, v11}, Lcom/android/server/am/FreecessController;->freezeInnerLocked(ILcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Lcom/android/server/am/FreezeResult;

    move-result-object v11

    sget-object v12, Lcom/android/server/am/FreezeResult;->FREEZE_SUCCESS:Lcom/android/server/am/FreezeResult;

    if-ne v12, v11, :cond_29

    const-string v11, " "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v9, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_29
    const-string v12, " "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v9, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/am/FreezeResult;->getKey()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_f

    :goto_e
    sget-boolean v11, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v11, :cond_2a

    const-string v11, "FreecessController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v9, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " olaf debug allowlist, skip to freeze"

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    :goto_f
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_b

    :cond_2b
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_10
    iget-object v5, v0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    iget-object v6, v0, Lcom/android/server/am/FreecessController;->mOLAFBlockList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v14, 0x0

    :goto_11
    if-ge v14, v7, :cond_30

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v14, v14, 0x1

    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_2c

    goto :goto_11

    :cond_2c
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2d

    goto :goto_11

    :cond_2d
    sget-object v9, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v9

    :try_start_6
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v10

    invoke-virtual {v10, v5, v8}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2e

    invoke-virtual {v0, v5, v8}, Lcom/android/server/am/FreecessController;->getPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v8

    if-eqz v8, :cond_2e

    const-string/jumbo v10, "OLAF"

    const/4 v12, 0x1

    invoke-virtual {v0, v12, v8, v10}, Lcom/android/server/am/FreecessController;->freezeInnerLocked(ILcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Lcom/android/server/am/FreezeResult;

    move-result-object v10

    sget-object v11, Lcom/android/server/am/FreezeResult;->FREEZE_SUCCESS:Lcom/android/server/am/FreezeResult;

    if-ne v11, v10, :cond_2f

    const-string v10, " "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_12

    :catchall_3
    move-exception v0

    goto :goto_13

    :cond_2e
    const/4 v12, 0x1

    :cond_2f
    :goto_12
    monitor-exit v9

    goto :goto_11

    :goto_13
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :cond_30
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v2, :cond_31

    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    :cond_31
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    const-string/jumbo v5, "OLAF "

    const-string v6, " ["

    invoke-static {v1, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v19 .. v20}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4}, Lcom/android/server/am/FreecessController;->convertLevelChangeInfoToString(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()V

    sget-object v1, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    iget-object v0, v0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/FreecessHandler;->sendOLAFTimeOutMsg(J)V

    return-void

    :goto_14
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0
.end method

.method public final turnOnOffFreecessMonitor(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    if-nez p1, :cond_0

    const-string v0, "DisableFC"

    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->setScreenOnFreecessEnabled(Z)V

    return-void
.end method

.method public final unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    const-string/jumbo v2, "Packet"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v1, :cond_e

    iget-object v4, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v6, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    if-nez v6, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v6, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v6, v6, Lcom/android/server/am/FreecessController;->mPidUnfreezeEnabled:Z

    iget v7, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    const-string/jumbo v8, "Signal"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iget-object v6, v6, Lcom/android/server/am/FreecessHandler;->mHandleAmsLockHandler:Lcom/android/server/am/FreecessHandler$BluetoothHandler;

    new-instance v9, Lcom/android/server/am/FreecessHandler$$ExternalSyntheticLambda0;

    invoke-direct {v9, v7, v8}, Lcom/android/server/am/FreecessHandler$$ExternalSyntheticLambda0;-><init>(IZ)V

    invoke-virtual {v6, v9}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_1
    iget-boolean v6, v0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    const/4 v8, 0x1

    const-string v9, " "

    if-eqz v6, :cond_7

    iget-object v6, v0, Lcom/android/server/am/FreecessController;->mOLAFOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_7

    sget-boolean v6, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_LESSUFZ:Z

    const-string/jumbo v10, "UFA"

    const-string/jumbo v11, "OLAF:"

    if-eqz v6, :cond_5

    iget-object v6, v0, Lcom/android/server/am/FreecessController;->fastOlafUfzList:Ljava/util/Set;

    if-eqz v6, :cond_2

    check-cast v6, Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    const-string v6, "BTOP(0)"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    iget-boolean v6, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    if-eqz v6, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/am/FreecessController;->unfreezePackageForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result v0

    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v11, v5, v9}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_4
    iput-boolean v8, v1, Lcom/android/server/am/FreecessPkgStatus;->isPendingUFZ:Z

    iput-object v5, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->unfreezedReason:Ljava/lang/String;

    return v3

    :cond_5
    iget-object v6, v0, Lcom/android/server/am/FreecessController;->olafUfzList:Ljava/util/Set;

    if-eqz v6, :cond_6

    check-cast v6, Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-boolean v6, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    if-eqz v6, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/am/FreecessController;->unfreezePackageForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result v0

    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v11, v5, v9}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_6
    if-eqz p3, :cond_7

    iget-object v6, v0, Lcom/android/server/am/FreecessController;->olafUfzList:Ljava/util/Set;

    if-eqz v6, :cond_7

    check-cast v6, Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    iput-boolean v8, v1, Lcom/android/server/am/FreecessPkgStatus;->isPendingUFZ:Z

    iput-object v5, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->unfreezedReason:Ljava/lang/String;

    return v3

    :cond_7
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v0, v7, v3, v6, v10}, Lcom/android/server/am/FreecessController;->getAllRunningPackagePids(IZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v7, v6}, Lcom/android/server/am/FreecessController;->unfreezeAllProcesses(ILjava/util/ArrayList;)Z

    move-result v10

    iput-boolean v3, v1, Lcom/android/server/am/FreecessPkgStatus;->isCached:Z

    iget-object v15, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    if-eqz v10, :cond_c

    iget-boolean v2, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    if-nez v2, :cond_9

    iget-boolean v2, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOffFreezed:Z

    if-eqz v2, :cond_8

    goto :goto_0

    :cond_8
    move v8, v3

    :cond_9
    :goto_0
    invoke-virtual {v0, v1, v6, v5}, Lcom/android/server/am/FreecessController;->onUidUnfrozen(Lcom/android/server/am/FreecessPkgStatus;Ljava/util/ArrayList;Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->freezedTime:J

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v12}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "UFZ"

    invoke-virtual {v2, v6, v4}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    if-eqz v2, :cond_a

    iput-boolean v3, v1, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    iget-object v2, v0, Lcom/android/server/am/FreecessController;->calmModeFilterList:Ljava/util/Set;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    sget-object v2, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    iget v3, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const-string v4, "CalmMode"

    invoke-virtual {v2, v3, v15, v4}, Lcom/android/server/am/FreecessHandler;->sendCalmModeRepeatMsg(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    if-eqz v8, :cond_b

    iget-object v2, v0, Lcom/android/server/am/FreecessController;->filterList:Ljava/util/Set;

    if-eqz v2, :cond_b

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-boolean v2, v0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    if-eqz v2, :cond_b

    sget-object v11, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    sget-wide v14, Lcom/android/server/am/FreecessHandler;->mScreenOnQuickFreezeCheckDelay:J

    iget-object v2, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v13, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v12, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/am/FreecessHandler;->triggerScreenOnFreezeWithDelay(IIJLjava/lang/String;)V

    :cond_b
    :goto_1
    iget v2, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const-wide/16 v3, 0x5dc

    move v6, v2

    iget-object v2, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    move v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/FreecessController;->protectFreezePackage(ILjava/lang/String;JLjava/lang/String;)Z

    return v10

    :cond_c
    if-eqz v2, :cond_d

    iget-boolean v0, v1, Lcom/android/server/am/FreecessPkgStatus;->monitorPacketFlag:Z

    if-eqz v0, :cond_d

    sget-object v11, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    iget v12, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v13, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    const/16 v19, -0x1

    const/4 v14, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v11 .. v19}, Lcom/android/server/am/FreecessHandler;->sendFreecessSettlementMsg(IIZLjava/lang/String;IZZI)V

    :cond_d
    const-string/jumbo v0, "UFZ error : "

    const-string v1, "("

    const-string v2, ") "

    invoke-static {v7, v0, v15, v1, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FreecessController"

    invoke-static {v0, v5, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return v10

    :cond_e
    :goto_2
    return v3
.end method

.method public final unFreezeForOLAF(Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mOLAFOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    const-wide/16 v5, 0x40

    if-eqz v3, :cond_0

    const-string v3, "FreecessController"

    const-string/jumbo v7, "OLAF unfreeze for "

    invoke-virtual {v7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "Unfreeze OLAF"

    invoke-static {v5, v6, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v7, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v7

    :try_start_0
    iget-object v8, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget-object v8, v8, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    move v9, v4

    :goto_0
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/FreecessPkgStatus;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v4

    :goto_1
    if-ge v10, v9, :cond_c

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lcom/android/server/am/FreecessPkgStatus;

    sget-object v12, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v12

    if-eqz v11, :cond_b

    :try_start_1
    iget-object v13, v11, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    if-nez v13, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-boolean v14, v0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    if-eqz v14, :cond_3

    iget-boolean v14, v13, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    if-eqz v14, :cond_3

    iget-boolean v14, v11, Lcom/android/server/am/FreecessPkgStatus;->isPendingUFZ:Z

    if-nez v14, :cond_3

    const-string v13, "FreecessController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "BG freezed, skip OLAF unfreeze for ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v12

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_5

    :cond_3
    iget-boolean v14, v0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    if-eqz v14, :cond_4

    iget-boolean v14, v11, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    if-eqz v14, :cond_4

    iput-boolean v4, v13, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    const/4 v13, 0x3

    iput v13, v11, Lcom/android/server/am/FreecessPkgStatus;->freezedType:I

    monitor-exit v12

    goto :goto_1

    :cond_4
    sget-object v13, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    iget-object v14, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v15, v11, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v13, v15, v14}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    iget-object v13, v11, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v13, v13, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    if-eqz v13, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "OLAF:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v11, v13, v2}, Lcom/android/server/am/FreecessController;->unfreezePackageForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    goto :goto_3

    :cond_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ":nMARsTG"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v11, v13, v4}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    goto :goto_3

    :cond_6
    iget-boolean v13, v11, Lcom/android/server/am/FreecessPkgStatus;->isPendingUFZ:Z

    if-eqz v13, :cond_7

    iget-object v13, v11, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-object v13, v13, Lcom/android/server/am/mars/MARsFreezeStateRecord;->unfreezedReason:Ljava/lang/String;

    invoke-virtual {v0, v11, v13}, Lcom/android/server/am/FreecessController;->unfreezePackageForPending(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)V

    iput-boolean v4, v11, Lcom/android/server/am/FreecessPkgStatus;->isPendingUFZ:Z

    goto :goto_2

    :cond_7
    iget-object v13, v11, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v13, v13, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    if-eqz v13, :cond_8

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "OLAF:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v11, v13, v2}, Lcom/android/server/am/FreecessController;->unfreezePackageForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    :cond_8
    :goto_2
    iget-boolean v13, v0, Lcom/android/server/am/FreecessController;->mSkipTriggerLcdOnFreeze:Z

    if-nez v13, :cond_9

    invoke-virtual {v0, v11}, Lcom/android/server/am/FreecessController;->isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result v13

    if-nez v13, :cond_9

    iget-boolean v13, v0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    if-eqz v13, :cond_9

    sget-object v14, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    iget v15, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v13, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v11, v11, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const-wide/16 v17, 0x0

    move/from16 v16, v11

    move-object/from16 v19, v13

    invoke-virtual/range {v14 .. v19}, Lcom/android/server/am/FreecessHandler;->triggerScreenOnFreezeWithDelay(IIJLjava/lang/String;)V

    :cond_9
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sub-long/2addr v13, v7

    const-wide/16 v15, 0x5

    cmp-long v11, v13, v15

    if-ltz v11, :cond_a

    const-wide/16 v7, 0x1

    :try_start_2
    invoke-virtual {v12, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    :cond_a
    monitor-exit v12

    goto/16 :goto_1

    :cond_b
    :goto_4
    monitor-exit v12

    goto/16 :goto_1

    :goto_5
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_c
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v3, :cond_d

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    :cond_d
    sget-object v3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    const-string/jumbo v4, "UFA"

    const-string/jumbo v5, "OLAF:"

    const-string v6, " "

    invoke-static {v5, v1, v6}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    monitor-enter v1

    const-wide/16 v2, 0x0

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    monitor-exit v1

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :goto_6
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public final unFreezePackage(ILjava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const/4 v4, 0x1

    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    move p0, v1

    move v3, p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    if-eqz v2, :cond_1

    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {p0, v3, v2, v1}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(ILjava/lang/String;Z)V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v3, v3, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, p3, v3}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move p0, v2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(ILjava/lang/String;Z)V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final unFreezePackage(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget-object v1, v1, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/FreecessPkgStatus;

    invoke-virtual {p0, v4, p1, v2}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    add-int/lit8 v3, v3, 0x1

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

.method public final unFreezeSpecialPackage(ILjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p1

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    :cond_1
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final unfreezeAllProcesses(ILjava/util/ArrayList;)Z
    .locals 4

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/FreecessController;->unfreezeProcess(ILjava/lang/Integer;)Z

    move-result v3

    and-int/2addr v1, v3

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final unfreezePackageForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Ljava/lang/StringBuilder;)Z
    .locals 4

    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/android/server/am/FreecessController;->getAllRunningPackagePids(IZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/FreecessController;->unfreezeAllProcesses(ILjava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/am/FreecessController;->onUidUnfrozen(Lcom/android/server/am/FreecessPkgStatus;Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string p0, " "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "OLAF UFZ : "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    const-string p3, "("

    const-string v3, ") "

    invoke-static {v0, p1, p3, v3, p0}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " reason: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FreecessController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2
.end method

.method public final unfreezePackageForPending(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v3, "Packet"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget v4, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v7, v5, v6}, Lcom/android/server/am/FreecessController;->getAllRunningPackagePids(IZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    iget v4, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/FreecessController;->unfreezeAllProcesses(ILjava/util/ArrayList;)Z

    move-result v6

    iget-object v11, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    const-string v7, "("

    const-string v8, "FreecessController"

    if-eqz v6, :cond_1

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/server/am/FreecessController;->onUidUnfrozen(Lcom/android/server/am/FreecessPkgStatus;Ljava/util/ArrayList;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    const-string/jumbo v3, "OLAF:P-"

    const-string v5, " "

    invoke-static {v3, v2, v5, v11, v5}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-wide v5, v1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->freezedTime:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "UFZ"

    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OLAF Pending UFZ : "

    const-string v1, "), reason: "

    invoke-static {v4, v0, v11, v7, v1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v2, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-eqz v3, :cond_2

    iget-boolean v0, v1, Lcom/android/server/am/FreecessPkgStatus;->monitorPacketFlag:Z

    if-eqz v0, :cond_2

    move-object v0, v7

    sget-object v7, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    move-object v3, v8

    iget v8, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v9, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    const/4 v15, -0x1

    const/4 v10, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual/range {v7 .. v15}, Lcom/android/server/am/FreecessHandler;->sendFreecessSettlementMsg(IIZLjava/lang/String;IZZI)V

    goto :goto_0

    :cond_2
    move-object v0, v7

    move-object v3, v8

    :goto_0
    const-string/jumbo v1, "UFZ error : "

    const-string v5, ")"

    invoke-static {v4, v1, v11, v0, v5}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final unfreezeProcess(ILjava/lang/Integer;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/FreecessController;->requestProcessFrozen(ILjava/lang/Integer;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/am/FreecessController;->cntFailUnfreeze:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/FreecessController;->cntFailUnfreeze:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cntFailUnfreeze="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/am/FreecessController;->cntFailUnfreeze:I

    const-string v2, ", uid="

    const-string v3, ", fpid="

    invoke-static {p0, p1, v2, v3, v1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-boolean p1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    const-string p2, "DEV"

    invoke-virtual {p1, p2, p0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Lcom/android/server/am/FreecessController$UidPidMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/FreecessController$UidPidMap;->mUidPidMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    monitor-exit v0

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/server/am/FreecessController$UidPidMap;->mUidPidMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_0
    monitor-exit v0

    :goto_1
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    monitor-enter p1

    :try_start_2
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit p1

    return v2

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final unfreezeWallPaperPackage()V
    .locals 7

    sget-object v0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter$WallPaperFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/WallPaperFilter;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mWallpaperPackageList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-object v5, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    const-string/jumbo v6, "WallPaper"

    invoke-virtual {v4, v5, v3, v6}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final updateAbnormalAppFirewall(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateAbnormalAppFirewall uid "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", allow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreecessController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->updateFreezedUidFirewall(IZ)V

    return-void
.end method

.method public final updateAllowListForFreecess(Lcom/android/server/am/FreecessPkgStatus;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->isInFreezeExemptionList(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isInAllowList:Z

    :cond_1
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->isInOlafAllowList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isOlafAllowList:Z

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mGpsDefaultAllowList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isInAllowList:Z

    :cond_3
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mCtsGtsList:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isOlafAllowList:Z

    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isInAllowList:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public final updateCgroupVersionToSsrm()V
    .locals 5

    const-string v0, "ERROR while updateCgroupVersionToSsrm(v=2): "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    const-string v4, "CustomFrequencyManagerService"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/CustomFrequencyManager;

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Landroid/os/CustomFrequencyManager;->updateUsingCgroupVersion(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    :try_start_1
    const-string v3, "FreecessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public updateFreezedUidFirewall(IZ)V
    .locals 4

    const-string v0, "Error occurred while updateFreezedUidFirewall: "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    if-nez v3, :cond_0

    const-string/jumbo v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    if-eqz p0, :cond_2

    const/4 v3, 0x7

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    :try_start_0
    invoke-interface {p0, v3, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 p2, 0x2

    invoke-interface {p0, v3, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    :try_start_1
    const-string p1, "FreecessController"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_2
    :goto_3
    return-void
.end method

.method public final updateRunningLocationPackages()V
    .locals 4

    const-string v0, "FreecessController"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "location"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/location/ILocationManager;->getGPSUsingApps()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mGPSAllowList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mGPSAllowList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mGPSAllowList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mGPSAllowList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mGPSAllowList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "failed to updateRunningLocationPackages!"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public final updateShareUidPkgList(I)V
    .locals 9

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mMapShareUidPkgList:Lcom/android/server/am/FreecessController$UidPidMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/FreecessController$UidPidMap;->mUidPidMap:Landroid/util/ArrayMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, v1, Lcom/android/server/am/FreecessController$UidPidMap;->mUidPidMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mMapShareUidPkgList:Lcom/android/server/am/FreecessController$UidPidMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v4, Lcom/android/server/am/FreecessController$UidPidMap;->mUidPidMap:Landroid/util/ArrayMap;

    monitor-enter v6
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v4, v4, Lcom/android/server/am/FreecessController$UidPidMap;->mUidPidMap:Landroid/util/ArrayMap;

    new-instance v7, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda2;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v4, v5, v7}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "FreecessController"

    const-string/jumbo v0, "updateShareUidPkgList RemoteException: "

    invoke-static {v0, p0, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
