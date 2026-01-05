.class public final Lcom/android/server/display/WifiDisplayController$13;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayController;

.field public final synthetic val$config:Landroid/net/wifi/p2p/WifiP2pConfig;

.field public final synthetic val$newDevice:Landroid/net/wifi/p2p/WifiP2pDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pConfig;I)V
    .locals 0

    iput p4, p0, Lcom/android/server/display/WifiDisplayController$13;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController$13;->val$newDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object p3, p0, Lcom/android/server/display/WifiDisplayController$13;->val$config:Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(I)V
    .locals 1

    iget p1, p0, Lcom/android/server/display/WifiDisplayController$13;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    const-string/jumbo p1, "WifiDisplayController"

    const-string/jumbo v0, "setPreparedAccountPin with SmartThings Device ID, onFailure"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$13;->val$newDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$13;->val$config:Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-virtual {p1, v0, p0}, Lcom/android/server/display/WifiDisplayController;->connectP2p(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pConfig;)V

    return-void

    :pswitch_0
    const-string/jumbo p1, "WifiDisplayController"

    const-string/jumbo v0, "setPreparedAccountPin with IRK, onFailure"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$13;->val$newDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$13;->val$config:Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-virtual {p1, v0, p0}, Lcom/android/server/display/WifiDisplayController;->connectP2p(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pConfig;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSuccess()V
    .locals 2

    iget v0, p0, Lcom/android/server/display/WifiDisplayController$13;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "setPreparedAccountPin with SmartThings Device ID, onSuccess"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$13;->val$newDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$13;->val$config:Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/display/WifiDisplayController;->connectP2p(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pConfig;)V

    return-void

    :pswitch_0
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "setPreparedAccountPin with IRK, onSuccess"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$13;->val$newDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$13;->val$config:Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/display/WifiDisplayController;->connectP2p(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pConfig;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
