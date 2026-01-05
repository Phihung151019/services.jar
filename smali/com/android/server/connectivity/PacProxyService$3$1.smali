.class public final Lcom/android/server/connectivity/PacProxyService$3$1;
.super Lcom/android/net/IProxyPortListener$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$1:Lcom/android/server/connectivity/PacProxyService$2;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/PacProxyService$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/PacProxyService$3$1;->this$1:Lcom/android/server/connectivity/PacProxyService$2;

    invoke-direct {p0}, Lcom/android/net/IProxyPortListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final setProxyPort(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService$3$1;->this$1:Lcom/android/server/connectivity/PacProxyService$2;

    iget-object v0, v0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    iget v1, v0, Lcom/android/server/connectivity/PacProxyService;->mLastPort:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/connectivity/PacProxyService;->mHasSentBroadcast:Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService$3$1;->this$1:Lcom/android/server/connectivity/PacProxyService$2;

    iget-object v0, v0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    iput p1, v0, Lcom/android/server/connectivity/PacProxyService;->mLastPort:I

    const-string/jumbo v0, "PacProxyService"

    if-eq p1, v2, :cond_1

    const-string/jumbo v1, "Local proxy is bound on "

    invoke-static {p1, v1, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService$3$1;->this$1:Lcom/android/server/connectivity/PacProxyService$2;

    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {p0}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$msendProxyIfNeeded(Lcom/android/server/connectivity/PacProxyService;)V

    return-void

    :cond_1
    const-string/jumbo p0, "Received invalid port from Local Proxy, PAC will not be operational"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
