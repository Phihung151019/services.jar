.class public final Lcom/android/server/PACMService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/PACMService;


# direct methods
.method public constructor <init>(Lcom/android/server/PACMService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/PACMService$2;->this$0:Lcom/android/server/PACMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Broadcast received:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "PACMService"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p2, "com.samsung.android.aircommandmanager.START_LOCAL_SOCKET"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "GalaxyDiag app start"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/PACMService$2;->this$0:Lcom/android/server/PACMService;

    iget-object p1, p1, Lcom/android/server/PACMService;->mDevice:Lcom/samsung/android/service/ProtectedATCommand/Device;

    invoke-virtual {p1}, Lcom/samsung/android/service/ProtectedATCommand/Device;->isCsToolInstalled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/PACMService$2;->this$0:Lcom/android/server/PACMService;

    iget-object p0, p0, Lcom/android/server/PACMService;->mDevice:Lcom/samsung/android/service/ProtectedATCommand/Device;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/service/ProtectedATCommand/Device;->setCSTool(Z)V

    return-void

    :cond_0
    const-string/jumbo p2, "com.samsung.android.aircommandmanager.STOP_LOCAL_SOCKET"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "GalaxyDiag app end"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/PACMService$2;->this$0:Lcom/android/server/PACMService;

    iget-object p0, p0, Lcom/android/server/PACMService;->mDevice:Lcom/samsung/android/service/ProtectedATCommand/Device;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/service/ProtectedATCommand/Device;->setCSTool(Z)V

    :cond_1
    return-void
.end method
