.class public final Lcom/android/server/location/gnss/GnssMetrics;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mConstellationTypes:[Z

.field public final mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final mGnssPowerMetrics:Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;

.field public mL5SvStatusReports:J

.field public mL5SvStatusReportsUsedInFix:J

.field public final mL5TopFourAverageCn0DbmHzReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

.field public final mLocationFailureReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

.field public final mLocationFailureStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

.field public mLogStartInElapsedRealtimeMs:J

.field public mNumL5SvStatus:I

.field public mNumL5SvStatusUsedInFix:I

.field public mNumSvStatus:I

.field public mNumSvStatusUsedInFix:I

.field public final mPositionAccuracyMeterStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

.field public final mPositionAccuracyMetersReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

.field public mSvStatusReports:J

.field public mSvStatusReportsUsedInFix:J

.field public final mTimeToFirstFixMilliSReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

.field public final mTimeToFirstFixSecStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

.field public final mTopFourAverageCn0DbmHzReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

.field public final mTopFourAverageCn0Statistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

.field public final mTopFourAverageCn0StatisticsL5:Lcom/android/server/location/gnss/GnssMetrics$Statistics;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/location/gnss/hal/GnssNative;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/server/location/gnss/GnssMetrics;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    new-instance p3, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;

    invoke-direct {p3, p0, p2}, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;-><init>(Lcom/android/server/location/gnss/GnssMetrics;Lcom/android/internal/app/IBatteryStats;)V

    iput-object p3, p0, Lcom/android/server/location/gnss/GnssMetrics;->mGnssPowerMetrics:Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;

    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixSecStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMeterStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0Statistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0StatisticsL5:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssMetrics;->reset()V

    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixMilliSReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMetersReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0DbmHzReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mL5TopFourAverageCn0DbmHzReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    const-string/jumbo p2, "stats"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/StatsManager;

    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;

    invoke-direct {p2, p0}, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/location/gnss/GnssMetrics;)V

    sget-object p0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    const/16 p3, 0x275a

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0, p0, p2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    const/16 p3, 0x2775

    invoke-virtual {p1, p3, v0, p0, p2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public static isL5Sv(F)Z
    .locals 4

    float-to-double v0, p0

    const-wide v2, 0x41d1584ec0000000L    # 1.164E9

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_0

    const-wide v2, 0x41d1b7acd0000000L    # 1.189E9

    cmpg-double p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final reset()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mLogStartInElapsedRealtimeMs:J

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->reset()V

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixSecStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->reset()V

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMeterStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->reset()V

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0Statistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->reset()V

    const/16 v0, 0x8

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mConstellationTypes:[Z

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0StatisticsL5:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumSvStatus:I

    iput v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumL5SvStatus:I

    iput v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumSvStatusUsedInFix:I

    iput v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumL5SvStatusUsedInFix:I

    return-void
.end method
