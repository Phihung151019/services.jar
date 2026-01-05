.class public final Lcom/android/server/am/BatteryStatsService$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$2;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    const/16 p1, 0x15

    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CONNECTED"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "SUSPENDED"

    :goto_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$2;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object p2

    invoke-static {p2}, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->getDisplayTransport([I)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/BatteryStatsService;->noteConnectivityChanged(ILjava/lang/String;)V

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$2;->this$0:Lcom/android/server/am/BatteryStatsService;

    const/4 p1, -0x1

    const-string v0, "DISCONNECTED"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/BatteryStatsService;->noteConnectivityChanged(ILjava/lang/String;)V

    return-void
.end method
