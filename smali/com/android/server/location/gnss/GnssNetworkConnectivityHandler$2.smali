.class public final Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public isOnLostCallbackReceived:Z

.field public final mAvailableNetworkCapabilities:Ljava/util/HashMap;

.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;->mAvailableNetworkCapabilities:Ljava/util/HashMap;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;->isOnLostCallbackReceived:Z

    return-void
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;->mAvailableNetworkCapabilities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkCapabilities;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0x12

    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    invoke-virtual {p2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eq v4, v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    invoke-virtual {p2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eq v1, v3, :cond_2

    goto :goto_0

    :cond_2
    sget v1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->$r8$clinit:I

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    iget-object v1, v1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isLsiGnss()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;->isOnLostCallbackReceived:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-static {v1, p1, v2, p2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->-$$Nest$mhandleUpdateNetworkState(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Landroid/net/Network;ZLandroid/net/NetworkCapabilities;)V

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;->isOnLostCallbackReceived:Z

    :cond_3
    return-void

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;->mAvailableNetworkCapabilities:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GnssNetworkConnectivityHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Network connected/capabilities updated. Available networks count: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;->mAvailableNetworkCapabilities:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    iget-object v1, v1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mGnssNetworkListener:Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda9;

    iget-object v1, v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    iget-object v3, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkTimeHelper:Lcom/android/server/location/gnss/NtpNetworkTimeHelper;

    monitor-enter v3

    :try_start_0
    iget v4, v3, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mInjectNtpTimeState:I

    if-nez v4, :cond_5

    const-string/jumbo v4, "onNetworkAvailable"

    invoke-virtual {v3, v4}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->retrieveAndInjectNtpTime(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_5
    :goto_1
    monitor-exit v3

    iget-boolean v3, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mSupportsPsds:Z

    if-eqz v3, :cond_7

    iget-object v3, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v4, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mPendingDownloadPsdsTypes:Ljava/util/Set;

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-instance v6, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda29;

    invoke-direct {v6, v5, v0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda29;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v1, v6}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_6
    iget-object v0, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mPendingDownloadPsdsTypes:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    monitor-exit v3

    goto :goto_4

    :goto_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_7
    :goto_4
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-static {p0, p1, v2, p2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->-$$Nest$mhandleUpdateNetworkState(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Landroid/net/Network;ZLandroid/net/NetworkCapabilities;)V

    return-void

    :goto_5
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;->mAvailableNetworkCapabilities:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "GnssNetworkConnectivityHandler"

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Incorrectly received network callback onLost() before onCapabilitiesChanged() for network: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    iget-object v0, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isLsiGnss()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;->isOnLostCallbackReceived:Z

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Network connection lost. Available networks count: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;->mAvailableNetworkCapabilities:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->-$$Nest$mhandleUpdateNetworkState(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Landroid/net/Network;ZLandroid/net/NetworkCapabilities;)V

    return-void
.end method
