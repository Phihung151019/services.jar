.class public final Lcom/android/server/location/gnss/GnssManagerService;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/location/gnss/hal/GnssNative$GnssAssistanceCallbacks;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

.field public final mGnssGeofenceProxy:Lcom/android/server/location/gnss/GnssGeofenceProxy;

.field public final mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProviderSec;

.field public final mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

.field public final mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

.field public final mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

.field public final mGnssNmeaProvider:Lcom/android/server/location/gnss/GnssNmeaProvider;

.field public final mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusProvider;

.field public final mSLocationProxy:Lcom/android/server/location/gnss/sec/SLocationProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/LocationManagerService$SystemInjector;Lcom/android/server/location/gnss/hal/GnssNative;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GnssService"

    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    new-instance v0, Lcom/android/server/location/gnss/GnssMetrics;

    const-string/jumbo v1, "batterystats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    invoke-direct {v0, p1, v1, p3}, Lcom/android/server/location/gnss/GnssMetrics;-><init>(Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/location/gnss/hal/GnssNative;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProviderSec;

    invoke-direct {v1, p1, p2, p3, v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;-><init>(Landroid/content/Context;Lcom/android/server/location/LocationManagerService$SystemInjector;Lcom/android/server/location/gnss/hal/GnssNative;Lcom/android/server/location/gnss/GnssMetrics;)V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    new-instance p1, Lcom/android/server/location/gnss/GnssStatusProvider;

    invoke-direct {p1, p2, p3}, Lcom/android/server/location/gnss/GnssStatusProvider;-><init>(Lcom/android/server/location/LocationManagerService$SystemInjector;Lcom/android/server/location/gnss/hal/GnssNative;)V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusProvider;

    new-instance p1, Lcom/android/server/location/gnss/GnssNmeaProvider;

    invoke-direct {p1, p2, p3}, Lcom/android/server/location/gnss/GnssNmeaProvider;-><init>(Lcom/android/server/location/LocationManagerService$SystemInjector;Lcom/android/server/location/gnss/hal/GnssNative;)V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNmeaProvider:Lcom/android/server/location/gnss/GnssNmeaProvider;

    new-instance p1, Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    invoke-direct {p1, p2, p3}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;-><init>(Lcom/android/server/location/LocationManagerService$SystemInjector;Lcom/android/server/location/gnss/hal/GnssNative;)V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    new-instance p1, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    invoke-direct {p1, p2, p3}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;-><init>(Lcom/android/server/location/LocationManagerService$SystemInjector;Lcom/android/server/location/gnss/hal/GnssNative;)V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    new-instance p1, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    invoke-direct {p1, p3}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;)V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    iget-object p2, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    iput-object p2, p1, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    new-instance p1, Lcom/android/server/location/gnss/GnssGeofenceProxy;

    invoke-direct {p1, p3}, Lcom/android/server/location/gnss/GnssGeofenceProxy;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;)V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssGeofenceProxy:Lcom/android/server/location/gnss/GnssGeofenceProxy;

    new-instance p1, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;

    invoke-direct {p1, p0, p3}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;-><init>(Lcom/android/server/location/gnss/GnssManagerService;Lcom/android/server/location/gnss/hal/GnssNative;)V

    new-instance p1, Lcom/android/server/location/gnss/GnssManagerService$GnssCapabilitiesHalModule;

    invoke-direct {p1, p0, p3}, Lcom/android/server/location/gnss/GnssManagerService$GnssCapabilitiesHalModule;-><init>(Lcom/android/server/location/gnss/GnssManagerService;Lcom/android/server/location/gnss/hal/GnssNative;)V

    invoke-virtual {p3}, Lcom/android/server/location/gnss/hal/GnssNative;->register()V

    new-instance p1, Lcom/android/server/location/gnss/sec/SLocationProxy;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/server/location/gnss/sec/SLocationProxy;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mSLocationProxy:Lcom/android/server/location/gnss/sec/SLocationProxy;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 6

    array-length v0, p3

    if-lez v0, :cond_a

    const/4 v0, 0x0

    aget-object v1, p3, v0

    const-string v2, "--gnssmetrics"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;

    invoke-direct {p1}, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;-><init>()V

    iget-object p3, p0, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v1

    iput v1, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numLocationReportProcessed:I

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getMean()D

    move-result-wide v3

    mul-double/2addr v3, v1

    double-to-int p3, v3

    iput p3, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->percentageLocationFailure:I

    :cond_0
    iget-object p3, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixSecStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v1

    iput v1, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numTimeToFirstFixProcessed:I

    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getMean()D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanTimeToFirstFixSecs:I

    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v1

    double-to-int p3, v1

    iput p3, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationTimeToFirstFixSecs:I

    :cond_1
    iget-object p3, p0, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMeterStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v1

    iput v1, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numPositionAccuracyProcessed:I

    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getMean()D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanPositionAccuracyMeters:I

    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v1

    double-to-int p3, v1

    iput p3, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationPositionAccuracyMeters:I

    :cond_2
    iget-object p3, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0Statistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v1

    iput v1, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numTopFourAverageCn0Processed:I

    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getMean()D

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanTopFourAverageCn0DbHz:D

    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationTopFourAverageCn0DbHz:D

    :cond_3
    iget p3, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumSvStatus:I

    if-lez p3, :cond_4

    iput p3, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numSvStatusProcessed:I

    :cond_4
    iget p3, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumL5SvStatus:I

    if-lez p3, :cond_5

    iput p3, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numL5SvStatusProcessed:I

    :cond_5
    iget p3, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumSvStatusUsedInFix:I

    if-lez p3, :cond_6

    iput p3, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numSvStatusUsedInFix:I

    :cond_6
    iget p3, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumL5SvStatusUsedInFix:I

    if-lez p3, :cond_7

    iput p3, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numL5SvStatusUsedInFix:I

    :cond_7
    iget-object p3, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0StatisticsL5:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_8

    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v1

    iput v1, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numL5TopFourAverageCn0Processed:I

    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getMean()D

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanL5TopFourAverageCn0DbHz:D

    invoke-virtual {p3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationL5TopFourAverageCn0DbHz:D

    :cond_8
    iget-object p3, p0, Lcom/android/server/location/gnss/GnssMetrics;->mGnssPowerMetrics:Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;

    new-instance v1, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    invoke-direct {v1}, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;-><init>()V

    iget-object p3, p3, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    iget-object p3, p3, Lcom/android/server/location/gnss/GnssMetrics;->mGnssPowerMetrics:Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;

    :try_start_0
    iget-object p3, p3, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p3}, Lcom/android/internal/app/IBatteryStats;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

    move-result-object p3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    const-string v2, "GnssMetrics"

    invoke-static {v2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_9

    invoke-virtual {p3}, Landroid/os/connectivity/GpsBatteryStats;->getLoggingDurationMs()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->loggingDurationMs:J

    invoke-virtual {p3}, Landroid/os/connectivity/GpsBatteryStats;->getEnergyConsumedMaMs()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v4

    iput-wide v2, v1, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->energyConsumedMah:D

    invoke-virtual {p3}, Landroid/os/connectivity/GpsBatteryStats;->getTimeInGpsSignalQualityLevel()[J

    move-result-object p3

    array-length v2, p3

    new-array v2, v2, [J

    iput-object v2, v1, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    array-length v3, p3

    invoke-static {p3, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    iput-object v1, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->powerMetrics:Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    const-string/jumbo p3, "ro.boot.revision"

    const-string v1, ""

    invoke-static {p3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->hardwareRevision:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object p1

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssMetrics;->reset()V

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    return-void

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Capabilities: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    iget-object v1, v1, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GNSS Hardware Model Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    iget-object v1, v1, Lcom/android/server/location/gnss/hal/GnssNative;->mHardwareModelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "Status Provider:"

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    iget-object v0, v0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->isMeasurementSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "Measurements Provider:"

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_b
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    iget-object v0, v0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->isNavigationMessageCollectionSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo v0, "Navigation Message Provider:"

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_c
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    iget-object v0, v0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->isAntennaInfoSupported()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "Antenna Info Provider:"

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Antenna Infos: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    iget-object v1, v1, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mAntennaInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_d
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNmeaProvider:Lcom/android/server/location/gnss/GnssNmeaProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "NMEA Provider:"

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNmeaProvider:Lcom/android/server/location/gnss/GnssNmeaProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    iget-object v0, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mLastKnownPowerStats:Lcom/android/server/location/gnss/GnssPowerStats;

    if-eqz v0, :cond_e

    const-string v1, "Last Known Power Stats:"

    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/android/server/location/gnss/GnssPowerStats;->dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;Landroid/location/GnssCapabilities;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_e
    return-void
.end method
