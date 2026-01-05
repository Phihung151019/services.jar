.class public final Lcom/android/server/display/WifiDisplayMcfManager$3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayMcfManager;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayMcfManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager$3;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Lcom/samsung/android/mcf/McfAdapter;)V
    .locals 2

    const-string/jumbo v0, "WifiDisplayMcfManager"

    const-string/jumbo v1, "McfAdapterListener onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager$3;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager$3;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final onServiceDisconnected()V
    .locals 2

    const-string/jumbo v0, "WifiDisplayMcfManager"

    const-string/jumbo v1, "McfAdapterListener onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager$3;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager$3;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onServiceRemoteException()V
    .locals 0

    return-void
.end method
