.class public final Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

.field public final synthetic val$location:Landroid/location/Location;


# direct methods
.method public constructor <init>(Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    iput-object p2, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;->val$location:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;->val$location:Landroid/location/Location;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    iget-object p0, p0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, v1}, Landroid/location/CountryListener;->onCountryDetected(Landroid/location/Country;)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/location/Geocoder;

    iget-object v2, v2, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mContext:Landroid/content/Context;

    invoke-direct {v3, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo v0, "LocationBasedCountryDetector"

    const-string v2, "Exception occurs when getting country from location"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    new-instance v3, Landroid/location/Country;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    iput-object v3, v2, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mDetectedCountry:Landroid/location/Country;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    iput-object v1, v0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mDetectedCountry:Landroid/location/Country;

    :goto_1
    iget-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    iget-object v2, v0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mDetectedCountry:Landroid/location/Country;

    iget-object v0, v0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    if-eqz v0, :cond_4

    invoke-interface {v0, v2}, Landroid/location/CountryListener;->onCountryDetected(Landroid/location/Country;)V

    :cond_4
    iget-object p0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    iput-object v1, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mQueryThread:Ljava/lang/Thread;

    return-void
.end method
