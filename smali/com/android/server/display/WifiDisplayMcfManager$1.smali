.class public final Lcom/android/server/display/WifiDisplayMcfManager$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayMcfManager;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayMcfManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager$1;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string/jumbo p1, "WifiDisplayMcfManager"

    const-string v0, "BleAdvertiserService onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager$1;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p1, Lcom/android/server/display/WifiDisplayMcfManager;->mService:Landroid/os/Messenger;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager$1;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsBounded:Z

    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mService:Landroid/os/Messenger;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-static {p2, p1, v0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string/jumbo p1, "WifiDisplayMcfManager"

    const-string v0, "BleAdvertiserService onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager$1;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mService:Landroid/os/Messenger;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsBounded:Z

    return-void
.end method
