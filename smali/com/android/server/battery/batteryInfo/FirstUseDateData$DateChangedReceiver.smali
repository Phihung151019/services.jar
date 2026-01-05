.class public final Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/battery/batteryInfo/FirstUseDateData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/battery/batteryInfo/FirstUseDateData;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;->this$0:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;->this$0:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    iget-object p1, p1, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[WriteFirstUseDateReceiver_onReceive]intent:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;->this$0:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    iget-object p2, p1, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mHandler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mUpdateDateRunnable:Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;->this$0:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mUpdateDateRunnable:Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;->this$0:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    iget-object p1, p1, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "[DateChangedReceiver_onReceive]"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;->this$0:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    iget-object p1, p1, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;

    const/4 v0, 0x2

    invoke-direct {p2, v0, p0}, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
