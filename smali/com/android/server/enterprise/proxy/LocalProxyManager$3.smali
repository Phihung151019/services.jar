.class public final Lcom/android/server/enterprise/proxy/LocalProxyManager$3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

.field public final synthetic val$shouldAdd:Z


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$3;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    iput-boolean p2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$3;->val$shouldAdd:Z

    return-void
.end method


# virtual methods
.method public final onFailure(I)V
    .locals 1

    const-string p0, "Fail to update wifi proxy - reason: "

    const-string/jumbo v0, "LocalProxyManager"

    invoke-static {p1, p0, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onSuccess()V
    .locals 2

    const-string/jumbo v0, "LocalProxyManager"

    const-string/jumbo v1, "Wifi proxy updated successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$3;->val$shouldAdd:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$3;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->clearProxyServerCache()V

    :cond_0
    return-void
.end method
