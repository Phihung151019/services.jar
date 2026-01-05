.class public final Lcom/android/server/am/AppRestrictionController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final ROLES_IN_INTEREST:[Ljava/lang/String;


# instance fields
.field public errorMsg:Ljava/lang/String;

.field public final mActiveUids:Landroid/util/SparseArrayMap;

.field public final mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field public final mAppIdleStateChangeListener:Lcom/android/server/am/AppRestrictionController$4;

.field public final mAppStateTrackers:Ljava/util/ArrayList;

.field public final mBackgroundRestrictionListener:Lcom/android/server/am/AppRestrictionController$3;

.field public final mBgExecutor:Landroid/os/HandlerExecutor;

.field public final mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

.field public final mBgHandlerThread:Landroid/os/HandlerThread;

.field public mBgRestrictionExemptioFromSysConfig:Landroid/util/ArraySet;

.field public final mBootReceiver:Lcom/android/server/am/AppRestrictionController$1;

.field public final mBroadcastReceiver:Lcom/android/server/am/AppRestrictionController$1;

.field public final mCarrierPrivilegedApps:Landroid/util/SparseArray;

.field public final mCarrierPrivilegedLock:Ljava/lang/Object;

.field public volatile mCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

.field public final mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

.field public final mContext:Landroid/content/Context;

.field public mDeviceIdleAllowlist:[I

.field public mDeviceIdleExceptIdleAllowlist:[I

.field public final mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

.field public final mExecutor:Landroid/os/HandlerExecutor;

.field public final mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

.field public final mLock:Ljava/lang/Object;

.field public volatile mLockedBootCompleted:Z

.field public final mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

.field public final mRestrictionListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

.field final mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

.field public final mRestrictionSettingsXmlLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mRoleHolderChangedListener:Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda1;

.field public final mSettingsLock:Ljava/lang/Object;

.field public final mSystemDeviceIdleAllowlist:Landroid/util/ArraySet;

.field public final mSystemDeviceIdleExceptIdleAllowlist:Landroid/util/ArraySet;

.field public final mSystemModulesCache:Ljava/util/HashMap;

.field public final mTmpRunnables:Ljava/util/ArrayList;

.field public final mUidObserver:Lcom/android/server/am/AppRestrictionController$5;

.field public final mUidRolesMapping:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "android.app.role.DIALER"

    const-string/jumbo v1, "android.app.role.EMERGENCY"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppRestrictionController;->ROLES_IN_INTEREST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 11

    new-instance v0, Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/am/AppRestrictionController$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v2, Landroid/util/SparseArrayMap;

    invoke-direct {v2}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mTmpRunnables:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mDeviceIdleAllowlist:[I

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mDeviceIdleExceptIdleAllowlist:[I

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleAllowlist:Landroid/util/ArraySet;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleExceptIdleAllowlist:Landroid/util/ArraySet;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    new-instance v3, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mRoleHolderChangedListener:Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda1;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mSystemModulesCache:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedLock:Ljava/lang/Object;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedApps:Landroid/util/SparseArray;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettingsXmlLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v2, p0, Lcom/android/server/am/AppRestrictionController;->mLockedBootCompleted:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/AppRestrictionController;->errorMsg:Ljava/lang/String;

    new-instance v2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    invoke-direct {v2}, Lcom/android/server/am/AppRestrictionController$TrackerInfo;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    new-instance v2, Lcom/android/server/am/AppRestrictionController$1;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/android/server/am/AppRestrictionController$1;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mBroadcastReceiver:Lcom/android/server/am/AppRestrictionController$1;

    new-instance v2, Lcom/android/server/am/AppRestrictionController$1;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Lcom/android/server/am/AppRestrictionController$1;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mBootReceiver:Lcom/android/server/am/AppRestrictionController$1;

    new-instance v2, Lcom/android/server/am/AppRestrictionController$3;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppRestrictionController$3;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mBackgroundRestrictionListener:Lcom/android/server/am/AppRestrictionController$3;

    new-instance v2, Lcom/android/server/am/AppRestrictionController$4;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppRestrictionController$4;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppIdleStateChangeListener:Lcom/android/server/am/AppRestrictionController$4;

    new-instance v2, Lcom/android/server/am/AppRestrictionController$5;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppRestrictionController$5;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mUidObserver:Lcom/android/server/am/AppRestrictionController$5;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance p2, Landroid/os/HandlerThread;

    const-string/jumbo v2, "bgres-controller"

    const/16 v3, 0xa

    invoke-direct {p2, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/server/am/AppRestrictionController$BgHandler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v2, p2, v0}, Lcom/android/server/am/AppRestrictionController$BgHandler;-><init>(Landroid/os/Looper;Lcom/android/server/am/AppRestrictionController$Injector;)V

    iput-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    new-instance p2, Landroid/os/HandlerExecutor;

    invoke-direct {p2, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mBgExecutor:Landroid/os/HandlerExecutor;

    new-instance p2, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    invoke-direct {p2, p1, p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    new-instance p2, Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-direct {p2, p0}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    iput-object p0, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    new-instance p2, Lcom/android/server/am/AppBatteryTracker;

    invoke-direct {p2, p1, p0}, Lcom/android/server/am/AppBatteryTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    iput-object p2, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppBatteryTracker:Lcom/android/server/am/AppBatteryTracker;

    new-instance v4, Lcom/android/server/am/AppBatteryExemptionTracker;

    invoke-direct {v4, p1, p0}, Lcom/android/server/am/BaseAppStateDurationsTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    new-instance p2, Lcom/android/server/am/UidProcessMap;

    invoke-direct {p2}, Lcom/android/server/am/UidProcessMap;-><init>()V

    iput-object p2, v4, Lcom/android/server/am/AppBatteryExemptionTracker;->mUidPackageStates:Lcom/android/server/am/UidProcessMap;

    new-instance v2, Lcom/android/server/am/AppBatteryExemptionTracker$AppBatteryExemptionPolicy;

    iget-object p2, v4, Lcom/android/server/am/BaseAppStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x10e0054

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v8, p2

    iget-object v3, v4, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    const/4 v6, 0x0

    const-string/jumbo v7, "bg_current_drain_window"

    const-string/jumbo v5, "bg_battery_exemption_enabled"

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateEventsTracker;Ljava/lang/String;ZLjava/lang/String;J)V

    iput-object v2, v3, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    iput-object v4, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppBatteryExemptionTracker:Lcom/android/server/am/AppBatteryExemptionTracker;

    new-instance p2, Lcom/android/server/am/AppFGSTracker;

    invoke-direct {p2, p1, p0}, Lcom/android/server/am/AppFGSTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    iput-object p2, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

    new-instance p2, Lcom/android/server/am/AppMediaSessionTracker;

    invoke-direct {p2, p1, p0}, Lcom/android/server/am/AppMediaSessionTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    iput-object p2, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppMediaSessionTracker:Lcom/android/server/am/AppMediaSessionTracker;

    new-instance p2, Lcom/android/server/am/AppPermissionTracker;

    invoke-direct {p2, p1, p0}, Lcom/android/server/am/AppPermissionTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    iput-object p2, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppPermissionTracker:Lcom/android/server/am/AppPermissionTracker;

    iget-object p2, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppBatteryTracker:Lcom/android/server/am/AppBatteryTracker;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppBatteryExemptionTracker:Lcom/android/server/am/AppBatteryExemptionTracker;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppMediaSessionTracker:Lcom/android/server/am/AppMediaSessionTracker;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppPermissionTracker:Lcom/android/server/am/AppPermissionTracker;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/server/am/AppBroadcastEventsTracker;

    invoke-direct {v4, p1, p0}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    new-instance v2, Lcom/android/server/am/AppBroadcastEventsTracker$AppBroadcastEventsPolicy;

    iget-object v3, v4, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    const-string/jumbo v5, "bg_broadcast_monitor_enabled"

    const-string/jumbo v7, "bg_ex_broadcast_threshold"

    const-string/jumbo v6, "bg_broadcast_window"

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v3, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/android/server/am/AppBindServiceEventsTracker;

    invoke-direct {v7, p1, p0}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    new-instance v5, Lcom/android/server/am/AppBindServiceEventsTracker$AppBindServiceEventsPolicy;

    iget-object v6, v7, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    const-string/jumbo v8, "bg_bind_svc_monitor_enabled"

    const-string/jumbo v10, "bg_ex_bind_svc_threshold"

    const-string/jumbo v9, "bg_bind_svc_window"

    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v6, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/os/HandlerExecutor;

    iget-object p2, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    iget-object p2, p2, Lcom/android/server/am/AppRestrictionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-direct {p1, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController;->mExecutor:Landroid/os/HandlerExecutor;

    return-void
.end method

.method public static getRestrictionLevelStatsd(I)I
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_5

    const/16 v0, 0x14

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_3

    const/16 v0, 0x28

    if-eq p0, v0, :cond_2

    const/16 v0, 0x32

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x6

    return p0

    :cond_1
    const/4 p0, 0x5

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x3

    return p0

    :cond_4
    const/4 p0, 0x2

    return p0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addAppStateTracker(Lcom/android/server/am/BaseAppStateTracker;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;III)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v8, p3

    move/from16 v7, p5

    iget-object v3, v0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v9

    if-nez p4, :cond_0

    iget-object v3, v0, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    move-object v10, v3

    goto :goto_0

    :cond_0
    move-object/from16 v10, p4

    :goto_0
    iget-object v11, v0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionLevel(ILjava/lang/String;)I

    move-result v12

    if-ne v12, v8, :cond_1

    monitor-exit v11

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_1
    const/4 v13, 0x0

    const/16 v14, 0x2d

    const/16 v15, 0x28

    const/4 v3, 0x5

    const/16 v4, 0x14

    if-eq v7, v3, :cond_4

    const/16 v3, 0xa

    const/16 v5, 0x1e

    if-eq v7, v3, :cond_3

    if-eq v7, v4, :cond_3

    if-eq v7, v5, :cond_3

    if-eq v7, v15, :cond_3

    if-eq v7, v14, :cond_2

    const/16 v3, 0x32

    if-eq v7, v3, :cond_3

    move v4, v13

    goto :goto_1

    :cond_2
    move v4, v15

    goto :goto_1

    :cond_3
    move v4, v5

    :cond_4
    :goto_1
    const v16, 0xff00

    if-ne v4, v8, :cond_5

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-interface {v9, v1, v3, v4, v5}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBucketReason(Ljava/lang/String;IJ)I

    move-result v3

    if-eqz v3, :cond_5

    and-int v4, v3, v16

    and-int/lit16 v3, v3, 0xff

    move v6, v3

    move v5, v4

    goto :goto_2

    :cond_5
    move/from16 v5, p6

    move/from16 v6, p7

    :goto_2
    iget-object v3, v0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object v4, v3, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    iget-object v4, v4, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, v3, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    if-eqz v3, :cond_6

    iget v3, v3, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    goto :goto_3

    :cond_6
    const/16 v3, 0x100

    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    move v4, v8

    move v8, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->update(IIIILjava/lang/String;)V

    move-object v1, v6

    move v6, v5

    move v5, v4

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v11, 0x1

    if-lt v3, v15, :cond_d

    if-ge v12, v15, :cond_d

    if-eq v7, v14, :cond_b

    iget-object v4, v0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-boolean v4, v4, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    if-nez v4, :cond_8

    if-ne v3, v15, :cond_7

    goto :goto_4

    :cond_7
    move-object v7, v0

    move v9, v2

    move v8, v12

    move-object v12, v10

    move v10, v3

    goto/16 :goto_9

    :cond_8
    :goto_4
    iget-object v14, v0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_3
    iget-object v4, v0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseArrayMap;->indexOfKey(ILjava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_9

    iget-object v11, v0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    new-instance v0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;

    move v4, v2

    move v8, v3

    move-object v2, v9

    move-object v9, v10

    move v7, v12

    move-object v3, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppRestrictionController;Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;IIIIILcom/android/server/am/AppRestrictionController$TrackerInfo;)V

    move-object v10, v3

    move-object v3, v0

    move-object v0, v2

    move v2, v7

    move-object v7, v1

    move-object v1, v10

    move v10, v8

    move-object v12, v9

    move v9, v4

    invoke-virtual {v11, v9, v1, v3}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_9
    move-object v7, v0

    move-object v0, v9

    move v9, v2

    move v2, v12

    move-object v12, v10

    move v10, v3

    move v13, v11

    :goto_5
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v13, :cond_a

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-interface {v0, v1, v3, v5, v6}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;III)V

    :cond_a
    move v8, v2

    move v11, v13

    goto :goto_9

    :goto_6
    :try_start_4
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_b
    move-object v7, v0

    move v9, v2

    move v2, v12

    move-object v12, v10

    move v10, v3

    :cond_c
    move v8, v2

    goto :goto_9

    :cond_d
    move-object v7, v0

    move-object v0, v9

    move v9, v2

    move v2, v12

    move-object v12, v10

    move v10, v3

    if-lt v2, v15, :cond_c

    if-ge v10, v15, :cond_c

    iget-object v3, v7, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    iget-object v4, v7, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v9, v1}, Landroid/util/SparseArrayMap;->indexOfKey(ILjava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_e

    iget-object v4, v7, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    const/4 v13, 0x0

    invoke-virtual {v4, v9, v1, v13}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_8

    :cond_e
    :goto_7
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move v3, v2

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    and-int v4, v8, v16

    and-int/lit16 v8, v8, 0xff

    move/from16 v17, v8

    move v8, v3

    move v3, v4

    move/from16 v4, v17

    invoke-interface/range {v0 .. v6}, Lcom/android/server/usage/AppStandbyInternal;->maybeUnrestrictApp(Ljava/lang/String;IIIII)V

    goto :goto_9

    :goto_8
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :goto_9
    if-eqz v11, :cond_f

    if-eqz v8, :cond_f

    move-object/from16 v1, p1

    move v6, v5

    move-object v0, v7

    move v3, v8

    move v2, v9

    move v4, v10

    move-object v5, v12

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppRestrictionController;->logAppBackgroundRestrictionInfo(Ljava/lang/String;IIILcom/android/server/am/AppRestrictionController$TrackerInfo;I)V

    :cond_f
    return-void

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw v0

    :goto_a
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0
.end method

.method public final calcAppRestrictionLevel(Ljava/lang/String;IIIZZ)Landroid/util/Pair;
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppHibernationInternal:Lcom/android/server/apphibernation/AppHibernationService$LocalService;

    if-nez v1, :cond_0

    const-class v1, Lcom/android/server/apphibernation/AppHibernationService$LocalService;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/apphibernation/AppHibernationService$LocalService;

    iput-object v1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppHibernationInternal:Lcom/android/server/apphibernation/AppHibernationService$LocalService;

    :cond_0
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppHibernationInternal:Lcom/android/server/apphibernation/AppHibernationService$LocalService;

    iget-object v1, v1, Lcom/android/server/apphibernation/AppHibernationService$LocalService;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->isHibernatingForUser(Ljava/lang/String;I)Z

    move-result p2

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    if-eqz p2, :cond_1

    new-instance p0, Landroid/util/Pair;

    const/16 p1, 0x3c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_1
    const/4 p2, 0x5

    const/16 v2, 0x14

    const/4 v3, 0x0

    if-eq p4, p2, :cond_9

    iget-object p2, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-nez p2, :cond_2

    const-class p2, Lcom/android/server/AppStateTracker;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/AppStateTracker;

    iput-object p2, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    :cond_2
    iget-object p2, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-interface {p2, p3, p1}, Lcom/android/server/AppStateTracker;->isAppBackgroundRestricted(ILjava/lang/String;)Z

    move-result p2

    const/16 v0, 0x32

    if-eqz p2, :cond_3

    new-instance p0, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_3
    const/16 p2, 0x2d

    if-ne p4, p2, :cond_4

    const/16 p2, 0x28

    goto :goto_0

    :cond_4
    const/16 p2, 0x1e

    :goto_0
    if-eqz p6, :cond_8

    const/16 p4, 0x64

    invoke-virtual {p0, p3, p4, p1}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevelFromTackers(IILjava/lang/String;)Landroid/util/Pair;

    move-result-object p4

    iget-object p6, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p6, Ljava/lang/Integer;

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    if-ne p6, v2, :cond_5

    new-instance p0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_5
    if-le p6, p2, :cond_6

    iget-object p2, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, p2

    check-cast v3, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    move v2, p6

    goto :goto_1

    :cond_6
    move v2, p2

    :goto_1
    if-ne v2, v0, :cond_9

    if-eqz p5, :cond_7

    const/4 p2, 0x0

    iget-object p4, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    const/4 p5, 0x4

    invoke-virtual {p4, p5, p3, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_7
    invoke-virtual {p0, p3, v0, p1}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevelFromTackers(IILjava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    goto :goto_2

    :cond_8
    move v2, p2

    :cond_9
    :goto_2
    new-instance p0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final calcAppRestrictionLevelFromTackers(IILjava/lang/String;)Landroid/util/Pair;
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    move v2, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BaseAppStateTracker;

    iget-object v4, v4, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v4, v4, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/am/BaseAppStatePolicy;->getProposedRestrictionLevel(IILjava/lang/String;)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    move-object v3, v2

    move v2, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    invoke-virtual {v3}, Lcom/android/server/am/BaseAppStateTracker;->getType()I

    move-result p2

    invoke-virtual {v3, p1}, Lcom/android/server/am/BaseAppStateTracker;->getTrackerInfoForStatsd(I)[B

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/server/am/AppRestrictionController$TrackerInfo;-><init>(I[B)V

    :goto_1
    new-instance p1, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public getBackgroundHandlerThread()Landroid/os/HandlerThread;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public final getBackgroundRestrictionExemptionReason(I)I
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->getPotentialSystemExemptionReason(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    invoke-virtual {p0, p1, v5}, Lcom/android/server/am/AppRestrictionController;->getPotentialSystemExemptionReason(ILjava/lang/String;)I

    move-result v5

    if-eq v5, v1, :cond_1

    return v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    array-length v2, v0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    invoke-virtual {p0, p1, v4}, Lcom/android/server/am/AppRestrictionController;->getPotentialUserAllowedExemptionReason(ILjava/lang/String;)I

    move-result v4

    if-eq v4, v1, :cond_3

    return v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return v1
.end method

.method public final getPotentialSystemExemptionReason(I)I
    .locals 3

    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x33

    return p0

    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleAllowlist:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleExceptIdleAllowlist:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0x3f

    return p0

    :cond_2
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v1

    const-string/jumbo v2, "no_control_apps"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x143

    return p0

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    if-nez v0, :cond_4

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    :cond_4
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->isDeviceOwner(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p0, 0x37

    return p0

    :cond_5
    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->isProfileOwner(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p0, 0x38

    return p0

    :cond_6
    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result p0

    if-gtz p0, :cond_7

    const/16 p0, 0xa

    return p0

    :cond_7
    const/4 p1, 0x1

    if-gt p0, p1, :cond_8

    const/16 p0, 0xb

    return p0

    :cond_8
    const/4 p0, -0x1

    return p0

    :cond_9
    :goto_0
    const/16 p0, 0x12c

    return p0
.end method

.method public final getPotentialSystemExemptionReason(ILjava/lang/String;)I
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, -0x1

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v5}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iget-object v7, v6, Lcom/android/server/am/AppRestrictionController$Injector;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v7, :cond_0

    iget-object v7, v6, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    const-class v8, Landroid/app/AppOpsManager;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager;

    iput-object v7, v6, Lcom/android/server/am/AppRestrictionController$Injector;->mAppOpsManager:Landroid/app/AppOpsManager;

    :cond_0
    iget-object v6, v6, Lcom/android/server/am/AppRestrictionController$Injector;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v7, v0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iget-object v7, v7, Lcom/android/server/am/AppRestrictionController$Injector;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    iget-object v7, v7, Lcom/android/server/am/AppRestrictionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    iget-object v9, v0, Lcom/android/server/am/AppRestrictionController;->mSystemModulesCache:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_0
    iget-object v10, v0, Lcom/android/server/am/AppRestrictionController;->mSystemModulesCache:Ljava/util/HashMap;

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    const/4 v11, 0x0

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    monitor-exit v9

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    :cond_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v9, v0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iget-object v9, v9, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    :try_start_1
    invoke-virtual {v9, v1, v11}, Landroid/content/pm/PackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v10
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v10, :cond_2

    move v10, v3

    goto :goto_0

    :catch_0
    :cond_2
    move v10, v11

    :goto_0
    if-nez v10, :cond_4

    :try_start_2
    invoke-virtual {v9, v1, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v9, :cond_3

    move v9, v3

    goto :goto_1

    :cond_3
    move v9, v11

    :goto_1
    move v10, v9

    :catch_1
    :cond_4
    iget-object v12, v0, Lcom/android/server/am/AppRestrictionController;->mSystemModulesCache:Ljava/util/HashMap;

    monitor-enter v12

    :try_start_3
    iget-object v9, v0, Lcom/android/server/am/AppRestrictionController;->mSystemModulesCache:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    if-eqz v10, :cond_5

    const/16 v0, 0x140

    return v0

    :cond_5
    iget-object v9, v0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_4
    iget-object v10, v0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedApps:Landroid/util/SparseArray;

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    sub-int/2addr v10, v3

    :goto_3
    if-ltz v10, :cond_7

    iget-object v12, v0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedApps:Landroid/util/SparseArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    monitor-exit v9

    move v9, v3

    goto :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_f

    :cond_6
    add-int/2addr v10, v2

    goto :goto_3

    :cond_7
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v9, v11

    :goto_4
    if-eqz v9, :cond_8

    const/16 v0, 0x141

    return v0

    :cond_8
    iget-object v9, v0, Lcom/android/server/am/AppRestrictionController;->mBgRestrictionExemptioFromSysConfig:Landroid/util/ArraySet;

    if-eqz v9, :cond_9

    invoke-virtual {v9, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    move v9, v3

    goto :goto_5

    :cond_9
    move v9, v11

    :goto_5
    if-eqz v9, :cond_a

    goto :goto_6

    :cond_a
    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgRestrictionExemptedPackages:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_6
    const/16 v0, 0x12c

    return v0

    :cond_b
    check-cast v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v0, v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v0, v8, v1}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x142

    return v0

    :cond_c
    invoke-interface {v5, v1, v8}, Lcom/android/server/usage/AppStandbyInternal;->isActiveDeviceAdmin(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x144

    return v0

    :cond_d
    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagSystemExemptPowerRestrictionsEnabled:Z

    if-eqz v0, :cond_e

    const/16 v0, 0x80

    move/from16 v4, p1

    invoke-virtual {v6, v0, v4, v1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    const/16 v0, 0x147

    return v0

    :cond_e
    sget-object v0, Lcom/android/server/am/mars/database/MARsListManager;->HEALTH_KEY_LIST:Ljava/util/List;

    sget-object v0, Lcom/android/server/am/mars/database/MARsListManager$ListManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsListManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBManager;

    iget-object v4, v4, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    :try_start_5
    invoke-virtual {v4, v1, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_8

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v6

    const-string/jumbo v7, "MARsListManager"

    if-nez v6, :cond_12

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v6

    if-nez v6, :cond_12

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v5

    if-nez v5, :cond_12

    const-string/jumbo v5, "com.sec.android.app.shealth"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    const-string v6, "0123456789abcdef"

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    :try_start_6
    const-string/jumbo v8, "SHA-256"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    const/16 v9, 0x40

    invoke-virtual {v4, v5, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v9, v4

    move v10, v11

    :goto_7
    if-ge v10, v9, :cond_13

    aget-object v12, v4, v10

    invoke-virtual {v12}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    array-length v14, v12

    mul-int/lit8 v14, v14, 0x2

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v14, v12

    move v15, v11

    :goto_8
    if-ge v15, v14, :cond_f

    aget-byte v16, v12, v15
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    shr-int/lit8 v17, v16, 0x4

    and-int/lit8 v17, v17, 0xf

    move/from16 v18, v2

    :try_start_7
    aget-char v2, v6, v17

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v16, 0xf

    aget-char v2, v6, v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v15, v3

    move/from16 v2, v18

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_a

    :catch_4
    move-exception v0

    goto :goto_b

    :catch_5
    move-exception v0

    move/from16 v18, v2

    goto :goto_9

    :catch_6
    move-exception v0

    move/from16 v18, v2

    goto :goto_a

    :catch_7
    move-exception v0

    move/from16 v18, v2

    goto :goto_b

    :cond_f
    move/from16 v18, v2

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v12, Lcom/android/server/am/mars/database/MARsListManager;->HEALTH_KEY_LIST:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_d

    :cond_10
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    add-int/2addr v10, v3

    move/from16 v2, v18

    goto :goto_7

    :goto_9
    const-string/jumbo v1, "Unexpected error : "

    invoke-static {v0, v1, v7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "MessageDigest SHA-256 not found."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Package name: com.sec.android.app.shealth cannot be found."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_c
    move v3, v11

    goto :goto_e

    :cond_12
    move/from16 v18, v2

    :goto_d
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsListManager;->mFgsExemptionPackages:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is exempted from MARs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :catch_8
    :cond_13
    move/from16 v18, v2

    goto :goto_c

    :goto_e
    if-eqz v3, :cond_14

    const/16 v0, 0x15e

    return v0

    :cond_14
    return v18

    :goto_f
    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    :goto_10
    :try_start_a
    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v0
.end method

.method public final getPotentialUserAllowedExemptionReason(ILjava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppOpsManager:Landroid/app/AppOpsManager;

    :cond_0
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const/16 p0, 0x44

    return p0

    :cond_1
    const/16 v2, 0x5e

    invoke-virtual {v1, v2, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_2

    const/16 p0, 0x45

    return p0

    :cond_2
    const-string/jumbo p2, "android.app.role.DIALER"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController;->isRoleHeldByUid(ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p0, 0x13e

    return p0

    :cond_3
    const-string/jumbo p2, "android.app.role.EMERGENCY"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController;->isRoleHeldByUid(ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/16 p0, 0x13f

    return p0

    :cond_4
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mDeviceIdleAllowlist:[I

    invoke-static {v1, p2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-gez v1, :cond_8

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mDeviceIdleExceptIdleAllowlist:[I

    invoke-static {p0, p2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    if-ltz p0, :cond_5

    goto :goto_0

    :cond_5
    iget-object p0, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    if-nez p0, :cond_6

    const-class p0, Landroid/app/ActivityManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    iput-object p0, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    :cond_6
    iget-object p0, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/app/ActivityManagerInternal;->isAssociatedCompanionApp(II)Z

    move-result p0

    if-eqz p0, :cond_7

    const/16 p0, 0x39

    return p0

    :cond_7
    const/4 p0, -0x1

    return p0

    :cond_8
    :goto_0
    const/16 p0, 0x41

    return p0
.end method

.method public final getUidBatteryExemptedUsageSince(IIJJ)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .locals 8

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppBatteryExemptionTracker:Lcom/android/server/am/AppBatteryExemptionTracker;

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast v0, Lcom/android/server/am/AppBatteryExemptionTracker$AppBatteryExemptionPolicy;

    iget-boolean v0, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    const-string v2, ""

    invoke-virtual {v0, p1, v2}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;

    if-nez v2, :cond_1

    sget-object p0, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_1
    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;->getBatteryUsageSince(IJJ)Landroid/util/Pair;

    move-result-object p2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p3, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    const/4 p4, 0x0

    :goto_0
    iget-object p5, p3, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    array-length p6, p5

    if-ge p4, p6, :cond_3

    aget-wide p5, p5, p4

    const-wide/16 v0, 0x0

    cmpl-double p5, p5, v0

    if-lez p5, :cond_2

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->getUidBatteryUsage(I)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object p0

    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {p3, p1}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    invoke-virtual {p3, p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    iget-object p0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-virtual {p3, p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->subtract(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    new-instance p0, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-direct {p0, p3}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    return-object p0

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getUidBatteryUsage(I)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .locals 3

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppBatteryTracker:Lcom/android/server/am/AppBatteryTracker;

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsIfNecessary(JZ)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker;->scheduleBgBatteryUsageStatsCheck()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    if-eqz p0, :cond_1

    new-instance p1, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-direct {p1, p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    :goto_1
    monitor-exit v1

    return-object p1

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleUidInactive(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mTmpRunnables:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result p1

    if-gez p1, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    if-eqz v5, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/SparseArrayMap;->deleteAt(I)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_1
    if-ge v3, p0, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final hasForegroundServices(ILjava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    if-eqz p0, :cond_0

    sget p1, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final initRestrictionStates()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUser(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->scheduleLoadFromXml()V

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v4, v3}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->schedulePersistToXml(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final isRoleHeldByUid(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final loadAppIdsFromPackageList(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/high16 v2, 0x100000

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final logAppBackgroundRestrictionInfo(Ljava/lang/String;IIILcom/android/server/am/AppRestrictionController$TrackerInfo;I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p5

    move/from16 v3, p6

    invoke-static {v1}, Lcom/android/server/am/AppRestrictionController;->getRestrictionLevelStatsd(I)I

    move-result v4

    const/16 v5, 0x400

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v3, v5, :cond_1

    const/16 v5, 0x600

    if-eq v3, v5, :cond_0

    move v3, v7

    goto :goto_0

    :cond_0
    move v3, v8

    goto :goto_0

    :cond_1
    move v3, v6

    :goto_0
    iget v5, v2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mType:I

    const/4 v9, 0x6

    const/4 v10, 0x7

    const/4 v11, 0x3

    packed-switch v5, :pswitch_data_0

    move v12, v7

    goto :goto_1

    :pswitch_0
    move v12, v10

    goto :goto_1

    :pswitch_1
    move v12, v9

    goto :goto_1

    :pswitch_2
    const/4 v12, 0x5

    goto :goto_1

    :pswitch_3
    const/4 v12, 0x4

    goto :goto_1

    :pswitch_4
    move v12, v11

    goto :goto_1

    :pswitch_5
    move v12, v6

    goto :goto_1

    :pswitch_6
    move v12, v8

    :goto_1
    const/4 v13, 0x0

    iget-object v2, v2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mInfo:[B

    if-ne v5, v11, :cond_2

    move-object v14, v2

    goto :goto_2

    :cond_2
    move-object v14, v13

    :goto_2
    move v15, v6

    if-ne v5, v8, :cond_3

    move-object v6, v2

    goto :goto_3

    :cond_3
    move-object v6, v13

    :goto_3
    if-ne v5, v9, :cond_4

    move-object v9, v2

    goto :goto_4

    :cond_4
    move-object v9, v13

    :goto_4
    if-ne v5, v10, :cond_5

    move-object v13, v2

    :cond_5
    const/16 v2, 0x14

    if-eq v1, v2, :cond_6

    move/from16 v2, p2

    move v5, v8

    goto :goto_5

    :cond_6
    move/from16 v2, p2

    invoke-virtual {v0, v2}, Lcom/android/server/am/AppRestrictionController;->getBackgroundRestrictionExemptionReason(I)I

    move-result v5

    invoke-static {v5}, Landroid/os/PowerExemptionManager;->getExemptionReasonForStatsd(I)I

    move-result v5

    :goto_5
    const/16 v10, 0xa

    if-eq v1, v10, :cond_9

    const/16 v10, 0x1e

    if-eq v1, v10, :cond_8

    const/16 v10, 0x32

    if-eq v1, v10, :cond_7

    move v10, v7

    goto :goto_6

    :cond_7
    move v10, v15

    goto :goto_6

    :cond_8
    move v10, v8

    goto :goto_6

    :cond_9
    move v10, v11

    :goto_6
    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_b

    :catch_0
    :cond_a
    :goto_7
    move v2, v4

    move v11, v7

    :goto_8
    move v4, v12

    goto :goto_9

    :cond_b
    move-object/from16 v1, p1

    :try_start_0
    invoke-virtual {v0, v1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_c

    goto :goto_7

    :cond_c
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_d

    move v2, v4

    move v11, v8

    goto :goto_8

    :cond_d
    const/16 v1, 0x21

    if-ge v0, v1, :cond_e

    move v2, v4

    move v4, v12

    move v11, v15

    goto :goto_9

    :cond_e
    if-ne v0, v1, :cond_a

    move v2, v4

    goto :goto_8

    :goto_9
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v12

    invoke-static/range {p3 .. p3}, Lcom/android/server/am/AppRestrictionController;->getRestrictionLevelStatsd(I)I

    move-result v0

    move-object v8, v13

    move v13, v0

    const/16 v0, 0x1b9

    move/from16 v1, p2

    move-object v7, v9

    move v9, v5

    move-object v5, v14

    invoke-static/range {v0 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIII[B[B[B[BIIIZI)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getRoleManager()Landroid/app/role/RoleManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-wide/32 v4, 0xc8000

    invoke-virtual {v2, v3, v4, v5, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_4

    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-eq v4, p2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-ltz v5, :cond_2

    if-nez v6, :cond_3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_3
    if-ltz p2, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_5
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onSystemReady()V
    .locals 11

    const-string/jumbo v0, "activity_manager"

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBgExecutor:Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgAutoRestrictedBucketChanged()V

    const-string/jumbo v1, "bg_auto_restrict_abusive_apps"

    const-string/jumbo v2, "activity_manager"

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictAbusiveApps:Z

    const-string/jumbo v1, "bg_abusive_notification_minimal_interval"

    const-string/jumbo v2, "activity_manager"

    const-wide v3, 0x9a7ec800L

    invoke-static {v2, v1, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAbusiveNotificationMinIntervalMs:J

    const-string/jumbo v1, "bg_long_fgs_notification_minimal_interval"

    const-string/jumbo v2, "activity_manager"

    invoke-static {v2, v1, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgLongFgsNotificationMinIntervalMs:J

    const-string/jumbo v1, "bg_prompt_fgs_with_noti_to_bg_restricted"

    iget-boolean v2, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mDefaultBgPromptFgsWithNotiToBgRestricted:Z

    const-string/jumbo v3, "activity_manager"

    invoke-static {v3, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsWithNotiToBgRestricted:Z

    const-string/jumbo v1, "bg_prompt_fgs_with_noti_on_long_running"

    const-string/jumbo v2, "activity_manager"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsWithNotiOnLongRunning:Z

    const-string/jumbo v1, "bg_prompt_fgs_on_long_running"

    const-string/jumbo v2, "activity_manager"

    invoke-static {v2, v1, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsOnLongRunning:Z

    const-string/jumbo v1, "bg_prompt_abusive_apps_to_bg_restricted"

    iget-boolean v2, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mDefaultBgPromptAbusiveAppToBgRestricted:Z

    const-string/jumbo v4, "activity_manager"

    invoke-static {v4, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptAbusiveAppsToBgRestricted:Z

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgRestrictionExemptedPackages()V

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/SystemConfig;->mBgRestrictionExemption:Landroid/util/ArraySet;

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBgRestrictionExemptioFromSysConfig:Landroid/util/ArraySet;

    iget-object v1, v0, Lcom/android/server/SystemConfig;->mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleExceptIdleAllowlist:Landroid/util/ArraySet;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/AppRestrictionController;->loadAppIdsFromPackageList(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mAllowInPowerSave:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleAllowlist:Landroid/util/ArraySet;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppRestrictionController;->loadAppIdsFromPackageList(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->initRestrictionStates()V

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getInstalledModules(I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mSystemModulesCache:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ModuleInfo;

    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController;->mSystemModulesCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v1

    sget-object v2, Lcom/android/server/am/AppRestrictionController;->ROLES_IN_INTEREST:[Ljava/lang/String;

    move v4, v3

    :goto_2
    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    aget-object v5, v2, v4

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getRoleManager()Landroid/app/role/RoleManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    array-length v6, v1

    move v7, v3

    :goto_3
    if-ge v7, v6, :cond_2

    aget v8, v1, v7

    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {p0, v5, v8}, Lcom/android/server/am/AppRestrictionController;->onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mUidObserver:Lcom/android/server/am/AppRestrictionController$5;

    const-string/jumbo v2, "android"

    const/16 v3, 0xf

    const/4 v4, 0x4

    invoke-interface {v0, v1, v3, v4, v2}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mBroadcastReceiver:Lcom/android/server/am/AppRestrictionController$1;

    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.UID_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mBroadcastReceiver:Lcom/android/server/am/AppRestrictionController$1;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController;->mBootReceiver:Lcom/android/server/am/AppRestrictionController$1;

    sget-object v7, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mBroadcastReceiver:Lcom/android/server/am/AppRestrictionController$1;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->registerCarrierPrivilegesCallbacks()V

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mActionButtonReceiver:Lcom/android/server/am/AppRestrictionController$1;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.android.server.am.ACTION_FGS_MANAGER_TRAMPOLINE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    iget-object v5, v0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    const/4 v6, 0x4

    const-string/jumbo v4, "android.permission.MANAGE_ACTIVITY_TASKS"

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-nez v1, :cond_4

    const-class v1, Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppStateTracker;

    iput-object v1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    :cond_4
    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBackgroundRestrictionListener:Lcom/android/server/am/AppRestrictionController$3;

    invoke-interface {v0, v1}, Lcom/android/server/AppStateTracker;->addBackgroundRestrictedAppListener(Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;)V

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppIdleStateChangeListener:Lcom/android/server/am/AppRestrictionController$4;

    invoke-interface {v0, v1}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getRoleManager()Landroid/app/role/RoleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mExecutor:Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mRoleHolderChangedListener:Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda1;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    new-instance v2, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_4
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final refreshAppRestrictionLevelForUid(IIIZ)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iget-object v2, v1, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v9

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    array-length v15, v8

    const/4 v1, 0x0

    move v7, v1

    :goto_0
    if-ge v7, v15, :cond_1

    aget-object v1, v8, v7

    const/4 v14, 0x0

    move-object v10, v1

    invoke-interface/range {v9 .. v14}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    move-result v4

    const/4 v6, 0x1

    move/from16 v5, p4

    move v2, v11

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevel(Ljava/lang/String;IIIZZ)Landroid/util/Pair;

    move-result-object v6

    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    move/from16 v2, p1

    move/from16 v6, p2

    move v5, v4

    move v10, v7

    move/from16 v7, p3

    move-object v4, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;III)V

    add-int/lit8 v7, v10, 0x1

    move/from16 v3, p1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final refreshAppRestrictionLevelForUser(I)V
    .locals 14

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBuckets(I)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/AppStandbyInfo;

    iget-object v3, v2, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    const-wide/32 v4, 0xc8000

    invoke-virtual {v0, v3, v4, v5, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v8

    if-gez v8, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unable to find "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/u"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v7, v2, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    iget v10, v2, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    move v9, v8

    move v8, p1

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevel(Ljava/lang/String;IIIZZ)Landroid/util/Pair;

    move-result-object p0

    move v8, v9

    iget-object v7, v2, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v10, p0

    check-cast v10, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    iget v11, v2, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    const/16 v12, 0x400

    const/4 v13, 0x2

    invoke-virtual/range {v6 .. v13}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;III)V

    move-object p0, v6

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final registerCarrierPrivilegesCallbacks()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    new-instance v4, Lcom/android/server/am/AppRestrictionController$PhoneCarrierPrivilegesCallback;

    invoke-direct {v4, p0, v3}, Lcom/android/server/am/AppRestrictionController$PhoneCarrierPrivilegesCallback;-><init>(Lcom/android/server/am/AppRestrictionController;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController;->mExecutor:Landroid/os/HandlerExecutor;

    invoke-virtual {v0, v3, v5, v4}, Landroid/telephony/TelephonyManager;->registerCarrierPrivilegesCallback(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method public resetRestrictionSettings()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->reset()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->initRestrictionStates()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public tearDown()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    invoke-static {v0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mUidObserver:Lcom/android/server/am/AppRestrictionController$5;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBroadcastReceiver:Lcom/android/server/am/AppRestrictionController$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBootReceiver:Lcom/android/server/am/AppRestrictionController$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->removeXml()V

    return-void
.end method
