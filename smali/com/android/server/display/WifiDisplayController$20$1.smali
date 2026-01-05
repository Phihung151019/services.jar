.class public final Lcom/android/server/display/WifiDisplayController$20$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$DeviceInfoListener;


# instance fields
.field public final synthetic this$1:Lcom/android/server/display/WifiDisplayController$20;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayController$20;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$20$1;->this$1:Lcom/android/server/display/WifiDisplayController$20;

    return-void
.end method


# virtual methods
.method public final onDeviceInfoAvailable(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "onDeviceInfoAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$20$1;->this$1:Lcom/android/server/display/WifiDisplayController$20;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mLocalDeviceP2pMacAddress:Ljava/lang/String;

    :cond_0
    return-void
.end method
