.class public final Lcom/android/server/sepunion/EngmodeService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/EngmodeService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/EngmodeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService$2;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_0

    :try_start_0
    const-string/jumbo p1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "engmode_service"

    const-string p2, "BootCompleted"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$2;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-static {p1}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$mregisterNetworkCallback(Lcom/android/server/sepunion/EngmodeService;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService$2;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-static {p0}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$mregisterNetworkCallback(Lcom/android/server/sepunion/EngmodeService;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method
