.class public final Lcom/android/server/HermesService$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/HermesService;


# direct methods
.method public constructor <init>(Lcom/android/server/HermesService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/HermesService$3;->this$0:Lcom/android/server/HermesService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "HERMES#Service"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/HermesService$3;->this$0:Lcom/android/server/HermesService;

    iget-object p1, p1, Lcom/android/server/HermesService;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "keyguard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "security.securenvm.available"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "true"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/HermesService$3;->this$0:Lcom/android/server/HermesService;

    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->SecnvmPowerOn()I

    move-result p0

    const-string/jumbo p1, "notify key guard showing to hermesd ret : "

    invoke-static {p0, p1, v0}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo p1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "ACTION_DATE_CHANGED intent called"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/HermesService$3;->this$0:Lcom/android/server/HermesService;

    sget p2, Lcom/android/server/HermesService;->$r8$clinit:I

    invoke-virtual {p1}, Lcom/android/server/HermesService;->TransmitCollectedDataToServer()V

    iget-object p0, p0, Lcom/android/server/HermesService$3;->this$0:Lcom/android/server/HermesService;

    const-string p1, "CollectSkeymasterDumpThread"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance p1, Lcom/android/server/HermesService$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/HermesService$1;-><init>(Lcom/android/server/HermesService;I)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Error occurs on CollectSkeymasterDumpThread. Err = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p0, "CollectSkeymasterDumpThread done"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
