.class public Lcom/android/server/location/gnss/hal/GnssNative;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final AGPS_REF_LOCATION_TYPE_GSM_CELLID:I = 0x1

.field public static final AGPS_REF_LOCATION_TYPE_LTE_CELLID:I = 0x4

.field public static final AGPS_REF_LOCATION_TYPE_NR_CELLID:I = 0x8

.field public static final AGPS_REF_LOCATION_TYPE_UMTS_CELLID:I = 0x2

.field public static final AGPS_SETID_TYPE_IMSI:I = 0x1

.field public static final AGPS_SETID_TYPE_MSISDN:I = 0x2

.field public static final AGPS_SETID_TYPE_NONE:I = 0x0

.field public static final ALLOWED_ASSERT_COUNT_THRESHOLD:I = 0x14

.field public static final DETECT_ASSERT_INTERVAL_MILLIS:J = 0xbb8L

.field public static final GNSS_AIDING_TYPE_ALL:I = 0xffff

.field public static final GNSS_AIDING_TYPE_ALMANAC:I = 0x2

.field public static final GNSS_AIDING_TYPE_CELLDB_INFO:I = 0x8000

.field public static final GNSS_AIDING_TYPE_EPHEMERIS:I = 0x1

.field public static final GNSS_AIDING_TYPE_HEALTH:I = 0x40

.field public static final GNSS_AIDING_TYPE_IONO:I = 0x10

.field public static final GNSS_AIDING_TYPE_POSITION:I = 0x4

.field public static final GNSS_AIDING_TYPE_RTI:I = 0x400

.field public static final GNSS_AIDING_TYPE_SADATA:I = 0x200

.field public static final GNSS_AIDING_TYPE_SVDIR:I = 0x80

.field public static final GNSS_AIDING_TYPE_SVSTEER:I = 0x100

.field public static final GNSS_AIDING_TYPE_TIME:I = 0x8

.field public static final GNSS_AIDING_TYPE_UTC:I = 0x20

.field public static final GNSS_LOCATION_HAS_ALTITUDE:I = 0x2

.field public static final GNSS_LOCATION_HAS_BEARING:I = 0x8

.field public static final GNSS_LOCATION_HAS_BEARING_ACCURACY:I = 0x80

.field public static final GNSS_LOCATION_HAS_HORIZONTAL_ACCURACY:I = 0x10

.field public static final GNSS_LOCATION_HAS_LAT_LONG:I = 0x1

.field public static final GNSS_LOCATION_HAS_SPEED:I = 0x4

.field public static final GNSS_LOCATION_HAS_SPEED_ACCURACY:I = 0x40

.field public static final GNSS_LOCATION_HAS_VERTICAL_ACCURACY:I = 0x20

.field public static final GNSS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field public static final GNSS_POSITION_MODE_MS_BASED:I = 0x1

.field public static final GNSS_POSITION_MODE_STANDALONE:I = 0x0

.field public static final GNSS_POSITION_RECURRENCE_PERIODIC:I = 0x0

.field public static final GNSS_POSITION_RECURRENCE_SINGLE:I = 0x1

.field public static final GNSS_REALTIME_HAS_TIMESTAMP_NS:I = 0x1

.field public static final GNSS_REALTIME_HAS_TIME_UNCERTAINTY_NS:I = 0x2

.field public static final ITAR_SPEED_LIMIT_METERS_PER_SECOND:F = 400.0f

.field public static final POWER_STATS_REQUEST_TIMEOUT_MILLIS:I = 0x64

.field public static isHalInitialted:Z

.field public static final mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

.field public static final mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

.field public static sGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

.field public static sGnssHalInitialized:Z

.field public static sInstance:Lcom/android/server/location/gnss/hal/GnssNative;


# instance fields
.field public continuousAssertCount:I

.field public final enable_detecting_gnss_assert:Ljava/lang/String;

.field public mAGpsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;

.field public final mActToolHelper:Lcom/android/server/location/gnss/sec/ActToolHelper;

.field public mAntennaInfoCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;

.field public mBaseCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

.field public mCapabilities:Landroid/location/GnssCapabilities;

.field public final mConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

.field public final mContext:Landroid/content/Context;

.field public final mEmergencyHelper:Lcom/android/server/location/injector/EmergencyHelper;

.field public mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

.field public mGnssAssistanceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GnssAssistanceCallbacks;

.field public final mGnssExtraAssertMessageHandler:Lcom/android/server/location/gnss/sec/GnssExtraAssertMessageHandler;

.field public final mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

.field public mHandler:Landroid/os/Handler;

.field public mHardwareModelName:Ljava/lang/String;

.field public mHardwareYear:I

.field public mHasFirstFix:Z

.field public volatile mItarSpeedLimitExceeded:Z

.field public mLastKnownPowerStats:Lcom/android/server/location/gnss/GnssPowerStats;

.field public mLocationCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

.field public mLocationRequestCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;

.field public mLppeHelperCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;

.field public mMeasurementCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

.field public final mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

.field public mNavigationMessageCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

.field public mNmeaCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;

.field public mNotificationCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;

.field public final mPendingPowerStatsCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/location/gnss/hal/GnssNative$PowerStatsCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mPowerStatsLock:Ljava/lang/Object;

.field public final mPowerStatsTimeoutCallback:Ljava/lang/Runnable;

.field public mPsdsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;

.field public mRegistered:Z

.field public mStartRealtimeMs:J

.field public mStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

.field public mSvStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;

.field public mTimeCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;

.field public mTopFlags:I

.field public prevAssertTS:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->getInstance()Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-static {}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getInstance()Lcom/android/server/location/gnss/sec/CarrierConfig;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/gnss/hal/GnssNative;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/location/gnss/hal/GnssNative;->isHalInitialted:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/GnssConfiguration;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mBaseCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    new-array v1, v0, [Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

    new-array v1, v0, [Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;

    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mSvStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;

    new-array v1, v0, [Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;

    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNmeaCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;

    new-array v1, v0, [Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

    new-array v1, v0, [Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mMeasurementCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

    new-array v1, v0, [Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;

    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mAntennaInfoCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;

    new-array v1, v0, [Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNavigationMessageCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLastKnownPowerStats:Lcom/android/server/location/gnss/GnssPowerStats;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPowerStatsLock:Ljava/lang/Object;

    new-instance v2, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;I)V

    iput-object v2, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPowerStatsTimeoutCallback:Ljava/lang/Runnable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPendingPowerStatsCallbacks:Ljava/util/List;

    new-instance v2, Landroid/location/GnssCapabilities$Builder;

    invoke-direct {v2}, Landroid/location/GnssCapabilities$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/location/GnssCapabilities$Builder;->build()Landroid/location/GnssCapabilities;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    iput v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHardwareYear:I

    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHardwareModelName:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mStartRealtimeMs:J

    iput-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHasFirstFix:Z

    iput-wide v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->prevAssertTS:J

    iput v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->continuousAssertCount:I

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mContext:Landroid/content/Context;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    check-cast p3, Lcom/android/server/location/LocationManagerService$SystemInjector;

    invoke-virtual {p3}, Lcom/android/server/location/LocationManagerService$SystemInjector;->getEmergencyHelper()Lcom/android/server/location/injector/SystemEmergencyHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mEmergencyHelper:Lcom/android/server/location/injector/EmergencyHelper;

    iput-object p4, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    iget-object p2, p3, Lcom/android/server/location/LocationManagerService$SystemInjector;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    iput-object p2, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    new-instance p2, Lcom/android/server/location/gnss/sec/ActToolHelper;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mActToolHelper:Lcom/android/server/location/gnss/sec/ActToolHelper;

    const-string/jumbo p2, "enable_detecting_gnss_assert"

    const-string/jumbo p3, "true"

    invoke-static {p2, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/location/gnss/hal/GnssNative;->enable_detecting_gnss_assert:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "Set enable_detecting_gnss_assert value:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "GnssManager"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/android/server/location/gnss/sec/GnssExtraAssertMessageHandler;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p2, Lcom/android/server/location/gnss/sec/GnssExtraAssertMessageHandler;->isTuneCodeRequired:Z

    const-class p3, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/input/InputManager;->semGetLidState()I

    move-result p1

    const/4 p3, -0x1

    if-le p1, p3, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p2, Lcom/android/server/location/gnss/sec/GnssExtraAssertMessageHandler;->isTuneCodeRequired:Z

    const-string p1, "GnssExtraAssertMessageHandler"

    const-string/jumbo p3, "This is Foldable phone"

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssExtraAssertMessageHandler:Lcom/android/server/location/gnss/sec/GnssExtraAssertMessageHandler;

    return-void
.end method

.method public static checkInit()V
    .locals 2

    sget-boolean v0, Lcom/android/server/location/gnss/hal/GnssNative;->isHalInitialted:Z

    if-nez v0, :cond_0

    const-string v0, "GnssManager"

    const-string/jumbo v1, "initializeHal() failed. but it will be recovered."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "dev.gnss.initializehal"

    const-string/jumbo v1, "ON"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized create(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/GnssConfiguration;)Lcom/android/server/location/gnss/hal/GnssNative;
    .locals 3

    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->isSupported()Z

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    sget-object v1, Lcom/android/server/location/gnss/hal/GnssNative;->sInstance:Lcom/android/server/location/gnss/hal/GnssNative;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    new-instance v1, Lcom/android/server/location/gnss/hal/GnssNative;

    sget-object v2, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;-><init>(Landroid/content/Context;Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/GnssConfiguration;)V

    sput-object v1, Lcom/android/server/location/gnss/hal/GnssNative;->sInstance:Lcom/android/server/location/gnss/hal/GnssNative;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized initializeHal()V
    .locals 2

    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHalInitialized:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-direct {v1}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;-><init>()V

    sput-object v1, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_class_init_once()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHalInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized isSupported()Z
    .locals 3

    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda38;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/location/gnss/hal/GnssNative;->isHalInitialted:Z

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->initializeHal()V

    sget-object v1, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_is_supported()Z

    move-result v1

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/location/gnss/hal/GnssNative;->isHalInitialted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$isSupported$0()V
    .locals 2

    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->checkInit()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "GnssManager"

    const-string/jumbo v1, "checkInit() failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic lambda$reportGnssPowerStats$17(Lcom/android/server/location/gnss/GnssPowerStats;Lcom/android/server/location/gnss/hal/GnssNative$PowerStatsCallback;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/server/location/gnss/hal/GnssNative$PowerStatsCallback;->onReportPowerStats(Lcom/android/server/location/gnss/GnssPowerStats;)V

    return-void
.end method

.method public static lambda$reportMeasurementData$11(Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;Landroid/location/GnssMeasurementsEvent;)V
    .locals 1

    check-cast p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/GnssMeasurementsProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssMeasurementsProvider;Landroid/location/GnssMeasurementsEvent;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->deliverToListeners(Ljava/util/function/Function;)V

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mLastGnssMeasurementsEvent:Landroid/location/GnssMeasurementsEvent;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static lambda$reportNavigationMessage$14(Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;Landroid/location/GnssNavigationMessage;)V
    .locals 1

    check-cast p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssNavigationMessageProvider;Landroid/location/GnssNavigationMessage;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->deliverToListeners(Ljava/util/function/Function;)V

    return-void
.end method

.method public static synthetic lambda$requestPowerStats$2(Lcom/android/server/location/gnss/hal/GnssNative$PowerStatsCallback;Lcom/android/server/location/gnss/GnssPowerStats;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$PowerStatsCallback;->onReportPowerStats(Lcom/android/server/location/gnss/GnssPowerStats;)V

    return-void
.end method

.method public static synthetic lambda$requestPowerStats$3(Ljava/util/concurrent/Executor;Lcom/android/server/location/gnss/hal/GnssNative$PowerStatsCallback;Lcom/android/server/location/gnss/GnssPowerStats;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda24;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda24;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$requestPowerStats$4(Ljava/util/concurrent/Executor;Lcom/android/server/location/gnss/hal/GnssNative$PowerStatsCallback;Lcom/android/server/location/gnss/GnssPowerStats;)V
    .locals 2

    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda31;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda31;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public static synthetic lambda$requestPowerStatsBlocking$5(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;Lcom/android/server/location/gnss/GnssPowerStats;)V
    .locals 0

    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private static native native_add_geofence(IDDDIIII)Z
.end method

.method private static native native_agps_set_id(ILjava/lang/String;)V
.end method

.method private static native native_agps_set_ref_location_cellid(IIIIII)V
.end method

.method private static native native_agps_set_ref_location_cellid(IIIIJII)V
.end method

.method private static native native_agps_set_ref_location_cellid(IIIIJIII)V
.end method

.method private static native native_class_init_once()V
.end method

.method private static native native_cleanup()V
.end method

.method private static native native_cleanup_batching()V
.end method

.method private static native native_configuration_update_extension(Ljava/lang/String;)V
.end method

.method private static native native_delete_aiding_data(I)V
.end method

.method private static native native_flush_batch()V
.end method

.method private static native native_get_batch_size()I
.end method

.method private static native native_get_internal_state()Ljava/lang/String;
.end method

.method private static native native_get_seh_gnss_hal_version()F
.end method

.method private static native native_init()Z
.end method

.method private static native native_init_batching()Z
.end method

.method private static native native_init_extension_location_off()Z
.end method

.method private static native native_init_extension_once()Z
.end method

.method private native native_init_once(Z)V
.end method

.method private static native native_inject_best_location(IDDDFFFFFFJIJD)V
.end method

.method private static native native_inject_civic_address(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native native_inject_flp_error(I)V
.end method

.method private static native native_inject_flp_location(IDDDFFFFFFJ)V
.end method

.method private static native native_inject_gnss_assistance(Landroid/location/GnssAssistance;)V
.end method

.method private static native native_inject_location(IDDDFFFFFFJIJD)V
.end method

.method private static native native_inject_lppe_com_ie_capability(IZZZIZZZZZ)V
.end method

.method private static native native_inject_measurement_corrections(Landroid/location/GnssMeasurementCorrections;)Z
.end method

.method private static native native_inject_ni_supl_message_data([BII)V
.end method

.method private static native native_inject_psds_data([BII)V
.end method

.method private static native native_inject_time(JJI)V
.end method

.method private static native native_inject_ubp_capability(ZZZZ)V
.end method

.method private static native native_inject_ubp_error(I)V
.end method

.method private static native native_inject_ubp_info(II)V
.end method

.method private static native native_inject_wlan_capability(IIJIII)V
.end method

.method private static native native_inject_wlan_error(I)V
.end method

.method private static native native_inject_wlan_scan_info([J[I[II)V
.end method

.method private static native native_is_antenna_info_supported()Z
.end method

.method private static native native_is_geofence_supported()Z
.end method

.method private static native native_is_gnss_visibility_control_supported()Z
.end method

.method private static native native_is_measurement_corrections_supported()Z
.end method

.method private static native native_is_measurement_supported()Z
.end method

.method private static native native_is_navigation_message_supported()Z
.end method

.method private static native native_is_seh_gnss_aidl_hal()Z
.end method

.method private static native native_is_supported()Z
.end method

.method private static native native_pause_geofence(I)Z
.end method

.method private static native native_read_nmea([BI)I
.end method

.method private static native native_remove_geofence(I)Z
.end method

.method private static native native_request_power_stats()V
.end method

.method private static native native_resume_geofence(II)Z
.end method

.method private static native native_send_supl_ni_message([BI)V
.end method

.method private static native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private static native native_set_position_mode(IIIIIZ)Z
.end method

.method private static native native_start()Z
.end method

.method private static native native_start_antenna_info_listening()Z
.end method

.method private static native native_start_batch(JFZ)Z
.end method

.method private static native native_start_measurement_collection(ZZI)Z
.end method

.method private static native native_start_navigation_message_collection()Z
.end method

.method private static native native_start_nmea_message_collection()Z
.end method

.method private static native native_start_sv_status_collection()Z
.end method

.method private static native native_stop()Z
.end method

.method private static native native_stop_antenna_info_listening()Z
.end method

.method private static native native_stop_batch()Z
.end method

.method private static native native_stop_measurement_collection()Z
.end method

.method private static native native_stop_navigation_message_collection()Z
.end method

.method private static native native_stop_nmea_message_collection()Z
.end method

.method private static native native_stop_sv_status_collection()Z
.end method

.method private static native native_supports_psds()Z
.end method

.method public static declared-synchronized setGnssHalForTest(Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;)V
    .locals 1

    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sput-object p0, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHalInitialized:Z

    const/4 p0, 0x0

    sput-object p0, Lcom/android/server/location/gnss/hal/GnssNative;->sInstance:Lcom/android/server/location/gnss/hal/GnssNative;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final addAntennaInfoCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mAntennaInfoCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mAntennaInfoCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;

    return-void
.end method

.method public final addBaseCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mBaseCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mBaseCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    return-void
.end method

.method public final addGeofence(IDDDIIII)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p11}, Lcom/android/server/location/gnss/hal/GnssNative;->native_add_geofence(IDDDIIII)Z

    move-result p0

    return p0
.end method

.method public final addLocationCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

    return-void
.end method

.method public final addMeasurementCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mMeasurementCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mMeasurementCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

    return-void
.end method

.method public final addNavigationMessageCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNavigationMessageCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNavigationMessageCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

    return-void
.end method

.method public final addNmeaCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNmeaCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNmeaCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;

    return-void
.end method

.method public final addStatusCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

    return-void
.end method

.method public final addSvStatusCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mSvStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mSvStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;

    return-void
.end method

.method public final cleanup()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_cleanup()V

    return-void
.end method

.method public final cleanupBatching()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_cleanup_batching()V

    return-void
.end method

.method public final deleteAidingData(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->native_delete_aiding_data(I)V

    return-void
.end method

.method public final flushBatch()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_flush_batch()V

    return-void
.end method

.method public final getBatchSize()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_get_batch_size()I

    move-result p0

    return p0
.end method

.method public final getCapabilities()Landroid/location/GnssCapabilities;
    .locals 0

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    return-object p0
.end method

.method public final getConfiguration()Lcom/android/server/location/gnss/GnssConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    return-object p0
.end method

.method public final getHardwareModelName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHardwareModelName:Ljava/lang/String;

    return-object p0
.end method

.method public final getHardwareYear()I
    .locals 0

    iget p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHardwareYear:I

    return p0
.end method

.method public final getInternalState()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_get_internal_state()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLastKnownPowerStats()Lcom/android/server/location/gnss/GnssPowerStats;
    .locals 0

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLastKnownPowerStats:Lcom/android/server/location/gnss/GnssPowerStats;

    return-object p0
.end method

.method public final getSehGnssHalVersion()F
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_get_seh_gnss_hal_version()F

    move-result p0

    return p0
.end method

.method public final gnssAssistanceInjectRequest()V
    .locals 0

    return-void
.end method

.method public final gnssConfigurationUpdateSec(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->native_configuration_update_extension(Ljava/lang/String;)V

    return-void
.end method

.method public final init()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_init()Z

    move-result p0

    return p0
.end method

.method public final initBatching()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_init_batching()Z

    move-result p0

    return p0
.end method

.method public final initLocationOff()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_init_extension_location_off()Z

    move-result p0

    return p0
.end method

.method public final initializeGnss(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mTopFlags:I

    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->native_init_once(Z)V

    iget-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_init()Z

    move-result p1

    const-string v0, "GnssManager"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_cleanup()V

    sget-object p1, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isBroadcomGnss()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_init_extension_location_off()Z

    :cond_0
    const-string/jumbo p0, "gnss hal initialized"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo p0, "gnss hal initialization failed"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final injectBestLocation(Landroid/location/Location;)V
    .locals 25

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    or-int/2addr v1, v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearing()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x8

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    or-int/2addr v1, v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x10

    goto :goto_3

    :cond_3
    move v4, v3

    :goto_3
    or-int/2addr v1, v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_4

    :cond_4
    move v4, v3

    :goto_4
    or-int/2addr v1, v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x40

    goto :goto_5

    :cond_5
    move v4, v3

    :goto_5
    or-int/2addr v1, v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x80

    goto :goto_6

    :cond_6
    move v4, v3

    :goto_6
    or-int v5, v1, v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v18

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_7

    :cond_7
    move v2, v3

    :goto_7
    or-int/lit8 v20, v2, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v21

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeUncertaintyNanos()D

    move-result-wide v23

    iget-object v0, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v5 .. v24}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_best_location(IDDDFFFFFFJIJD)V

    return-void
.end method

.method public final injectCivicAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p13}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_civic_address(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final injectFlpError(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_flp_error(I)V

    return-void
.end method

.method public final injectFlpLocation(IDDDFFFFFFJ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p15}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_flp_location(IDDDFFFFFFJ)V

    return-void
.end method

.method public final injectGnssAssistance(Landroid/location/GnssAssistance;)V
    .locals 0

    return-void
.end method

.method public final injectLocation(Landroid/location/Location;)V
    .locals 25

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    or-int/2addr v1, v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearing()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x8

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    or-int/2addr v1, v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x10

    goto :goto_3

    :cond_3
    move v4, v3

    :goto_3
    or-int/2addr v1, v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_4

    :cond_4
    move v4, v3

    :goto_4
    or-int/2addr v1, v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x40

    goto :goto_5

    :cond_5
    move v4, v3

    :goto_5
    or-int/2addr v1, v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x80

    goto :goto_6

    :cond_6
    move v4, v3

    :goto_6
    or-int v5, v1, v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v18

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_7

    :cond_7
    move v2, v3

    :goto_7
    or-int/lit8 v20, v2, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v21

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeUncertaintyNanos()D

    move-result-wide v23

    iget-object v0, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v5 .. v24}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_location(IDDDFFFFFFJIJD)V

    :cond_8
    return-void
.end method

.method public final injectLppeComIeCapability(IZZZIZZZZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p10}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_lppe_com_ie_capability(IZZZIZZZZZ)V

    return-void
.end method

.method public final injectMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_measurement_corrections(Landroid/location/GnssMeasurementCorrections;)Z

    move-result p0

    return p0
.end method

.method public final injectNiSuplMessageData([BII)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_ni_supl_message_data([BII)V

    return-void
.end method

.method public final injectPsdsData([BII)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_psds_data([BII)V

    return-void
.end method

.method public final injectTime(JJI)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_time(JJI)V

    return-void
.end method

.method public final injectUbpCapability(ZZZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_ubp_capability(ZZZZ)V

    return-void
.end method

.method public final injectUbpError(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_ubp_error(I)V

    return-void
.end method

.method public final injectUbpInfo(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_ubp_info(II)V

    return-void
.end method

.method public final injectWlanCapability(IIJIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p7}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_wlan_capability(IIJIII)V

    return-void
.end method

.method public final injectWlanError(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_wlan_error(I)V

    return-void
.end method

.method public final injectWlanScanInfo([J[I[II)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_wlan_scan_info([J[I[II)V

    return-void
.end method

.method public final isAntennaInfoSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_is_antenna_info_supported()Z

    move-result p0

    return p0
.end method

.method public final isGeofencingSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_is_geofence_supported()Z

    move-result p0

    return p0
.end method

.method public final isGnssAssertMessage(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "$"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isGnssVisibilityControlSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_is_gnss_visibility_control_supported()Z

    move-result p0

    return p0
.end method

.method public final isInEmergencySession()Z
    .locals 2

    sget-object v0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/location/gnss/hal/GnssNative;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isUSAMarket()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isCanadaMarket()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda4;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isItarSpeedLimitExceeded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mItarSpeedLimitExceeded:Z

    return p0
.end method

.method public final isMeasurementCorrectionsSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_is_measurement_corrections_supported()Z

    move-result p0

    return p0
.end method

.method public final isMeasurementSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_is_measurement_supported()Z

    move-result p0

    return p0
.end method

.method public final isNavigationMessageCollectionSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_is_navigation_message_supported()Z

    move-result p0

    return p0
.end method

.method public final isPsdsSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_supports_psds()Z

    move-result p0

    return p0
.end method

.method public final isSehGnssAidlHal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_is_seh_gnss_aidl_hal()Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$gnssAssistanceInjectRequest$20()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssAssistanceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GnssAssistanceCallbacks;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final lambda$isInEmergencySession$33()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNotificationCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;

    check-cast p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency(J)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final lambda$isInEmergencySession$34()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mEmergencyHelper:Lcom/android/server/location/injector/EmergencyHelper;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    iget p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mEsExtensionSec:I

    int-to-long v2, p0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/injector/EmergencyHelper;->isInEmergency(J)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$new$1()V
    .locals 2

    const-string v0, "GnssManager"

    const-string/jumbo v1, "Request for power stats timed out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->reportGnssPowerStats(Lcom/android/server/location/gnss/GnssPowerStats;)V

    return-void
.end method

.method public final synthetic lambda$onCapabilitiesChanged$16(Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1, p2}, Landroid/location/GnssCapabilities;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "gnss capabilities changed to "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "GnssManager"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mBaseCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    array-length v1, v0

    if-ge p2, v1, :cond_1

    aget-object v0, v0, p2

    invoke-interface {v0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;->onCapabilitiesChanged(Landroid/location/GnssCapabilities;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final lambda$psdsDownloadRequest$19(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPsdsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;

    check-cast p0, Lcom/android/server/location/gnss/GnssLocationProvider;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->isExtraCommandFromAllowedAppRequest:Z

    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;II)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic lambda$reportAGpsStatus$9(II[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mAGpsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;

    check-cast p0, Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssLocationProvider;->onReportAGpsStatus(II[B)V

    return-void
.end method

.method public final lambda$reportAntennaInfo$13(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mAntennaInfoCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    check-cast v1, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    iget-object v2, v1, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mAntennaInfos:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iput-object p1, v1, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mAntennaInfos:Ljava/util/List;

    new-instance v2, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->deliverToListeners(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final lambda$reportGeofenceAddStatus$23(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    check-cast p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final lambda$reportGeofencePauseStatus$25(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    check-cast p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final lambda$reportGeofenceRemoveStatus$24(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    check-cast p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final lambda$reportGeofenceResumeStatus$26(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    check-cast p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final lambda$reportGeofenceStatus$22(ILandroid/location/Location;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    check-cast p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;ILandroid/location/Location;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final lambda$reportGeofenceTransition$21(ILandroid/location/Location;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    move-object v1, p0

    check-cast v1, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda2;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;ILandroid/location/Location;IJ)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final lambda$reportLocation$6(ZLandroid/location/Location;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHasFirstFix:Z

    if-nez v2, :cond_0

    iput-boolean v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHasFirstFix:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mStartRealtimeMs:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    move v3, v0

    :goto_0
    iget-object v4, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

    array-length v5, v4

    if-ge v3, v5, :cond_0

    aget-object v4, v4, v3

    check-cast v4, Lcom/android/server/location/gnss/GnssStatusProvider;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2}, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/android/server/location/listeners/ListenerMultiplexer;->deliverToListeners(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/location/Location;->hasSpeed()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Landroid/location/Location;->getSpeed()F

    move-result v2

    const/high16 v3, 0x43c80000    # 400.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iget-boolean v2, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mItarSpeedLimitExceeded:Z

    const-string v3, "GnssManager"

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    const-string/jumbo v2, "speed nearing ITAR threshold - blocking further GNSS output"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    iget-boolean v2, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mItarSpeedLimitExceeded:Z

    if-eqz v2, :cond_3

    if-nez v1, :cond_3

    const-string/jumbo v2, "speed leaving ITAR threshold - allowing further GNSS output"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    iput-boolean v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mItarSpeedLimitExceeded:Z

    :cond_4
    iget-boolean v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mItarSpeedLimitExceeded:Z

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

    array-length v2, v1

    if-ge v0, v2, :cond_6

    aget-object v1, v1, v0

    check-cast v1, Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;ZLandroid/location/Location;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    return-void
.end method

.method public final lambda$reportLocationBatch$18([Landroid/location/Location;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

    array-length v3, v2

    if-ge v1, v3, :cond_5

    aget-object v2, v2, v1

    check-cast v2, Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "GnssLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Location batch of size "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, p1

    const-string v6, " reported"

    invoke-static {v5, v6, v3, v4}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    array-length v3, p1

    if-lez v3, :cond_3

    array-length v3, p1

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    :goto_1
    if-ltz v3, :cond_1

    add-int/lit8 v5, v3, 0x1

    aget-object v6, p1, v5

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    aget-object v8, p1, v3

    invoke-virtual {v8}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    aget-object v5, p1, v5

    invoke-virtual {v5}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v8

    aget-object v5, p1, v3

    invoke-virtual {v5}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v10

    sub-long/2addr v8, v10

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/16 v7, 0x1f4

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    new-instance v3, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda1;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v3}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v3, p1

    sub-int/2addr v3, v4

    aget-object v3, p1, v3

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    array-length v3, p1

    sub-int/2addr v3, v4

    aget-object v3, p1, v3

    invoke-virtual {v3}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v3

    sub-long/2addr v5, v3

    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    :goto_2
    if-ltz v3, :cond_2

    aget-object v4, p1, v3

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    sub-long/2addr v8, v5

    const-wide/16 v10, 0x0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    new-instance v3, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda1;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v3}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_2
    :try_start_0
    invoke-static {p1}, Landroid/location/LocationResult;->wrap([Landroid/location/Location;)Landroid/location/LocationResult;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/LocationResult;->validate()Landroid/location/LocationResult;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/location/provider/AbstractLocationProvider;->reportLocation(Landroid/location/LocationResult;)V
    :try_end_0
    .catch Landroid/location/LocationResult$BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    const-string v3, "GnssLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Dropping invalid locations: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_3
    :goto_3
    iget-object v3, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v4, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    new-array v5, v0, [Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Runnable;

    iget-object v2, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    array-length v2, v4

    move v3, v0

    :goto_4
    if-ge v3, v2, :cond_4

    aget-object v5, v4, v3

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_5
    return-void
.end method

.method public final synthetic lambda$reportMeasurementData$12(Landroid/location/GnssMeasurementsEvent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mItarSpeedLimitExceeded:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mMeasurementCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda24;

    const/4 v6, 0x2

    invoke-direct {v5, v6, v3, p1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda24;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final synthetic lambda$reportNavigationMessage$15(Landroid/location/GnssNavigationMessage;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mItarSpeedLimitExceeded:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNavigationMessageCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda24;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v3, p1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda24;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final synthetic lambda$reportNfwNotification$32(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNotificationCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;

    move-object v0, p0

    check-cast v0, Lcom/android/server/location/gnss/GnssLocationProvider;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/location/gnss/GnssLocationProvider;->onReportNfwNotification(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V

    return-void
.end method

.method public final lambda$reportNmea$10(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mItarSpeedLimitExceeded:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNmeaCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    check-cast v1, Lcom/android/server/location/gnss/GnssNmeaProvider;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/location/gnss/GnssNmeaProvider$1;

    invoke-direct {v2, v1, p1, p2}, Lcom/android/server/location/gnss/GnssNmeaProvider$1;-><init>(Lcom/android/server/location/gnss/GnssNmeaProvider;J)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->deliverToListeners(Ljava/util/function/Function;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final lambda$reportStatus$7(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "reportStatus : "

    const-string v1, "GnssManager"

    invoke-static {p1, v0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

    array-length v3, v2

    if-ge v1, v3, :cond_6

    aget-object v2, v2, v1

    check-cast v2, Lcom/android/server/location/gnss/GnssStatusProvider;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    const/4 v3, 0x4

    if-eq p1, v3, :cond_0

    iget-boolean v3, v2, Lcom/android/server/location/gnss/GnssStatusProvider;->mIsNavigating:Z

    goto :goto_1

    :cond_0
    move v3, v0

    :cond_1
    :goto_1
    iget-boolean v4, v2, Lcom/android/server/location/gnss/GnssStatusProvider;->mIsNavigating:Z

    if-eq v3, v4, :cond_5

    iput-boolean v3, v2, Lcom/android/server/location/gnss/GnssStatusProvider;->mIsNavigating:Z

    if-eqz v3, :cond_2

    new-instance v4, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda2;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v2, v4}, Lcom/android/server/location/listeners/ListenerMultiplexer;->deliverToListeners(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    goto :goto_2

    :cond_2
    new-instance v4, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda2;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v2, v4}, Lcom/android/server/location/listeners/ListenerMultiplexer;->deliverToListeners(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    :goto_2
    iget-object v4, v2, Lcom/android/server/location/gnss/GnssStatusProvider;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    iget-boolean v5, v4, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHasNsflpFeature:Z

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    iget-object v5, v4, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_4

    new-instance v6, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda5;

    invoke-direct {v6, v4, v3}, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/nsflp/NSConnectionHelper;Z)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_3
    iget-object v2, v2, Lcom/android/server/location/gnss/GnssStatusProvider;->mOnStatusChanged:Lcom/android/server/location/gnss/GnssManagerService$$ExternalSyntheticLambda0;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lcom/android/server/location/gnss/GnssManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/sec/SLocationProxy;

    iget-object v2, v2, Lcom/android/server/location/gnss/sec/SLocationProxy;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    if-eqz v2, :cond_5

    :try_start_0
    invoke-interface {v2, v3}, Lcom/samsung/android/location/ISLocationManager;->onGnssStatusChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v2

    const-string/jumbo v3, "SLocationProxy"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final synthetic lambda$reportSvStatus$8(I[I[F[F[F[F[F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static/range {p1 .. p7}, Landroid/location/GnssStatus;->wrap(I[I[F[F[F[F[F)Landroid/location/GnssStatus;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mSvStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;

    array-length p4, p3

    if-ge p2, p4, :cond_0

    aget-object p3, p3, p2

    invoke-interface {p3, p1}, Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;->onReportSvStatus(Landroid/location/GnssStatus;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final lambda$requestCivicAddress$41(DDD)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLppeHelperCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;

    move-object v1, p0

    check-cast v1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "onRequestCivicAddress"

    const-string/jumbo v8, "LocationX"

    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    iput-boolean p0, v1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsCivicAddressRequested:Z

    new-instance v0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda3;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;DDD)V

    iput-object v0, v1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mCivicAddressTimeout:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda3;

    iget-object p0, v1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x7d0

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "failed to add CivicAddress timeout to message queue."

    invoke-static {v8, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final lambda$requestFlpLocation$36(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLppeHelperCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;

    check-cast p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    iget-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsFlpRequested:Z

    const-string/jumbo v1, "LocationX"

    if-eqz v0, :cond_0

    const-string/jumbo p0, "already requested FlpLocation"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsFlpRequested:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "requestFlpLocation response time = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-int/2addr p1, v0

    const-wide/16 v2, 0x3e8

    const/16 v4, 0x14

    if-ge p1, v4, :cond_1

    int-to-long v4, p1

    :goto_0
    mul-long/2addr v4, v2

    goto :goto_1

    :cond_1
    int-to-long v4, v4

    goto :goto_0

    :goto_1
    new-instance p1, Landroid/location/LocationRequest$Builder;

    invoke-direct {p1, v2, v3}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    invoke-virtual {p1, v0}, Landroid/location/LocationRequest$Builder;->setMaxUpdates(I)Landroid/location/LocationRequest$Builder;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/location/LocationRequest$Builder;->setDurationMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object p1

    const/16 v2, 0x66

    invoke-virtual {p1, v2}, Landroid/location/LocationRequest$Builder;->setQuality(I)Landroid/location/LocationRequest$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/location/LocationRequest$Builder;->setLocationSettingsIgnored(Z)Landroid/location/LocationRequest$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v2, "fused"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "Start LocationManager.FUSED_PROVIDER"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {p1}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object p1

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mLocationListener:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$1;

    invoke-virtual {v0, v2, p1, v3, v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    new-instance p1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;I)V

    iput-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mFlpTimeout:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    if-nez p0, :cond_2

    const-string/jumbo p0, "failed to add FLP timeout to message queue."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    const-string/jumbo p0, "Unable to request location."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final lambda$requestLocation$28(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationRequestCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;

    check-cast p0, Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "requestLocation. independentFromGnss: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isUserEmergency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;ZZ)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final lambda$requestLppeCommonIesCapability$35()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLppeHelperCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;

    check-cast p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "LocationX"

    const-string/jumbo v1, "requestLppeCommonIesCapability"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "handleUpdateCommonIesCapability : highAccCapa Supported "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v2, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x80

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/location/gnss/hal/GnssNative;->injectLppeComIeCapability(IZZZIZZZZZ)V

    return-void
.end method

.method public final synthetic lambda$requestRefLocation$30()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationRequestCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;

    invoke-interface {p0}, Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;->onRequestRefLocation()V

    return-void
.end method

.method public final lambda$requestRefLocationSec$31()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationRequestCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;

    check-cast p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "onRequestRefLocationSec"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isSehRefLocation:Z

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->requestRefLocationSec()V

    return-void
.end method

.method public final synthetic lambda$requestSetID$27(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mAGpsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;

    invoke-interface {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;->onRequestSetID(I)V

    return-void
.end method

.method public final lambda$requestUbpCapability$37()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLppeHelperCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;

    check-cast p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "LocationX"

    const-string/jumbo v1, "requestUbpCapability"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mPressureSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string/jumbo v3, "handleUpdateUBPCapability : isUbpSupported  "

    invoke-static {v3, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0, v2, v2, v2, v1}, Lcom/android/server/location/gnss/hal/GnssNative;->injectUbpCapability(ZZZZ)V

    return-void
.end method

.method public final lambda$requestUbpInfo$38(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLppeHelperCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;

    check-cast p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    iget-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsUbpRequested:Z

    const-string/jumbo v1, "LocationX"

    if-eqz v0, :cond_0

    const-string/jumbo p0, "already requested UbpInfo"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsUbpRequested:Z

    new-instance v2, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$UBPSensorEventListener;

    invoke-direct {v2, p0}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$UBPSensorEventListener;-><init>(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mSensorEventListener:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$UBPSensorEventListener;

    const-string/jumbo v2, "requestUbpInfo response time = "

    const-string/jumbo v3, "sec"

    invoke-static {p1, v2, v3, v1}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mPressureSensor:Landroid/hardware/Sensor;

    if-nez v2, :cond_1

    const-string/jumbo v2, "requestUBPInfo : Caution (PressureSensor is null) "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mPressureSensor:Landroid/hardware/Sensor;

    :cond_1
    iget-object v2, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mSensorEventListener:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$UBPSensorEventListener;

    iget-object v4, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mPressureSensor:Landroid/hardware/Sensor;

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v2, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "vendor/etc/gnss/mnl.prop"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const-wide/16 v3, 0x3e8

    if-eqz v2, :cond_3

    const/16 v0, 0xf

    if-ge p1, v0, :cond_2

    :goto_0
    int-to-long v5, p1

    :goto_1
    mul-long/2addr v5, v3

    goto :goto_2

    :cond_2
    int-to-long v5, v0

    goto :goto_1

    :cond_3
    sub-int/2addr p1, v0

    const/16 v0, 0xe

    if-ge p1, v0, :cond_2

    goto :goto_0

    :goto_2
    new-instance p1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;I)V

    iput-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mUbpTimeout:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    if-nez p0, :cond_4

    const-string/jumbo p0, "failed to add UBP timeout to message queue."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public final lambda$requestUtcTime$29()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mTimeCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;

    check-cast p0, Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->demandUtcTimeInjection()V

    return-void
.end method

.method public final lambda$requestWlanCapability$39()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLppeHelperCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;

    check-cast p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "LocationX"

    const-string/jumbo v1, "requestWlanCapability"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "handleUpdateWLANCapbility : ecidMeasSupported - 35872, wlanTypesSupported - 64512"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    const v3, 0x8c20

    const v4, 0xfc00

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/location/gnss/hal/GnssNative;->injectWlanCapability(IIJIII)V

    return-void
.end method

.method public final lambda$requestWlanScanInfo$40(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLppeHelperCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;

    check-cast p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    iget-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsWifiScanRequested:Z

    const-string/jumbo v1, "LocationX"

    if-eqz v0, :cond_0

    const-string/jumbo p0, "already requested WlanScanInfo."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsRetryWifiScan:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsWifiScanRequested:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "requestWlanScanInfo. response time = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sec"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v3}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    const/16 v4, 0xf

    iput v4, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    iput v0, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    iput-boolean v2, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->ignoreLocationSettings:Z

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    new-instance v4, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener;

    invoke-direct {v4, p0}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener;-><init>(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)V

    invoke-virtual {v0, v3, v4}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;)V

    sub-int/2addr p1, v2

    const/16 v0, 0xb

    const-wide/16 v2, 0x3e8

    if-ge p1, v0, :cond_1

    int-to-long v4, p1

    :goto_0
    mul-long/2addr v4, v2

    goto :goto_1

    :cond_1
    int-to-long v4, v0

    goto :goto_0

    :goto_1
    new-instance p1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;I)V

    iput-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mWlanTimeout:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    if-nez p0, :cond_2

    const-string/jumbo p0, "failed to add WLAN timeout to message queue."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public final onCapabilitiesChanged(Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V
    .locals 2

    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda31;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda31;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final pauseGeofence(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->native_pause_geofence(I)Z

    move-result p0

    return p0
.end method

.method public final psdsDownloadRequest(I)V
    .locals 2

    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final readNmea([BI)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->native_read_nmea([BI)I

    move-result p0

    return p0
.end method

.method public final register()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iput-boolean v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->initializeGnss(Z)V

    const-string v1, "GnssManager"

    const-string/jumbo v2, "gnss hal started"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mBaseCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;->onHalStarted()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final removeGeofence(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->native_remove_geofence(I)Z

    move-result p0

    return p0
.end method

.method public final reportAGpsStatus(II[B)V
    .locals 1

    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;II[B)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final reportAntennaInfo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/GnssAntennaInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda10;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;Ljava/lang/Object;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final reportExtraAssertMessage(Ljava/lang/String;)V
    .locals 10

    sget-object v0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "reportExtraMessage, message = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GPS_START"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssExtraAssertMessageHandler:Lcom/android/server/location/gnss/sec/GnssExtraAssertMessageHandler;

    iget-boolean p0, p0, Lcom/android/server/location/gnss/sec/GnssExtraAssertMessageHandler;->isTuneCodeRequired:Z

    if-eqz p0, :cond_1

    invoke-static {v2}, Lcom/android/server/location/gnss/sec/GnssExtraAssertMessageHandler;->setTelephonyTransmitPower(Z)V

    return-void

    :cond_0
    const-string v0, "GPS_STOP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssExtraAssertMessageHandler:Lcom/android/server/location/gnss/sec/GnssExtraAssertMessageHandler;

    iget-boolean p0, p0, Lcom/android/server/location/gnss/sec/GnssExtraAssertMessageHandler;->isTuneCodeRequired:Z

    if-eqz p0, :cond_1

    invoke-static {v3}, Lcom/android/server/location/gnss/sec/GnssExtraAssertMessageHandler;->setTelephonyTransmitPower(Z)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->isGnssAssertMessage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "true"

    iget-object v4, p0, Lcom/android/server/location/gnss/hal/GnssNative;->enable_detecting_gnss_assert:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "dev.gnss.silentloggingIssueTracker"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "ON"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/location/gnss/hal/GnssNative;->prevAssertTS:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0xbb8

    cmp-long v0, v6, v8

    if-gtz v0, :cond_3

    iget v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->continuousAssertCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->continuousAssertCount:I

    goto :goto_0

    :cond_3
    iput v3, p0, Lcom/android/server/location/gnss/hal/GnssNative;->continuousAssertCount:I

    :goto_0
    iget v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->continuousAssertCount:I

    const/16 v2, 0x14

    if-le v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mActToolHelper:Lcom/android/server/location/gnss/sec/ActToolHelper;

    iget-object v2, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "sendBroadcast to ActTool : event="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "ActToolHelper"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "com.salab.act.intent.LOG_ACT"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "dumpname"

    const-string v7, "GNSS_ASSERT"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "CONFI_GNSS_ASSERT"

    invoke-virtual {v0, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iput v3, p0, Lcom/android/server/location/gnss/hal/GnssNative;->continuousAssertCount:I

    :cond_4
    iput-wide v4, p0, Lcom/android/server/location/gnss/hal/GnssNative;->prevAssertTS:J

    :cond_5
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isBroadcomGnss()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "GNSS report assert, reset it"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_init()Z

    :cond_6
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onGnssEventUpdated(Ljava/lang/String;)V

    return-void
.end method

.method public final reportGeofenceAddStatus(II)V
    .locals 2

    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;III)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final reportGeofencePauseStatus(II)V
    .locals 2

    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;III)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final reportGeofenceRemoveStatus(II)V
    .locals 2

    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda3;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;III)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final reportGeofenceResumeStatus(II)V
    .locals 2

    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda3;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;III)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final reportGeofenceStatus(ILandroid/location/Location;)V
    .locals 1

    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;ILandroid/location/Location;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final reportGeofenceTransition(ILandroid/location/Location;IJ)V
    .locals 7

    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda15;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;ILandroid/location/Location;IJ)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final reportGnssPowerStats(Lcom/android/server/location/gnss/GnssPowerStats;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPowerStatsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPowerStatsTimeoutCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLastKnownPowerStats:Lcom/android/server/location/gnss/GnssPowerStats;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPendingPowerStatsCallbacks:Ljava/util/List;

    new-instance v2, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda12;

    invoke-direct {v2, p1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/location/gnss/GnssPowerStats;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPendingPowerStatsCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final reportGnssServiceDied()V
    .locals 3

    const-string v0, "GnssManager"

    const-string/jumbo v1, "gnss hal died - restarting shortly..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;I)V

    check-cast v0, Landroid/os/HandlerExecutor;

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportLocation(ZLandroid/location/Location;)V
    .locals 1

    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda36;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda36;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;ZLandroid/location/Location;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final reportLocationBatch([Landroid/location/Location;)V
    .locals 2

    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda10;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;Ljava/lang/Object;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final reportMeasurementData(Landroid/location/GnssMeasurementsEvent;)V
    .locals 2

    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda10;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;Ljava/lang/Object;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final reportNavigationMessage(Landroid/location/GnssNavigationMessage;)V
    .locals 2

    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda10;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;Ljava/lang/Object;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final reportNfwNotification(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .locals 10

    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda39;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda39;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final reportNmea(J)V
    .locals 1

    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda35;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda35;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;J)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final reportStatus(I)V
    .locals 2

    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final reportSvStatus(I[I[F[F[F[F[F)V
    .locals 9

    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda17;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;I[I[F[F[F[F[F)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final requestCivicAddress(DDD)V
    .locals 8

    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda13;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;DDD)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final requestFlpLocation(I)V
    .locals 2

    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final requestLocation(ZZ)V
    .locals 1

    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;ZZ)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final requestLppeCommonIesCapability()V
    .locals 2

    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda2;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final requestPowerStats(Ljava/util/concurrent/Executor;Lcom/android/server/location/gnss/hal/GnssNative$PowerStatsCallback;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPowerStatsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPendingPowerStatsCallbacks:Ljava/util/List;

    new-instance v2, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda20;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda20;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPendingPowerStatsCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_request_power_stats()V

    iget-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPowerStatsTimeoutCallback:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

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

.method public final requestPowerStatsBlocking()Lcom/android/server/location/gnss/GnssPowerStats;
    .locals 5

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda20;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda20;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/server/location/gnss/hal/GnssNative;->requestPowerStats(Ljava/util/concurrent/Executor;Lcom/android/server/location/gnss/hal/GnssNative$PowerStatsCallback;)V

    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "GnssManager"

    const-string v1, "Interrupted while waiting for power stats"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/gnss/GnssPowerStats;

    return-object p0
.end method

.method public final requestRefLocation()V
    .locals 2

    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda2;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final requestRefLocationSec()V
    .locals 2

    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda2;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final requestSetID(I)V
    .locals 2

    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final requestUbpCapability()V
    .locals 2

    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final requestUbpInfo(I)V
    .locals 2

    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;

    const/4 v1, 0x5

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final requestUtcTime()V
    .locals 2

    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda2;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final requestWlanCapability()V
    .locals 2

    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final requestWlanScanInfo(I)V
    .locals 2

    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public restartHal()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->initializeGnss(Z)V

    const-string v0, "GnssManager"

    const-string/jumbo v1, "gnss hal restarted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mBaseCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;->onHalRestarted()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final resumeGeofence(II)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->native_resume_geofence(II)Z

    move-result p0

    return p0
.end method

.method public final sendSuplNiMessage([BI)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->native_send_supl_ni_message([BI)V

    return-void
.end method

.method public final setAGpsCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mAGpsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mAGpsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;

    return-void
.end method

.method public final setAgpsReferenceLocationCellId(IIIIJII)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p8}, Lcom/android/server/location/gnss/hal/GnssNative;->native_agps_set_ref_location_cellid(IIIIJII)V

    return-void
.end method

.method public final setAgpsReferenceLocationCellId(IIIIJIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p9}, Lcom/android/server/location/gnss/hal/GnssNative;->native_agps_set_ref_location_cellid(IIIIJIII)V

    return-void
.end method

.method public final setAgpsServer(ILjava/lang/String;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->native_set_agps_server(ILjava/lang/String;I)V

    return-void
.end method

.method public final setAgpsSetId(ILjava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->native_agps_set_id(ILjava/lang/String;)V

    return-void
.end method

.method public final setGeofenceCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    return-void
.end method

.method public final setGnssAssistanceCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$GnssAssistanceCallbacks;)V
    .locals 0

    return-void
.end method

.method public final setGnssHardwareModelName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHardwareModelName:Ljava/lang/String;

    return-void
.end method

.method public final setGnssYearOfHardware(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHardwareYear:I

    return-void
.end method

.method public final setLocationRequestCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationRequestCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationRequestCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;

    return-void
.end method

.method public final setLppeHelperCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLppeHelperCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLppeHelperCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;

    return-void
.end method

.method public final setNotificationCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNotificationCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNotificationCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;

    return-void
.end method

.method public final setPositionMode(IIIIIZ)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p6}, Lcom/android/server/location/gnss/hal/GnssNative;->native_set_position_mode(IIIIIZ)Z

    move-result p0

    return p0
.end method

.method public final setPsdsCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPsdsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPsdsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;

    return-void
.end method

.method public final setSignalTypeCapabilities(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/GnssSignalType;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    invoke-virtual {v0, p1}, Landroid/location/GnssCapabilities;->withSignalTypes(Ljava/util/List;)Landroid/location/GnssCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->onCapabilitiesChanged(Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V

    return-void
.end method

.method public final setSubHalMeasurementCorrectionsCapabilities(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    invoke-virtual {v0, p1}, Landroid/location/GnssCapabilities;->withSubHalMeasurementCorrectionsFlags(I)Landroid/location/GnssCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->onCapabilitiesChanged(Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V

    return-void
.end method

.method public final setSubHalPowerIndicationCapabilities(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    invoke-virtual {v0, p1}, Landroid/location/GnssCapabilities;->withSubHalPowerFlags(I)Landroid/location/GnssCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->onCapabilitiesChanged(Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V

    return-void
.end method

.method public final setTimeCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mTimeCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mTimeCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;

    return-void
.end method

.method public final setTopHalCapabilities(IZ)V
    .locals 1

    iget v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mTopFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mTopFlags:I

    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    invoke-virtual {v0, p1, p2}, Landroid/location/GnssCapabilities;->withTopHalFlags(IZ)Landroid/location/GnssCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->onCapabilitiesChanged(Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V

    return-void
.end method

.method public final start()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mStartRealtimeMs:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHasFirstFix:Z

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_start()Z

    move-result p0

    return p0
.end method

.method public final startAntennaInfoListening()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_start_antenna_info_listening()Z

    move-result p0

    return p0
.end method

.method public final startBatch(JFZ)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/location/gnss/hal/GnssNative;->native_start_batch(JFZ)Z

    move-result p0

    return p0
.end method

.method public final startMeasurementCollection(ZZI)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->native_start_measurement_collection(ZZI)Z

    move-result p0

    return p0
.end method

.method public final startNavigationMessageCollection()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_start_navigation_message_collection()Z

    move-result p0

    return p0
.end method

.method public final startNmeaMessageCollection()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_start_nmea_message_collection()Z

    move-result p0

    return p0
.end method

.method public final startSvStatusCollection()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_start_sv_status_collection()Z

    move-result p0

    return p0
.end method

.method public final stop()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_stop()Z

    move-result p0

    return p0
.end method

.method public final stopAntennaInfoListening()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_stop_antenna_info_listening()Z

    move-result p0

    return p0
.end method

.method public final stopBatch()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_stop_batch()Z

    return-void
.end method

.method public final stopMeasurementCollection()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_stop_measurement_collection()Z

    move-result p0

    return p0
.end method

.method public final stopNavigationMessageCollection()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_stop_navigation_message_collection()Z

    move-result p0

    return p0
.end method

.method public final stopNmeaMessageCollection()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_stop_nmea_message_collection()Z

    move-result p0

    return p0
.end method

.method public final stopSvStatusCollection()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_stop_sv_status_collection()Z

    move-result p0

    return p0
.end method
