.class public final Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;


# instance fields
.field public mCivicAddressTimeout:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda3;

.field public final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field public mFlpTimeout:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda0;

.field public final mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

.field public final mHandler:Landroid/os/Handler;

.field public mIsCivicAddressRequested:Z

.field public mIsFlpRequested:Z

.field public mIsRetryWifiScan:Z

.field public mIsUbpRequested:Z

.field public mIsWifiScanRequested:Z

.field public final mLocationListener:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$1;

.field public final mLocationManager:Landroid/location/LocationManager;

.field public mPressureSensor:Landroid/hardware/Sensor;

.field public mSensorEventListener:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$UBPSensorEventListener;

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public mUbpTimeout:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda0;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;

.field public final mWifiScanner:Landroid/net/wifi/WifiScanner;

.field public mWlanTimeout:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/gnss/hal/GnssNative;Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsWifiScanRequested:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mWlanTimeout:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda0;

    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsRetryWifiScan:Z

    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsUbpRequested:Z

    iput-object v1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mUbpTimeout:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda0;

    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsFlpRequested:Z

    iput-object v1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mFlpTimeout:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda0;

    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsCivicAddressRequested:Z

    iput-object v1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mCivicAddressTimeout:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$$ExternalSyntheticLambda3;

    iput-object v1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mLocationManager:Landroid/location/LocationManager;

    new-instance v0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$1;-><init>(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mLocationListener:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$1;

    const-string/jumbo v0, "LppeFusedLocationHelper"

    const-string v1, "Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->getInstance()Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    const-string/jumbo p3, "initializeLppeLocationHelper"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p3, "wifi"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/wifi/WifiManager;

    iput-object p3, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string/jumbo p3, "sensor"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/SensorManager;

    iput-object p3, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mSensorManager:Landroid/hardware/SensorManager;

    const-string/jumbo p3, "location"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/location/LocationManager;

    iput-object p3, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo p3, "connectivity"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/ConnectivityManager;

    iput-object p3, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string/jumbo p3, "wifiscanner"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiScanner;

    iput-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->setLppeHelperCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;)V

    return-void
.end method

.method public static convertStringToHexLong(Ljava/lang/String;)J
    .locals 2

    :try_start_0
    const-string v0, ":"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-string/jumbo p0, "LocationX"

    const-string/jumbo v0, "convertStringToHexLong : NumberFormatException"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    return-wide v0
.end method


# virtual methods
.method public final handleUpdateWlanError()V
    .locals 2

    const-string/jumbo v0, "handleUpdateWLANError :  3"

    const-string/jumbo v1, "LocationX"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->injectWlanError(I)V

    return-void
.end method
