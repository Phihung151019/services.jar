.class public final Lcom/android/server/location/gnss/sec/SuplInitHandler$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/sec/SuplInitHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$1;->this$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 1

    const-string/jumbo p1, "SuplInitHandler"

    const-string/jumbo v0, "mEmergencyNetworkConnectivityCallback : onAvailable"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$1;->this$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    iget-boolean v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mIsUdpListen:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mIsUdpListen:Z

    iget-boolean v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mIsOpenUdpPort:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "start UDP socket"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/sec/SuplInitHandler;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    const-string/jumbo p0, "UDP port is already opened."

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    const-string/jumbo p1, "SuplInitHandler"

    const-string/jumbo v0, "mEmergencyNetworkConnectivityCallback : onLost"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$1;->this$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mIsUdpListen:Z

    iget-object p1, p1, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$1;->this$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    iget-object p1, p1, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {p1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isJapanMarket()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$1;->this$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    invoke-static {p0}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->-$$Nest$msetSalesCodeFromCscFeature(Lcom/android/server/location/gnss/sec/SuplInitHandler;)V

    :cond_0
    return-void
.end method

.method public final onUnavailable()V
    .locals 2

    const-string/jumbo v0, "SuplInitHandler"

    const-string/jumbo v1, "mEmergencyNetworkConnectivityCallback : onUnavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$1;->this$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mIsUdpListen:Z

    iget-object v0, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$1;->this$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    iget-object v0, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isJapanMarket()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$1;->this$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    invoke-static {p0}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->-$$Nest$msetSalesCodeFromCscFeature(Lcom/android/server/location/gnss/sec/SuplInitHandler;)V

    :cond_0
    return-void
.end method
