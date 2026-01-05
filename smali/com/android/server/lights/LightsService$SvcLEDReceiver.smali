.class public final Lcom/android/server/lights/LightsService$SvcLEDReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method public constructor <init>(Lcom/android/server/lights/LightsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "com.android.server.LightsService.action.UPDATE_SVC_LED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    iget-object p1, p1, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Lcom/android/server/lights/LightsService$1;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {p2}, Lcom/android/server/lights/LightsService;->-$$Nest$macquireWakeLockForLED(Lcom/android/server/lights/LightsService;)V

    const-string/jumbo p2, "LightsService"

    const-string/jumbo v0, "[api] onReceive : SvcLEDReceiver re-enables LightSenor and sends MSG_FORCEDSVCLEDTASK"

    invoke-static {p2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/server/lights/LightsService;->enableSvcLEDLightSensorLocked(Z)V

    iget-object p2, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    iget-object p2, p2, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p2, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    iget-object p2, p2, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    iget p0, p0, Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I

    int-to-long v1, p0

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method
