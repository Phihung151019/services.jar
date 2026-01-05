.class public final Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public mLastAverageCn0:D

.field public mLastSignalLevel:I

.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssMetrics;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssMetrics;Lcom/android/internal/app/IBatteryStats;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-wide/high16 p1, -0x3fa7000000000000L    # -100.0

    iput-wide p1, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mLastAverageCn0:D

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mLastSignalLevel:I

    return-void
.end method


# virtual methods
.method public final reportSignalQuality([F)V
    .locals 7

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_1

    array-length v3, p1

    if-lez v3, :cond_1

    array-length v3, p1

    const/4 v4, 0x4

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_0

    aget v5, p1, v3

    float-to-double v5, v5

    add-double/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    array-length p1, p1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-double v3, p1

    div-double/2addr v1, v3

    :cond_1
    iget-wide v3, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mLastAverageCn0:D

    sub-double v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, v3, v5

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    cmpl-double p1, v1, v3

    if-lez p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    iget p1, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mLastSignalLevel:I

    if-eq v0, p1, :cond_4

    const/16 p1, 0x45

    invoke-static {p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    iput v0, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mLastSignalLevel:I

    :cond_4
    :try_start_0
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p1, v0}, Lcom/android/internal/app/IBatteryStats;->noteGpsSignalQuality(I)V

    iput-wide v1, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mLastAverageCn0:D
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "GnssMetrics"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
