.class public final Lcom/android/server/display/WifiDisplayController$2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$2;->this$0:Lcom/android/server/display/WifiDisplayController;

    return-void
.end method


# virtual methods
.method public final onFailure(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$2;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    return-void
.end method

.method public final onSuccess()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$2;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-boolean v1, v0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    iget-boolean v2, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/display/WifiDisplayController$4;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Lcom/android/server/display/WifiDisplayController$4;-><init>(Lcom/android/server/display/WifiDisplayController;II)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$2;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    :cond_2
    return-void
.end method
