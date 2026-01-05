.class public final Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$4;
.super Landroid/telephony/PhoneStateListener;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    iget v0, p1, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    iget v0, p1, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTotalCountServiceStateChanges:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTotalCountServiceStateChanges:I

    iget-object p1, p1, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p1

    if-ne p1, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    invoke-virtual {p0, v1, v1}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;

    :cond_0
    return-void
.end method
