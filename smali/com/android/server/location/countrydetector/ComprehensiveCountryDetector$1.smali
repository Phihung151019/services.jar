.class public final Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/location/CountryListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$1;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    return-void
.end method


# virtual methods
.method public final onCountryDetected(Landroid/location/Country;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$1;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    iput-object p1, v0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mCountryFromLocation:Landroid/location/Country;

    const/4 p1, 0x1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;

    iget-object p0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$1;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    return-void
.end method
