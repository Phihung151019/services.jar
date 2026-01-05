.class public final Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

.field public final synthetic val$country:Landroid/location/Country;

.field public final synthetic val$detectedCountry:Landroid/location/Country;

.field public final synthetic val$notifyChange:Z

.field public final synthetic val$startLocationBasedDetection:Z


# direct methods
.method public constructor <init>(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;Landroid/location/Country;Landroid/location/Country;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    iput-object p2, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->val$country:Landroid/location/Country;

    iput-object p3, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->val$detectedCountry:Landroid/location/Country;

    iput-boolean p4, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->val$notifyChange:Z

    iput-boolean p5, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->val$startLocationBasedDetection:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    iget-object v1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->val$country:Landroid/location/Country;

    iget-object v2, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->val$detectedCountry:Landroid/location/Country;

    iget-boolean v3, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->val$notifyChange:Z

    iget-boolean p0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->val$startLocationBasedDetection:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    iget-object v3, v0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    if-eqz v3, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/location/Country;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, v0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    if-eqz v1, :cond_1

    invoke-interface {v1, v2}, Landroid/location/CountryListener;->onCountryDetected(Landroid/location/Country;)V

    :cond_1
    const/4 v1, 0x1

    if-eqz p0, :cond_5

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/location/Country;->getSource()I

    move-result p0

    if-le p0, v1, :cond_5

    :cond_2
    iget-object p0, v0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, v0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v3, "wifi_on"

    invoke-static {p0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_5

    :goto_0
    iget-object p0, v0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    if-eqz p0, :cond_5

    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, v0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationBasedCountryDetectionListener:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$1;

    monitor-enter v0

    :try_start_0
    iget-object v3, v0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_4

    monitor-exit v0

    goto :goto_1

    :cond_4
    :try_start_1
    new-instance v3, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    iget-object v4, v0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/location/countrydetector/CountryDetectorBase;-><init>(Landroid/content/Context;)V

    const-string/jumbo v5, "location"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    iput-object v4, v3, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    iput-object v3, v0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    iput-object p0, v3, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    invoke-virtual {v3}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->detectCountry()Landroid/location/Country;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_5
    :goto_1
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/location/Country;->getSource()I

    move-result p0

    if-lt p0, v1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->cancelLocationRefresh()V

    invoke-virtual {v0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    return-void

    :cond_7
    :goto_2
    monitor-enter v0

    :try_start_3
    iget-object p0, v0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_8

    monitor-exit v0

    return-void

    :cond_8
    :try_start_4
    new-instance p0, Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    iput-object p0, v0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$3;

    invoke-direct {v1, v0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$3;-><init>(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)V

    const-wide/32 v2, 0x5265c00

    invoke-virtual {p0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0
.end method
