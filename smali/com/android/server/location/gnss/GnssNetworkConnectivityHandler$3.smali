.class public final Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    iget v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    return-void

    :pswitch_0
    const-string p1, "GnssNetworkConnectivityHandler"

    const-string v0, "EmergencyNetwork : onAvailable"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mIsConnectEmergencyNetwork:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 2

    iget v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    return-void

    :pswitch_0
    const-string v0, "GnssNetworkConnectivityHandler"

    const-string/jumbo v1, "SUPL network connection available."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-static {p0, p1, p2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->-$$Nest$mhandleSuplConnectionAvailable(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Landroid/net/Network;Landroid/net/LinkProperties;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    const-string p1, "GnssNetworkConnectivityHandler"

    iget v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "EmergencyNetwork : onLost"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mIsConnectEmergencyNetwork:Z

    return-void

    :pswitch_0
    const-string/jumbo v0, "SUPL network connection lost."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    sget p1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->$r8$clinit:I

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->handleReleaseSuplConnection(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onUnavailable()V
    .locals 2

    const-string v0, "GnssNetworkConnectivityHandler"

    iget v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    const-string/jumbo v1, "mEmergencyNetwork : onUnavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mIsConnectEmergencyNetwork:Z

    return-void

    :pswitch_0
    const-string/jumbo v1, "SUPL network connection request timed out."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    sget v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->$r8$clinit:I

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->handleReleaseSuplConnection(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
