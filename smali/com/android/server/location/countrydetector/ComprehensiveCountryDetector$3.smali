.class public final Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$3;
.super Ljava/util/TimerTask;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$3;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$3;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;

    return-void
.end method
