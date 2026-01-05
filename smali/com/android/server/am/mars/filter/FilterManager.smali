.class public final Lcom/android/server/am/mars/filter/FilterManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mFCF:Lcom/android/server/am/mars/filter/FilterChainFactory;

.field public final mFF:Lcom/android/server/am/mars/filter/FilterFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/am/mars/filter/FilterFactory$FilterFactoryHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterFactory;

    iput-object v0, p0, Lcom/android/server/am/mars/filter/FilterManager;->mFF:Lcom/android/server/am/mars/filter/FilterFactory;

    sget-object v0, Lcom/android/server/am/mars/filter/FilterChainFactory$FilterChainFactoryHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterChainFactory;

    iput-object v0, p0, Lcom/android/server/am/mars/filter/FilterManager;->mFCF:Lcom/android/server/am/mars/filter/FilterChainFactory;

    return-void
.end method

.method public static filterForSpecificPolicy(IIILjava/lang/String;)I
    .locals 3

    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->isChinaPolicyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2, v2}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/am/mars/filter/FilterChainFactory$FilterChainFactoryHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterChainFactory;

    iget-object v0, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/mars/filter/FilterChain;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p0, p3}, Lcom/android/server/am/mars/filter/FilterChain;->filter(IIILjava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final init(Landroid/content/Context;)V
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget-object v2, v0, Lcom/android/server/am/mars/filter/FilterManager;->mFF:Lcom/android/server/am/mars/filter/FilterFactory;

    move-object/from16 v3, p1

    iput-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->mContext:Landroid/content/Context;

    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter$RecentUsedPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter$LatestProtectedPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$OngoingNotiPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPkgFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Lcom/android/server/am/mars/filter/filter/NoAppIconFilter$NoAppIconFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/NoAppIconFilter;

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter$VPNPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/4 v9, 0x7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v10, 0x8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter$ActiveTrafficFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;

    invoke-virtual {v3, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v11, 0x9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sget-object v13, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter$DeviceAdminPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;

    invoke-virtual {v3, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v12, 0xa

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    sget-object v14, Lcom/android/server/am/mars/filter/filter/WallPaperFilter$WallPaperFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/WallPaperFilter;

    invoke-virtual {v3, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v13, 0xb

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    sget-object v15, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v14, 0xc

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move/from16 p1, v4

    sget-object v4, Lcom/android/server/am/mars/filter/filter/TopPackageFilter$TopPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/TopPackageFilter;

    invoke-virtual {v3, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sget-object v4, Lcom/android/server/am/mars/filter/filter/LockScreenFilter$LockScreenFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/LockScreenFilter;

    invoke-virtual {v3, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sget-object v10, Lcom/android/server/am/mars/filter/filter/SystemFilter$SystemFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/SystemFilter;

    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v10, 0xf

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sget-object v10, Lcom/android/server/am/mars/filter/filter/RunningLocationFilter$RunningLocationFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/RunningLocationFilter;

    invoke-virtual {v3, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v10, 0x10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move/from16 v19, v1

    sget-object v1, Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter$DisableForceStopFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter;

    invoke-virtual {v3, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v3, 0x11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sget-object v7, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter$EdgeAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;

    invoke-virtual {v1, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v7, 0x12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sget-object v7, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter$JobSchedulerPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;

    invoke-virtual {v1, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v7, 0x13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sget-object v7, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$AccessibilityAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;

    invoke-virtual {v1, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v7, 0x14

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v15, Lcom/android/server/am/mars/filter/filter/AllowListFilter$AllowListFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AllowListFilter;

    invoke-virtual {v1, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v7, 0x15

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sget-object v7, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter$QuickTilePackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;

    invoke-virtual {v1, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v7, 0x16

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sget-object v7, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter$ImportantRoleFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;

    invoke-virtual {v1, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v7, 0x17

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sget-object v7, Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter$ActiveSensorFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;

    invoke-virtual {v1, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v7, 0x18

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sget-object v22, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->URI_APP_CAST_ENABLED:Landroid/net/Uri;

    sget-object v7, Lcom/android/server/am/mars/filter/filter/AppCastFilter$AppCastFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AppCastFilter;

    invoke-virtual {v1, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v7, 0x19

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sget-object v7, Lcom/android/server/am/mars/filter/filter/AODClockFilter$AODClockFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AODClockFilter;

    invoke-virtual {v1, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v7, 0x1a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sget-object v7, Lcom/android/server/am/mars/filter/filter/BackupServiceFilter$BackupServiceFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/BackupServiceFilter;

    invoke-virtual {v1, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v7, 0x1b

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sget-object v7, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter$BlueToothConnectedFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;

    invoke-virtual {v1, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v7, 0x1c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sget-object v7, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/PredownloadFilter;

    invoke-virtual {v1, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v7, 0x1d

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sget-object v7, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter$CameraInFgsFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;

    invoke-virtual {v1, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sget-object v7, Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter$ProtectedPackagesFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter;

    invoke-virtual {v1, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v7, 0x1f

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sget-object v7, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter$NFCPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;

    invoke-virtual {v1, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v7, 0x20

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sget-object v7, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$AndroidAutoFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;

    invoke-virtual {v1, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v7, 0x21

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sget-object v7, Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter$RunningBroadcastFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter;

    invoke-virtual {v1, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v1, v19

    :goto_0
    const/16 v7, 0x22

    if-ge v1, v7, :cond_0

    iget-object v7, v2, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/mars/filter/IFilter;

    iget-object v15, v2, Lcom/android/server/am/mars/filter/FilterFactory;->mContext:Landroid/content/Context;

    invoke-interface {v7, v15}, Lcom/android/server/am/mars/filter/IFilter;->init(Landroid/content/Context;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/server/am/mars/filter/FilterManager;->mFCF:Lcom/android/server/am/mars/filter/FilterChainFactory;

    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v7, Lcom/android/server/am/mars/filter/FilterFactory$FilterFactoryHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterFactory;

    invoke-virtual {v7, v11}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v15

    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v15, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    const/4 v15, 0x0

    iput-object v15, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v7, v12}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v15

    new-instance v10, Lcom/android/server/am/mars/filter/FilterChain;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v15, v10, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    iput-object v4, v10, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v7, v13}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v4

    new-instance v15, Lcom/android/server/am/mars/filter/FilterChain;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    iput-object v4, v15, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    iput-object v10, v15, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v7, v14}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v4

    new-instance v10, Lcom/android/server/am/mars/filter/FilterChain;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v4, v10, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    iput-object v15, v10, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v7, v3}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v4

    new-instance v15, Lcom/android/server/am/mars/filter/FilterChain;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    iput-object v4, v15, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    iput-object v10, v15, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v4}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    invoke-static {v7, v5, v4, v6, v8}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    invoke-static {v7, v9, v4, v11, v12}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    const/16 v10, 0xe

    const/16 v15, 0x10

    invoke-static {v7, v13, v4, v10, v15}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    invoke-virtual {v7, v3}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    iget-object v4, v4, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v4}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    move/from16 v15, v19

    const/4 v10, 0x5

    invoke-static {v7, v15, v4, v6, v10}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    const/16 v10, 0x8

    invoke-static {v7, v8, v4, v9, v10}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    invoke-static {v7, v11, v4, v12, v13}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    const/16 v10, 0xd

    const/16 v15, 0xe

    invoke-static {v7, v14, v4, v10, v15}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    const/16 v10, 0xf

    const/16 v15, 0x10

    invoke-static {v7, v10, v4, v15, v3}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    const/16 v10, 0x1b

    invoke-virtual {v7, v10}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    const/16 v10, 0x1c

    invoke-virtual {v7, v10}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    iget-object v4, v4, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v4}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    invoke-static {v7, v5, v4, v6, v8}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    invoke-static {v7, v9, v4, v11, v12}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    const/16 v15, 0xe

    invoke-static {v7, v13, v4, v15, v3}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    iget-object v4, v4, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v20, 0x5

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v4}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    invoke-static {v7, v5, v4, v6, v8}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    invoke-static {v7, v9, v4, v11, v12}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    const/16 v15, 0xe

    invoke-static {v7, v13, v4, v15, v3}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    iget-object v4, v4, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v4}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    invoke-static {v7, v6, v4, v8, v9}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    invoke-static {v7, v11, v4, v12, v13}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    const/16 v10, 0x15

    const/16 v15, 0xe

    invoke-static {v7, v15, v4, v14, v10}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    const/16 v3, 0x1b

    const/16 v10, 0x16

    const/16 v15, 0x19

    invoke-static {v7, v10, v4, v15, v3}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    const/16 v3, 0x1e

    invoke-virtual {v7, v3}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    iget-object v3, v4, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v3}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    invoke-static {v7, v6, v3, v11, v12}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    const/16 v10, 0x15

    const/16 v15, 0xe

    invoke-static {v7, v13, v3, v15, v10}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    const/16 v4, 0x1e

    const/16 v10, 0x16

    const/16 v15, 0x19

    invoke-static {v7, v10, v3, v15, v4}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    iget-object v3, v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v17, 0x8

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v3}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    move/from16 v4, p1

    invoke-static {v7, v5, v3, v4, v6}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    const/4 v10, 0x5

    invoke-static {v7, v10, v3, v8, v9}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    invoke-static {v7, v11, v3, v12, v13}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    const/16 v4, 0x11

    const/16 v15, 0xe

    invoke-static {v7, v14, v3, v15, v4}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    const/16 v10, 0x13

    invoke-virtual {v7, v10}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    const/16 v10, 0x18

    invoke-virtual {v7, v10}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    iget-object v3, v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v3}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/4 v4, 0x2

    invoke-static {v7, v8, v3, v4, v9}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    invoke-static {v7, v11, v3, v13, v14}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    const/16 v4, 0x12

    const/16 v10, 0x13

    const/16 v15, 0x18

    invoke-static {v7, v4, v3, v10, v15}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    const/16 v4, 0x1a

    invoke-virtual {v7, v4}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    invoke-virtual {v7, v12}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    iget-object v3, v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v5}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v3

    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    const/4 v3, 0x0

    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v7, v6}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v3

    new-instance v5, Lcom/android/server/am/mars/filter/FilterChain;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v3, v5, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    iput-object v4, v5, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v7, v8}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v3

    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    iput-object v5, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v7, v11}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v3

    new-instance v5, Lcom/android/server/am/mars/filter/FilterChain;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v3, v5, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    iput-object v4, v5, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v7, v12}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v3

    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    iput-object v5, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v7, v13}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v3

    new-instance v5, Lcom/android/server/am/mars/filter/FilterChain;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v3, v5, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    iput-object v4, v5, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v8}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v3

    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    const/4 v3, 0x0

    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v7, v9}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v3

    new-instance v5, Lcom/android/server/am/mars/filter/FilterChain;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v3, v5, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    iput-object v4, v5, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v7, v13}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v3

    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    iput-object v5, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    const/4 v3, 0x2

    invoke-virtual {v7, v3}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v5

    new-instance v3, Lcom/android/server/am/mars/filter/FilterChain;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v5, v3, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    iput-object v4, v3, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    const/16 v4, 0x20

    invoke-virtual {v7, v4}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v5

    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v5, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v3}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/4 v4, 0x2

    const/4 v15, 0x1

    invoke-static {v7, v15, v3, v4, v9}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    const/16 v10, 0xf

    invoke-static {v7, v10, v3, v6, v8}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    invoke-static {v7, v11, v3, v13, v14}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    const/16 v15, 0xe

    invoke-virtual {v7, v15}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    const/16 v4, 0x11

    invoke-virtual {v7, v4}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    iget-object v3, v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v15}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v3

    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    const/4 v3, 0x0

    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    const/4 v10, 0x5

    invoke-virtual {v7, v10}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v3

    new-instance v5, Lcom/android/server/am/mars/filter/FilterChain;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v3, v5, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    iput-object v4, v5, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v16, 0xd

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v3

    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    const/4 v3, 0x0

    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v15, 0xe

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v3}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/4 v4, 0x2

    const/16 v10, 0x8

    invoke-static {v7, v4, v3, v10, v8}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    invoke-static {v7, v9, v3, v11, v13}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    const/16 v10, 0xf

    invoke-static {v7, v14, v3, v15, v10}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    const/16 v4, 0x11

    const/16 v5, 0x12

    const/16 v9, 0x17

    invoke-static {v7, v4, v3, v5, v9}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    const/16 v4, 0x1a

    const/16 v10, 0x1b

    invoke-static {v7, v4, v3, v10, v12}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    const/16 v4, 0x1d

    const/16 v5, 0x1f

    const/16 v10, 0x1c

    invoke-static {v7, v10, v3, v4, v5}, Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;->m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V

    const/16 v4, 0x20

    invoke-virtual {v7, v4}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    const/16 v4, 0x21

    invoke-virtual {v7, v4}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    iget-object v3, v3, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v18, 0xf

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v6}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v3

    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    const/4 v3, 0x0

    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v7, v8}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v3

    new-instance v5, Lcom/android/server/am/mars/filter/FilterChain;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v3, v5, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    iput-object v4, v5, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v7, v11}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v3

    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    iput-object v5, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v7, v12}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v3

    new-instance v5, Lcom/android/server/am/mars/filter/FilterChain;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v3, v5, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    iput-object v4, v5, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v7, v13}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v3

    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    iput-object v5, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    const/16 v10, 0xd

    invoke-virtual {v7, v10}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v3

    new-instance v5, Lcom/android/server/am/mars/filter/FilterChain;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v3, v5, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    iput-object v4, v5, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v7, v14}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v3

    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    iput-object v5, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v21, 0x12

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v11}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/mars/filter/FilterChain;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v2, v3, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    const/4 v2, 0x0

    iput-object v2, v3, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v7, v12}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v2, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v7, v13}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/mars/filter/FilterChain;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v2, v3, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    iput-object v4, v3, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v7, v14}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    new-instance v4, Lcom/android/server/am/mars/filter/FilterChain;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v2, v4, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    iput-object v3, v4, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    const/16 v2, 0x11

    invoke-virtual {v7, v2}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/mars/filter/FilterChain;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v2, v3, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    iput-object v4, v3, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
