.class public final Lcom/android/server/display/WifiDisplayMcfManager$4;
.super Lcom/samsung/android/mcf/ble/BleScanCallback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayMcfManager;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayMcfManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager$4;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-direct {p0}, Lcom/samsung/android/mcf/ble/BleScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScanFailed(I)V
    .locals 1

    const-string/jumbo p0, "onScanFailed errorCode "

    const-string/jumbo v0, "WifiDisplayMcfManager"

    invoke-static {p1, p0, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onScanResult(Landroid/bluetooth/le/ScanResult;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager$4;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    iget-boolean v0, v0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsBounded:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onScanResult result "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "WifiDisplayMcfManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager$4;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    iget-object p1, p1, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager$4;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
