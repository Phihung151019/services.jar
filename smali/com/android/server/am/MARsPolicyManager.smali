.class public Lcom/android/server/am/MARsPolicyManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static App_StartUp_History:Z

.field public static ENABLE_KILL_LONG_RUNNING_PROCESS:Z

.field public static final FGS_BATTERY_USAGE_THRESHOLD:I

.field public static GlobalModelWithChinaSIM:Z

.field public static final MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

.field public static MARs_ENABLE:Z

.field public static final SMART_MANAGER_PKG_NAME:Ljava/lang/String;

.field public static isChinaModel:Z


# instance fields
.field public ENABLE_RESTRICTED_BUCKET:Z

.field public KEEP_NO_FILTER_MIN_DURATION:J

.field public THRESHOLD_POWER_USAGE:D

.field public THRESHOLD_POWER_USAGE_BACKUP:D

.field public appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field public autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field public disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field public freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field public gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field public isTimeChangedForDebug:Z

.field public mAllPoliciesOn:I

.field public mAm:Lcom/android/server/am/ActivityManagerService;

.field public mAppOpsService:Lcom/android/server/appop/AppOpsService;

.field public mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

.field public mAutoDeepSleepTimeForDebug:J

.field public final mAutoDisabledLockingTime:J

.field public final mBackupExpirationUptimeMap:Ljava/util/HashMap;

.field public mCarModeOn:Z

.field public mContext:Landroid/content/Context;

.field public final mCtsGtsList:Ljava/util/Set;

.field public mCurrentUserId:I

.field public mDualAppEnabled:Z

.field public mDualAppUserId:I

.field public mEnabledProfileUserIds:[I

.field public final mFGServiceStartTimeMap:Ljava/util/HashMap;

.field public mFilterHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

.field public mFirstTimeUpdatePackages:Z

.field public mHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

.field public mInitDisabledPackage:Z

.field public mIsDeviceIdleMode:Z

.field public mIsLastNotiSentTimeForDisabledDismiss:Z

.field public mIsManualMode:Z

.field public mLastNotiSentTimeForDisabled:J

.field public mLastPkgName:Ljava/lang/String;

.field public mLastUid:I

.field public mLastUpdateTime:J

.field public final mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

.field public final mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

.field public mNMs:Landroid/os/INetworkManagementService;

.field public final mNeedtoDisablePackages:Ljava/util/ArrayList;

.field public final mPowerSaveAllowListSelfLocked:Ljava/util/HashSet;

.field public final mScpmList:Ljava/util/HashSet;

.field public mScreenOn:Z

.field public final mTempRestrictBindUidMap:Ljava/util/HashMap;

.field public sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string/jumbo v2, "com.samsung.android.lool"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MARsPolicyManager;->SMART_MANAGER_PKG_NAME:Ljava/lang/String;

    new-instance v0, Lcom/android/server/am/MARsPolicyManager$Lock;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->ENABLE_KILL_LONG_RUNNING_PROCESS:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    const/16 v0, 0x64

    sput v0, Lcom/android/server/am/MARsPolicyManager;->FGS_BATTERY_USAGE_THRESHOLD:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    const/16 v1, -0xa

    iput v1, p0, Lcom/android/server/am/MARsPolicyManager;->mLastUid:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/MARsPolicyManager;->mLastUpdateTime:J

    new-array v3, v0, [I

    iput-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mBackupExpirationUptimeMap:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmList:Ljava/util/HashSet;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mNeedtoDisablePackages:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/server/am/mars/database/MARsListManager;->HEALTH_KEY_LIST:Ljava/util/List;

    sget-object v3, Lcom/android/server/am/mars/database/MARsListManager$ListManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsListManager;

    iget-object v3, v3, Lcom/android/server/am/mars/database/MARsListManager;->mCtsGtsList:Ljava/util/Set;

    iput-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mCtsGtsList:Ljava/util/Set;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    const-wide/32 v4, 0x5265c00

    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->KEEP_NO_FILTER_MIN_DURATION:J

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mTempRestrictBindUidMap:Ljava/util/HashMap;

    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsDeviceIdleMode:Z

    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    iput v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAllPoliciesOn:I

    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    new-instance v3, Lcom/android/server/am/MARsPkgMap;

    invoke-direct {v3}, Lcom/android/server/am/MARsPkgMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    new-instance v3, Lcom/android/server/am/MARsPkgMap;

    invoke-direct {v3}, Lcom/android/server/am/MARsPkgMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    const-wide/32 v3, 0x5265c000

    iput-wide v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAutoDisabledLockingTime:J

    iput-wide v1, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsLastNotiSentTimeForDisabledDismiss:Z

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    iput-wide v3, p0, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE:D

    iput-wide v3, p0, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE_BACKUP:D

    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    iput-wide v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAutoDeepSleepTimeForDebug:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const-string/jumbo v0, "persist.sys.bub_onoff"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mPowerSaveAllowListSelfLocked:Ljava/util/HashSet;

    return-void
.end method

.method public static checkFreezerExempt(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/am/mars/database/MARsListManager;->HEALTH_KEY_LIST:Ljava/util/List;

    sget-object v0, Lcom/android/server/am/mars/database/MARsListManager$ListManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsListManager;

    iget-object v1, v0, Lcom/android/server/am/mars/database/MARsListManager;->mGoogleFreezerExemptionList:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsListManager;->mGoogleFreezerExemptionList:Ljava/util/Set;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static convertLevelChangeInfoToString([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    aget-object v2, p0, v1

    const-string/jumbo v3, "[FRZ]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, " "

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p0, v1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v2, 0x2

    aget-object v5, p0, v2

    const-string/jumbo v6, "[FAS]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, p0, v2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v5, 0x3

    aget-object v7, p0, v5

    const-string/jumbo v8, "[FOS]"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, p0, v5

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/4 v7, 0x4

    aget-object v9, p0, v7

    const-string/jumbo v10, "[DIS]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    aget-object p0, p0, v7

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    aget-object p0, p1, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    aget-object p0, p1, v2

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    aget-object p0, p1, v5

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    aget-object p0, p1, v7

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    :cond_4
    const-string p0, " [IMP] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    aget-object p0, p1, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    aget-object p0, p1, v2

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    aget-object p0, p1, v5

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v5

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    aget-object p0, p1, v7

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    aget-object p0, p1, v7

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static disableAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFASEnabled:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :try_start_0
    const-string/jumbo v3, "package"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    if-ne v4, v0, :cond_1

    :cond_0
    invoke-interface {v3, v2, v1}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "Error occurred in getEnabledStateIfCanBeDisabled()"

    const-string/jumbo v5, "MARsPolicyManager"

    invoke-static {v3, v4, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v4, -0x1

    :goto_0
    if-ltz v4, :cond_2

    const/4 v3, 0x4

    const/4 v5, 0x0

    invoke-static {v1, v3, v5, v2}, Lcom/android/server/am/MARsPolicyManager;->setEnabledSetting(IIILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput v4, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableType:I

    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z

    iput v3, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->currentLevel:I

    :cond_2
    iget-boolean p0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z

    return p0
.end method

.method public static enableAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableType:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    invoke-static {v5, v0, v1, v4}, Lcom/android/server/am/MARsPolicyManager;->setEnabledSetting(IIILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput v2, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableType:I

    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z

    iput v3, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->currentLevel:I

    :cond_1
    iget-boolean p0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z

    xor-int/2addr p0, v1

    return p0
.end method

.method public static formatDateTimeWithoutYear(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "null"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%18s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MM/dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getChangedByUserFromReason(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "added_from_user_manual"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "added_from_anomaly_manual"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "deleted_from_user_manual"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static getInstance()Lcom/android/server/am/MARsPolicyManager;
    .locals 1

    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    return-object v0
.end method

.method public static getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/MARsPkgMap;->totalSize()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/MARsPkgMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/MARsPackageInfo;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasPermission(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    :try_start_0
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v3, v2, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v1, p0, v0}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    const-string/jumbo v0, "hasPermission exception:"

    const-string/jumbo v1, "MARsPolicyManager"

    invoke-static {v0, p0, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isAnomalyFGSPackage(I)Z
    .locals 5

    sget v0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->$r8$clinit:I

    sget-object v0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$ForegroundServiceMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    iget-object v0, v0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mMapFGSRecord:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/mars/ForegroundServiceRecord;

    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "type : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/mars/ForegroundServiceRecord;->mForegroundType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", using : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/mars/ForegroundServiceRecord;->mUsingForegroundType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isAnomalyFGS : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/mars/ForegroundServiceRecord;->mForegroundType:I

    not-int v2, v2

    iget v3, p0, Lcom/android/server/am/mars/ForegroundServiceRecord;->mUsingForegroundType:I

    and-int/2addr v2, v3

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string/jumbo v4, "MARsPolicyManager"

    invoke-static {v4, v0, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget v0, p0, Lcom/android/server/am/mars/ForegroundServiceRecord;->mForegroundType:I

    not-int v0, v0

    iget p0, p0, Lcom/android/server/am/mars/ForegroundServiceRecord;->mUsingForegroundType:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_1

    return v3

    :cond_1
    return v1
.end method

.method public static isChinaPolicyEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isDisabledByUser(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isTargetMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "equals"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const-string/jumbo v0, "contains"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    const-string/jumbo v0, "startsWith"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    const-string/jumbo v0, "endsWith"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    const-string/jumbo v0, "equalsIgnoreCase"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static onSpecialUnBindServiceActions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    goto/16 :goto_8

    :cond_0
    const-string/jumbo v0, "com.google.android.projection.gearhead"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$AndroidAutoFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;

    iget-object v1, v0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->userIdPackageListSelfLocked:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->userIdPackageListSelfLocked:Landroid/util/ArrayMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_1

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    monitor-exit v1

    goto :goto_1

    :cond_2
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->logExcludeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "FILTER 32 remove"

    invoke-static {v0, p1}, Lcom/android/server/am/mars/MARsUtils;->addFilterDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_1
    if-nez p2, :cond_4

    goto/16 :goto_8

    :cond_4
    const-string/jumbo v0, "android.intent.action.TTS_SERVICE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p3, :cond_6

    sget-object v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgs:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_2
    iget-object v3, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgs:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_5
    :goto_2
    monitor-exit v2

    goto :goto_4

    :goto_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_6
    :goto_4
    const-string/jumbo v0, "android.net.VpnService"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter$VPNPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->mVpnPkgs:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_3
    iget-object v3, v0, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->mVpnPkgs:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->mVpnPkgs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :catchall_2
    move-exception p0

    goto :goto_6

    :cond_7
    :goto_5
    monitor-exit v2

    goto :goto_7

    :goto_6
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :cond_8
    :goto_7
    const-string/jumbo v0, "android.service.notification.NotificationListenerService"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$OngoingNotiPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget-object v1, v0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mNLSPkgMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_9
    iget-object v0, v0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mNLSPkgMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const-string/jumbo p0, "android.service.wallpaper.WallpaperService"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    const-string/jumbo p0, "com.samsung.android.service.wallpaper.LiveWallpaperService"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    const-string/jumbo p0, "com.samsung.android.service.wallpaper.CoverWallpaperService"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    :cond_b
    const-string/jumbo p0, "android"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    sget-object p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter$WallPaperFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/WallPaperFilter;

    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mWallpaperPackageList:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_4
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mWallpaperPackageList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string p0, "FILTER 10 remove"

    invoke-static {p0, p1}, Lcom/android/server/am/mars/MARsUtils;->addFilterDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p2

    return-void

    :catchall_3
    move-exception p0

    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw p0

    :cond_c
    :goto_8
    return-void
.end method

.method public static resetAbusiveFlag(Lcom/android/server/am/MARsPackageInfo;)V
    .locals 5

    const/16 v0, 0x10

    const/16 v1, 0x8

    const-string/jumbo v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "resetAbusiveFlag uid:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pkgname:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    :try_start_0
    iget v3, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    and-int/lit8 v4, v3, 0x8

    if-ne v4, v1, :cond_0

    and-int/lit8 v1, v3, -0x9

    iput v1, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    :cond_0
    iget v1, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    and-int/lit8 v3, v1, 0x10

    if-ne v3, v0, :cond_1

    and-int/lit8 v0, v1, -0x11

    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget p0, p0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/FreecessController;->updateAbnormalAppFirewall(IZ)V

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setEnabledSetting(IIILjava/lang/String;)Z
    .locals 10

    const-string v1, "Error occurred in setEnabledSetting()"

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_0
    const-string/jumbo v7, "auto_disabler"

    move v6, p0

    move v4, p1

    move v5, p2

    move-object v3, p3

    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    const-string/jumbo p1, "MARsPolicyManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public static updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V
    .locals 1

    iget v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->fasType:I

    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    iget v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->state:I

    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->state:I

    iget-boolean v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z

    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    iget v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableType:I

    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    iget v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->currentLevel:I

    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    iget v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->maxLevel:I

    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    iget-boolean v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFASEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    iget-boolean v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isInRestrictedBucket:Z

    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->isInRestrictedBucket:Z

    iget p1, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableReason:I

    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    return-void
.end method

.method public static updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V
    .locals 1

    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    iput v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->fasType:I

    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->state:I

    iput v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->state:I

    iget-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    iput-boolean v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z

    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    iput v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableType:I

    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    iput v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->currentLevel:I

    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    iput v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->maxLevel:I

    iget-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    iput-boolean v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFASEnabled:Z

    iget-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->isInRestrictedBucket:Z

    iput-boolean v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isInRestrictedBucket:Z

    iget p0, p0, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    iput p0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableReason:I

    return-void
.end method


# virtual methods
.method public final addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MID:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_HIGH:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "] "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "]\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/HistoryBuffer;->put(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "]\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/server/am/mars/MARsHistoryBuffer$MARsHistoryBufferHolder;->INSTANCE:Lcom/android/server/am/mars/MARsHistoryBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-enter p1

    :try_start_0
    iget-object p2, p1, Lcom/android/server/am/mars/MARsHistoryBuffer;->buffer:[Ljava/lang/String;

    iget v0, p1, Lcom/android/server/am/mars/MARsHistoryBuffer;->pointer:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p1, Lcom/android/server/am/mars/MARsHistoryBuffer;->pointer:I

    aput-object p0, p2, v0

    iget p0, p1, Lcom/android/server/am/mars/MARsHistoryBuffer;->size:I

    if-lt v1, p0, :cond_3

    sget-object p0, Lcom/android/server/am/mars/MARsHistoryLog$MARsHistoryLogHolder;->INSTANCE:Lcom/android/server/am/mars/MARsHistoryLog;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/mars/MARsHistoryLog;->saveLogToFile(ZZ)V

    iput v0, p1, Lcom/android/server/am/mars/MARsHistoryBuffer;->pointer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    monitor-exit p1

    return-void

    :goto_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final addRestrictListAvoidAssoicationLaunch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v1, p2, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-object v1, p1, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v1, 0x3

    iput v1, p1, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v2, p1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v1, v3, v2}, Lcom/android/server/am/MARsPkgMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v2, p1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILcom/android/server/am/MARsPackageInfo;)V

    iget p1, p1, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->putBindTempRestrictionForForceStop(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final awakePackageList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    invoke-virtual {v4}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    sget-object v7, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v7

    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v8, v5, v6}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v5

    if-eqz v5, :cond_6

    iget v6, v5, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    const/4 v8, 0x4

    if-ne v6, v8, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_1
    iget-boolean v4, v5, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-nez v4, :cond_2

    const/4 v4, 0x1

    if-le v6, v4, :cond_3

    :cond_2
    const/16 v4, 0x100

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    sget-object v4, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    iget-object v6, v5, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v8, v5, Lcom/android/server/am/MARsPackageInfo;->uid:I

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9, v6}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(IILjava/lang/String;)V

    :cond_3
    invoke-static {p1}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    move-result v4

    iput v4, v5, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    iput-object p1, v5, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    const/4 v4, 0x0

    iput-object v4, v5, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v8, v5, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v9, v5, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v6, v9, v8}, Lcom/android/server/am/MARsPkgMap;->remove(ILjava/lang/String;)V

    new-instance v6, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    iget-object v8, v5, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    iget v8, v5, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    iget-boolean v8, v5, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-eqz v8, :cond_4

    const-string v9, "1"

    goto :goto_1

    :cond_4
    const-string v9, "0"

    :goto_1
    iput-object v9, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    if-eqz v8, :cond_5

    goto :goto_2

    :cond_5
    iget v4, v5, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    iput-object v4, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    iget v4, v5, Lcom/android/server/am/MARsPackageInfo;->state:I

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    iget-wide v8, v5, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    iget v4, v5, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    iget v4, v5, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableType:Ljava/lang/String;

    iget v4, v5, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, v5, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    monitor-exit v7

    goto/16 :goto_0

    :goto_4
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->enablePackageList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    sget-object p0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    :cond_9
    return-object v2
.end method

.method public final canRestrictBySEPWithoutPermissionCheck(IILjava/lang/String;)Z
    .locals 6

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p3, :cond_9

    invoke-virtual {p0, v0, p3}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez p1, :cond_4

    sget-object p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    sget-object p0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    const/16 p1, 0x15

    const/4 v5, 0x0

    invoke-virtual {p0, p1, p3, v5, p3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_3

    :cond_2
    :try_start_0
    const-string/jumbo p0, "package"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object p0

    invoke-interface {p0, p3, v0}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq p0, v3, :cond_9

    if-ne p0, v1, :cond_3

    goto :goto_3

    :cond_3
    sget-object p0, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x7

    invoke-static {p0, v0, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "MARsPolicyManager"

    const-string p2, "Exception "

    invoke-static {p0, p2, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_4
    if-ne p1, v4, :cond_5

    goto :goto_0

    :cond_5
    if-ne p1, v1, :cond_6

    goto :goto_0

    :cond_6
    if-ne p1, v3, :cond_9

    sget-object p1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter p1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {p0, p3, v0}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p0

    if-eqz p0, :cond_8

    sget-object v1, Lcom/android/server/am/mars/filter/filter/AllowListFilter$AllowListFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AllowListFilter;

    iget-object v3, p0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->isInDefaultAllowList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-boolean p0, p0, Lcom/android/server/am/MARsPackageInfo;->hasAppIcon:Z

    if-nez p0, :cond_7

    goto :goto_1

    :cond_7
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p0, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x6

    invoke-static {p0, v0, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_9

    :goto_0
    return v4

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_8
    :goto_1
    :try_start_2
    monitor-exit p1

    return v2

    :goto_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_9
    :goto_3
    return v2
.end method

.method public final cancelDisablePolicy(Ljava/lang/String;II)Z
    .locals 6

    const-string/jumbo v0, "cancelDisablePolicy "

    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v2, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v1

    return v3

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v2, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "|"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "|"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v2, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_6

    iget v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/16 v4, 0x8

    if-eq v0, v4, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v0, v2, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    const/4 v4, 0x1

    if-nez v0, :cond_2

    iget v0, v2, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-static {v0}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit v1

    return v4

    :cond_2
    iget v0, v2, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_0
    invoke-static {p2, v0, p3, p1}, Lcom/android/server/am/MARsPolicyManager;->setEnabledSetting(IIILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p3, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {p0, p2, p1, v3}, Lcom/android/server/am/MARsPolicyManager;->changeAutoDisabledAppState(ILjava/lang/String;Z)V

    return v4

    :cond_5
    return v3

    :cond_6
    :goto_1
    :try_start_1
    monitor-exit v1

    return v3

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final cancelPolicy(IILjava/lang/String;Z)V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v3, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v2, v3, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz v2, :cond_1

    const-string v8, "CancelPolicy"

    if-eqz p4, :cond_0

    sget-boolean p4, Lcom/android/server/am/FreecessController;->FASTOLAF_REDUCE_PROTECT_TIME:Z

    if-eqz p4, :cond_0

    const-wide/16 v4, 0x5dc

    :goto_0
    move-wide v6, v4

    move v4, p2

    move-object v5, p3

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :cond_0
    const-wide/16 v4, 0xbb8

    goto :goto_0

    :goto_1
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/FreecessController;->protectFreezePackage(ILjava/lang/String;JLjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    monitor-exit v1

    return-void

    :cond_1
    move v4, p2

    move-object v5, p3

    :cond_2
    iget-object p2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {p2, v5, v4}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p2

    const/4 p3, 0x0

    const/4 p4, 0x0

    if-eqz p2, :cond_7

    iget-object v2, p2, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/16 v3, 0x8

    if-eqz v2, :cond_6

    iget v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v2, p1, :cond_6

    if-eq p1, v3, :cond_3

    iput-object p3, p2, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput p4, p2, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    :cond_3
    const/4 v2, 0x6

    if-ne p1, v2, :cond_4

    iput p4, p2, Lcom/android/server/am/MARsPackageInfo;->sbike:I

    :cond_4
    if-ne p1, v3, :cond_6

    iget-boolean v2, p2, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    if-nez v2, :cond_5

    iget v2, p2, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v2, p2, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-nez v2, :cond_7

    if-eq p1, v3, :cond_7

    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v2, p2, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget p2, p2, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {p1, p2, v2}, Lcom/android/server/am/MARsPkgMap;->remove(ILjava/lang/String;)V

    :cond_7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p1, p4

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_9

    sget-object p2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter p2

    :try_start_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v1, :cond_8

    iget-object v2, v1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v1, v1, Lcom/android/server/am/MARsPackageInfo;->userId:I

    goto :goto_3

    :cond_8
    const/4 v1, -0x1

    move-object v2, p3

    :goto_3
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0, v2, v1, p4}, Lcom/android/server/am/MARsPolicyManager;->cancelDisablePolicy(Ljava/lang/String;II)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_9
    return-void

    :goto_4
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final changeAutoDisabledAppState(ILjava/lang/String;Z)V
    .locals 5

    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v1, p2, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    iget-object v1, p1, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_5

    iget v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    iget v1, p1, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    move-result v1

    const/4 v3, 0x0

    const/16 v4, 0x400

    if-eqz v1, :cond_0

    invoke-virtual {p0, v4, p1}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    goto/16 :goto_4

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    if-eqz p3, :cond_1

    const/16 v1, 0x800

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    iput v2, p1, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4, p1}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    const/4 v1, 0x4

    iput v1, p1, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    :goto_0
    if-eqz p3, :cond_2

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p2, 0x2

    iput p2, p1, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-object p0, p1, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    goto :goto_1

    :cond_2
    iput v3, p1, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    iput-object p2, p1, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object p2, p1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget p3, p1, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {p0, p3, p2}, Lcom/android/server/am/MARsPkgMap;->remove(ILjava/lang/String;)V

    :goto_1
    const/4 p0, -0x1

    iput p0, p1, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    new-instance p0, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {p0}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    iget-object p2, p1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    iget p2, p1, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    iget-boolean p2, p1, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-eqz p2, :cond_3

    const-string p3, "1"

    goto :goto_2

    :cond_3
    const-string p3, "0"

    :goto_2
    iput-object p3, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    if-eqz p2, :cond_4

    const-string p2, "1"

    goto :goto_3

    :cond_4
    const-string p2, "0"

    :goto_3
    iput-object p2, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strNew:Ljava/lang/String;

    iget p2, p1, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    invoke-static {p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    iget-wide p2, p1, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    iget p2, p1, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    iget p2, p1, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableType:Ljava/lang/String;

    iget p2, p1, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-static {p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    iget p2, p1, Lcom/android/server/am/MARsPackageInfo;->state:I

    invoke-static {p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object p2

    :goto_4
    iput-boolean v3, p1, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_6

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    sget-object p0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeSpecificMsgToDBHandler(Lcom/android/server/am/mars/database/FASEntity;)V

    :cond_6
    return-void

    :goto_5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final checkUnusedTargetForDeepSleep()V
    .locals 16

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, v1, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit p0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MARsPolicyManager"

    const-string/jumbo v1, "Now manual mode is on, we will not update anything!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_2

    sub-long/2addr v4, v6

    iget-boolean v0, v1, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    if-eqz v0, :cond_1

    const-wide/16 v6, 0x2

    iget-wide v10, v1, Lcom/android/server/am/MARsPolicyManager;->mAutoDeepSleepTimeForDebug:J

    mul-long/2addr v10, v6

    goto :goto_0

    :cond_1
    const-wide/32 v10, 0x4d3f6400

    :goto_0
    cmp-long v0, v4, v10

    if-lez v0, :cond_d

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v0, v1, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    if-eqz v0, :cond_3

    iget-wide v5, v1, Lcom/android/server/am/MARsPolicyManager;->mAutoDeepSleepTimeForDebug:J

    goto :goto_1

    :cond_3
    iget-wide v5, v1, Lcom/android/server/am/MARsPolicyManager;->mAutoDisabledLockingTime:J

    :goto_1
    sget-object v7, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v7

    const/4 v0, 0x0

    move v10, v0

    :goto_2
    :try_start_1
    iget-object v11, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v11, v11, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v10, v11, :cond_8

    iget-object v11, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v11, v11, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArray;

    move v12, v0

    :goto_3
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v12, v13, :cond_7

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/MARsPackageInfo;

    iget v14, v13, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    const/16 v15, 0x100

    if-eq v14, v15, :cond_5

    iget-boolean v14, v13, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    if-nez v14, :cond_5

    iget v14, v13, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v1, v14}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v14

    if-eqz v14, :cond_5

    iget-wide v14, v13, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    cmp-long v14, v14, v8

    if-lez v14, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iget-wide v8, v13, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    sub-long/2addr v14, v8

    cmp-long v8, v14, v5

    if-gez v8, :cond_4

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_4
    sget-object v8, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    iget-object v9, v13, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v14, v13, Lcom/android/server/am/MARsPackageInfo;->userId:I

    iget v15, v13, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x6

    invoke-static {v8, v14, v15, v9}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    move-result v8

    if-nez v8, :cond_5

    new-instance v8, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    iget-object v9, v13, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v14, v13, Lcom/android/server/am/MARsPackageInfo;->uid:I

    iget v15, v13, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-direct {v8, v9, v14, v15}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Ljava/lang/String;II)V

    invoke-static {v13, v8}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_6

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_5
    add-int/lit8 v12, v12, 0x1

    const-wide/16 v8, 0x0

    goto :goto_3

    :cond_7
    add-int/lit8 v10, v10, 0x1

    const-wide/16 v8, 0x0

    goto :goto_2

    :cond_8
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v0

    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_b

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    iget-object v7, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iget v0, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    :try_start_2
    const-class v8, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v8, v0, v7}, Landroid/content/pm/PackageManagerInternal;->wasPackageStopped(ILjava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failed getPackageStoppedState : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "MARsPolicyManager"

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_7
    if-eqz v0, :cond_9

    goto :goto_9

    :cond_9
    sget-object v7, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v7

    :try_start_3
    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v8, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iget v6, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    invoke-static {v0, v8, v6}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v6, 0x4

    invoke-virtual {v1, v6, v0}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_a

    new-instance v6, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    iget-object v8, v0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    iget v8, v0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    iget v8, v0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    iget v8, v0, Lcom/android/server/am/MARsPackageInfo;->state:I

    invoke-static {v8}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_a

    :cond_a
    :goto_8
    monitor-exit v7

    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    :goto_a
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    sget-object v0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    :cond_c
    const-string/jumbo v0, "NOTI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "D-Candi:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void

    :goto_b
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method public final closeSocketsForUid(I)V
    .locals 4

    const-string v0, "Error occurred while closeSocketsForUid: "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mNMs:Landroid/os/INetworkManagementService;

    if-nez v3, :cond_0

    const-string/jumbo v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mNMs:Landroid/os/INetworkManagementService;

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mNMs:Landroid/os/INetworkManagementService;

    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->closeSocketsForUid(I)V
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
    const-string/jumbo p1, "MARsPolicyManager"

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

.method public final convertLevelToPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0

    :cond_1
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0

    :cond_3
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0

    :cond_4
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0
.end method

.method public final deletePkgInfoInMARs(Ljava/util/ArrayList;)V
    .locals 11

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deletePkgInfoInMARs size = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v2, v2, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    const/4 v3, 0x0

    if-ltz v2, :cond_3

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v4, v4, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    move v5, v3

    :goto_1
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsPackageInfo;

    move v7, v3

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/mars/database/FASEntity;

    new-instance v9, Lcom/android/server/am/MARsPackageInfo;

    invoke-direct {v9, v8}, Lcom/android/server/am/MARsPackageInfo;-><init>(Lcom/android/server/am/mars/database/FASEntity;)V

    iget-object v8, v6, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget-object v10, v9, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, v6, Lcom/android/server/am/MARsPackageInfo;->uid:I

    iget v10, v9, Lcom/android/server/am/MARsPackageInfo;->uid:I

    if-ne v8, v10, :cond_0

    iget-boolean v7, v6, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    iput-boolean v7, v9, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    invoke-virtual {v6, v9}, Lcom/android/server/am/MARsPackageInfo;->updatePackageInfo(Lcom/android/server/am/MARsPackageInfo;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/MARsPackageInfo;

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v4, p1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v2, v5, v4}, Lcom/android/server/am/MARsPkgMap;->remove(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v4, p1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v2, p1, v4}, Lcom/android/server/am/MARsPkgMap;->remove(ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    monitor-exit v1

    return-void

    :goto_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    return-void
.end method

.method public final disablePackageForSpecific(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    sget-object v3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v3

    :try_start_0
    iget-object v4, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    move-object/from16 v6, p2

    invoke-static {v4, v6, v2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    if-eqz v2, :cond_6

    const-string/jumbo v5, "added_from_anomaly_manual"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iput-boolean v4, v2, Lcom/android/server/am/MARsPackageInfo;->isSCPMTarget:Z

    :cond_0
    sget-boolean v5, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v5, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v7, v5, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz v7, :cond_1

    iget-object v7, v2, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v8, v2, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v5, v8, v7}, Lcom/android/server/am/FreecessController;->isFreezedPackage(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v2, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v8, v2, Lcom/android/server/am/MARsPackageInfo;->userId:I

    const-string/jumbo v9, "specificDisable"

    invoke-virtual {v5, v8, v7, v9}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    :cond_1
    :goto_0
    new-instance v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    iget-object v7, v2, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v8, v2, Lcom/android/server/am/MARsPackageInfo;->uid:I

    iget v9, v2, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-direct {v5, v7, v8, v9}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x2000

    invoke-virtual {v1, v7, v2}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v17

    invoke-static {v0}, Lcom/android/server/am/mars/database/FASTableContract;->convertDBValueToDisableReason(Ljava/lang/String;)I

    move-result v7

    iput v7, v2, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v7, "added_from_anomaly_manual"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move-object v7, v5

    iget-object v5, v1, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_2

    const/16 v8, 0x5a

    goto :goto_1

    :cond_2
    const/16 v8, 0x46

    :goto_1
    if-eqz v0, :cond_3

    const/4 v9, 0x5

    :goto_2
    move v10, v9

    goto :goto_3

    :cond_3
    const/4 v9, 0x6

    goto :goto_2

    :goto_3
    if-eqz v0, :cond_4

    const-string/jumbo v0, "anomaly"

    :goto_4
    move-object v11, v0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_4
    const-string/jumbo v0, "cleaner"

    goto :goto_4

    :goto_5
    const-wide/16 v13, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x3

    move-object v0, v7

    move/from16 v7, p1

    invoke-virtual/range {v5 .. v14}, Lcom/android/server/am/ActivityManagerService;->noteAppRestrictionEnabled(Ljava/lang/String;IIZILjava/lang/String;IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {v2, v0}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    sget-object v5, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager;->resetAbusiveFlag(Lcom/android/server/am/MARsPackageInfo;)V

    :cond_5
    move-object v5, v0

    goto :goto_7

    :goto_6
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_6
    move-object v5, v15

    move/from16 v17, v16

    :goto_7
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v17, :cond_9

    if-eqz v5, :cond_9

    :try_start_3
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v6

    iget-object v0, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iget v2, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    invoke-interface {v6, v0, v2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v4, :cond_9

    :cond_7
    iget-object v2, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iget v3, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    invoke-interface {v6, v2, v3}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v7, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iget v10, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    const-string/jumbo v11, "auto_disabler"

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-interface/range {v6 .. v11}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    iput v0, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableType:I

    iput-boolean v4, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_9

    :cond_8
    :goto_8
    move/from16 v16, v4

    goto :goto_a

    :goto_9
    const-string/jumbo v2, "MARsPolicyManager"

    const-string v3, "Error occurred in disable package : "

    invoke-static {v0, v3, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_a
    if-eqz v5, :cond_f

    if-eqz v16, :cond_f

    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    :try_start_4
    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v3, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iget v6, v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    invoke-static {v0, v3, v6}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    iget-object v3, v1, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-object v3, v0, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-object v3, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v5, v0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v6, v0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v3, v6, v5}, Lcom/android/server/am/MARsPkgMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_a

    iget-object v1, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v3, v0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v1, v3, v5, v0}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILcom/android/server/am/MARsPackageInfo;)V

    goto :goto_b

    :catchall_2
    move-exception v0

    goto :goto_e

    :cond_a
    :goto_b
    new-instance v1, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    iget-object v3, v0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    iget v3, v0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    iget-boolean v3, v0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-eqz v3, :cond_b

    const-string v5, "1"

    goto :goto_c

    :cond_b
    move-object v5, v15

    :goto_c
    iput-object v5, v1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    if-eqz v3, :cond_c

    const-string v3, "1"

    goto :goto_d

    :cond_c
    move-object v3, v15

    :goto_d
    iput-object v3, v1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strNew:Ljava/lang/String;

    iget v3, v0, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    if-ne v3, v4, :cond_d

    invoke-static {v3}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v15

    :cond_d
    iput-object v15, v1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    iget v3, v0, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-static {v3}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    iget v3, v0, Lcom/android/server/am/MARsPackageInfo;->state:I

    invoke-static {v3}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    iget v0, v0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v15

    :cond_e
    monitor-exit v2

    goto :goto_f

    :goto_e
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_f
    :goto_f
    if-eqz v15, :cond_10

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    sget-object v0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    invoke-virtual {v0, v15}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeSpecificMsgToDBHandler(Lcom/android/server/am/mars/database/FASEntity;)V

    :cond_10
    return v16

    :goto_10
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public final disablePackageList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager;->getChangedByUserFromReason(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x80

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    invoke-virtual {v3}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v6, v4, v3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    iget-boolean v8, v6, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    if-eqz v8, :cond_3

    iget v8, v6, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_3
    invoke-virtual {p0, v2, v6}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v8

    if-nez v8, :cond_4

    monitor-exit v5

    goto :goto_1

    :cond_4
    new-instance v9, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    iget-object v10, v6, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v11, v6, Lcom/android/server/am/MARsPackageInfo;->uid:I

    iget v12, v6, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-direct {v9, v10, v11, v12}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Ljava/lang/String;II)V

    invoke-static {v6, v9}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    move-object v9, v7

    :goto_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_1

    if-eqz v9, :cond_1

    sget-boolean v6, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v6, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v8, v6, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz v8, :cond_6

    invoke-virtual {v6, v3, v4}, Lcom/android/server/am/FreecessController;->isFreezedPackage(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string/jumbo v8, "manualDisable"

    invoke-virtual {v6, v3, v4, v8}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static {v9}, Lcom/android/server/am/MARsPolicyManager;->disableAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v6

    monitor-enter v5

    :try_start_1
    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v8, v4, v3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-static {v3, v9}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    if-eqz v6, :cond_7

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-object v4, v3, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v6, v3, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v8, v3, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v4, v8, v6}, Lcom/android/server/am/MARsPkgMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v6, v3, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v8, v3, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v4, v6, v8, v3}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILcom/android/server/am/MARsPackageInfo;)V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_7
    :goto_3
    new-instance v4, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    iget-object v6, v3, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    iget v6, v3, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    iget-boolean v6, v3, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-eqz v6, :cond_8

    const-string v8, "1"

    goto :goto_4

    :cond_8
    move-object v8, v7

    :goto_4
    iput-object v8, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    if-eqz v6, :cond_9

    iget v6, v3, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v7

    :cond_9
    iput-object v7, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    iget v6, v3, Lcom/android/server/am/MARsPackageInfo;->state:I

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    iget-wide v6, v3, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    iget v6, v3, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    iget v6, v3, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableType:Ljava/lang/String;

    iget v6, v3, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v3, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    monitor-exit v5

    goto/16 :goto_1

    :goto_5
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :goto_6
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_c

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    sget-object p0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    :cond_c
    return-object v1
.end method

.method public final disablePackageListForSpecific(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    invoke-virtual {v2}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    move-result v2

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/am/MARsPolicyManager;->disablePackageForSpecific(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "DIS_SPE "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " f: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "SEP"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public final dumpMARs(Ljava/io/PrintWriter;)V
    .locals 7

    const-string/jumbo v0, "mMARsTargetPackages --- size "

    const-string v1, "ENABLE_KILL_LONG_RUNNING_PROCESS="

    const-string/jumbo v2, "mLastNotiSentTimeForDisabled : "

    const-string v3, "ACTIVITY MANAGER MARs (dumpsys activity mars)\n"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    sget-object v3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v3

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    invoke-static {v5, v6}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->ENABLE_KILL_LONG_RUNNING_PROCESS:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Y"

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    const-string/jumbo v2, "N"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPkgMap;->totalSize()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v2, v2, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v2, v2, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    move v4, v0

    :goto_2
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v5, :cond_1

    invoke-virtual {v5, p1}, Lcom/android/server/am/MARsPackageInfo;->dumpStatus(Ljava/io/PrintWriter;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMARsRestrictedPackages --- size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPkgMap;->totalSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v0

    :goto_3
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v2, v2, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v2, v2, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    move v4, v0

    :goto_4
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v5, :cond_4

    invoke-virtual {v5, p1}, Lcom/android/server/am/MARsPackageInfo;->dumpRestrictedStatus(Ljava/io/PrintWriter;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, ""

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    iget-object p0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-eqz p0, :cond_7

    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string/jumbo p1, "MARsHandler"

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    :cond_7
    return-void

    :goto_5
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final dumpMARsCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "Filter -- freecess "

    array-length v0, v8

    const/4 v10, 0x1

    if-ne v0, v10, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/MARsPolicyManager;->dumpMARs(Ljava/io/PrintWriter;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/MARsPolicyManager;->dumpMARsHistory(Ljava/io/PrintWriter;)V

    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v1, v0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz v1, :cond_42

    invoke-virtual {v0, v7}, Lcom/android/server/am/FreecessController;->dumpFreecess(Ljava/io/PrintWriter;)V

    return-void

    :cond_0
    const-string/jumbo v0, "exempt_freeze"

    aget-object v2, v8, v10

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x2

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/am/mars/database/MARsListManager;->HEALTH_KEY_LIST:Ljava/util/List;

    sget-object v0, Lcom/android/server/am/mars/database/MARsListManager$ListManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsListManager;

    new-instance v2, Ljava/util/ArrayList;

    aget-object v3, v8, v11

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, v0, Lcom/android/server/am/mars/database/MARsListManager;->mGoogleFreezerExemptionList:Ljava/util/Set;

    monitor-enter v3

    :try_start_0
    iget-object v4, v0, Lcom/android/server/am/mars/database/MARsListManager;->mGoogleFreezerExemptionList:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "exemptionList : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/am/mars/database/MARsListManager;->mGoogleFreezerExemptionList:Ljava/util/Set;

    monitor-enter v4

    :try_start_1
    new-instance v3, Ljava/util/HashSet;

    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsListManager;->mGoogleFreezerExemptionList:Ljava/util/Set;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_1
    :goto_0
    const-string/jumbo v0, "tr_put"

    aget-object v2, v8, v10

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v12, 0x3

    if-eqz v0, :cond_3

    array-length v0, v8

    if-ge v0, v12, :cond_2

    const-string/jumbo v0, "usage: tr_put <uid>"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_2
    aget-object v0, v8, v11

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Temp-restricting u="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsPolicyManager;->putBindTempRestrictionForForceStop(I)V

    :cond_3
    const-string/jumbo v0, "tr_get"

    aget-object v2, v8, v10

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    array-length v0, v8

    if-ge v0, v12, :cond_4

    const-string/jumbo v0, "usage: tr_get <uid>"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_4
    aget-object v0, v8, v11

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsPolicyManager;->isUidBindTempRestricted(I)Z

    move-result v2

    const-string/jumbo v3, "u="

    const-string v4, " is "

    invoke-static {v0, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v2, :cond_5

    const-string/jumbo v2, "restricted."

    goto :goto_1

    :cond_5
    const-string/jumbo v2, "not restricted."

    :goto_1
    invoke-static {v0, v2, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_6
    const-string/jumbo v0, "dbtest"

    aget-object v2, v8, v10

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsDBManager;->getSCPMList()V

    :cond_7
    const-string/jumbo v0, "ct_on"

    aget-object v2, v8, v10

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;

    iput-boolean v10, v0, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ComponentTracker : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, v0, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    invoke-static {v2, v0, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    :cond_8
    const-string/jumbo v0, "ct_off"

    aget-object v2, v8, v10

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;

    iput-boolean v13, v0, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ComponentTracker : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, v0, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    invoke-static {v2, v0, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    :cond_9
    const-string/jumbo v0, "ct_onoff"

    aget-object v2, v8, v10

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;

    iget-boolean v2, v0, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    xor-int/2addr v2, v10

    iput-boolean v2, v0, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ComponentTracker : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, v0, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    invoke-static {v2, v0, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    :cond_a
    const-string/jumbo v0, "restrict_onoff"

    aget-object v2, v8, v10

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, v1, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    xor-int/2addr v0, v10

    iput-boolean v0, v1, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ENABLE_RESTRICTED_BUCKET : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    invoke-static {v0, v2, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    :cond_b
    const-string/jumbo v0, "bigdata"

    aget-object v2, v8, v10

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v2, Lcom/android/server/am/mars/MARsBigData$MARsBigDataHolder;->INSTANCE:Lcom/android/server/am/mars/MARsBigData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_4
    invoke-virtual {v2}, Lcom/android/server/am/mars/MARsBigData;->updateBigdataInfo()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    new-instance v0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;

    invoke-direct {v0}, Lcom/android/server/am/mars/MARsBigData$UsageInfo;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/server/am/mars/MARsBigData;->PLEVdata:Ljava/lang/String;

    :goto_2
    iget-object v0, v2, Lcom/android/server/am/mars/MARsBigData;->PLEVdata:Ljava/lang/String;

    if-eqz v0, :cond_c

    const-string/jumbo v3, "PLEV"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/mars/MARsBigData;->sendBigData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const-string/jumbo v0, "bstat"

    aget-object v2, v8, v10

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->getBatteryStats()V

    :cond_d
    const-string/jumbo v0, "disable"

    aget-object v2, v8, v10

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    array-length v0, v8

    if-ge v0, v12, :cond_f

    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_16

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    xor-int/2addr v0, v10

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsPolicyManager;->setPackageDisablerEnabled(Z)V

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->getPackageDisablerEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, "on"

    goto :goto_3

    :cond_e
    const-string/jumbo v0, "off"

    :goto_3
    const-string v2, "Disabler policy has been turned "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_f
    array-length v0, v8

    if-ne v0, v12, :cond_16

    aget-object v4, v8, v11

    if-nez v4, :cond_10

    const-string v0, "Disable will not work, please input proper packageName!"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_10
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    :try_start_5
    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v3, v1, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-static {v0, v4, v3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v0

    const/4 v3, -0x1

    if-eqz v0, :cond_11

    iget v5, v0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    iget-boolean v0, v0, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    goto :goto_4

    :cond_11
    move v5, v3

    move v0, v13

    :goto_4
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eq v5, v3, :cond_15

    if-eqz v0, :cond_12

    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager;->restrictBySEP(IILjava/lang/String;IZ)Z

    move-result v2

    move-object/from16 v1, p0

    goto :goto_5

    :cond_12
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager;->restrictBySEP(IILjava/lang/String;IZ)Z

    move-result v2

    :goto_5
    invoke-static {v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v2, :cond_14

    if-eqz v0, :cond_13

    const-string/jumbo v0, "enabled"

    goto :goto_6

    :cond_13
    const-string/jumbo v0, "disabled!"

    :goto_6
    const-string v2, " has been "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_14
    const-string v0, " is not in our target, we will not manage it!"

    :goto_7
    invoke-static {v3, v0, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_8

    :cond_15
    const-string/jumbo v0, "is not in our target, we will not manage it!"

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :cond_16
    :goto_8
    const-string/jumbo v0, "filter"

    aget-object v2, v8, v10

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_17

    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    aget-object v4, v8, v11

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v5, v8, v12

    aget-object v6, v8, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v9, 0x5

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v6, v9, v5}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_9

    :catch_1
    const-string/jumbo v0, "MARsPolicyManager"

    const-string/jumbo v3, "dumpMARsCommand(filter) parseInt error!"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    :goto_9
    const-string/jumbo v0, "longrunning"

    aget-object v3, v8, v10

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    array-length v0, v8

    if-lt v0, v12, :cond_1a

    const-string/jumbo v0, "on"

    aget-object v3, v8, v11

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    sput-boolean v10, Lcom/android/server/am/MARsPolicyManager;->ENABLE_KILL_LONG_RUNNING_PROCESS:Z

    goto :goto_a

    :cond_18
    const-string/jumbo v0, "off"

    aget-object v3, v8, v11

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sput-boolean v13, Lcom/android/server/am/MARsPolicyManager;->ENABLE_KILL_LONG_RUNNING_PROCESS:Z

    goto :goto_a

    :cond_19
    const-string/jumbo v0, "duration"

    aget-object v3, v8, v11

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    array-length v0, v8

    if-lt v0, v2, :cond_1a

    :try_start_8
    aget-object v0, v8, v12

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v3, v0

    iput-wide v3, v1, Lcom/android/server/am/MARsPolicyManager;->KEEP_NO_FILTER_MIN_DURATION:J
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_a

    :catch_2
    const-string/jumbo v0, "MARsPolicyManager"

    const-string/jumbo v3, "dumpMARsCommand(longrunning) parseInt error!"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "enable="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->ENABLE_KILL_LONG_RUNNING_PROCESS:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", d="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/server/am/MARsPolicyManager;->KEEP_NO_FILTER_MIN_DURATION:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1b
    const-string/jumbo v0, "fgsRunningTime"

    aget-object v3, v8, v10

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, v1, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_9
    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    iget-object v9, v1, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "uid="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", fgsRunningTime="

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v16, v3

    sub-long v2, v16, v14

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", fgsStartTime="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-wide/from16 v3, v16

    const/4 v2, 0x4

    const/4 v13, 0x0

    goto :goto_b

    :catchall_3
    move-exception v0

    goto :goto_c

    :cond_1c
    monitor-exit v5

    goto :goto_d

    :goto_c
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    :cond_1d
    :goto_d
    const-string/jumbo v0, "history"

    aget-object v2, v8, v10

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/MARsPolicyManager;->dumpMARsHistory(Ljava/io/PrintWriter;)V

    :cond_1e
    const-string/jumbo v0, "hold"

    aget-object v2, v8, v10

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string/jumbo v0, "release"

    aget-object v2, v8, v10

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_1f
    array-length v0, v8

    if-ge v0, v11, :cond_20

    const-string/jumbo v0, "hold/release requires at least 1 argument: uid"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_20
    aget-object v0, v8, v11

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v2, "hold"

    aget-object v3, v8, v10

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_21

    const-string v4, "Hold"

    goto :goto_e

    :cond_21
    const-string/jumbo v4, "Release"

    :goto_e
    const-string v5, " jobs by u="

    const-string v9, " calling by MARs."

    invoke-static {v0, v4, v5, v9, v3}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->restrictJobsByUid(IZ)V

    :cond_22
    const-string/jumbo v0, "level"

    aget-object v2, v8, v10

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    array-length v0, v8

    if-ge v0, v12, :cond_23

    const-string/jumbo v0, "MARstest -- need levelNum and packageName"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_13

    :cond_23
    array-length v0, v8

    const/4 v6, 0x4

    if-ne v0, v6, :cond_28

    :try_start_a
    aget-object v0, v8, v11

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "-a"

    aget-object v3, v8, v12

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_3

    const/4 v3, 0x0

    :goto_f
    :try_start_b
    iget-object v4, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v4, v4, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_26

    iget-object v4, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v4, v4, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    const/4 v5, 0x0

    :goto_10
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v5, v9, :cond_25

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v9, :cond_24

    iget-object v9, v9, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0, v9}, Lcom/android/server/am/MARsPolicyManager;->setMaxLevel(ILjava/lang/String;)V

    goto :goto_11

    :catchall_4
    move-exception v0

    goto :goto_12

    :cond_24
    :goto_11
    add-int/2addr v5, v10

    goto :goto_10

    :cond_25
    add-int/2addr v3, v10

    goto :goto_f

    :cond_26
    monitor-exit v2

    goto :goto_13

    :goto_12
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    throw v0

    :cond_27
    aget-object v2, v8, v12

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->setMaxLevel(ILjava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_13

    :catch_3
    const-string/jumbo v0, "MARstest -- NumberFormatException!"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_28
    :goto_13
    const-string/jumbo v0, "list"

    aget-object v2, v8, v10

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/MARsPolicyManager;->dumpMARs(Ljava/io/PrintWriter;)V

    :cond_29
    const-string/jumbo v0, "close_socket"

    aget-object v2, v8, v10

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    array-length v0, v8

    if-ge v0, v12, :cond_2a

    const-string/jumbo v0, "usage: close_socket <uid>"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14

    :cond_2a
    aget-object v0, v8, v11

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Calling closeSocketsForUid: u="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsPolicyManager;->closeSocketsForUid(I)V

    :cond_2b
    :goto_14
    const-string/jumbo v0, "time_disable"

    aget-object v2, v8, v10

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    aget-object v2, v8, v11

    iget-object v3, v1, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/android/server/am/MARsPolicyManager;->mAutoDisabledLockingTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    :cond_2c
    const-string/jumbo v0, "update"

    aget-object v2, v8, v10

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->updateFromMARsMainThread()V

    :cond_2d
    const-string/jumbo v0, "widget"

    aget-object v2, v8, v10

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPkgFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    invoke-virtual {v0}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->getBoundAppWidgetPackages()V

    :cond_2e
    const-string/jumbo v0, "deepsleep_target"

    aget-object v2, v8, v10

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->checkUnusedTargetForDeepSleep()V

    :cond_2f
    const-string/jumbo v0, "candidate"

    aget-object v2, v8, v10

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    array-length v0, v8

    if-ge v0, v12, :cond_30

    const-string/jumbo v0, "MARstest -- need type and packageName"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_17

    :cond_30
    array-length v0, v8

    const/4 v6, 0x4

    if-ne v0, v6, :cond_34

    :try_start_d
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_4

    :try_start_e
    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    aget-object v3, v8, v12

    iget-object v4, v1, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v0

    if-eqz v0, :cond_32

    const-string v3, "-s"

    aget-object v4, v8, v11

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-virtual {v1, v10, v0}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    goto :goto_15

    :catchall_5
    move-exception v0

    goto :goto_16

    :cond_31
    const-string v3, "-d"

    aget-object v4, v8, v11

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    const/4 v6, 0x4

    invoke-virtual {v1, v6, v0}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    goto :goto_15

    :cond_32
    const-string/jumbo v0, "MARstest -- not mars target!"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_33
    :goto_15
    monitor-exit v2

    goto :goto_17

    :goto_16
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :try_start_f
    throw v0
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_4

    :catch_4
    const-string/jumbo v0, "MARstest -- NumberFormatException!"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_34
    :goto_17
    const-string/jumbo v0, "debug"

    aget-object v1, v8, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string/jumbo v0, "help"

    aget-object v1, v8, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string/jumbo v0, "MARs debug options commands:"

    const-string v1, "  help"

    const-string v2, "     Print this help text."

    const-string v3, "  all"

    invoke-static {v7, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "     Enable/Disable all mars debug message."

    const-string v1, "  olaf"

    const-string v2, "     Enable/Disable olaf debug message."

    const-string v3, "  freecess"

    invoke-static {v7, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "     Enable/Disable freecess debug message."

    const-string v1, "  database"

    const-string v2, "     Enable/Disable MARs database debug message."

    const-string v3, "  filter"

    invoke-static {v7, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "     Enable/Disable MARs filter debug message."

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1e

    :cond_35
    const-string/jumbo v0, "all"

    aget-object v1, v8, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    xor-int/2addr v0, v10

    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mars debugging mode is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v1, :cond_36

    const-string/jumbo v1, "on"

    goto :goto_18

    :cond_36
    const-string/jumbo v1, "off"

    :goto_18
    const-string v2, " now!"

    invoke-static {v7, v1, v2, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_1e

    :cond_37
    const-string/jumbo v0, "olaf"

    aget-object v1, v8, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    xor-int/2addr v0, v10

    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " olaf debugging mode is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v1, :cond_38

    const-string/jumbo v1, "on"

    goto :goto_19

    :cond_38
    const-string/jumbo v1, "off"

    :goto_19
    const-string v2, " now!"

    invoke-static {v7, v1, v2, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_1e

    :cond_39
    const-string/jumbo v0, "freecess"

    aget-object v1, v8, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    xor-int/2addr v0, v10

    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " freecess debugging mode is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    if-eqz v1, :cond_3a

    const-string/jumbo v1, "on"

    goto :goto_1a

    :cond_3a
    const-string/jumbo v1, "off"

    :goto_1a
    const-string v2, " now!"

    invoke-static {v7, v1, v2, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_1e

    :cond_3b
    const-string/jumbo v0, "database"

    aget-object v1, v8, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_DATABASE:Z

    xor-int/2addr v0, v10

    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_DATABASE:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " database debugging mode is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_DATABASE:Z

    if-eqz v1, :cond_3c

    const-string/jumbo v1, "on"

    goto :goto_1b

    :cond_3c
    const-string/jumbo v1, "off"

    :goto_1b
    const-string v2, " now!"

    invoke-static {v7, v1, v2, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_1e

    :cond_3d
    const-string/jumbo v0, "filter"

    aget-object v1, v8, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    xor-int/2addr v0, v10

    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " filter debugging mode is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    if-eqz v1, :cond_3e

    const-string/jumbo v1, "on"

    goto :goto_1c

    :cond_3e
    const-string/jumbo v1, "off"

    :goto_1c
    const-string v2, " now!"

    invoke-static {v7, v1, v2, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_1e

    :cond_3f
    const-string/jumbo v0, "netlink"

    aget-object v1, v8, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    xor-int/2addr v0, v10

    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " netlink debugging mode is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    if-eqz v1, :cond_40

    const-string/jumbo v1, "on"

    goto :goto_1d

    :cond_40
    const-string/jumbo v1, "off"

    :goto_1d
    const-string v2, " now!"

    invoke-static {v7, v1, v2, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_1e

    :cond_41
    const-string v0, "Error: debug command requires argument"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_42
    :goto_1e
    return-void
.end method

.method public final dumpMARsHistory(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "ACTIVITY MANAGER MARs HISTORY (dumpsys activity mars history)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MID:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_HIGH:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/server/am/mars/HistoryBuffer;->getBuffer()[Ljava/lang/String;

    move-result-object v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    iget v3, v3, Lcom/android/server/am/mars/HistoryBuffer;->size:I

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    :goto_1
    sget-object v0, Lcom/android/server/am/mars/MARsHistoryBuffer$MARsHistoryBufferHolder;->INSTANCE:Lcom/android/server/am/mars/MARsHistoryBuffer;

    monitor-enter v0

    :try_start_0
    sget-object v2, Lcom/android/server/am/mars/MARsHistoryLog$MARsHistoryLogHolder;->INSTANCE:Lcom/android/server/am/mars/MARsHistoryLog;

    invoke-virtual {v2}, Lcom/android/server/am/mars/MARsHistoryLog;->getLog()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    move v0, v1

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    :goto_3
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "ACTIVITY MANAGER FILTER HISTORY"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mFilterHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/server/am/mars/HistoryBuffer;->getBuffer()[Ljava/lang/String;

    move-result-object v2

    :goto_4
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mFilterHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    iget v3, v3, Lcom/android/server/am/mars/HistoryBuffer;->size:I

    if-ge v1, v3, :cond_5

    aget-object v3, v2, v1

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final enablePackageList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x800

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager;->getChangedByUserFromReason(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x200

    goto :goto_0

    :cond_1
    const/16 v2, 0x400

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    invoke-virtual {v3}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v6, v4, v3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    new-instance v8, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    iget-object v9, v6, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v10, v6, Lcom/android/server/am/MARsPackageInfo;->uid:I

    iget v11, v6, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-direct {v8, v9, v10, v11}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Ljava/lang/String;II)V

    invoke-static {v6, v8}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_4
    move-object v8, v7

    :goto_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_2

    invoke-static {v8}, Lcom/android/server/am/MARsPolicyManager;->enableAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v6

    monitor-enter v5

    :try_start_1
    iget-object v9, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v9, v4, v3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-static {v3, v8}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    if-eqz v6, :cond_6

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-object v4, v3, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_6

    :cond_5
    iput-object v7, v3, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v6, v3, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v8, v3, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v4, v8, v6}, Lcom/android/server/am/MARsPkgMap;->remove(ILjava/lang/String;)V

    :goto_3
    invoke-static {p1}, Lcom/android/server/am/mars/database/FASTableContract;->convertDBValueToDisableReason(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    :cond_6
    new-instance v4, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    iget-object v6, v3, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    iget v6, v3, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    iget-boolean v6, v3, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-eqz v6, :cond_7

    move-object v8, v7

    goto :goto_4

    :cond_7
    const-string v8, "0"

    :goto_4
    iput-object v8, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    if-eqz v6, :cond_8

    goto :goto_5

    :cond_8
    iget v6, v3, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v7

    :goto_5
    iput-object v7, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    iget v6, v3, Lcom/android/server/am/MARsPackageInfo;->state:I

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    iget-wide v6, v3, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    iget v6, v3, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    iget v6, v3, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableType:Ljava/lang/String;

    iget v6, v3, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v3, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    monitor-exit v5

    goto/16 :goto_1

    :goto_6
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :goto_7
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_b

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    sget-object p0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    :cond_b
    return-object v1
.end method

.method public final forceKillPackage(Ljava/lang/String;Lcom/android/server/am/MARsPolicyManager$Policy;II)Z
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MARs #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p2, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v3, v0

    move v4, v3

    move v6, v4

    move v7, v6

    move v2, v1

    :goto_0
    const/16 v5, 0x10

    if-gt v2, v5, :cond_4

    iget v5, p2, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    and-int/2addr v5, v2

    if-eq v5, v1, :cond_3

    const/4 v8, 0x2

    if-eq v5, v8, :cond_0

    const/4 v8, 0x4

    if-eq v5, v8, :cond_2

    const/16 v8, 0x8

    if-eq v5, v8, :cond_1

    :cond_0
    move v4, v0

    move v6, v4

    goto :goto_1

    :cond_1
    move v7, v1

    goto :goto_1

    :cond_2
    const/16 v4, 0x1f4

    move v6, v1

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p4}, Lcom/android/server/am/MARsPolicyManager;->closeSocketsForUid(I)V

    if-eqz v3, :cond_5

    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    return v1

    :cond_5
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object v8, p1

    move v5, p4

    move v3, v4

    move v4, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageForMARsLocked(IIIZZLjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6

    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p1, :cond_6

    const-string/jumbo p1, "forceKillPackage: don\'t force stop package = "

    const-string p2, ", userId = "

    const-string/jumbo p3, "MARsPolicyManager"

    invoke-static {v4, p1, v8, p2, p3}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return p0
.end method

.method public final forceRunPolicyForRecentKill(Ljava/lang/String;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "Recent_Kill: add mRestrictedPackages "

    const-string/jumbo v3, "Recent "

    const-string v4, " "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    iget-boolean v8, v6, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v8, :cond_1

    :cond_0
    move/from16 v16, v7

    goto/16 :goto_7

    :cond_1
    sget-object v8, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v8

    :try_start_0
    iget-object v9, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getUserId()I

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x2

    if-eqz v1, :cond_4

    const-string v12, ","

    invoke-virtual {v1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    const-string v12, ","

    invoke-virtual {v1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x0

    if-eqz v1, :cond_3

    array-length v13, v1

    if-ne v13, v11, :cond_3

    aget-object v13, v1, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v13, :cond_2

    move-object v12, v13

    :cond_2
    :try_start_1
    aget-object v1, v1, v10

    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    :try_start_2
    const-string/jumbo v1, "MARsPolicyManager"

    const-string/jumbo v13, "forceRunPolicyForRecentKill parseInt error!"

    invoke-static {v1, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    move-object v1, v12

    :cond_4
    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v12, v1, v9}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v1

    if-nez v1, :cond_5

    monitor-exit v8

    return v7

    :cond_5
    iget-object v9, v1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v12, v1, Lcom/android/server/am/MARsPackageInfo;->uid:I

    iget v13, v1, Lcom/android/server/am/MARsPackageInfo;->userId:I

    iget v14, v1, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    iget v15, v1, Lcom/android/server/am/MARsPackageInfo;->state:I

    move/from16 v16, v7

    iget-boolean v7, v1, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    move/from16 v17, v10

    iget v10, v1, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    iget v11, v1, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    move-object/from16 v18, v2

    iget-boolean v2, v1, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    move-object/from16 v19, v3

    iget-boolean v3, v1, Lcom/android/server/am/MARsPackageInfo;->isInRestrictedBucket:Z

    move/from16 p1, v3

    iget v3, v1, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v8, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v8

    :try_start_3
    sget-boolean v20, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    move/from16 v20, v3

    sget-object v3, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    move/from16 v21, v2

    iget-boolean v2, v3, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz v2, :cond_6

    invoke-virtual {v3, v13, v9}, Lcom/android/server/am/FreecessController;->isFreezedPackage(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "RecentKill"

    invoke-virtual {v3, v13, v9, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_5

    :cond_6
    :goto_1
    invoke-virtual {v0, v9, v6, v13, v12}, Lcom/android/server/am/MARsPolicyManager;->forceKillPackage(Ljava/lang/String;Lcom/android/server/am/MARsPolicyManager$Policy;II)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    :try_start_4
    iput v14, v1, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    iput v15, v1, Lcom/android/server/am/MARsPackageInfo;->state:I

    iput-boolean v7, v1, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    iput v10, v1, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    const/4 v3, 0x3

    iput v3, v1, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    iput v11, v1, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    move/from16 v3, v21

    iput-boolean v3, v1, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    move/from16 v3, p1

    iput-boolean v3, v1, Lcom/android/server/am/MARsPackageInfo;->isInRestrictedBucket:Z

    move/from16 v3, v20

    iput v3, v1, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    iget-object v3, v1, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eq v3, v4, :cond_7

    iput-object v6, v1, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_4

    :cond_7
    :goto_2
    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v4, v1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v3, v6, v4}, Lcom/android/server/am/MARsPkgMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v4, v1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v3, v4, v6, v1}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILcom/android/server/am/MARsPackageInfo;)V

    iget v3, v1, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->putBindTempRestrictionForForceStop(I)V

    goto :goto_3

    :cond_8
    iget-object v3, v1, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-ne v3, v4, :cond_9

    iget v3, v1, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-static {v3}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x4

    iput v3, v1, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v4, v1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v3, v4, v6, v1}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILcom/android/server/am/MARsPackageInfo;)V

    iget v3, v1, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->putBindTempRestrictionForForceStop(I)V

    :cond_9
    :goto_3
    const-string v3, "EXE"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v6, v19

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v18

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " policy --"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return v17

    :goto_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_a
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v16

    :goto_5
    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :goto_6
    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    :goto_7
    const-string/jumbo v0, "MARsPolicyManager"

    const-string/jumbo v1, "policy is not exist or not enabled!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v16
.end method

.method public final forceRunPolicyForSpecificPolicy(ILjava/util/ArrayList;)V
    .locals 21

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v4, 0x1

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v8

    if-eqz v8, :cond_25

    iget-boolean v9, v8, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v9, :cond_0

    goto/16 :goto_14

    :cond_0
    iget v9, v8, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/16 v11, 0x8

    const/4 v12, 0x4

    const/16 v13, 0x9

    const/4 v14, 0x6

    const/4 v15, 0x2

    const/16 v16, 0x0

    if-eq v9, v4, :cond_5

    if-eq v9, v15, :cond_5

    if-eq v9, v12, :cond_4

    if-eq v9, v14, :cond_3

    if-eq v9, v11, :cond_2

    if-eq v9, v13, :cond_1

    move/from16 v9, v16

    goto :goto_0

    :cond_1
    move v9, v11

    goto :goto_0

    :cond_2
    move v9, v12

    goto :goto_0

    :cond_3
    const/4 v9, 0x7

    goto :goto_0

    :cond_4
    move v9, v4

    goto :goto_0

    :cond_5
    const/4 v9, 0x3

    :goto_0
    sget-object v17, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    sget-object v17, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v17

    const/16 v18, 0x0

    if-eqz v2, :cond_b

    move/from16 v3, v16

    const/16 v19, -0x1

    :goto_1
    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_c

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-object v11, v1, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getUserId()I

    move-result v11

    if-eqz v10, :cond_a

    const-string v14, ", "

    invoke-virtual {v10, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_a

    const-string v14, ", "

    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    array-length v14, v10

    if-ne v14, v15, :cond_7

    aget-object v14, v10, v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v14, :cond_6

    goto :goto_2

    :cond_6
    move-object/from16 v14, v18

    :goto_2
    :try_start_1
    aget-object v10, v10, v4

    if-eqz v10, :cond_8

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_13

    :catch_0
    :try_start_2
    const-string/jumbo v10, "MARsPolicyManager"

    const-string/jumbo v12, "forceRunPolicyForGamePolicy parseInt error!"

    invoke-static {v10, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    move-object/from16 v14, v18

    :cond_8
    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    if-nez v12, :cond_9

    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12, v15}, Landroid/util/SparseArray;-><init>(I)V

    invoke-virtual {v5, v14, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-virtual {v12, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_a
    add-int/2addr v3, v4

    const/16 v11, 0x8

    const/4 v12, 0x4

    const/4 v14, 0x6

    goto :goto_1

    :cond_b
    const/16 v19, -0x1

    :cond_c
    move/from16 v2, v16

    :goto_4
    iget-object v3, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v3, v3, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1c

    iget-object v3, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v3, v3, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    move/from16 v10, v16

    :goto_5
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_1b

    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/MARsPackageInfo;

    if-ne v0, v13, :cond_f

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v12

    if-eqz v12, :cond_d

    iget-boolean v12, v11, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-nez v12, :cond_d

    :goto_6
    move/from16 v20, v4

    const/4 v14, 0x6

    goto/16 :goto_a

    :cond_d
    iget-object v12, v11, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v14, v11, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v5, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    if-nez v12, :cond_e

    move-object/from16 v12, v18

    goto :goto_7

    :cond_e
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    :goto_7
    if-eqz v12, :cond_f

    goto :goto_6

    :cond_f
    iget-object v12, v11, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v14, v11, Lcom/android/server/am/MARsPackageInfo;->userId:I

    iget v13, v8, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    invoke-virtual {v1, v14, v13, v12}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(IILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    goto :goto_6

    :cond_10
    sget-object v12, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    iget v13, v8, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-eqz v13, :cond_17

    if-eq v13, v4, :cond_16

    if-eq v13, v15, :cond_15

    const/4 v14, 0x4

    if-eq v13, v14, :cond_14

    const/4 v14, 0x6

    if-eq v13, v14, :cond_13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_12

    const/16 v14, 0x9

    if-eq v13, v14, :cond_11

    move/from16 v13, v19

    goto :goto_8

    :cond_11
    const/16 v13, 0x8

    goto :goto_8

    :cond_12
    const/4 v13, 0x6

    goto :goto_8

    :cond_13
    const/16 v14, 0x9

    const/4 v13, 0x5

    goto :goto_8

    :cond_14
    const/16 v14, 0x9

    const/16 v13, 0xe

    goto :goto_8

    :cond_15
    const/4 v13, 0x3

    goto :goto_8

    :cond_16
    move v13, v15

    goto :goto_8

    :cond_17
    move v13, v4

    :goto_8
    iget-object v14, v11, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v15, v11, Lcom/android/server/am/MARsPackageInfo;->userId:I

    iget v4, v11, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13, v15, v4, v14}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    move-result v4

    if-lez v4, :cond_18

    const/4 v14, 0x6

    :goto_9
    const/16 v20, 0x1

    goto :goto_a

    :cond_18
    new-instance v4, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    iget-object v12, v11, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v13, v11, Lcom/android/server/am/MARsPackageInfo;->uid:I

    iget v14, v11, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-direct {v4, v12, v13, v14}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Ljava/lang/String;II)V

    invoke-static {v11, v4}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    const/4 v14, 0x6

    if-ne v0, v14, :cond_1a

    iget v11, v11, Lcom/android/server/am/MARsPackageInfo;->sbike:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_19

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_19
    move/from16 v20, v12

    goto :goto_a

    :cond_1a
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :goto_a
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x1

    const/16 v13, 0x9

    const/4 v15, 0x2

    goto/16 :goto_5

    :cond_1b
    move/from16 v20, v4

    const/4 v14, 0x6

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    const/16 v13, 0x9

    const/4 v15, 0x2

    goto/16 :goto_4

    :cond_1c
    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v20, 0x1

    add-int/lit8 v0, v0, -0x1

    move-wide v3, v2

    move/from16 v12, v16

    move v2, v0

    :goto_b
    if-ltz v2, :cond_20

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v3

    const-wide/16 v13, 0x32

    cmp-long v0, v10, v13

    if-ltz v0, :cond_1d

    const-wide/16 v3, 0xa

    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_c

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    :cond_1d
    iget-object v5, v1, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v5

    :try_start_4
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    sget-boolean v10, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v10, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v11, v10, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz v11, :cond_1e

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iget v13, v0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    invoke-virtual {v10, v13, v11}, Lcom/android/server/am/FreecessController;->isFreezedPackage(ILjava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1e

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iget v13, v0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    iget-object v14, v8, Lcom/android/server/am/MARsPolicyManager$Policy;->name:Ljava/lang/String;

    invoke-virtual {v10, v13, v11, v14}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :catchall_1
    move-exception v0

    goto :goto_f

    :cond_1e
    :goto_d
    iget-object v10, v0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iget v11, v0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    iget v13, v0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    invoke-virtual {v1, v10, v8, v11, v13}, Lcom/android/server/am/MARsPolicyManager;->forceKillPackage(Ljava/lang/String;Lcom/android/server/am/MARsPolicyManager$Policy;II)Z

    move-result v10

    if-eqz v10, :cond_1f

    iput v9, v0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->currentLevel:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x1

    goto :goto_e

    :cond_1f
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_e
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    :goto_f
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_20
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    move/from16 v0, v16

    :goto_10
    :try_start_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_23

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    iget-object v4, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v5, v3, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iget v9, v3, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    invoke-static {v4, v5, v9}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v4

    if-eqz v4, :cond_22

    invoke-static {v4, v3}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    iget-object v3, v4, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-object v5, v1, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eq v3, v5, :cond_21

    iput-object v8, v4, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    :cond_21
    iget-object v3, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v5, v4, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v9, v4, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v3, v9, v5}, Lcom/android/server/am/MARsPkgMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_22

    iget-object v3, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v5, v4, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v9, v4, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v3, v5, v9, v4}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILcom/android/server/am/MARsPackageInfo;)V

    iget v3, v4, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {v1, v3}, Lcom/android/server/am/MARsPolicyManager;->putBindTempRestrictionForForceStop(I)V

    :cond_22
    const/16 v20, 0x1

    goto :goto_11

    :catchall_2
    move-exception v0

    goto :goto_12

    :goto_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_23
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v12, :cond_24

    const-string v0, "EXE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v8, Lcom/android/server/am/MARsPolicyManager$Policy;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    return-void

    :goto_12
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :goto_13
    :try_start_8
    monitor-exit v17
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0

    :cond_25
    :goto_14
    const-string/jumbo v0, "MARsPolicyManager"

    const-string/jumbo v1, "policy is not exist or not enabled!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final getAutorunForFreezedPackage(ILjava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {p0, p2, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    xor-int/lit8 p0, p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    goto :goto_1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method public final getBatteryStats()V
    .locals 10

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    new-instance v1, Lcom/samsung/android/sdhms/SemDeviceHealthManager;

    invoke-direct {v1}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v3, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getBatteryStats(IJJZ)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdhms/SemBatteryStats;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/sdhms/SemBatteryStats;->getEndTimestamp()J

    move-result-wide v3

    new-instance v7, Ljava/util/GregorianCalendar;

    invoke-direct {v7}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v7, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v8, v4, :cond_1

    const/4 v4, 0x2

    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v8, v4, :cond_1

    const/4 v4, 0x5

    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v7, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/sdhms/SemBatteryStats;->getAppDetailUsages()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;

    invoke-virtual {v2}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getPowerUsage()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v4, v4, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v4, v4, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    move v5, v2

    :goto_3
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsPackageInfo;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    if-lez v7, :cond_4

    iget v7, v6, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/server/am/MARsPackageInfo;->BatteryUsage:D

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :cond_3
    iput-wide v8, v6, Lcom/android/server/am/MARsPackageInfo;->BatteryUsage:D

    goto :goto_4

    :cond_4
    iput-wide v8, v6, Lcom/android/server/am/MARsPackageInfo;->BatteryUsage:D

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    monitor-exit v1

    return-void

    :goto_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getForegroundServiceStartTime(I)J
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMARsEnabled()Z
    .locals 0

    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    return p0
.end method

.method public final getPackageDisablerEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0

    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0

    :cond_3
    const/16 v0, 0x8

    if-ne p1, v0, :cond_4

    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0

    :cond_4
    const/16 v0, 0x9

    if-ne p1, v0, :cond_5

    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public final declared-synchronized getScreenOnState()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getSharedUidName(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "MARsPolicyManager"

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const v1, 0x402000

    invoke-virtual {p0, p2, v1, p1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "NullPointerException occurred in getSharedUidName() "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string/jumbo p0, "NameNotFoundException occurred for package : "

    invoke-static {p0, p2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isAutoRunBlockedApp(Ljava/lang/String;I)Z
    .locals 4

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v2, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-boolean v3, v2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    invoke-virtual {p0, p2, v3, p1}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(IILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    iget v2, v2, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0x12

    invoke-static {p0, p2, v2, p1}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    move-result p0

    if-lez p0, :cond_3

    monitor-exit v0

    return v1

    :cond_3
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isAutoRunOn(ILjava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {p0, p2, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-nez p0, :cond_0

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

.method public final isCurrentUser(I)Z
    .locals 7

    iget v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppEnabled:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x5f

    if-lt p1, v0, :cond_0

    const/16 v0, 0x63

    if-gt p1, v0, :cond_0

    move v0, v1

    move v3, v2

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    monitor-enter v0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_2

    aget v6, v3, v5

    if-ne p1, v6, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_1
    monitor-exit v0

    move v0, v2

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    move v0, v2

    move v3, v0

    :goto_3
    iget p0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    if-eq p0, p1, :cond_5

    if-nez v0, :cond_5

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    return v2

    :cond_5
    :goto_4
    return v1
.end method

.method public final isFirstTimeTriggerAutorun()Z
    .locals 1

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isForegroundPackage(ILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    move-result p0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    return v1

    :cond_1
    sget-object p0, Lcom/android/server/am/mars/filter/filter/TopPackageFilter$TopPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/TopPackageFilter;

    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->mTopPkg:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->mTopPkg:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    monitor-exit v2

    return v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_2
    monitor-exit v2

    return v0

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isInPolicyExceptionList(IILjava/lang/String;)Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    sget-object v4, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    sget-object v4, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    iget-object v5, v4, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    iget-object v5, v4, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;

    iget v5, v5, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;->policyNum:I

    iget-object v6, v4, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;

    iget v6, v6, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;->condition:I

    iget-object v7, v4, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;

    iget-object v7, v7, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;->pkgNameMatchType:Ljava/lang/String;

    iget-object v4, v4, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;

    iget-object v4, v4, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_3

    const/4 v8, 0x2

    if-eq v5, v8, :cond_1

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    if-ne p2, v6, :cond_4

    invoke-static {p3, v7, v4}, Lcom/android/server/am/MARsPolicyManager;->isTargetMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    :cond_1
    if-ne p2, v8, :cond_4

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v5, p3, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v8, v5, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    xor-int/2addr v8, v0

    if-ne v6, v8, :cond_4

    iget-object v3, v5, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    invoke-static {v3, v7, v4}, Lcom/android/server/am/MARsPolicyManager;->isTargetMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    :cond_3
    invoke-static {p3, v7, v4}, Lcom/android/server/am/MARsPolicyManager;->isTargetMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    return v0

    :cond_5
    add-int/2addr v2, v0

    goto :goto_0

    :cond_6
    return v1
.end method

.method public final isMARsTarget(ILjava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {p0, p2, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p0

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

.method public final isUidBindTempRestricted(I)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTempRestrictBindUidMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mTempRestrictBindUidMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    monitor-exit v0

    return v4

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mTempRestrictBindUidMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v5, v1

    if-gez v1, :cond_1

    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mTempRestrictBindUidMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return v4

    :cond_1
    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final levelChange(ILcom/android/server/am/MARsPackageInfo;)Z
    .locals 12

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-gt p1, v1, :cond_0

    sget-object v2, Lcom/android/server/am/mars/filter/filter/AllowListFilter$AllowListFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AllowListFilter;

    iget-object v3, p2, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->isInDefaultAllowList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-boolean v2, p2, Lcom/android/server/am/MARsPackageInfo;->hasAppIcon:Z

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_13

    sget-object v4, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    const/16 v5, 0x2d

    const/4 v6, 0x4

    if-eq p1, v2, :cond_11

    const/4 v7, 0x3

    const/16 v8, 0x10

    const-wide/16 v9, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    iput v6, p2, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    iput v8, p2, Lcom/android/server/am/MARsPackageInfo;->state:I

    iget-boolean v0, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-nez v0, :cond_14

    iget-object v0, p2, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v1, p2, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {v4, v1, v3, v0}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(IILjava/lang/String;)V

    iput-boolean v3, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    iput v3, p2, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    invoke-static {v3}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_1
    iput v0, p2, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    goto/16 :goto_4

    :sswitch_2
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v7

    :cond_1
    iput v2, p2, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    iput v6, p2, Lcom/android/server/am/MARsPackageInfo;->state:I

    iget-boolean v0, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-nez v0, :cond_14

    iget-object v0, p2, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v1, p2, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {v4, v1, v3, v0}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(IILjava/lang/String;)V

    iput-boolean v3, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    iput v3, p2, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    invoke-static {v3}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_3
    iget v5, p2, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    move-result v5

    if-nez v5, :cond_a

    iget-boolean v5, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    const/16 v6, 0x80

    if-eqz v5, :cond_5

    iget v5, p2, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    if-eq v5, v3, :cond_4

    const/16 v8, 0x40

    if-eq v5, v8, :cond_4

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v4, p0, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    if-eqz v4, :cond_3

    iput-boolean v0, p2, Lcom/android/server/am/MARsPackageInfo;->isInRestrictedBucket:Z

    :cond_3
    iput v2, p2, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    goto :goto_1

    :cond_4
    :goto_0
    iput v6, p2, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v5

    if-nez v5, :cond_6

    iput v3, p2, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    iget-object v5, p2, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v8, p2, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {v4, v8, v0, v5}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(IILjava/lang/String;)V

    iput-boolean v0, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    goto :goto_1

    :cond_5
    iput v3, p2, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    :cond_6
    :goto_1
    iget v4, p2, Lcom/android/server/am/MARsPackageInfo;->state:I

    if-eq v4, v1, :cond_7

    if-ne v4, v2, :cond_8

    :cond_7
    iput v6, p2, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    :cond_8
    iput-wide v9, p2, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    iput v3, p2, Lcom/android/server/am/MARsPackageInfo;->state:I

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v1, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-eqz v1, :cond_a

    sget-boolean v1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v1, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v1, v1, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz v1, :cond_9

    iget-object v1, p2, Lcom/android/server/am/MARsPackageInfo;->sharedUidName:Ljava/lang/String;

    if-eqz v1, :cond_a

    :cond_9
    iput v7, p2, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    :cond_a
    iput v0, p2, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    goto/16 :goto_4

    :sswitch_4
    iput v3, p2, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    iput v3, p2, Lcom/android/server/am/MARsPackageInfo;->state:I

    iget-object v2, p2, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v5, p2, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {v4, v5, v0, v2}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(IILjava/lang/String;)V

    iput-boolean v0, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    iput-wide v9, p2, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    const/16 v0, 0x100

    iput v0, p2, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    invoke-static {v0}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    iput v1, p2, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    goto/16 :goto_4

    :sswitch_5
    iput v0, p2, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    iput v3, p2, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    iput-boolean v0, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    iput-wide v9, p2, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    iput v3, p2, Lcom/android/server/am/MARsPackageInfo;->state:I

    iget-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    if-eqz v1, :cond_14

    iput-boolean v0, p2, Lcom/android/server/am/MARsPackageInfo;->isInRestrictedBucket:Z

    iget-object v0, p2, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v1, p2, Lcom/android/server/am/MARsPackageInfo;->userId:I

    const/16 v2, 0xa

    invoke-virtual {v4, v1, v2, v0, v3}, Lcom/android/server/am/MARsHandler;->sendCallSetAppStandbyBucketMsgToMainHandler(IILjava/lang/String;Z)V

    goto/16 :goto_4

    :sswitch_6
    iput v6, p2, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    iput v2, p2, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    invoke-static {v2}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    iput v2, p2, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    iget-boolean v0, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-nez v0, :cond_14

    iget-object v0, p2, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v1, p2, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {v4, v1, v3, v0}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(IILjava/lang/String;)V

    iput-boolean v3, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    goto/16 :goto_4

    :sswitch_7
    iput v2, p2, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    iput v2, p2, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    iput-boolean v3, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    iget-object v0, p2, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v2, p2, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {v4, v2, v3, v0}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(IILjava/lang/String;)V

    iget v2, p2, Lcom/android/server/am/MARsPackageInfo;->state:I

    if-ne v2, v1, :cond_b

    iput v6, p2, Lcom/android/server/am/MARsPackageInfo;->state:I

    :cond_b
    iget-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    if-eqz v1, :cond_14

    iput-boolean v3, p2, Lcom/android/server/am/MARsPackageInfo;->isInRestrictedBucket:Z

    iget v1, p2, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v4, v1, v5, v0, v3}, Lcom/android/server/am/MARsHandler;->sendCallSetAppStandbyBucketMsgToMainHandler(IILjava/lang/String;Z)V

    goto/16 :goto_4

    :sswitch_8
    iput v2, p2, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    iput v2, p2, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    iput-boolean v3, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    iput v6, p2, Lcom/android/server/am/MARsPackageInfo;->state:I

    goto/16 :goto_4

    :sswitch_9
    iput v6, p2, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    iput v8, p2, Lcom/android/server/am/MARsPackageInfo;->state:I

    iput v3, p2, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    iget-boolean v0, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-nez v0, :cond_14

    iget-object v0, p2, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v1, p2, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {v4, v1, v3, v0}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(IILjava/lang/String;)V

    iput-boolean v3, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    iput v3, p2, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    invoke-static {v3}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    goto :goto_4

    :sswitch_a
    sget-object v2, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    sget-object v2, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    iget-object v5, p2, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    const/16 v6, 0x15

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v5, v7, v5}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    :goto_2
    return v0

    :cond_d
    iget-wide v5, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    cmp-long v2, v5, v9

    if-eqz v2, :cond_f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v8, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    sub-long/2addr v5, v8

    iget-boolean v2, p0, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    if-eqz v2, :cond_e

    const-wide/16 v8, 0x2

    iget-wide v10, p0, Lcom/android/server/am/MARsPolicyManager;->mAutoDeepSleepTimeForDebug:J

    mul-long/2addr v10, v8

    goto :goto_3

    :cond_e
    const-wide/32 v10, 0x4d3f6400

    :goto_3
    cmp-long v2, v5, v10

    if-lez v2, :cond_10

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsLastNotiSentTimeForDisabledDismiss:Z

    const-string/jumbo v0, "deepsleep"

    invoke-virtual {v4, v0, v7, v7}, Lcom/android/server/am/MARsHandler;->sendNotifyDeviceCareMsgToMainHandler(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_10
    iput v1, p2, Lcom/android/server/am/MARsPackageInfo;->state:I

    goto :goto_4

    :cond_11
    iput v2, p2, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    iput v2, p2, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    iget-boolean v1, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-nez v1, :cond_14

    iget-object v1, p2, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v2, p2, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {v4, v2, v3, v1}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(IILjava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    if-eqz v2, :cond_12

    iget v2, p2, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v4, v2, v5, v1, v0}, Lcom/android/server/am/MARsHandler;->sendCallSetAppStandbyBucketMsgToMainHandler(IILjava/lang/String;Z)V

    :cond_12
    iput-boolean v3, p2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    iput v6, p2, Lcom/android/server/am/MARsPackageInfo;->state:I

    iput v3, p2, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    invoke-static {v3}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    goto :goto_4

    :cond_13
    iput v2, p2, Lcom/android/server/am/MARsPackageInfo;->state:I

    :cond_14
    :goto_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->noteAppRestriction(ILcom/android/server/am/MARsPackageInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_a
        0x8 -> :sswitch_9
        0x10 -> :sswitch_8
        0x20 -> :sswitch_8
        0x40 -> :sswitch_7
        0x80 -> :sswitch_6
        0x100 -> :sswitch_5
        0x200 -> :sswitch_4
        0x400 -> :sswitch_3
        0x800 -> :sswitch_2
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public final noteAppRestriction(ILcom/android/server/am/MARsPackageInfo;)V
    .locals 10

    iget-object v1, p2, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v2, p2, Lcom/android/server/am/MARsPackageInfo;->uid:I

    const/16 v0, 0x8

    if-eq p1, v0, :cond_7

    const/16 v0, 0x40

    if-eq p1, v0, :cond_6

    const/16 v0, 0x80

    if-eq p1, v0, :cond_5

    const/16 v3, 0x100

    if-eq p1, v3, :cond_4

    const/16 v3, 0x400

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p2, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/16 p2, 0x10

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x3

    const-string/jumbo v6, "usage"

    const/16 v3, 0x46

    const/4 v4, 0x0

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/ActivityManagerService;->noteAppRestrictionEnabled(Ljava/lang/String;IIZILjava/lang/String;IJ)V

    return-void

    :cond_2
    iget-object p1, p2, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    move-result p1

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x4

    const-string/jumbo v6, "settings"

    const/16 v3, 0x46

    const/4 v4, 0x0

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/ActivityManagerService;->noteAppRestrictionEnabled(Ljava/lang/String;IIZILjava/lang/String;IJ)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x4

    const-string/jumbo v6, "settings"

    const/16 v3, 0x32

    const/4 v4, 0x0

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/ActivityManagerService;->noteAppRestrictionEnabled(Ljava/lang/String;IIZILjava/lang/String;IJ)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x4

    const-string/jumbo v6, "settings"

    const/16 v3, 0x46

    const/4 v4, 0x1

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/ActivityManagerService;->noteAppRestrictionEnabled(Ljava/lang/String;IIZILjava/lang/String;IJ)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x4

    const-string/jumbo v6, "settings"

    const/16 v3, 0x32

    const/4 v4, 0x1

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/ActivityManagerService;->noteAppRestrictionEnabled(Ljava/lang/String;IIZILjava/lang/String;IJ)V

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/16 v3, 0x46

    const/4 v4, 0x1

    const/4 v7, 0x2

    const-wide/32 v8, 0x5265c000

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/ActivityManagerService;->noteAppRestrictionEnabled(Ljava/lang/String;IIZILjava/lang/String;IJ)V

    return-void
.end method

.method public final onAppUsed(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(ILjava/lang/String;Z)V

    return-void
.end method

.method public final onAppUsed(ILjava/lang/String;Z)V
    .locals 4

    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v1, p2, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/MARsPackageInfo;->lastUsedTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    sget-object v2, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter$LatestProtectedPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->setLatestProtectedPkg(ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0, v1, p3}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageInfo;Z)V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onAppUsed(Lcom/android/server/am/MARsPackageInfo;Z)V
    .locals 4

    const/16 v0, 0x400

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    iget v0, p1, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    iget-object v1, p1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    const/16 v2, 0x80

    if-ne v0, v2, :cond_1

    new-instance v0, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-eqz v2, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    iput-object v2, v0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    invoke-static {v2}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-static {v2}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/MARsPackageInfo;->state:I

    invoke-static {v2}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    iget-wide v2, p1, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    iget-wide v2, p1, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableResetTime:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p1, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_2

    iget v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iget v3, p1, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {p0, v2, v3, v1, p2}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(IILjava/lang/String;Z)V

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    sget-object p2, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    invoke-virtual {p2, v0}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeSpecificMsgToDBHandler(Lcom/android/server/am/mars/database/FASEntity;)V

    :cond_3
    iget-wide v0, p1, Lcom/android/server/am/MARsPackageInfo;->nextKillTimeForLongRunningProcess:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->KEEP_NO_FILTER_MIN_DURATION:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/am/MARsPackageInfo;->nextKillTimeForLongRunningProcess:J

    :cond_4
    return-void
.end method

.method public final onPowerAllowListChanged()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerExemptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerExemptionManager;

    if-nez v0, :cond_0

    const-string/jumbo p0, "MARsPolicyManager"

    const-string/jumbo v0, "mPowerExemptionManager is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerExemptionManager;->getAllowListedAppIds(Z)[I

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mPowerSaveAllowListSelfLocked:Ljava/util/HashSet;

    monitor-enter v2

    :try_start_0
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mPowerSaveAllowListSelfLocked:Ljava/util/HashSet;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mPowerSaveAllowListSelfLocked:Ljava/util/HashSet;

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mPowerSaveAllowListSelfLocked:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    array-length v1, v0

    :goto_1
    if-ge v3, v1, :cond_2

    aget v6, v0, v3

    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mPowerSaveAllowListSelfLocked:Ljava/util/HashSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is deleted from PowerSaveAllowList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is added to PowerSaveAllowList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_1
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v3, v3, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    new-instance v4, Lcom/android/server/am/MARsPolicyManager$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/am/MARsPolicyManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/MARsPolicyManager;)V

    invoke-virtual {v3, v4}, Lcom/android/server/am/UidRecord;->forEachProcess(Ljava/util/function/Consumer;)V

    const-string/jumbo v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\'s freezable state is updated"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const-string/jumbo p0, "MARsPolicyManager"

    const-string/jumbo v0, "notifying to AM of changes in freezable finished"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :goto_4
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final onSpecialBindServiceActions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    const-string/jumbo v0, "com.google.android.projection.gearhead"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$AndroidAutoFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;

    iget-object v1, v0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->userIdPackageListSelfLocked:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->userIdPackageListSelfLocked:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->logExcludeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "FILTER 32"

    invoke-static {v0, p2}, Lcom/android/server/am/mars/MARsUtils;->addFilterDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_1
    if-nez p3, :cond_3

    :goto_2
    return-void

    :cond_3
    const-string/jumbo v0, "android.intent.action.TTS_SERVICE"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p4, :cond_6

    sget-object v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgs:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_2
    iget-object v3, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgs:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_4
    :goto_3
    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    monitor-exit v2

    goto :goto_5

    :goto_4
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_6
    :goto_5
    const-string/jumbo v0, "android.net.VpnService"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter$VPNPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->mVpnPkgs:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_3
    iget-object v3, v0, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->mVpnPkgs:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->mVpnPkgs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :catchall_2
    move-exception p0

    goto :goto_7

    :cond_7
    :goto_6
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    goto :goto_8

    :goto_7
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :cond_8
    :goto_8
    const-string/jumbo v0, "android.service.notification.NotificationListenerService"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$OngoingNotiPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mNLSPkgMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mNLSPkgMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const-string/jumbo v0, "android.service.wallpaper.WallpaperService"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "com.samsung.android.service.wallpaper.LiveWallpaperService"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "com.samsung.android.service.wallpaper.CoverWallpaperService"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    const-string/jumbo v0, "android"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_c

    sget-object p4, Lcom/android/server/am/mars/filter/filter/WallPaperFilter$WallPaperFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/WallPaperFilter;

    invoke-virtual {p4, p2}, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->onWallPaperPkgBound(Ljava/lang/String;)V

    :cond_c
    sget-object p4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter p4

    :try_start_4
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v0, p2, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p1

    if-eqz p1, :cond_e

    const-string/jumbo p2, "android.view.InputMethod"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    const-string/jumbo p2, "org.androidprinting.intent.ACTION_GET_PRINT_SERVICE"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    goto :goto_9

    :catchall_3
    move-exception p0

    goto :goto_a

    :cond_d
    :goto_9
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageInfo;Z)V

    :cond_e
    monitor-exit p4

    return-void

    :goto_a
    monitor-exit p4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw p0
.end method

.method public final postInit()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const-string/jumbo v2, "MARsPolicyManager"

    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v3, :cond_0

    return-void

    :cond_0
    sget-object v3, Lcom/android/server/am/MARsTrigger$MARsTriggerHolder;->INSTANCE:Lcom/android/server/am/MARsTrigger;

    iget-boolean v4, v3, Lcom/android/server/am/MARsTrigger;->mEmStateReceiverRegistered:Z

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-static {v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v4

    iget-object v7, v3, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v8, v3, Lcom/android/server/am/MARsTrigger;->mEmergencyStateChangedReceiver:Lcom/android/server/am/MARsTrigger$2;

    invoke-virtual {v7, v8, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iput-boolean v5, v3, Lcom/android/server/am/MARsTrigger;->mEmStateReceiverRegistered:Z

    :goto_0
    iget-boolean v4, v3, Lcom/android/server/am/MARsTrigger;->mSMDBChangedReceiverRegistered:Z

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const-string/jumbo v4, "MARS_REQUEST_PKG_INFO"

    invoke-static {v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v4

    iget-object v7, v3, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v8, v3, Lcom/android/server/am/MARsTrigger;->mSMDBChangedReceiver:Lcom/android/server/am/MARsTrigger$1;

    invoke-virtual {v7, v8, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iput-boolean v5, v3, Lcom/android/server/am/MARsTrigger;->mSMDBChangedReceiverRegistered:Z

    :goto_1
    sget-object v3, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v3, v3, Lcom/android/server/am/mars/database/MARsDBManager;->mCurrentContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_14

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    sput-boolean v5, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    :try_start_1
    const-string/jumbo v3, "sys.config.mars_version"

    const-string v4, "9.00"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    const-string/jumbo v3, "init(), we cannot set system property"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string v3, "CHINA"

    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    sput-boolean v5, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    :cond_3
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_DEALY_SERVICE:Z

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/FreecessController;->FEATURE_SERVICE_GUARD:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isChinaModel = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/FreecessController;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MID:Z

    if-nez v3, :cond_4

    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_HIGH:Z

    if-nez v3, :cond_4

    new-instance v3, Lcom/android/server/am/mars/HistoryBuffer;

    invoke-direct {v3}, Lcom/android/server/am/mars/HistoryBuffer;-><init>()V

    iput-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    :cond_4
    new-instance v3, Lcom/android/server/am/mars/HistoryBuffer;

    invoke-direct {v3}, Lcom/android/server/am/mars/HistoryBuffer;-><init>()V

    iput-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mFilterHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->setScreenOnState(Z)V

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    sget-object v3, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    iget-object v4, v3, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v8, "boot"

    invoke-virtual {v7, v8, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v4, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v7, v3, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_3
    sget-object v4, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    iget-object v7, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Lcom/android/server/am/mars/filter/FilterManager;->init(Landroid/content/Context;)V

    sget-object v4, Lcom/android/server/am/MARsTrigger$MARsTriggerHolder;->INSTANCE:Lcom/android/server/am/MARsTrigger;

    iget-boolean v7, v4, Lcom/android/server/am/MARsTrigger;->mReceiverRegistered:Z

    const/4 v8, 0x4

    if-eqz v7, :cond_6

    goto/16 :goto_5

    :cond_6
    iget-object v7, v4, Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;

    if-nez v7, :cond_7

    iget-object v7, v4, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "alarm"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    iput-object v7, v4, Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;

    :cond_7
    const-string/jumbo v7, "android.intent.action.SCREEN_ON"

    invoke-static {v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v7

    sget-object v9, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    const-string/jumbo v10, "MARS_REQUEST_POLICY_INFO"

    const-string/jumbo v11, "MARS_REQUEST_DB_COMPLETE"

    const-string/jumbo v12, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v7, v9, v10, v11, v12}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v9, "com.samsung.android.sm.ACTION_SCPM_MARS_SETTINGS_UPDATED"

    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v9, 0x3e7

    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v9, v4, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v10, v4, Lcom/android/server/am/MARsTrigger;->mIntentReceiver:Lcom/android/server/am/MARsTrigger$2;

    invoke-virtual {v9, v10, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v9, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v9, 0x3e8

    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v9, v4, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v10, v4, Lcom/android/server/am/MARsTrigger;->mTriggerIntentReceiver:Lcom/android/server/am/MARsTrigger$2;

    invoke-virtual {v9, v10, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v9, "FIRST_ALARM_TRIGGER_ACTION"

    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v9, "com.android.server.am.ACTION_UI_SET_ALWAYS_OPTIMIZING"

    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v9, "com.android.server.am.ACTION_PACKAGE_NOTUSED_RECENTLY"

    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v9, v4, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v10, v4, Lcom/android/server/am/MARsTrigger;->mPolicyIntentReceiver:Lcom/android/server/am/MARsTrigger$2;

    invoke-virtual {v9, v10, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v7, "android.intent.action.USER_ADDED"

    invoke-virtual {v13, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v7, "android.intent.action.USER_STOPPED"

    invoke-virtual {v13, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v7, "android.intent.action.USER_STARTED"

    invoke-virtual {v13, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v11, v4, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v12, v4, Lcom/android/server/am/MARsTrigger;->mUserActionReceiver:Lcom/android/server/am/MARsTrigger$1;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x4

    invoke-virtual/range {v11 .. v16}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.android.server.am.ACTION_UI_TRIGGER_POLICY"

    invoke-static {v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v11

    iget-object v9, v4, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v10, v4, Lcom/android/server/am/MARsTrigger;->mPolicyIntentReceiver:Lcom/android/server/am/MARsTrigger$2;

    const-string/jumbo v12, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.ACTION_SHUTDOWN"

    const-string/jumbo v9, "android.intent.action.REBOOT"

    invoke-static {v7, v9}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v7

    iget-object v9, v4, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v10, v4, Lcom/android/server/am/MARsTrigger;->mAppStartUpIntentReceiver:Lcom/android/server/am/MARsTrigger$1;

    invoke-virtual {v9, v10, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v7, Landroid/content/IntentFilter;

    const-string/jumbo v9, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-direct {v7, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/android/server/am/MARsTrigger$1;

    invoke-direct {v9, v1}, Lcom/android/server/am/MARsTrigger$1;-><init>(I)V

    iget-object v10, v4, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v9, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-boolean v7, v4, Lcom/android/server/am/MARsTrigger;->mScpmPolicyReceiverRegistered:Z

    if-eqz v7, :cond_8

    goto :goto_4

    :cond_8
    const-string/jumbo v7, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    const-string/jumbo v9, "com.samsung.android.scpm.policy.CLEAR_DATA"

    const-string/jumbo v10, "com.samsung.android.scpm.policy.UPDATE.systemperf3-archivepolicy-fe7b"

    invoke-static {v7, v9, v10}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v7

    iget-object v9, v4, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v10, v4, Lcom/android/server/am/MARsTrigger;->mScpmPolicyReceiver:Lcom/android/server/am/MARsTrigger$2;

    invoke-virtual {v9, v10, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iput-boolean v5, v4, Lcom/android/server/am/MARsTrigger;->mScpmPolicyReceiverRegistered:Z

    :goto_4
    const-string/jumbo v6, "android.intent.action.USER_SWITCHED"

    invoke-static {v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v9, v4, Lcom/android/server/am/MARsTrigger;->mUserIntentReceiver:Lcom/android/server/am/MARsTrigger$2;

    invoke-virtual {v7, v9, v6, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v7, "android.intent.action.TIME_SET"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v9, v4, Lcom/android/server/am/MARsTrigger;->mTimeIntentReceiver:Lcom/android/server/am/MARsTrigger$2;

    invoke-virtual {v7, v9, v6, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iput-boolean v5, v4, Lcom/android/server/am/MARsTrigger;->mReceiverRegistered:Z

    :goto_5
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    invoke-virtual {v3}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendInitSettingMsgToDBHandler()V

    sget-object v3, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBManager;

    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/MARsDBManager;->registerContentObservers(Landroid/content/Context;)V

    sget-boolean v3, Lcom/android/server/am/mars/EventRecorder;->mFeatureEnable:Z

    sget-object v3, Lcom/android/server/am/mars/EventRecorder$EventRecorderHolder;->INSTANCE:Lcom/android/server/am/mars/EventRecorder;

    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    iput-object v4, v3, Lcom/android/server/am/mars/EventRecorder;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_2
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/log/mars/stats.txt"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/server/am/mars/EventRecorder;->createNewEmptyFile(Ljava/io/File;)Z

    move-result v6

    sput-boolean v6, Lcom/android/server/am/mars/EventRecorder;->mFeatureEnable:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-boolean v4, Lcom/android/server/am/mars/EventRecorder;->mFeatureEnable:Z

    if-eqz v4, :cond_b

    new-instance v4, Landroid/app/job/JobInfo$Builder;

    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v3, Lcom/android/server/am/mars/EventRecorder;->mContext:Landroid/content/Context;

    const-class v9, Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService;

    invoke-direct {v6, v7, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v4, v5, v6}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/32 v6, 0x1499700

    invoke-virtual {v4, v6, v7}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    iget-object v3, v3, Lcom/android/server/am/mars/EventRecorder;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "jobscheduler"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobScheduler;

    if-eqz v3, :cond_9

    const-string/jumbo v6, "MARsEventRecorderNamespace"

    invoke-virtual {v3, v6}, Landroid/app/job/JobScheduler;->forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;

    move-result-object v3

    invoke-virtual {v4}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v3

    const-string/jumbo v4, "RemoveOutdatedJobService schedule result : "

    const-string v6, "EventRecorder"

    invoke-static {v3, v4, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    move v3, v1

    :goto_6
    if-ne v3, v5, :cond_a

    move v3, v5

    goto :goto_7

    :cond_a
    move v3, v1

    :goto_7
    sput-boolean v3, Lcom/android/server/am/mars/EventRecorder;->mFeatureEnable:Z

    :cond_b
    sget-object v3, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    iget-object v9, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v4, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    sget-object v4, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    iget-object v4, v4, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getActiveUids()Ljava/util/Map;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/android/server/am/mars/util/UidStateMgr;->addToRunningList(I)V

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/am/mars/util/UidStateMgr;->addToUidIdleList(I)V

    goto :goto_8

    :cond_d
    iget-object v10, v3, Lcom/android/server/am/mars/util/UidStateMgr;->mUidObserver:Landroid/app/IUidObserver;

    const/16 v11, 0x1f

    const/4 v14, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/am/ActivityManagerService;->registerUidObserverForUids(Landroid/app/IUidObserver;IILjava/lang/String;[I)Landroid/os/IBinder;

    sget v3, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->$r8$clinit:I

    sget-object v3, Lcom/android/server/am/mars/util/ForegroundServiceMgr$ForegroundServiceMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v4, Landroid/app/ActivityManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManagerInternal;

    iput-object v4, v3, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    if-eqz v4, :cond_e

    invoke-virtual {v4, v3}, Landroid/app/ActivityManagerInternal;->addForegroundServiceStateListener(Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;)V

    iget-object v4, v3, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v3, v3, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mProcessObserver:Lcom/android/server/am/mars/util/ForegroundServiceMgr$1;

    invoke-virtual {v4, v3}, Landroid/app/ActivityManagerInternal;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    goto :goto_9

    :cond_e
    const-string v3, "ForegroundServiceMgr"

    const-string v4, "AMI is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    sget-object v3, Lcom/android/server/am/mars/MARsBigData$MARsBigDataHolder;->INSTANCE:Lcom/android/server/am/mars/MARsBigData;

    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    iput-object v4, v3, Lcom/android/server/am/mars/MARsBigData;->mContext:Landroid/content/Context;

    iget-object v6, v3, Lcom/android/server/am/mars/MARsBigData;->mHQM:Landroid/os/SemHqmManager;

    if-nez v6, :cond_f

    const-string v6, "HqmManagerService"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/SemHqmManager;

    iput-object v4, v3, Lcom/android/server/am/mars/MARsBigData;->mHQM:Landroid/os/SemHqmManager;

    :cond_f
    const-string/jumbo v4, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-static {v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v11

    iget-object v9, v3, Lcom/android/server/am/mars/MARsBigData;->mContext:Landroid/content/Context;

    iget-object v10, v3, Lcom/android/server/am/mars/MARsBigData;->mIntentReceiver:Lcom/android/server/am/mars/MARsBigData$1;

    const-string/jumbo v12, "com.samsung.android.permission.HQM_NOTIFICATION_PERMISSION"

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v3

    if-nez v3, :cond_10

    const-class v3, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    if-eqz v3, :cond_10

    new-instance v4, Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener;

    invoke-direct {v4, v0}, Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener;-><init>(Lcom/android/server/am/MARsPolicyManager;)V

    invoke-interface {v3, v4}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    :cond_10
    sget-object v3, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    invoke-virtual {v3, v5}, Lcom/android/server/am/MARsHandler;->sendUpdatePkgMsgToMainHandler(Z)V

    iget-object v4, v3, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-nez v4, :cond_11

    goto :goto_a

    :cond_11
    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, v3, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget-object v6, v3, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v4, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_a
    invoke-virtual {v3, v1}, Lcom/android/server/am/MARsHandler;->sendUpdateDisableMsgToMainHandler(Z)V

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    sget-object v1, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    iget-object v4, v1, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    if-nez v4, :cond_12

    goto :goto_b

    :cond_12
    const/16 v6, 0xc

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget-object v1, v1, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    const-wide/32 v6, 0x2932e00

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_b
    const-string/jumbo v1, "sendUpdateDisableResetTimeToDBHandler enter"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3
    const-string/jumbo v1, "sys.dualapp.profile_id"

    const-string v4, "-1"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/am/MARsPolicyManager;->mDualAppUserId:I

    const/16 v4, 0x5f

    if-lt v1, v4, :cond_13

    const/16 v4, 0x63

    if-gt v1, v4, :cond_13

    iput-boolean v5, v0, Lcom/android/server/am/MARsPolicyManager;->mDualAppEnabled:Z

    invoke-virtual {v3, v1}, Lcom/android/server/am/MARsHandler;->sendInitDisabledMsgToMainHandler(I)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_c

    :catch_1
    const-string/jumbo v1, "init() get DualAppUserId failed!"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_c
    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->setSubUserIds()V

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->onPowerAllowListChanged()V

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :catch_2
    move-exception v0

    goto :goto_d

    :catchall_1
    move-exception v0

    throw v0

    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception occurred in isSMProviderExist : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "MARsDBManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_14
    sput-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    return-void
.end method

.method public final putBindTempRestrictionForForceStop(I)V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mTempRestrictBindUidMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mTempRestrictBindUidMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mTempRestrictBindUidMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-gez v3, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mTempRestrictBindUidMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeRestrictedInfo(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    invoke-virtual {v4}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    sget-object v7, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v7

    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v8, v5, v6}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v5

    if-eqz v5, :cond_4

    iget v6, v5, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    const/4 v8, 0x4

    if-ne v6, v8, :cond_1

    invoke-static {p1}, Lcom/android/server/am/mars/database/FASTableContract;->convertDBValueToDisableReason(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-static {p1}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    iget-boolean v6, v5, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-eqz v6, :cond_2

    sget-boolean v6, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-nez v6, :cond_2

    invoke-static {p1}, Lcom/android/server/am/mars/database/FASTableContract;->convertDBValueToDisableReason(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-nez v4, :cond_3

    invoke-static {p1}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    move-result v4

    iput v4, v5, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    iput-object p1, v5, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    :cond_3
    const/4 v4, 0x0

    iput v4, v5, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    const/4 v4, 0x1

    iput v4, v5, Lcom/android/server/am/MARsPackageInfo;->state:I

    new-instance v4, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    iget-object v6, v5, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    iget v6, v5, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    iget v6, v5, Lcom/android/server/am/MARsPackageInfo;->state:I

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    iget v6, v5, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    iget v6, v5, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    iget v6, v5, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, v5, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    monitor-exit v7

    goto/16 :goto_0

    :goto_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/MARsPolicyManager;->enablePackageList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/MARsPolicyManager;->awakePackageList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_8

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    sget-object p0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    invoke-virtual {p0, v2}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    :cond_8
    return-object v3
.end method

.method public final reportStatusWithMARs(ILjava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {p0, p2, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    sget-boolean p2, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-eqz p2, :cond_0

    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->checkJobRunningCount:I

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

.method public final restrictBySEP(IILjava/lang/String;IZ)Z
    .locals 2

    const-string/jumbo v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    invoke-static {v0}, Lcom/android/server/am/MARsPolicyManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    if-eqz p5, :cond_2

    const-string/jumbo p5, "added_from_user_manual"

    goto :goto_1

    :cond_2
    const-string/jumbo p5, "added_from_mars_auto"

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    if-ne p2, v1, :cond_5

    if-eqz p5, :cond_4

    const-string/jumbo p5, "deleted_from_user_manual"

    goto :goto_1

    :cond_4
    const-string/jumbo p5, "deleted_from_mars_auto"

    goto :goto_1

    :cond_5
    const-string/jumbo p5, "default"

    :goto_1
    new-instance v1, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    invoke-direct {v1, p1, p2, p5}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;-><init>(IILjava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    invoke-direct {p1, p3, p4, v1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;-><init>(Ljava/lang/String;ILcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/MARsPolicyManager;->updateRestrictionInfo(Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public final restrictJobsByUid(IZ)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.ACTION_JOB_RESTRICT_UID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "restrict"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "restrictJobsByUid: u="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", restrict="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "MARsPolicyManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    invoke-direct {p2, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final declared-synchronized setIsManualMode(Z)V
    .locals 3

    const-string/jumbo v0, "ManualMode "

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    if-nez p1, :cond_0

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    sget-object v1, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsHandler;->sendUpdateDisableMsgToMainHandler(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsHandler;->sendUpdatePkgMsgToMainHandler(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const-string v1, "DEV"

    if-eqz p1, :cond_1

    const-string/jumbo p1, "ON"

    goto :goto_1

    :cond_1
    const-string/jumbo p1, "OFF"

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized setManagedProfileEnabled(IZ)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_0

    :try_start_1
    iget-object p2, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    invoke-static {p2, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    invoke-static {p2, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final setMaxLevel(ILjava/lang/String;)V
    .locals 10

    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-static {v0, p2, v2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    move-object v4, p0

    move v2, v3

    goto :goto_2

    :cond_0
    const/16 v2, 0x8

    move-object v4, p0

    goto :goto_2

    :cond_1
    iget-boolean p1, v0, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    if-eqz p1, :cond_2

    iget v8, v0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v5, 0x0

    move-object v4, p0

    move-object v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/MARsPolicyManager;->restrictBySEP(IILjava/lang/String;IZ)Z

    goto :goto_0

    :cond_2
    move-object v4, p0

    :goto_0
    sget-object p0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    iget-object p1, v0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget p2, v0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    iget-boolean v5, v4, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    if-eqz v5, :cond_3

    const/16 v5, 0x2d

    goto :goto_1

    :cond_3
    const/16 v5, 0x28

    :goto_1
    invoke-virtual {p0, p2, v5, p1, v3}, Lcom/android/server/am/MARsHandler;->sendCallSetAppStandbyBucketMsgToMainHandler(IILjava/lang/String;Z)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :cond_4
    move-object v4, p0

    const/16 v2, 0x400

    :goto_2
    if-nez v2, :cond_5

    monitor-exit v1

    return-void

    :cond_5
    invoke-virtual {v4, v2, v0}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {p0}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    iget-object p1, v0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    iget p1, v0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    iget-boolean p1, v0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-eqz p1, :cond_6

    const-string p2, "1"

    goto :goto_3

    :cond_6
    const-string p2, "0"

    :goto_3
    iput-object p2, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    if-eqz p1, :cond_7

    const-string p1, "1"

    goto :goto_4

    :cond_7
    const-string p1, "0"

    :goto_4
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strNew:Ljava/lang/String;

    iget-object p1, v0, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    iget p1, v0, Lcom/android/server/am/MARsPackageInfo;->state:I

    invoke-static {p1}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    iget-wide p1, v0, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    iget p1, v0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    iget p1, v0, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-static {p1}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object p0

    goto :goto_5

    :cond_8
    const/4 p0, 0x0

    :goto_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_9

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    sget-object p1, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    invoke-virtual {p1, p0}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeSpecificMsgToDBHandler(Lcom/android/server/am/mars/database/FASEntity;)V

    :cond_9
    return-void

    :goto_6
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setPackageDisablerEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "disabler_switch : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DEV"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized setScreenOnState(Z)V
    .locals 2

    const-string/jumbo v0, "SCR "

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    const-string/jumbo v1, "SYS"

    if-eqz p1, :cond_0

    const-string/jumbo p1, "ON"

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string/jumbo p1, "OFF"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final setSubUserIds()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/UserManager;->getEnabledProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v2, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler;->sendInitDisabledMsgToMainHandler(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public final skipTriggerAction(Lcom/android/server/am/MARsPackageInfo;)Z
    .locals 7

    iget v0, p1, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    iget-boolean v1, p1, Lcom/android/server/am/MARsPackageInfo;->isSCPMTarget:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mCtsGtsList:Ljava/util/Set;

    check-cast v1, Ljava/util/HashSet;

    iget-object v3, p1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    iget v3, p1, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    if-eq v0, v3, :cond_a

    :cond_2
    const/4 v3, 0x4

    if-le v0, v3, :cond_3

    goto :goto_0

    :cond_3
    iget v4, p1, Lcom/android/server/am/MARsPackageInfo;->uid:I

    if-ne v0, v3, :cond_5

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    iget-boolean p0, p1, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    if-nez p0, :cond_a

    sget-object p0, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-virtual {p0, v4}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidActive(I)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isFirstTimeTriggerAutorun()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v5

    const/4 v6, 0x3

    if-eqz v5, :cond_8

    sget-object p0, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-virtual {p0, v4}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidRunning(I)Z

    move-result p0

    if-nez p0, :cond_b

    iget p0, p1, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    if-gt p0, v1, :cond_a

    iget-boolean p0, p1, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    iput v6, p1, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    return v2

    :cond_8
    sget-object v1, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-virtual {v1, v4}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidRunning(I)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_0

    :cond_9
    invoke-virtual {v1, v4}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidActive(I)Z

    move-result v1

    if-eqz v1, :cond_b

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mIsDeviceIdleMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v1, :cond_a

    if-ge v0, v6, :cond_a

    iget p0, p1, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    and-int/2addr p0, v3

    if-nez p0, :cond_a

    goto :goto_1

    :cond_a
    :goto_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_b
    :goto_1
    return v2
.end method

.method public final switchPolicies(IZ)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_0

    iput-boolean v1, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    :cond_0
    if-eqz p1, :cond_3

    iput-boolean v2, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_2

    iput-boolean v2, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    :cond_2
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_3

    iput-boolean v1, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    :cond_3
    :goto_0
    if-nez p2, :cond_7

    sget-boolean p1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object p1, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean p2, p1, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz p2, :cond_4

    const-string/jumbo p2, "switchPolicy"

    invoke-virtual {p1, p2}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    :cond_4
    sget-object p1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    if-eqz p2, :cond_5

    iget-object p2, p2, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->clear()V

    :cond_5
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    if-eqz p0, :cond_6

    iget-object p0, p0, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    :cond_6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    sget-object p0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendInitSettingMsgToDBHandler()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_7
    return-void
.end method

.method public final triggerAction()V
    .locals 32

    move-object/from16 v1, p0

    const-string/jumbo v0, "MARsPolicyManager"

    const-string/jumbo v2, "triggerAction called!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/String;

    const-string v0, ""

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const-string/jumbo v0, "[FRZ]"

    const/4 v6, 0x1

    aput-object v0, v4, v6

    const-string/jumbo v0, "[FAS]"

    const/4 v7, 0x2

    aput-object v0, v4, v7

    const-string/jumbo v0, "[FOS]"

    const/4 v8, 0x3

    aput-object v0, v4, v8

    const-string/jumbo v0, "[DIS]"

    const/4 v9, 0x4

    aput-object v0, v4, v9

    new-array v10, v3, [Ljava/lang/String;

    const-string v0, ""

    aput-object v0, v10, v5

    const-string/jumbo v0, "[FRZ]"

    aput-object v0, v10, v6

    const-string/jumbo v0, "[FAS]"

    aput-object v0, v10, v7

    const-string/jumbo v0, "[FOS]"

    aput-object v0, v10, v8

    const-string/jumbo v0, "[DIS]"

    aput-object v0, v10, v9

    new-array v11, v5, [I

    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v12, v0, Lcom/android/server/am/FreecessController;->mIsSmartSwitchWorking:Z

    if-eqz v12, :cond_0

    goto/16 :goto_24

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->updateRunningLocationPackages()V

    sget-object v0, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter$BlueToothConnectedFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;

    invoke-virtual {v0}, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->updateBTUsingPackages()V

    sget-object v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    invoke-virtual {v0}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, v1, Lcom/android/server/am/MARsPolicyManager;->mIsDeviceIdleMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    monitor-exit p0

    if-eqz v0, :cond_1

    sget-object v14, Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter$ActiveSensorFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "sdhms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    monitor-enter v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-interface {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getActiveSensorList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;->parseActiveSensor(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;->mSensorList:Ljava/util/List;

    monitor-exit v14

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v14, "MARs:ActiveSensorFilter"

    const-string v15, "Exception at getActiveSensorList:"

    invoke-static {v0, v15, v14}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v14, v0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz v14, :cond_2

    iget-boolean v0, v0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->isFirstTimeTriggerAutorun()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_24

    :cond_2
    sget-object v14, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v14

    move v15, v5

    move/from16 v16, v15

    const/4 v5, 0x0

    :goto_1
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v3, v3, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v15, v3, :cond_21

    iget-object v3, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v3, v3, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v0, v9, :cond_20

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v9, :cond_3

    iget v8, v9, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v1, v8}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v1, v9}, Lcom/android/server/am/MARsPolicyManager;->skipTriggerAction(Lcom/android/server/am/MARsPackageInfo;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_3
    move/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v22, v5

    :cond_4
    :goto_3
    move-object/from16 v20, v11

    move-wide/from16 v24, v12

    goto/16 :goto_e

    :cond_5
    iget v8, v9, Lcom/android/server/am/MARsPackageInfo;->uid:I

    iget v7, v9, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    iget-object v6, v9, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    move/from16 v18, v0

    iget v0, v9, Lcom/android/server/am/MARsPackageInfo;->userId:I

    move-object/from16 v19, v3

    const/4 v3, 0x1

    if-eq v7, v3, :cond_12

    const/4 v3, 0x2

    if-eq v7, v3, :cond_12

    const/4 v3, 0x3

    if-eq v7, v3, :cond_b

    const/4 v3, 0x4

    if-eq v7, v3, :cond_6

    move-object/from16 v20, v11

    move-wide/from16 v24, v12

    const/4 v3, 0x0

    goto/16 :goto_d

    :cond_6
    iget-boolean v3, v9, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    if-nez v3, :cond_7

    iget-boolean v3, v9, Lcom/android/server/am/MARsPackageInfo;->isSCPMTarget:Z

    if-eqz v3, :cond_7

    new-instance v3, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-direct {v3, v6, v8, v0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Ljava/lang/String;II)V

    invoke-static {v9, v3}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    move-object/from16 v20, v11

    move-wide/from16 v24, v12

    goto/16 :goto_d

    :catchall_1
    move-exception v0

    goto/16 :goto_26

    :cond_7
    sget-object v3, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    sget-object v3, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    move-object/from16 v22, v5

    const/16 v5, 0x15

    move/from16 v23, v7

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7, v6}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x6

    invoke-static {v3, v0, v8, v6}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    iget-object v3, v9, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v5, v9, Lcom/android/server/am/MARsPackageInfo;->uid:I

    iget v6, v9, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-direct {v0, v3, v5, v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Ljava/lang/String;II)V

    invoke-static {v9, v0}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    move-object v3, v0

    :goto_4
    move-object/from16 v20, v11

    move-wide/from16 v24, v12

    :goto_5
    move-object/from16 v5, v22

    goto/16 :goto_d

    :cond_8
    const/4 v0, 0x0

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v10, v23

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v23

    :cond_a
    :goto_6
    move-object/from16 v20, v11

    move-wide/from16 v24, v12

    move-object/from16 v5, v22

    const/4 v3, 0x0

    const/16 v16, 0x1

    goto/16 :goto_d

    :cond_b
    move-object/from16 v22, v5

    move/from16 v23, v7

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v3

    if-eqz v3, :cond_10

    sget-object v3, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    sget-object v3, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    const/16 v5, 0xa

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7, v7}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    sget-object v3, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0xd

    invoke-static {v3, v0, v8, v6}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_c

    new-instance v3, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    iget-object v0, v9, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v5, v9, Lcom/android/server/am/MARsPackageInfo;->uid:I

    iget v6, v9, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-direct {v3, v0, v5, v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Ljava/lang/String;II)V

    invoke-static {v9, v3}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    goto :goto_4

    :cond_c
    sget-object v3, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x3

    invoke-static {v3, v0, v8, v6}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    new-instance v3, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    iget-object v0, v9, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v5, v9, Lcom/android/server/am/MARsPackageInfo;->uid:I

    iget v6, v9, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-direct {v3, v0, v5, v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Ljava/lang/String;II)V

    invoke-static {v9, v3}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    goto/16 :goto_4

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v10, v23

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v23

    const/16 v3, 0xd

    if-eq v3, v0, :cond_e

    const/16 v3, 0xc

    if-eq v3, v0, :cond_e

    const/4 v3, 0x4

    if-eq v3, v0, :cond_e

    const/16 v5, 0xa

    if-ne v5, v0, :cond_a

    :cond_e
    const/4 v3, 0x2

    iput v3, v9, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    move-object/from16 v20, v11

    move-wide/from16 v24, v12

    move-object/from16 v5, v22

    const/16 v16, 0x1

    :cond_f
    :goto_7
    const/16 v17, 0x1

    goto/16 :goto_f

    :cond_10
    sget-object v3, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x2

    invoke-static {v3, v0, v8, v6}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    new-instance v3, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    iget-object v0, v9, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v5, v9, Lcom/android/server/am/MARsPackageInfo;->uid:I

    iget v6, v9, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-direct {v3, v0, v5, v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Ljava/lang/String;II)V

    invoke-static {v9, v3}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    goto/16 :goto_4

    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v10, v23

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v23

    goto/16 :goto_6

    :cond_12
    move-object/from16 v22, v5

    move/from16 v23, v7

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v3

    if-eqz v3, :cond_13

    iget-boolean v3, v9, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-eqz v3, :cond_13

    sget-object v3, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    sget-object v3, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    const/16 v5, 0xa

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7, v7}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    sget-object v3, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0xd

    invoke-static {v3, v0, v8, v6}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_14

    const/4 v3, 0x3

    iput v3, v9, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    new-instance v3, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    iget-object v0, v9, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v5, v9, Lcom/android/server/am/MARsPackageInfo;->uid:I

    iget v6, v9, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-direct {v3, v0, v5, v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Ljava/lang/String;II)V

    invoke-static {v9, v3}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    goto/16 :goto_4

    :cond_13
    const/4 v7, 0x0

    :cond_14
    sget-object v3, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    invoke-virtual {v3, v9}, Lcom/android/server/am/FreecessController;->isInFreecessExcludeList(Lcom/android/server/am/MARsPackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_3

    :cond_15
    iget-boolean v0, v9, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-nez v0, :cond_16

    if-nez v0, :cond_4

    iget v0, v9, Lcom/android/server/am/MARsPackageInfo;->state:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    iget v0, v9, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    const/16 v3, 0x100

    if-eq v0, v3, :cond_4

    :cond_16
    const/4 v3, 0x3

    iput v3, v9, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Level up freecess excluded app : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "|userId"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_17
    sget-object v3, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0xe

    invoke-static {v3, v0, v8, v6}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_18

    new-instance v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    iget-object v7, v9, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v11

    iget v11, v9, Lcom/android/server/am/MARsPackageInfo;->uid:I

    move-wide/from16 v24, v12

    iget v12, v9, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-direct {v5, v7, v11, v12}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Ljava/lang/String;II)V

    invoke-static {v9, v5}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    const/4 v7, 0x5

    goto :goto_a

    :cond_18
    move-object/from16 v20, v11

    move-wide/from16 v24, v12

    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-eqz v5, :cond_1a

    const/16 v5, 0x12

    if-ne v3, v5, :cond_1a

    iget v5, v9, Lcom/android/server/am/MARsPackageInfo;->checkJobRunningCount:I

    const/16 v17, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v9, Lcom/android/server/am/MARsPackageInfo;->checkJobRunningCount:I

    const/4 v7, 0x5

    if-lt v5, v7, :cond_1b

    if-nez v22, :cond_19

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_8

    :cond_19
    move-object/from16 v5, v22

    :goto_8
    iget v11, v9, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1a
    const/4 v7, 0x5

    :cond_1b
    move-object/from16 v5, v22

    :goto_9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v10, v23

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v9, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v23

    move-object/from16 v22, v5

    const/4 v5, 0x0

    const/16 v16, 0x1

    :goto_a
    sget-boolean v11, Lcom/android/server/am/MARsPolicyManager;->ENABLE_KILL_LONG_RUNNING_PROCESS:Z

    if-eqz v11, :cond_1f

    invoke-virtual {v1, v8}, Lcom/android/server/am/MARsPolicyManager;->getForegroundServiceStartTime(I)J

    move-result-wide v11

    move v13, v8

    const-wide/16 v7, 0x0

    cmp-long v21, v11, v7

    if-eqz v21, :cond_1c

    const/16 v21, 0x1

    goto :goto_b

    :cond_1c
    const/16 v21, 0x0

    :goto_b
    if-nez v3, :cond_1e

    if-eqz v21, :cond_1f

    move-wide/from16 v26, v7

    iget-wide v7, v9, Lcom/android/server/am/MARsPackageInfo;->nextKillTimeForLongRunningProcess:J

    cmp-long v3, v7, v26

    if-nez v3, :cond_1d

    iget-wide v6, v1, Lcom/android/server/am/MARsPolicyManager;->KEEP_NO_FILTER_MIN_DURATION:J

    add-long v12, v24, v6

    iput-wide v12, v9, Lcom/android/server/am/MARsPackageInfo;->nextKillTimeForLongRunningProcess:J

    goto :goto_c

    :cond_1d
    cmp-long v3, v24, v7

    if-ltz v3, :cond_1f

    iget-wide v7, v1, Lcom/android/server/am/MARsPolicyManager;->KEEP_NO_FILTER_MIN_DURATION:J

    add-long/2addr v11, v7

    cmp-long v3, v24, v11

    if-ltz v3, :cond_1f

    move-wide/from16 v7, v26

    iput-wide v7, v9, Lcom/android/server/am/MARsPackageInfo;->nextKillTimeForLongRunningProcess:J

    sget-object v3, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KLRP uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v13, v0, v6, v7}, Lcom/android/server/am/MARsHandler;->sendKillPackageProcsMsgToMainHandler(IILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "KLRP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uid "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_1e
    const/16 v0, 0x8

    if-eq v3, v0, :cond_1f

    iget-wide v6, v9, Lcom/android/server/am/MARsPackageInfo;->nextKillTimeForLongRunningProcess:J

    const-wide/16 v26, 0x0

    cmp-long v0, v6, v26

    if-eqz v0, :cond_1f

    iget-wide v6, v1, Lcom/android/server/am/MARsPolicyManager;->KEEP_NO_FILTER_MIN_DURATION:J

    add-long v12, v24, v6

    iput-wide v12, v9, Lcom/android/server/am/MARsPackageInfo;->nextKillTimeForLongRunningProcess:J

    :cond_1f
    :goto_c
    move-object v3, v5

    goto/16 :goto_5

    :goto_d
    if-eqz v3, :cond_f

    iget v0, v3, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->maxLevel:I

    iput v0, v3, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->possibleLevel:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :goto_e
    move-object/from16 v5, v22

    goto/16 :goto_7

    :goto_f
    add-int/lit8 v0, v18, 0x1

    move/from16 v6, v17

    move-object/from16 v3, v19

    move-object/from16 v11, v20

    move-wide/from16 v12, v24

    const/4 v7, 0x2

    const/4 v8, 0x3

    goto/16 :goto_2

    :cond_20
    move-object/from16 v22, v5

    move/from16 v17, v6

    move-object/from16 v20, v11

    move-wide/from16 v24, v12

    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x4

    goto/16 :goto_1

    :cond_21
    move-object/from16 v20, v11

    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v5, :cond_22

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v0, :cond_22

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x1

    add-int/2addr v3, v7

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6, v7}, Lcom/android/server/am/MARsPolicyManager;->restrictJobsByUid(IZ)V

    goto :goto_10

    :cond_22
    monitor-enter p0

    :try_start_5
    iget-boolean v0, v1, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    monitor-exit p0

    if-eqz v0, :cond_23

    monitor-enter p0

    const/4 v3, 0x0

    :try_start_6
    iput-boolean v3, v1, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit p0

    goto :goto_11

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :cond_23
    const/4 v3, 0x0

    :goto_11
    move v0, v3

    move v5, v0

    move-object/from16 v11, v20

    :goto_12
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_36

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v7

    if-nez v7, :cond_24

    iget-object v7, v1, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v7, :cond_24

    iget v8, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService;->hasFloatingOrOnScreenWindow(I)Z

    move-result v7

    if-eqz v7, :cond_24

    const-string/jumbo v7, "MARsPolicyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    const-string v9, " has floating or onScreen window, skip to freeze"

    invoke-static {v8, v6, v9, v7}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x3

    goto/16 :goto_16

    :cond_24
    iget-object v7, v1, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v7

    :try_start_8
    iget v8, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->possibleLevel:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_2f

    const/4 v9, 0x2

    if-eq v8, v9, :cond_2e

    const/4 v9, 0x3

    if-eq v8, v9, :cond_28

    const/4 v12, 0x4

    if-eq v8, v12, :cond_25

    goto/16 :goto_1d

    :cond_25
    sget-object v8, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v12, v8, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz v12, :cond_26

    iget-object v12, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iget v13, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    invoke-virtual {v8, v13, v12}, Lcom/android/server/am/FreecessController;->isFreezedPackage(ILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_26

    iget-object v12, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iget v13, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    const-string/jumbo v14, "triggerAction"

    invoke-virtual {v8, v13, v12, v14}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :catchall_3
    move-exception v0

    goto/16 :goto_1f

    :cond_26
    :goto_13
    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->getPackageDisablerEnabled()Z

    move-result v8

    if-eqz v8, :cond_27

    invoke-static {v6}, Lcom/android/server/am/MARsPolicyManager;->disableAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v8

    if-nez v8, :cond_35

    :cond_27
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_16

    :cond_28
    :try_start_9
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v8

    if-eqz v8, :cond_2c

    iget-boolean v8, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFASEnabled:Z

    if-eqz v8, :cond_2a

    iget v8, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    invoke-virtual {v1, v8}, Lcom/android/server/am/MARsPolicyManager;->closeSocketsForUid(I)V

    iget-object v8, v1, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "MARs #"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v13

    if-nez v13, :cond_29

    const/4 v13, 0x1

    goto :goto_14

    :cond_29
    const/4 v13, 0x2

    :goto_14
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    iget-object v12, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iget v13, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    iget v14, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    const/16 v19, 0x0

    const/16 v23, 0x1

    const/16 v22, 0x0

    move-object/from16 v18, v8

    move-object/from16 v24, v12

    move/from16 v20, v13

    move/from16 v21, v14

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageForMARsLocked(IIIZZLjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    goto :goto_15

    :cond_2a
    move v8, v3

    :goto_15
    if-nez v8, :cond_2b

    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    :goto_16
    const/16 v17, 0x1

    goto/16 :goto_1e

    :cond_2b
    :try_start_a
    iget v0, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    invoke-static {v11, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v11

    goto/16 :goto_1d

    :cond_2c
    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v8, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iget v12, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v20

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "MARs #"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v13

    if-nez v13, :cond_2d

    const/4 v13, 0x1

    goto :goto_17

    :cond_2d
    const/4 v13, 0x2

    :goto_17
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    iget v12, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    const/16 v27, 0x1

    const/16 v28, 0x0

    const/16 v29, 0xd

    const/16 v30, 0x3e9

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v18, v0

    move-object/from16 v19, v8

    move/from16 v21, v12

    invoke-virtual/range {v18 .. v31}, Lcom/android/server/am/ProcessList;->killPackageProcessesLSP(Ljava/lang/String;IIIZZZZZZIILjava/lang/String;)Z

    goto/16 :goto_1d

    :cond_2e
    const/4 v9, 0x3

    iget-boolean v8, v1, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    if-eqz v8, :cond_30

    iget v8, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->fasType:I

    const/4 v12, 0x2

    if-ne v8, v12, :cond_30

    iget-boolean v8, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isInRestrictedBucket:Z

    if-nez v8, :cond_30

    const/4 v8, 0x1

    iput-boolean v8, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isInRestrictedBucket:Z

    sget-object v12, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    iget-object v13, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iget v14, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    const/16 v15, 0x2d

    invoke-virtual {v12, v14, v15, v13, v8}, Lcom/android/server/am/MARsHandler;->sendCallSetAppStandbyBucketMsgToMainHandler(IILjava/lang/String;Z)V

    goto :goto_18

    :cond_2f
    const/4 v9, 0x3

    :cond_30
    :goto_18
    sget-object v8, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v12, v8, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz v12, :cond_33

    iget v12, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    iget-object v13, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iget v14, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    const/4 v15, 0x2

    invoke-virtual {v8, v12, v14, v15, v13}, Lcom/android/server/am/FreecessController;->freeze(IIILjava/lang/String;)Lcom/android/server/am/FreezeResult;

    move-result-object v12

    sget-object v13, Lcom/android/server/am/FreezeResult;->FREEZE_SUCCESS:Lcom/android/server/am/FreezeResult;

    if-ne v12, v13, :cond_31

    const/4 v13, 0x1

    goto :goto_19

    :cond_31
    move v13, v3

    :goto_19
    if-nez v13, :cond_34

    sget-object v14, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_ALREADY_FROZEN:Lcom/android/server/am/FreezeResult;

    if-eq v12, v14, :cond_34

    sget-object v14, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_EXCLUDE_LIST:Lcom/android/server/am/FreezeResult;

    if-eq v12, v14, :cond_34

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget v15, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->possibleLevel:I

    aget-object v3, v10, v15

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/am/FreezeResult;->getKey()I

    move-result v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v15

    iget v3, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    sget-object v14, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    invoke-virtual {v8, v3}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v3

    if-eqz v3, :cond_32

    iget v3, v3, Lcom/android/server/am/FreecessPkgStatus;->latestProcState:I

    goto :goto_1a

    :catchall_4
    move-exception v0

    goto :goto_1b

    :cond_32
    const/4 v3, -0x1

    :goto_1a
    monitor-exit v14
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    invoke-static {}, Lcom/android/server/am/mars/EventRecorder;->getInstance()Lcom/android/server/am/mars/EventRecorder;

    move-result-object v8

    iget v14, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v14, v12, v3}, Lcom/android/server/am/mars/EventRecorder;->addFreezeSkipScreenOff(Ljava/lang/Integer;Lcom/android/server/am/FreezeResult;I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    const/16 v16, 0x1

    goto :goto_1c

    :goto_1b
    :try_start_d
    monitor-exit v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v0

    :cond_33
    const/4 v13, 0x0

    :cond_34
    :goto_1c
    if-nez v13, :cond_35

    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_16

    :cond_35
    :goto_1d
    :try_start_f
    iget v0, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->possibleLevel:I

    invoke-static {v6, v0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputcurrentLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetcurrentLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v3

    aget-object v8, v4, v3

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    monitor-exit v7
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x1

    goto/16 :goto_16

    :goto_1e
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    goto/16 :goto_12

    :goto_1f
    :try_start_10
    monitor-exit v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_36
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v5

    const/4 v6, 0x0

    :goto_20
    :try_start_11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_3a

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    iget-object v8, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v9, v7, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iget v12, v7, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    invoke-static {v8, v9, v12}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v8

    if-eqz v8, :cond_39

    invoke-static {v8, v7}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    iget v7, v8, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    const/4 v12, 0x4

    if-ne v7, v12, :cond_37

    new-instance v7, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v7}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    iget-object v9, v8, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v9

    invoke-static {v9}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getDisableType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableType(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v9

    invoke-static {v9}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :catchall_5
    move-exception v0

    goto :goto_25

    :cond_37
    :goto_21
    iget v7, v8, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    const/4 v15, 0x2

    if-le v7, v15, :cond_38

    invoke-virtual {v1, v7}, Lcom/android/server/am/MARsPolicyManager;->convertLevelToPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    iget-object v7, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v9, v8, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v13, v8, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v7, v13, v9}, Lcom/android/server/am/MARsPkgMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_38

    iget-object v7, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v9, v8, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v13, v8, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v7, v9, v13, v8}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILcom/android/server/am/MARsPackageInfo;)V

    :cond_38
    :goto_22
    const/16 v17, 0x1

    goto :goto_23

    :cond_39
    const/4 v12, 0x4

    const/4 v15, 0x2

    goto :goto_22

    :goto_23
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_20

    :cond_3a
    monitor-exit v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    array-length v2, v11

    if-lez v2, :cond_3b

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3b
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    sget-object v2, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    :cond_3c
    if-nez v0, :cond_3d

    if-eqz v16, :cond_3e

    :cond_3d
    const-string v0, "LEV"

    invoke-static {v4, v10}, Lcom/android/server/am/MARsPolicyManager;->convertLevelChangeInfoToString([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e
    :goto_24
    return-void

    :goto_25
    :try_start_12
    monitor-exit v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    throw v0

    :catchall_6
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    throw v0

    :goto_26
    :try_start_14
    monitor-exit v14
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    throw v0

    :catchall_7
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    throw v0
.end method

.method public final updateForegroundPackageToPkgStatus(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    monitor-enter v0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateFromMARsMainThread()V
    .locals 21

    move-object/from16 v1, p0

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string v3, ""

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "[FRZ]"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string/jumbo v3, "[FAS]"

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string/jumbo v3, "[FOS]"

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-string/jumbo v3, "[DIS]"

    const/4 v8, 0x4

    aput-object v3, v2, v8

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v0, v4

    const-string/jumbo v3, "[FRZ]"

    aput-object v3, v0, v5

    const-string/jumbo v3, "[FAS]"

    aput-object v3, v0, v6

    const-string/jumbo v3, "[FOS]"

    aput-object v3, v0, v7

    const-string/jumbo v3, "[DIS]"

    aput-object v3, v0, v8

    monitor-enter p0

    :try_start_0
    iget-boolean v3, v1, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit p0

    if-eqz v3, :cond_0

    const-string/jumbo v0, "MARsPolicyManager"

    const-string/jumbo v1, "Now manual mode is on, we will not update anything!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v7, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v7

    move v11, v4

    move v12, v11

    :goto_0
    :try_start_1
    iget-object v13, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v13, v13, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v11, v13, :cond_18

    iget-object v13, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v13, v13, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseArray;

    move v14, v4

    :goto_1
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v14, v15, :cond_17

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/MARsPackageInfo;

    iget v4, v15, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v1, v4}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    iget v4, v15, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    const/16 v6, 0x100

    if-ne v4, v6, :cond_2

    goto :goto_2

    :cond_2
    iget v4, v15, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    if-ne v4, v8, :cond_3

    iget v4, v15, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    move v4, v5

    move v6, v8

    move-object v8, v7

    goto/16 :goto_d

    :catchall_0
    move-exception v0

    move-object v8, v7

    goto/16 :goto_e

    :cond_3
    iget-boolean v4, v15, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    const/16 v6, 0x8

    move/from16 v16, v8

    if-nez v4, :cond_8

    iget-boolean v4, v15, Lcom/android/server/am/MARsPackageInfo;->isSCPMTarget:Z

    if-eqz v4, :cond_8

    iget v4, v15, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    if-eq v4, v6, :cond_8

    const/16 v4, 0x2000

    invoke-virtual {v1, v4, v15}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x10

    iput v4, v15, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    if-nez v12, :cond_4

    move v12, v5

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v2, v16

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v15, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v16

    new-instance v4, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    iget-object v8, v15, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    iget v8, v15, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    iget-boolean v8, v15, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-eqz v8, :cond_5

    const-string v17, "1"

    move-object/from16 v6, v17

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    if-eqz v8, :cond_6

    const-string v6, "1"

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    :goto_4
    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strNew:Ljava/lang/String;

    iget v6, v15, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    if-ne v6, v5, :cond_7

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    :goto_5
    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    iget v6, v15, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    iget v6, v15, Lcom/android/server/am/MARsPackageInfo;->state:I

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    iget v6, v15, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-wide v5, v1, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    const-wide/16 v18, 0x0

    cmp-long v8, v5, v18

    if-eqz v8, :cond_11

    iget v8, v15, Lcom/android/server/am/MARsPackageInfo;->state:I

    const/16 v4, 0x8

    if-ne v8, v4, :cond_11

    sub-long v4, v9, v5

    iget-boolean v6, v1, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    if-eqz v6, :cond_9

    move-wide/from16 v19, v4

    iget-wide v4, v1, Lcom/android/server/am/MARsPolicyManager;->mAutoDeepSleepTimeForDebug:J

    goto :goto_6

    :cond_9
    move-wide/from16 v19, v4

    const-wide/32 v4, 0x5265c00

    :goto_6
    cmp-long v4, v19, v4

    if-lez v4, :cond_11

    sget-object v4, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    iget-object v5, v15, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v6, v15, Lcom/android/server/am/MARsPackageInfo;->userId:I

    iget v8, v15, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x6

    invoke-static {v4, v6, v8, v5}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v0, v16

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v15, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v16

    goto/16 :goto_a

    :cond_a
    const/16 v4, 0x8

    invoke-virtual {v1, v4, v15}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_10

    if-nez v12, :cond_b

    const/4 v12, 0x1

    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v2, v16

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v15, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v16

    new-instance v5, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    iget-object v4, v15, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iput-object v4, v5, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    iget v4, v15, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    iget-boolean v4, v15, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-eqz v4, :cond_c

    const-string v6, "1"

    goto :goto_7

    :cond_c
    const/4 v6, 0x0

    :goto_7
    iput-object v6, v5, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    if-eqz v4, :cond_d

    const-string v4, "1"

    goto :goto_8

    :cond_d
    const/4 v4, 0x0

    :goto_8
    iput-object v4, v5, Lcom/android/server/am/mars/database/FASEntityBuilder;->strNew:Ljava/lang/String;

    iget v4, v15, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_e

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_e
    const/4 v4, 0x0

    :goto_9
    iput-object v4, v5, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    iget v6, v15, Lcom/android/server/am/MARsPackageInfo;->state:I

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    iget v6, v15, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v5, v1, Lcom/android/server/am/MARsPolicyManager;->mIsLastNotiSentTimeForDisabledDismiss:Z

    if-nez v5, :cond_f

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/server/am/MARsPolicyManager;->mIsLastNotiSentTimeForDisabledDismiss:Z

    sget-object v5, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    const-string/jumbo v6, "deepsleepdismiss"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v8}, Lcom/android/server/am/MARsHandler;->sendNotifyDeviceCareMsgToMainHandler(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_f
    :goto_a
    move-object v8, v7

    move/from16 v6, v16

    const/4 v4, 0x1

    goto/16 :goto_d

    :cond_10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v0, v16

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v15, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v16

    goto :goto_a

    :cond_11
    iget v5, v15, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_14

    iget-boolean v5, v15, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-eqz v5, :cond_14

    iget v5, v15, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    const/4 v4, 0x1

    if-ne v4, v5, :cond_13

    const/16 v5, 0x400

    invoke-virtual {v1, v5, v15}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v5

    if-eqz v5, :cond_13

    iget v5, v15, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    const/16 v8, 0x80

    if-ne v5, v8, :cond_13

    new-instance v5, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    iget-object v8, v15, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iput-object v8, v5, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    iget v8, v15, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    iget-boolean v8, v15, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-eqz v8, :cond_12

    const-string v8, "1"

    goto :goto_b

    :cond_12
    const-string v8, "0"

    :goto_b
    iput-object v8, v5, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    iget v8, v15, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    invoke-static {v8}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    iget v8, v15, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-static {v8}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    iget v8, v15, Lcom/android/server/am/MARsPackageInfo;->state:I

    invoke-static {v8}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v7

    :try_start_2
    iget-wide v6, v15, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    iget-wide v6, v15, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableResetTime:Ljava/lang/String;

    iget v6, v15, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :catchall_1
    move-exception v0

    goto :goto_e

    :cond_13
    move-object v8, v7

    goto :goto_c

    :cond_14
    move-object v8, v7

    const/4 v4, 0x1

    :goto_c
    iget v5, v15, Lcom/android/server/am/MARsPackageInfo;->state:I

    move/from16 v6, v16

    if-lt v5, v6, :cond_15

    goto :goto_d

    :cond_15
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v5

    if-nez v5, :cond_16

    sget-object v5, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    iget v7, v15, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {v5, v7}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidActive(I)Z

    :cond_16
    :goto_d
    add-int/lit8 v14, v14, 0x1

    move v5, v4

    move-object v7, v8

    const/4 v4, 0x0

    move v8, v6

    const/4 v6, 0x2

    goto/16 :goto_1

    :cond_17
    move v4, v5

    move v6, v8

    move-object v8, v7

    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    move v8, v6

    const/4 v6, 0x2

    goto/16 :goto_0

    :cond_18
    move-object v8, v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v12, :cond_19

    const-string v4, "LVU"

    invoke-static {v2, v0}, Lcom/android/server/am/MARsPolicyManager;->convertLevelChangeInfoToString([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    sget-object v0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    :cond_1a
    return-void

    :goto_e
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public final updateResetTime()V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v2, v2, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v3, v3, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v5, :cond_0

    new-instance v6, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    iget-object v7, v5, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    iget v7, v5, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    iget-wide v7, v5, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    iget v7, v5, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    iget-wide v7, v5, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableResetTime:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo p0, "MARsPolicyManager"

    const-string/jumbo v1, "updateResetTime"

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    sget-object p0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    :cond_3
    return-void

    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final updateRestrictionInfo(Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;Ljava/util/List;)Z
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string/jumbo v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    invoke-static {v0}, Lcom/android/server/am/MARsPolicyManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    const/16 v16, 0x0

    goto/16 :goto_1a

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->getType()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->getState()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->getReason()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v9, 0x2

    if-eqz v0, :cond_21

    const/4 v10, 0x4

    if-eq v0, v6, :cond_f

    if-eq v0, v9, :cond_6

    if-eq v0, v7, :cond_3

    :cond_2
    const/16 v16, 0x0

    goto/16 :goto_15

    :cond_3
    if-ne v4, v6, :cond_5

    const-string/jumbo v0, "deleted_from_user_manual"

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->removeRestrictedInfo(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    :cond_4
    :goto_0
    const/16 v16, 0x0

    goto/16 :goto_16

    :cond_5
    const-string/jumbo v0, "default"

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->removeRestrictedInfo(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    goto :goto_0

    :cond_6
    if-ne v4, v6, :cond_a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    invoke-virtual {v5}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v12

    if-nez v12, :cond_7

    goto :goto_1

    :cond_7
    sget-object v12, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v12

    :try_start_0
    iget-object v13, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v13, v11, v5}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v5

    if-eqz v5, :cond_8

    iget v11, v5, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    if-ge v11, v10, :cond_8

    sget-object v11, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    iget-object v13, v5, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v14, v5, Lcom/android/server/am/MARsPackageInfo;->userId:I

    iget v15, v5, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v11, 0x6

    invoke-static {v11, v14, v15, v13}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v1, v10, v5}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v11

    if-eqz v11, :cond_8

    new-instance v11, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v11}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    iget-object v13, v5, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iput-object v13, v11, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    iget v13, v5, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    iget v13, v5, Lcom/android/server/am/MARsPackageInfo;->state:I

    invoke-static {v13}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    iget v13, v5, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    invoke-virtual {v11}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v5, v5, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_8
    :goto_2
    monitor-exit v12

    goto :goto_1

    :goto_3
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    sget-object v4, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    invoke-virtual {v4, v0}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_a
    if-ne v4, v9, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    invoke-virtual {v5}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v12

    if-nez v12, :cond_b

    goto :goto_4

    :cond_b
    sget-object v12, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v12

    :try_start_1
    iget-object v13, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v13, v11, v5}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v5

    if-eqz v5, :cond_d

    const/16 v11, 0x8

    iput v11, v5, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    iget-boolean v11, v5, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-eqz v11, :cond_c

    move v11, v10

    goto :goto_5

    :cond_c
    move v11, v6

    :goto_5
    iput v11, v5, Lcom/android/server/am/MARsPackageInfo;->state:I

    new-instance v11, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v11}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    iget-object v13, v5, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iput-object v13, v11, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    iget v13, v5, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    iget v13, v5, Lcom/android/server/am/MARsPackageInfo;->state:I

    invoke-static {v13}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    iget v13, v5, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-static {v13}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    iget v13, v5, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    invoke-virtual {v11}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v5, v5, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_d
    :goto_6
    monitor-exit v12

    goto :goto_4

    :goto_7
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    sget-object v4, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    invoke-virtual {v4, v0}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_f
    if-ne v4, v6, :cond_1f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager;->getChangedByUserFromReason(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    const/16 v12, 0x40

    goto :goto_8

    :cond_10
    move v12, v9

    :goto_8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_18

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    const/16 v16, 0x0

    invoke-virtual {v15}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    move-result v15

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v17

    if-nez v17, :cond_11

    const/4 v7, 0x3

    goto :goto_9

    :cond_11
    iget-object v6, v1, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getActiveUids()Ljava/util/Map;

    move-result-object v6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    sget-object v15, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v15

    :try_start_2
    iget-object v8, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v8, v3, v7}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v8

    if-eqz v8, :cond_12

    iget v13, v8, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    if-ne v13, v10, :cond_13

    new-instance v3, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    iget-object v6, v8, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v7, v8, Lcom/android/server/am/MARsPackageInfo;->uid:I

    iget v13, v8, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-direct {v3, v6, v7, v13}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Ljava/lang/String;II)V

    invoke-static {v8, v3}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    const/16 v8, 0x40

    goto/16 :goto_b

    :catchall_2
    move-exception v0

    goto/16 :goto_c

    :cond_13
    iget-boolean v10, v8, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-eqz v10, :cond_14

    if-ge v13, v9, :cond_15

    :cond_14
    invoke-virtual {v1, v12, v8}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    :cond_15
    invoke-static {v5}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    move-result v10

    iput v10, v8, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    iput-object v5, v8, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    new-instance v10, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v10}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    iget-object v13, v8, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iput-object v13, v10, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    iget v13, v8, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    iget-boolean v13, v8, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-eqz v13, :cond_16

    const-string v13, "1"

    goto :goto_a

    :cond_16
    const-string v13, "0"

    :goto_a
    iput-object v13, v10, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    iget v13, v8, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    invoke-static {v13}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    iget v13, v8, Lcom/android/server/am/MARsPackageInfo;->state:I

    invoke-static {v13}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    move-object/from16 v18, v10

    iget-wide v9, v8, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v10, v18

    iput-object v9, v10, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    iget v9, v8, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v10, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v8, v8, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v8

    if-eqz v8, :cond_12

    const/16 v8, 0x40

    if-ne v12, v8, :cond_17

    if-nez v6, :cond_17

    const-string/jumbo v6, "auto run off"

    const-string/jumbo v9, "UserChangeFAS"

    invoke-virtual {v1, v7, v3, v6, v9}, Lcom/android/server/am/MARsPolicyManager;->addRestrictListAvoidAssoicationLaunch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_b
    monitor-exit v15

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x4

    goto/16 :goto_9

    :goto_c
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :cond_18
    const/16 v16, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v6, v16

    :goto_d
    if-ge v6, v3, :cond_1d

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-static {v7}, Lcom/android/server/am/MARsPolicyManager;->enableAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v8

    sget-object v9, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v9

    :try_start_3
    iget-object v10, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v14, v7, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iget v15, v7, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    invoke-static {v10, v14, v15}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v10

    if-eqz v10, :cond_1c

    invoke-static {v10, v7}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    if-eqz v8, :cond_1c

    invoke-virtual {v1, v12, v10}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v7

    if-eqz v7, :cond_1c

    iget v7, v10, Lcom/android/server/am/MARsPackageInfo;->state:I

    const/4 v8, 0x4

    if-le v7, v8, :cond_19

    iput v8, v10, Lcom/android/server/am/MARsPackageInfo;->state:I

    :cond_19
    invoke-static {v5}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    move-result v7

    iput v7, v10, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    iput-object v5, v10, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    const/4 v8, 0x4

    iput v8, v10, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    sget-boolean v7, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-eqz v7, :cond_1a

    iget-object v7, v1, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-object v7, v10, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    goto :goto_e

    :catchall_3
    move-exception v0

    goto :goto_11

    :cond_1a
    const/4 v7, 0x0

    iput-object v7, v10, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-object v14, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v15, v10, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v7, v10, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v14, v7, v15}, Lcom/android/server/am/MARsPkgMap;->remove(ILjava/lang/String;)V

    :goto_e
    new-instance v7, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v7}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    iget-object v14, v10, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iput-object v14, v7, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    iget v14, v10, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v7, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    iget-boolean v14, v10, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-eqz v14, :cond_1b

    const-string v14, "1"

    goto :goto_f

    :cond_1b
    const-string v14, "0"

    :goto_f
    iput-object v14, v7, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    iget v14, v10, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    invoke-static {v14}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v7, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    iget v14, v10, Lcom/android/server/am/MARsPackageInfo;->state:I

    invoke-static {v14}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v7, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    iget-wide v14, v10, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v7, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    iget v14, v10, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v7, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    iget v14, v10, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-static {v14}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v7, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v7, v10, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_1c
    const/4 v8, 0x4

    :goto_10
    monitor-exit v9

    goto/16 :goto_d

    :goto_11
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :cond_1d
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    sget-object v0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    :cond_1e
    move-object v8, v11

    goto/16 :goto_16

    :cond_1f
    move v13, v9

    const/16 v16, 0x0

    if-ne v4, v13, :cond_20

    invoke-virtual {v1, v5, v2}, Lcom/android/server/am/MARsPolicyManager;->awakePackageList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    goto/16 :goto_16

    :cond_20
    const-string/jumbo v0, "default"

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->removeRestrictedInfo(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    goto/16 :goto_16

    :cond_21
    move v3, v6

    const/16 v16, 0x0

    if-ne v4, v3, :cond_29

    const-string/jumbo v0, "added_from_anomaly_manual"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {v1, v5, v2}, Lcom/android/server/am/MARsPolicyManager;->disablePackageListForSpecific(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    goto/16 :goto_16

    :cond_22
    const-string/jumbo v0, "added_from_mars_auto_specific"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string/jumbo v0, "added_from_mars_manual_specific"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_12

    :cond_23
    invoke-virtual {v1, v5, v2}, Lcom/android/server/am/MARsPolicyManager;->disablePackageList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    goto/16 :goto_16

    :cond_24
    :goto_12
    const-string/jumbo v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move/from16 v6, v16

    :cond_25
    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :try_start_4
    invoke-interface {v3, v0}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistApp(Ljava/lang/String;)Z

    move-result v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v7, :cond_25

    :try_start_5
    invoke-interface {v3, v0}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const/4 v6, 0x1

    goto :goto_13

    :catch_0
    move-exception v0

    const/4 v6, 0x1

    goto :goto_14

    :catch_1
    move-exception v0

    :goto_14
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Doze not available : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "MARsPolicyManager"

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_26
    if-nez v6, :cond_27

    invoke-virtual {v1, v5, v2}, Lcom/android/server/am/MARsPolicyManager;->disablePackageListForSpecific(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    goto :goto_16

    :cond_27
    sget-object v0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    iget-object v3, v0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-nez v3, :cond_28

    goto :goto_15

    :cond_28
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "AppRestrictionInfo"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    iget-object v4, v0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, v0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const-wide/16 v5, 0x1388

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_15
    const/4 v8, 0x0

    goto :goto_16

    :cond_29
    const/4 v13, 0x2

    if-ne v4, v13, :cond_2a

    invoke-virtual {v1, v5, v2}, Lcom/android/server/am/MARsPolicyManager;->enablePackageList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    goto :goto_16

    :cond_2a
    const-string/jumbo v0, "default"

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->removeRestrictedInfo(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    :goto_16
    if-eqz v8, :cond_33

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    const-string/jumbo v0, "SEP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->getType()I

    move-result v5

    if-eqz v5, :cond_2e

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2d

    const/4 v13, 0x2

    if-eq v5, v13, :cond_2c

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2b

    goto :goto_17

    :cond_2b
    const-string/jumbo v5, "NSLP"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_2c
    const-string v5, "DIS-C"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_2d
    const-string/jumbo v5, "SLP"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_2e
    const-string v5, "DIS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_17
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->getState()I

    move-result v5

    if-eqz v5, :cond_31

    const/4 v6, 0x1

    if-eq v5, v6, :cond_30

    const/4 v13, 0x2

    if-eq v5, v13, :cond_2f

    goto :goto_18

    :cond_2f
    const-string v5, " OFF"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    :cond_30
    const-string v5, " ON"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    :cond_31
    const/4 v6, 0x1

    const-string v5, " NONE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_18
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " f: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_32

    move v3, v6

    goto :goto_19

    :cond_32
    move/from16 v3, v16

    :goto_19
    return v3

    :cond_33
    :goto_1a
    return v16
.end method
