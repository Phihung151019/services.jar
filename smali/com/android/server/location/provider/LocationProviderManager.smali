.class public Lcom/android/server/location/provider/LocationProviderManager;
.super Lcom/android/server/location/listeners/ListenerMultiplexer;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/location/provider/AbstractLocationProvider$Listener;


# instance fields
.field public final mActiveOriginalRegistrations:Ljava/util/HashSet;

.field public final mAdasPackageAllowlistChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;

.field public final mAlarmHelper:Lcom/android/server/location/injector/SystemAlarmHelper;

.field public final mAltitudeConverter:Landroid/location/altitude/AltitudeConverter;

.field public final mAppForegroundChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda8;

.field public final mAppForegroundHelper:Lcom/android/server/location/injector/SystemAppForegroundHelper;

.field public final mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

.field public final mBackgroundThrottleIntervalChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;

.field public final mBackgroundThrottlePackageWhitelistChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;

.field public final mContext:Landroid/content/Context;

.field public mDelayedRegister:Lcom/android/server/location/provider/LocationProviderManager$4;

.field public final mEmergencyHelper:Lcom/android/server/location/injector/SystemEmergencyHelper;

.field public final mEmergencyStateChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda2;

.field public final mEnabled:Landroid/util/SparseBooleanArray;

.field public final mEnabledListeners:Ljava/util/ArrayList;

.field public final mIgnoreSettingsPackageWhitelistChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;

.field public final mInactiveMotionRegistrations:Ljava/util/HashSet;

.field public volatile mIsAltitudeConverterIdle:Z

.field public mIsSettingsIgnored:Z

.field public final mLastLocations:Landroid/util/SparseArray;

.field public final mLocationEnabledChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;

.field public final mLocationFudger:Lcom/android/server/location/fudger/LocationFudger;

.field public final mLocationManagerInternal:Landroid/location/LocationManagerInternal;

.field public final mLocationPackageBlacklistChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;

.field public final mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

.field public final mLocationPermissionsListener:Lcom/android/server/location/provider/LocationProviderManager$1;

.field public final mLocationPowerSaveModeChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda12;

.field public final mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

.field public final mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

.field public final mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

.field public final mLocationUserSettingsListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda4;

.field public final mMotionPowerSaveModeChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda3;

.field public final mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

.field public final mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

.field public final mName:Ljava/lang/String;

.field public final mPackageResetHelper:Lcom/android/server/location/injector/SystemPackageResetHelper;

.field public final mPackageResetResponder:Lcom/android/server/location/provider/LocationProviderManager$2;

.field public final mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

.field public final mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

.field public final mProviderRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mRequiredPermissions:Ljava/util/Collection;

.field public final mScreenInteractiveChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;

.field public final mScreenInteractiveHelper:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

.field public final mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

.field public mState:I

.field public mStateChangedListener:Lcom/android/server/location/LocationManagerService;

.field public final mUserChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda0;

.field public final mUserHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;)V
    .locals 6

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;Ljava/util/Collection;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;-><init>()V

    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationUserSettingsListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda4;

    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/provider/LocationProviderManager;I)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationEnabledChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;

    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/location/provider/LocationProviderManager;I)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mBackgroundThrottlePackageWhitelistChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;

    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/provider/LocationProviderManager;I)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPackageBlacklistChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;

    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$1;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsListener:Lcom/android/server/location/provider/LocationProviderManager$1;

    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppForegroundChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda8;

    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/location/provider/LocationProviderManager;I)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mBackgroundThrottleIntervalChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;

    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/location/provider/LocationProviderManager;I)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAdasPackageAllowlistChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;

    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/location/provider/LocationProviderManager;I)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mIgnoreSettingsPackageWhitelistChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;

    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda12;

    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;

    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEmergencyStateChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda2;

    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mMotionPowerSaveModeChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda3;

    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$2;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mPackageResetResponder:Lcom/android/server/location/provider/LocationProviderManager$2;

    new-instance v0, Landroid/location/altitude/AltitudeConverter;

    invoke-direct {v0}, Landroid/location/altitude/AltitudeConverter;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAltitudeConverter:Landroid/location/altitude/AltitudeConverter;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mIsAltitudeConverterIdle:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mIsSettingsIgnored:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mInactiveMotionRegistrations:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mActiveOriginalRegistrations:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mContext:Landroid/content/Context;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    new-instance p3, Landroid/util/SparseBooleanArray;

    invoke-direct {p3, p1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3, p1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    iput-object p5, p0, Lcom/android/server/location/provider/LocationProviderManager;->mRequiredPermissions:Ljava/util/Collection;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabledListeners:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProviderRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-class p1, Landroid/location/LocationManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManagerInternal;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    check-cast p2, Lcom/android/server/location/LocationManagerService$SystemInjector;

    iget-object p1, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    iget-object p1, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    iget-object p3, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    iget-object p3, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAlarmHelper:Lcom/android/server/location/injector/SystemAlarmHelper;

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAlarmHelper:Lcom/android/server/location/injector/SystemAlarmHelper;

    iget-object p3, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    iget-object p3, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    iget-object p3, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppForegroundHelper:Lcom/android/server/location/injector/SystemAppForegroundHelper;

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppForegroundHelper:Lcom/android/server/location/injector/SystemAppForegroundHelper;

    iget-object p3, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    iget-object p3, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mScreenInteractiveHelper:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveHelper:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

    iget-object p3, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    new-instance p3, Lcom/android/server/location/fudger/LocationFudger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p4

    iget-object p1, p1, Lcom/android/server/location/injector/SystemSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    :try_start_0
    const-string/jumbo v0, "locationCoarseAccuracy"

    invoke-virtual {p1}, Landroid/content/ContentResolver;->getUserId()I

    move-result v1

    const/high16 v2, 0x44fa0000    # 2000.0f

    invoke-static {p1, v0, v2, v1}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeClock()Ljava/time/Clock;

    move-result-object p4

    new-instance p5, Ljava/security/SecureRandom;

    invoke-direct {p5}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p3, p1, p4, p5}, Lcom/android/server/location/fudger/LocationFudger;-><init>(FLjava/time/Clock;Ljava/util/Random;)V

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationFudger:Lcom/android/server/location/fudger/LocationFudger;

    invoke-virtual {p2}, Lcom/android/server/location/LocationManagerService$SystemInjector;->getEmergencyHelper()Lcom/android/server/location/injector/SystemEmergencyHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEmergencyHelper:Lcom/android/server/location/injector/SystemEmergencyHelper;

    iget-object p1, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mPackageResetHelper:Lcom/android/server/location/injector/SystemPackageResetHelper;

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mPackageResetHelper:Lcom/android/server/location/injector/SystemPackageResetHelper;

    new-instance p1, Lcom/android/server/location/provider/MockableLocationProvider;

    iget-object p3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    invoke-direct {p1, p3}, Lcom/android/server/location/provider/MockableLocationProvider;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    iget-object p1, p1, Lcom/android/server/location/provider/AbstractLocationProvider;->mController:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->setListener(Lcom/android/server/location/provider/AbstractLocationProvider$Listener;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    iget-object p1, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    iget-object p1, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method


# virtual methods
.method public final addEnabledListener(Landroid/location/LocationManagerInternal$ProviderEnabledListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabledListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public calculateRequestDelayMillis(JLjava/util/Collection;)J
    .locals 16

    move-object/from16 v0, p3

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v4, v2

    move-wide/from16 v2, p1

    :goto_0
    if-ge v4, v1, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-nez v8, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v5}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getLastDeliveredLocation()Landroid/location/Location;

    move-result-object v9

    if-nez v9, :cond_1

    invoke-virtual {v8}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v9, v5, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v9}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v11

    invoke-virtual {v5}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getPermissionLevel()I

    move-result v12

    const/4 v15, 0x0

    invoke-virtual {v8}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v13

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIJZ)Landroid/location/Location;

    move-result-object v9

    :cond_1
    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v8}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v10

    invoke-virtual {v9}, Landroid/location/Location;->getElapsedRealtimeAgeMillis()J

    move-result-wide v8

    sub-long/2addr v10, v8

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    :goto_1
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_0

    :cond_3
    :goto_2
    return-wide v2
.end method

.method public final checkSettingsIgnoredChanged(ZZLjava/util/Collection;)V
    .locals 3

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    iput-boolean p2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mIsSettingsIgnored:Z

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda13;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda13;-><init>(I)V

    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    :cond_1
    iget-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_2

    new-instance p1, Ljava/lang/Throwable;

    const-string/jumbo v1, "stack dump"

    invoke-direct {p1, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "throwable"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    const-string/jumbo p1, "provider"

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "ignored"

    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p3, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object p1, Landroid/location/LocationConstants$STATE_TYPE;->SETTINGS_IGNORED_STATE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 11

    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " provider"

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/provider/MockableLocationProvider;->isMock()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " [mock]"

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    :goto_0
    const-string v0, ":"

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    invoke-virtual {v0}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->getRunningUserIds()[I

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget v5, v0, v3

    array-length v4, v0

    const/4 v10, 0x1

    if-eq v4, v10, :cond_1

    const-string/jumbo v4, "user "

    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v4, ":"

    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_1
    const-string/jumbo v4, "last location="

    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-wide v7, 0x7fffffffffffffffL

    const/4 v6, 0x2

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIJZ)Landroid/location/Location;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo p0, "enabled="

    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    move-result p0

    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    array-length p0, v0

    if-eq p0, v10, :cond_2

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move-object p0, v4

    goto :goto_1

    :cond_3
    move-object v4, p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, v4, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/provider/MockableLocationProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getLastLocationUnsafe(IIJZ)Landroid/location/Location;
    .locals 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    invoke-virtual {p1}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->getRunningUserIds()[I

    move-result-object p1

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_2

    aget v4, p1, v1

    move-object v3, p0

    move v5, p2

    move-wide v6, p3

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIJZ)Landroid/location/Location;

    move-result-object p0

    if-eqz v2, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide p2

    invoke-virtual {v2}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide p4

    cmp-long p2, p2, p4

    if-lez p2, :cond_1

    :cond_0
    move-object v2, p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move-object p0, v3

    move p2, v5

    move-wide p3, v6

    move p5, v8

    goto :goto_0

    :cond_2
    return-object v2

    :cond_3
    move-object v3, p0

    move v5, p2

    move-wide v6, p3

    move v8, p5

    const/4 p0, -0x2

    if-ne p1, p0, :cond_4

    iget-object p0, v3, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->getCurrentUserId()I

    move-result v4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIJZ)Landroid/location/Location;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x1

    if-ltz p1, :cond_5

    move p2, p0

    goto :goto_1

    :cond_5
    move p2, v1

    :goto_1
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object p2, v3, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget p3, v3, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 p4, 0x2

    if-eq p3, p4, :cond_6

    move v1, p0

    :cond_6
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p3, v3, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;

    if-nez p1, :cond_7

    move-object p0, v2

    goto :goto_2

    :cond_7
    if-eq v5, p0, :cond_a

    if-ne v5, p4, :cond_9

    if-eqz v8, :cond_8

    iget-object p0, p1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineBypassLocation:Landroid/location/Location;

    goto :goto_2

    :cond_8
    iget-object p0, p1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineLocation:Landroid/location/Location;

    goto :goto_2

    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_a
    if-eqz v8, :cond_b

    iget-object p0, p1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseBypassLocation:Landroid/location/Location;

    goto :goto_2

    :cond_b
    iget-object p0, p1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseLocation:Landroid/location/Location;

    :goto_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_c

    goto :goto_3

    :cond_c
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeAgeMillis()J

    move-result-wide p1

    cmp-long p1, p1, v6

    if-lez p1, :cond_d

    :goto_3
    return-object v2

    :cond_d
    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getPermittedLocationResult(Landroid/location/LocationResult;I)Landroid/location/LocationResult;
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 p0, 0x2

    if-ne p2, p0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationFudger:Lcom/android/server/location/fudger/LocationFudger;

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedFineLocationResult:Landroid/location/LocationResult;

    if-eq p1, p2, :cond_3

    iget-object p2, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocationResult:Landroid/location/LocationResult;

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance p2, Lcom/android/server/location/fudger/LocationFudger$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/location/fudger/LocationFudger$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/fudger/LocationFudger;)V

    invoke-virtual {p1, p2}, Landroid/location/LocationResult;->map(Ljava/util/function/Function;)Landroid/location/LocationResult;

    move-result-object p2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedFineLocationResult:Landroid/location/LocationResult;

    iput-object p2, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocationResult:Landroid/location/LocationResult;

    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_3
    :goto_0
    :try_start_2
    iget-object p1, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocationResult:Landroid/location/LocationResult;

    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public getServiceState()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/location/provider/ProviderRequest;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final isActive(Lcom/android/server/location/listeners/RemovableListenerRegistration;)Z
    .locals 9

    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isPermitted()Z

    move-result v0

    const/4 v1, 0x1

    const-string/jumbo v2, "gps"

    const/4 v3, 0x0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    move v0, v3

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest;->isBypass()Z

    move-result v0

    iget-object v4, p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {p0, v0, v4}, Lcom/android/server/location/provider/LocationProviderManager;->isActive(ZLandroid/location/util/identity/CallerIdentity;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    iget-boolean v4, v0, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mReady:Z

    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget v0, v0, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mLocationPowerSaveMode:I

    const/4 v4, 0x4

    if-eq v0, v1, :cond_4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_5

    const/4 v5, 0x3

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_5

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isForeground()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveHelper:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

    iget-boolean v5, v0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mReady:Z

    invoke-static {v5}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-boolean v0, v0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mIsInteractive:Z

    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getInstance()Lcom/android/server/location/gnss/sec/CarrierConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isChinaCarrier()Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_0

    :cond_6
    sget-object v5, Lcom/android/server/location/gnss/sec/GnssConstants;->NAVIGATION_APP_LIST:[Ljava/lang/String;

    move v6, v3

    :goto_1
    if-ge v6, v4, :cond_0

    aget-object v7, v5, v6

    new-instance v8, Ljava/lang/String;

    invoke-static {v7, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    :goto_2
    move v0, v1

    :goto_3
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_6

    :cond_9
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    if-eqz v0, :cond_c

    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mActiveOriginalRegistrations:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_b

    const-string/jumbo v4, "LocationManagerService"

    const-string/jumbo v5, "try to release motion power when coming new active request"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, v2, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mIsMotionPowerSaveMode:Z

    if-nez v5, :cond_a

    goto :goto_4

    :cond_a
    const-string/jumbo v5, "checkMotionPowerSaveMode, motion power save mode is changed to false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Landroid/location/LocationConstants$STATE_TYPE;->MOTION_POWER_DISABLE:Landroid/location/LocationConstants$STATE_TYPE;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    invoke-virtual {v6, v4, v5}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->notifyMotionPowerSaveModeChanged(Z)V

    :cond_b
    :goto_4
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mActiveOriginalRegistrations:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mActiveOriginalRegistrations:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_5
    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/LocationRequest;->isBypass()Z

    move-result v4

    if-nez v4, :cond_f

    iget-boolean v0, p1, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActiveMotionControl:Z

    if-eq v1, v0, :cond_d

    iput-boolean v1, p1, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActiveMotionControl:Z

    :cond_d
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mInactiveMotionRegistrations:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mInactiveMotionRegistrations:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-virtual {v2, v1}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->onAvailableMotionStop(Z)V

    :cond_e
    iget-boolean p0, v2, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mIsMotionPowerSaveMode:Z

    xor-int/2addr p0, v1

    return p0

    :cond_f
    iget-boolean v4, p1, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActiveMotionControl:Z

    if-eqz v4, :cond_10

    iput-boolean v3, p1, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActiveMotionControl:Z

    :cond_10
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mInactiveMotionRegistrations:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mInactiveMotionRegistrations:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p0

    if-ne p0, v1, :cond_11

    invoke-virtual {v2, v3}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->onAvailableMotionStop(Z)V

    :cond_11
    :goto_6
    return v0
.end method

.method public final isActive(ZLandroid/location/util/identity/CallerIdentity;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->isSystemServer()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    if-eqz v0, :cond_0

    if-nez p1, :cond_3

    invoke-virtual {v1}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->getCurrentUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->isVisibleUserId(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result p1

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/injector/SystemSettingsHelper;->isLocationPackageBlacklisted(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final isEnabled(I)Z
    .locals 4

    const/16 v0, -0x2710

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    invoke-virtual {p1}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->getCurrentUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    move-result p0

    return p0

    :cond_1
    if-ltz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_3

    const-string/jumbo v1, "LocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " provider saw user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " unexpectedly"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onEnabledChanged(I)V

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isVisibleToCaller()Z
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/provider/MockableLocationProvider;->isMock()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mRequiredPermissions:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_3
    return v2
.end method

.method public mergeRegistrations(Ljava/util/Collection;)Landroid/location/provider/ProviderRequest;
    .locals 17

    move-object/from16 v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide v3, 0x7fffffffffffffffL

    const/16 v5, 0x68

    const/4 v6, 0x1

    move-wide v7, v3

    move-wide v9, v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v1, :cond_1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    check-cast v14, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    invoke-virtual {v14}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v14

    invoke-virtual {v14}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v15

    cmp-long v15, v15, v3

    if-nez v15, :cond_0

    goto :goto_0

    :cond_0
    move-wide v15, v3

    invoke-virtual {v14}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v2

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-virtual {v14}, Landroid/location/LocationRequest;->getQuality()I

    move-result v2

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v14}, Landroid/location/LocationRequest;->getMaxUpdateDelayMillis()J

    move-result-wide v2

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    invoke-virtual {v14}, Landroid/location/LocationRequest;->isAdasGnssBypass()Z

    move-result v2

    or-int/2addr v11, v2

    invoke-virtual {v14}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result v2

    or-int/2addr v12, v2

    invoke-virtual {v14}, Landroid/location/LocationRequest;->isLowPower()Z

    move-result v2

    and-int/2addr v6, v2

    move-wide v3, v15

    goto :goto_0

    :cond_1
    move-wide v15, v3

    cmp-long v1, v7, v15

    if-nez v1, :cond_2

    sget-object v0, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    return-object v0

    :cond_2
    const-wide/16 v1, 0x2

    div-long v3, v9, v1

    cmp-long v3, v3, v7

    if-gez v3, :cond_3

    const-wide/16 v9, 0x0

    :cond_3
    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v3

    div-long/2addr v3, v1

    const/4 v1, 0x3

    invoke-static {v3, v4, v1}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-wide v1, 0x7ffffffffffffffeL

    :goto_1
    new-instance v3, Landroid/os/WorkSource;

    invoke-direct {v3}, Landroid/os/WorkSource;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v13, 0x0

    :cond_4
    :goto_2
    if-ge v13, v4, :cond_5

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    check-cast v14, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    invoke-virtual {v14}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v15

    invoke-virtual {v15}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v15

    cmp-long v15, v15, v1

    if-gtz v15, :cond_4

    invoke-virtual {v14}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v14

    invoke-virtual {v14}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_2

    :cond_5
    new-instance v0, Landroid/location/provider/ProviderRequest$Builder;

    invoke-direct {v0}, Landroid/location/provider/ProviderRequest$Builder;-><init>()V

    invoke-virtual {v0, v7, v8}, Landroid/location/provider/ProviderRequest$Builder;->setIntervalMillis(J)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/location/provider/ProviderRequest$Builder;->setQuality(I)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Landroid/location/provider/ProviderRequest$Builder;->setMaxUpdateDelayMillis(J)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/location/provider/ProviderRequest$Builder;->setAdasGnssBypass(Z)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/location/provider/ProviderRequest$Builder;->setLocationSettingsIgnored(Z)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/location/provider/ProviderRequest$Builder;->setLowPower(Z)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/location/provider/ProviderRequest$Builder;->setWorkSource(Landroid/os/WorkSource;)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest$Builder;->build()Landroid/location/provider/ProviderRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->mergeRegistrations(Ljava/util/Collection;)Landroid/location/provider/ProviderRequest;

    move-result-object p0

    return-object p0
.end method

.method public final onEnabledChanged(I)V
    .locals 8

    const/16 v0, -0x2710

    if-ne p1, v0, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    invoke-virtual {p1}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->getRunningUserIds()[I

    move-result-object p1

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_5

    aget v0, p1, v1

    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager;->onEnabledChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ltz p1, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    iget-object v2, v2, Lcom/android/server/location/provider/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    iget-object v2, v2, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    iget-boolean v2, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    invoke-virtual {v2, p1}, Lcom/android/server/location/injector/SystemSettingsHelper;->isLocationEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_4

    move-object v2, v3

    goto :goto_3

    :cond_4
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_3
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v4, v0, :cond_6

    :cond_5
    :goto_4
    return-void

    :cond_6
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    if-nez v2, :cond_7

    if-eqz v0, :cond_8

    :cond_7
    const-string/jumbo v5, "[u"

    const-string/jumbo v6, "] "

    const-string v7, " provider enabled = "

    invoke-static {p1, v5, v6, v4, v7}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "LocationManagerService"

    invoke-static {v6, v5, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    sget-object v5, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEnabledEvent;

    invoke-direct {v6, p1, v4, v0}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEnabledEvent;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v5, v6}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog$1(Ljava/lang/Object;)V

    :cond_8
    if-nez v0, :cond_9

    iget-object v5, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;

    if-eqz v5, :cond_9

    iput-object v3, v5, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineLocation:Landroid/location/Location;

    iput-object v3, v5, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseLocation:Landroid/location/Location;

    :cond_9
    if-eqz v2, :cond_b

    const-string/jumbo v2, "passive"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.location.extra.PROVIDER_NAME"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "android.location.extra.PROVIDER_ENABLED"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_a
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabledListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabledListeners:Ljava/util/ArrayList;

    new-array v1, v1, [Landroid/location/LocationManagerInternal$ProviderEnabledListener;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/location/LocationManagerInternal$ProviderEnabledListener;

    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda19;

    invoke-direct {v3, p0, v1, p1, v0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/location/provider/LocationProviderManager;[Landroid/location/LocationManagerInternal$ProviderEnabledListener;IZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_b
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda20;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda20;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final onRegister()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    iget-object v1, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mBackgroundThrottleIntervalChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;

    invoke-virtual {v1, v2}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    iget-object v1, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mBackgroundThrottlePackageWhitelistChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;

    invoke-virtual {v1, v2}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    iget-object v1, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPackageBlacklistChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;

    invoke-virtual {v1, v2}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    iget-object v1, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v1, v2}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    iget-object v1, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mAdasPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    iget-object v1, v1, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAdasPackageAllowlistChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mIgnoreSettingsPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    iget-object v0, v0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mIgnoreSettingsPackageWhitelistChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    iget-object v0, v0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsListener:Lcom/android/server/location/provider/LocationProviderManager$1;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppForegroundHelper:Lcom/android/server/location/injector/SystemAppForegroundHelper;

    iget-object v0, v0, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppForegroundChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda8;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    iget-object v0, v0, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda12;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveHelper:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

    iget-object v0, v0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEmergencyHelper:Lcom/android/server/location/injector/SystemEmergencyHelper;

    iget-object v0, v0, Lcom/android/server/location/injector/EmergencyHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEmergencyStateChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mPackageResetResponder:Lcom/android/server/location/provider/LocationProviderManager$2;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mPackageResetHelper:Lcom/android/server/location/injector/SystemPackageResetHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/location/injector/SystemPackageResetHelper;->register(Lcom/android/server/location/injector/PackageResetHelper$Responder;)V

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    iget-object v0, v0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mMotionPowerListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mMotionPowerSaveModeChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda3;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    .locals 12

    check-cast p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    iget-object v0, p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v7

    instance-of v8, p1, Landroid/app/PendingIntent;

    instance-of v9, p1, Landroid/os/IBinder;

    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isForeground()Z

    move-result v11

    const/4 v2, 0x0

    const/4 v10, 0x0

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    const/4 v3, 0x1

    iget-object v6, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V

    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    if-eqz p1, :cond_3

    iget-object v0, p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v1

    const-string/jumbo v2, "updateRequestInfo, uid="

    const-string/jumbo v3, "NSLocationProviderHelper"

    invoke-static {v1, v2, v3}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mListenerId:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mRegistrationMap:Ljava/util/Map;

    new-instance v5, Lcom/android/server/location/nsflp/NSLocationProviderHelper$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    check-cast v4, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v4, p0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x3e8

    if-ne v1, v4, :cond_0

    const-string/jumbo v4, "passive"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/Throwable;

    const-string/jumbo v5, "stack dump"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v5

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "packageName"

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "provider"

    invoke-virtual {v6, v7, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "listenerid"

    invoke-virtual {v6, p0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v7

    const-string/jumbo p0, "interval"

    invoke-virtual {v6, p0, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo p0, "minUpdateInterval"

    invoke-virtual {v5}, Landroid/location/LocationRequest;->getMinUpdateIntervalMillis()J

    move-result-wide v7

    invoke-virtual {v6, p0, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo p0, "quality"

    invoke-virtual {v5}, Landroid/location/LocationRequest;->getQuality()I

    move-result v2

    invoke-virtual {v6, p0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p0, "pid"

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v2

    invoke-virtual {v6, p0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p0, "uid"

    invoke-virtual {v6, p0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p0, "foreground"

    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isForeground()Z

    move-result v2

    invoke-virtual {v6, p0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p0, "throwable"

    invoke-virtual {v6, p0, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-boolean p0, p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isListenerType:Z

    const-string/jumbo v2, "listenerType"

    invoke-virtual {v6, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p0, "isAllowed"

    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isPermitted()Z

    move-result v2

    invoke-virtual {v6, p0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p0, "smallestDisplacement"

    invoke-virtual {v5}, Landroid/location/LocationRequest;->getMinUpdateDistanceMeters()F

    move-result v2

    invoke-virtual {v6, p0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo p0, "numUpdates"

    invoke-virtual {v5}, Landroid/location/LocationRequest;->getMaxUpdates()I

    move-result v2

    invoke-virtual {v6, p0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p0, "permissionLevel"

    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getPermissionLevel()I

    move-result p2

    invoke-virtual {v6, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p0, "attributionTag"

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "settingsByPass"

    invoke-virtual {v5}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result p2

    invoke-virtual {v6, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v5}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/os/WorkSource;->size()I

    move-result p2

    if-lez p2, :cond_2

    :try_start_0
    invoke-virtual {p0}, Landroid/os/WorkSource;->size()I

    move-result p2

    new-array v0, p2, [I

    new-array v2, p2, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p2, :cond_1

    invoke-virtual {p0, v4}, Landroid/os/WorkSource;->getUid(I)I

    move-result v5

    aput v5, v0, v4

    invoke-virtual {p0, v4}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v4, "workSourceSize"

    invoke-virtual {v6, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "workSourceUids"

    invoke-virtual {v6, p2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string/jumbo p2, "workSourceNames"

    invoke-virtual {v6, p2, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to put worksource["

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "]"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    invoke-virtual {p1, v1, v6}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->updateUidProcState(ILandroid/os/Bundle;)V

    iget-object p0, p1, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object p1, Landroid/location/LocationConstants$STATE_TYPE;->LOCATION_REQUEST:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, p1, v6}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    :cond_3
    return-void
.end method

.method public final onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    .locals 12

    check-cast p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    iget-object v0, p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v7

    instance-of v8, p1, Landroid/app/PendingIntent;

    instance-of v9, p1, Landroid/os/IBinder;

    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isForeground()Z

    move-result v11

    const/4 v2, 0x1

    const/4 v10, 0x0

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    const/4 v3, 0x1

    iget-object v6, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V

    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    if-eqz p1, :cond_3

    iget-object v0, p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v1

    const-string/jumbo v2, "updateRemoveInfo, uid="

    const-string/jumbo v3, "NSLocationProviderHelper"

    invoke-static {v1, v2, v3}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mRegistrationMap:Ljava/util/Map;

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "updateRemoveInfo, Registration map does not contains key "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". So return"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p1, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mRegistrationMap:Ljava/util/Map;

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "packageName"

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mListenerId:Ljava/lang/String;

    const-string/jumbo v2, "listenerid"

    invoke-virtual {p0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "pid"

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "uid"

    invoke-virtual {p0, p2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, v1, p0}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->updateUidProcState(ILandroid/os/Bundle;)V

    iget-object p1, p1, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object p2, Landroid/location/LocationConstants$STATE_TYPE;->LOCATION_REMOVE:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p1, p2, p0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void

    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "updateRemoveInfo, Registration "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " set is null or empty. So return"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public final onRegistrationReplaced(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    .locals 1

    check-cast p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    check-cast p4, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getLastDeliveredLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p4, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mLastLocation:Landroid/location/Location;

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationReplaced(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    return-void
.end method

.method public final onReportLocation(Landroid/location/LocationResult;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {p1}, Landroid/location/LocationResult;->validate()Landroid/location/LocationResult;
    :try_end_0
    .catch Landroid/location/LocationResult$BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v0, "enable_location_provider_manager_msl"

    const-string/jumbo v2, "location"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda15;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda15;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/location/LocationResult;->map(Ljava/util/function/Function;)Landroid/location/LocationResult;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Dropping invalid locations: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "LocationManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto/16 :goto_5

    :cond_1
    sget-object v2, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/location/LocationResult;->size()I

    move-result v4

    monitor-enter v2

    :try_start_1
    iget-object v5, v2, Lcom/android/server/location/eventlog/LocationEventLog;->mLocationsLog:Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/server/location/eventlog/LocationEventLog$ProviderReceiveLocationEvent;

    invoke-direct {v6, v3, v4}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderReceiveLocationEvent;-><init>(Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4, v6}, Lcom/android/server/location/eventlog/LocalEventLog;->addLog(JLjava/lang/Object;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    invoke-virtual {v0}, Landroid/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object v3

    iget-boolean v4, v2, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHasNsflpFeature:Z

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, v2, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    new-instance v5, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2, v3}, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/nsflp/NSConnectionHelper;Landroid/location/Location;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_3
    move-object v0, p1

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    const/4 v5, -0x2

    const/4 v6, 0x2

    const/4 v9, 0x1

    const-wide v7, 0x7fffffffffffffffL

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIJZ)Landroid/location/Location;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p1, v3}, Landroid/location/LocationResult;->get(I)Landroid/location/Location;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v5

    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide p0

    cmp-long p0, v5, p0

    if-gez p0, :cond_6

    const-string/jumbo p0, "LocationManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "non-monotonic location received from "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v4, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    move-object v4, p0

    :cond_6
    :goto_2
    invoke-virtual {v0}, Landroid/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {v4, p1, p0}, Lcom/android/server/location/provider/LocationProviderManager;->setLastLocation(ILandroid/location/Location;)V

    new-instance p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda15;

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda15;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->deliverToListeners(Ljava/util/function/Function;)V

    iget-object p0, v4, Lcom/android/server/location/provider/LocationProviderManager;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    if-eqz p0, :cond_8

    iget-object p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    iget-object v2, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object p0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    check-cast p0, Lcom/android/server/location/provider/PassiveLocationProvider;

    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    move v1, v3

    :goto_3
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->reportLocation(Landroid/location/LocationResult;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_3
    move-exception v0

    move-object p0, v0

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw p0

    :goto_4
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw p0

    :cond_8
    :goto_5
    return-void
.end method

.method public final onStateChanged(Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V
    .locals 3

    iget-boolean v0, p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    iget-boolean v1, p2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager;->onEnabledChanged(I)V

    :cond_0
    iget-object v0, p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    iget-object v1, p2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda13;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda13;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mStateChangedListener:Lcom/android/server/location/LocationManagerService;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda30;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda30;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V

    check-cast v1, Landroid/os/HandlerExecutor;

    invoke-virtual {v1, v2}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public final onTransferUnregisteredRegistration(Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    .locals 2

    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    const-string/jumbo v0, "gps"

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mActiveOriginalRegistrations:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-boolean v0, p1, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActiveMotionControl:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActiveMotionControl:Z

    :cond_1
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mInactiveMotionRegistrations:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mInactiveMotionRegistrations:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->onAvailableMotionStop(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onUnregister()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    iget-object v1, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mBackgroundThrottleIntervalChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;

    invoke-virtual {v1, v2}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    iget-object v1, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mBackgroundThrottlePackageWhitelistChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;

    invoke-virtual {v1, v2}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    iget-object v1, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPackageBlacklistChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;

    invoke-virtual {v1, v2}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    iget-object v1, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v1, v2}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    iget-object v1, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mAdasPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    iget-object v1, v1, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAdasPackageAllowlistChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mIgnoreSettingsPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    iget-object v0, v0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mIgnoreSettingsPackageWhitelistChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    iget-object v0, v0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsListener:Lcom/android/server/location/provider/LocationProviderManager$1;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppForegroundHelper:Lcom/android/server/location/injector/SystemAppForegroundHelper;

    iget-object v0, v0, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppForegroundChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda8;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    iget-object v0, v0, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda12;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveHelper:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

    iget-object v0, v0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEmergencyHelper:Lcom/android/server/location/injector/SystemEmergencyHelper;

    iget-object v0, v0, Lcom/android/server/location/injector/EmergencyHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEmergencyStateChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mPackageResetResponder:Lcom/android/server/location/provider/LocationProviderManager$2;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mPackageResetHelper:Lcom/android/server/location/injector/SystemPackageResetHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/location/injector/SystemPackageResetHelper;->unregister(Lcom/android/server/location/injector/PackageResetHelper$Responder;)V

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    iget-object v0, v0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mMotionPowerListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mMotionPowerSaveModeChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda3;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onUserStarted(I)V
    .locals 1

    const/16 v0, -0x2710

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager;->onEnabledChanged(I)V

    return-void

    :cond_1
    if-ltz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onEnabledChanged(I)V

    return-void
.end method

.method public final registerAndHandleIdentity(Ljava/lang/Object;Lcom/android/server/location/provider/LocationProviderManager$Registration;Ljava/lang/Runnable;)V
    .locals 6

    iget-object v0, p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mEmergencyHelper:Lcom/android/server/location/injector/SystemEmergencyHelper;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/injector/SystemEmergencyHelper;->isInEmergency(J)Z

    move-result v0

    iget-object v1, p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, v1, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean v0, p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIsInEmergency:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v3}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v4

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_1

    new-instance v4, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda37;

    const/4 v5, 0x3

    invoke-direct {v4, v5, v3}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda37;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/android/server/location/listeners/ListenerMultiplexer;->getRegistrationCountWith(Ljava/util/function/Predicate;)I

    move-result v3

    const/16 v4, 0x1e

    if-ge v3, v4, :cond_2

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->putRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public final registerWithService(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 1

    check-cast p2, Landroid/location/provider/ProviderRequest;

    invoke-virtual {p2}, Landroid/location/provider/ProviderRequest;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/location/provider/LocationProviderManager;->reregisterWithService(Landroid/location/provider/ProviderRequest;Landroid/location/provider/ProviderRequest;Ljava/util/Collection;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final removeEnabledListener(Landroid/location/LocationManagerInternal$ProviderEnabledListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabledListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final reregisterWithService(Landroid/location/provider/ProviderRequest;Landroid/location/provider/ProviderRequest;Ljava/util/Collection;)V
    .locals 7

    invoke-virtual {p1}, Landroid/location/provider/ProviderRequest;->isBypass()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/location/provider/ProviderRequest;->isBypass()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    move-wide v3, v1

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, p3}, Lcom/android/server/location/provider/LocationProviderManager;->calculateRequestDelayMillis(JLjava/util/Collection;)J

    move-result-wide v3

    :goto_1
    cmp-long v0, v3, v1

    if-ltz v0, :cond_2

    invoke-virtual {p2}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    const-wide/16 v0, 0x7530

    cmp-long v0, v3, v0

    if-gez v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/android/server/location/provider/LocationProviderManager;->setProviderRequest(Landroid/location/provider/ProviderRequest;)V

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " provider delaying request update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Lcom/android/server/location/provider/LocationProviderManager$4;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAlarmHelper:Lcom/android/server/location/injector/SystemAlarmHelper;

    if-eqz v0, :cond_4

    invoke-virtual {v1, v0}, Lcom/android/server/location/injector/SystemAlarmHelper;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Lcom/android/server/location/provider/LocationProviderManager$4;

    :cond_4
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$4;

    invoke-direct {v0, p0, p2}, Lcom/android/server/location/provider/LocationProviderManager$4;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/provider/ProviderRequest;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Lcom/android/server/location/provider/LocationProviderManager$4;

    invoke-virtual {v1, v3, v4, v0}, Lcom/android/server/location/injector/SystemAlarmHelper;->setDelayedAlarm(JLandroid/app/AlarmManager$OnAlarmListener;)V

    :goto_3
    invoke-virtual {p1}, Landroid/location/provider/ProviderRequest;->isLocationSettingsIgnored()Z

    move-result p1

    invoke-virtual {p2}, Landroid/location/provider/ProviderRequest;->isLocationSettingsIgnored()Z

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/provider/LocationProviderManager;->checkSettingsIgnoredChanged(ZZLjava/util/Collection;)V

    return-void
.end method

.method public final bridge synthetic reregisterWithService(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z
    .locals 0

    check-cast p1, Landroid/location/provider/ProviderRequest;

    check-cast p2, Landroid/location/provider/ProviderRequest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/provider/LocationProviderManager;->reregisterWithService(Landroid/location/provider/ProviderRequest;Landroid/location/provider/ProviderRequest;Ljava/util/Collection;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final setLastLocation(ILandroid/location/Location;)V
    .locals 8

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    invoke-virtual {p1}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->getRunningUserIds()[I

    move-result-object p1

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_0

    aget v0, p1, v1

    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/provider/LocationProviderManager;->setLastLocation(ILandroid/location/Location;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    invoke-virtual {p1}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->getCurrentUserId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->setLastLocation(ILandroid/location/Location;)V

    return-void

    :cond_2
    if-ltz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;

    if-nez v1, :cond_4

    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    move-result p0

    const-wide/32 v2, 0x927c0

    if-eqz p0, :cond_9

    iget-object p0, v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineLocation:Landroid/location/Location;

    if-nez p0, :cond_5

    :goto_2
    move-object p0, p2

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    cmp-long p1, v4, v6

    if-lez p1, :cond_6

    goto :goto_2

    :cond_6
    :goto_3
    iput-object p0, v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineLocation:Landroid/location/Location;

    iget-object p0, v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseLocation:Landroid/location/Location;

    if-nez p0, :cond_7

    :goto_4
    move-object p0, p2

    goto :goto_5

    :cond_7
    invoke-virtual {p2}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v6

    cmp-long p1, v4, v6

    if-lez p1, :cond_8

    goto :goto_4

    :cond_8
    :goto_5
    iput-object p0, v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseLocation:Landroid/location/Location;

    :cond_9
    iget-object p0, v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineBypassLocation:Landroid/location/Location;

    if-nez p0, :cond_a

    :goto_6
    move-object p0, p2

    goto :goto_7

    :cond_a
    invoke-virtual {p2}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    cmp-long p1, v4, v6

    if-lez p1, :cond_b

    goto :goto_6

    :cond_b
    :goto_7
    iput-object p0, v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineBypassLocation:Landroid/location/Location;

    iget-object p0, v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseBypassLocation:Landroid/location/Location;

    if-nez p0, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {p2}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v2

    cmp-long p1, v4, v2

    if-lez p1, :cond_d

    goto :goto_8

    :cond_d
    move-object p2, p0

    :goto_8
    iput-object p2, v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseBypassLocation:Landroid/location/Location;

    monitor-exit v0

    return-void

    :goto_9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setMockProvider(Lcom/android/server/location/provider/MockLocationProvider;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    sget-object v1, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/server/location/eventlog/LocationEventLog$ProviderMockedEvent;

    invoke-direct {v5, v3, v2}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderMockedEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v5}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog$1(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    iget-object v5, v3, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v6, v3, Lcom/android/server/location/provider/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/provider/MockLocationProvider;

    if-ne v6, p1, :cond_2

    monitor-exit v5

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_2
    iput-object p1, v3, Lcom/android/server/location/provider/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/provider/MockLocationProvider;

    if-eqz p1, :cond_3

    invoke-virtual {v3, p1}, Lcom/android/server/location/provider/MockableLocationProvider;->setProviderLocked(Lcom/android/server/location/provider/AbstractLocationProvider;)V

    goto :goto_2

    :cond_3
    iget-object v6, v3, Lcom/android/server/location/provider/MockableLocationProvider;->mRealProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {v3, v6}, Lcom/android/server/location/provider/MockableLocationProvider;->setProviderLocked(Lcom/android/server/location/provider/AbstractLocationProvider;)V

    :goto_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_4
    if-ge v4, p1, :cond_8

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;

    iget-object v2, v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineLocation:Landroid/location/Location;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/location/Location;->isMock()Z

    move-result v2

    if-eqz v2, :cond_4

    iput-object v3, v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineLocation:Landroid/location/Location;

    :cond_4
    iget-object v2, v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseLocation:Landroid/location/Location;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/location/Location;->isMock()Z

    move-result v2

    if-eqz v2, :cond_5

    iput-object v3, v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseLocation:Landroid/location/Location;

    :cond_5
    iget-object v2, v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineBypassLocation:Landroid/location/Location;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/location/Location;->isMock()Z

    move-result v2

    if-eqz v2, :cond_6

    iput-object v3, v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineBypassLocation:Landroid/location/Location;

    :cond_6
    iget-object v2, v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseBypassLocation:Landroid/location/Location;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/location/Location;->isMock()Z

    move-result v2

    if-eqz v2, :cond_7

    iput-object v3, v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseBypassLocation:Landroid/location/Location;

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_6

    :cond_8
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationFudger:Lcom/android/server/location/fudger/LocationFudger;

    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudger;->nextRandomOffset()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/location/fudger/LocationFudger;->mLatitudeOffsetM:D

    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudger;->nextRandomOffset()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/location/fudger/LocationFudger;->mLongitudeOffsetM:D

    iget-object p1, p0, Lcom/android/server/location/fudger/LocationFudger;->mClock:Ljava/time/Clock;

    invoke-virtual {p1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    const-wide/32 v3, 0x36ee80

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/location/fudger/LocationFudger;->mNextUpdateRealtimeMs:J

    :cond_9
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :goto_5
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method

.method public final setProviderRequest(Landroid/location/provider/ProviderRequest;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Lcom/android/server/location/provider/LocationProviderManager$4;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAlarmHelper:Lcom/android/server/location/injector/SystemAlarmHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/location/injector/SystemAlarmHelper;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Lcom/android/server/location/provider/LocationProviderManager$4;

    :cond_0
    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/location/eventlog/LocationEventLog$ProviderUpdateEvent;

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderUpdateEvent;-><init>(Ljava/lang/String;Landroid/location/provider/ProviderRequest;)V

    invoke-virtual {v0, v1}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog$1(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " provider request changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/provider/AbstractLocationProvider;->mController:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    invoke-virtual {v0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->setRequest(Landroid/location/provider/ProviderRequest;)V

    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/provider/ProviderRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setRealProvider(Lcom/android/server/location/provider/AbstractLocationProvider;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    iget-object v3, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v4, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRealProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    if-ne v4, p1, :cond_1

    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    iput-object p1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRealProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {p0}, Lcom/android/server/location/provider/MockableLocationProvider;->isMock()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRealProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/MockableLocationProvider;->setProviderLocked(Lcom/android/server/location/provider/AbstractLocationProvider;)V

    :cond_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_2
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method

.method public final startManager(Lcom/android/server/location/LocationManagerService;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iput v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mStateChangedListener:Lcom/android/server/location/LocationManagerService;

    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda0;

    iget-object p1, p1, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationUserSettingsListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda4;

    iget-object p1, p1, Lcom/android/server/location/settings/LocationSettings;->mUserSettingsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationEnabledChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;

    iget-object p1, p1, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationMode:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    invoke-virtual {p1, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    iget-object p1, p1, Lcom/android/server/location/provider/AbstractLocationProvider;->mController:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    invoke-virtual {p1}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->start()V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onUserStarted(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final stopManager()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iput v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x1

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/android/server/location/provider/LocationProviderManager;->onEnabledChanged(I)V

    new-instance v3, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda13;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda13;-><init>(I)V

    invoke-virtual {p0, v3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistrationIf(Ljava/util/function/Predicate;)V

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    iget-object v3, v3, Lcom/android/server/location/provider/AbstractLocationProvider;->mController:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    invoke-virtual {v3}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda0;

    iget-object v1, v1, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationUserSettingsListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda4;

    iget-object v1, v1, Lcom/android/server/location/settings/LocationSettings;->mUserSettingsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationEnabledChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;

    iget-object v1, v1, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationMode:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    invoke-virtual {v1, v2}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabledListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProviderRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mStateChangedListener:Lcom/android/server/location/LocationManagerService;

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final unregisterWithService()V
    .locals 3

    sget-object v0, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager;->setProviderRequest(Landroid/location/provider/ProviderRequest;)V

    iget-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mIsSettingsIgnored:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/location/provider/LocationProviderManager;->checkSettingsIgnoredChanged(ZZLjava/util/Collection;)V

    return-void
.end method
