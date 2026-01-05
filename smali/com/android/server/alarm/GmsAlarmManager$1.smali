.class public final Lcom/android/server/alarm/GmsAlarmManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/alarm/GmsAlarmManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/alarm/GmsAlarmManager;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 p1, 0x7

    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    const-string v1, "ACTION***"

    const/4 v2, -0x1

    const-string v3, "GmsAlarmManager"

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->$r8$classId:I

    packed-switch v5, :pswitch_data_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, v2, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p2, v0, Landroid/os/Message;->arg1:I

    const-string/jumbo p2, "android.intent.action.USER_REMOVED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string/jumbo p2, "android.intent.action.USER_ADDED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x9

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v2, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    iget-boolean p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->isChinaMode:Z

    if-eqz p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    iput-boolean v4, p1, Lcom/android/server/alarm/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z

    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    iget-object v0, v0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    iget-boolean p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->isChinaMode:Z

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    iput-boolean v4, p1, Lcom/android/server/alarm/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z

    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_7
    :goto_1
    return-void

    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    const-string/jumbo p1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    iput-boolean v4, p1, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOn:Z

    iget-boolean v0, p1, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOffChange:Z

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_9

    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_9

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_9
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msendCheckNetWorkDelay(Lcom/android/server/alarm/GmsAlarmManager;)V

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    iput-boolean p2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOffChange:Z

    goto :goto_2

    :cond_a
    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    const-wide/32 p1, 0x36ee80

    invoke-virtual {p0, v4, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    :cond_b
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    iput-boolean p2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOn:Z

    iput-boolean p2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOffChange:Z

    :cond_c
    :goto_2
    return-void

    :pswitch_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_3

    :cond_d
    const-string/jumbo v0, "sec.app.policy.UPDATE.gmsnet"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_e
    :goto_3
    return-void

    :pswitch_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_f

    goto/16 :goto_5

    :cond_f
    const-string/jumbo p1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const-string p1, "CONNECTIVITY RECEIVER"

    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    const-string/jumbo v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/NetworkInfo;

    iput-object p2, p1, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    const p2, 0x9d08

    invoke-static {p2, p1}, Landroid/util/EventLog;->writeEvent(II)I

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "NetworkInfo type = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  -- isConnected = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    iget-object v0, v0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x11

    if-eq p1, v2, :cond_10

    if-eq p1, v4, :cond_10

    if-eqz p1, :cond_10

    if-eq p1, p2, :cond_10

    const/16 v0, 0x10

    if-ne p1, v0, :cond_15

    :cond_10
    if-ne p1, p2, :cond_12

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->vpnStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->addStartTime(J)V

    goto :goto_4

    :cond_11
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->vpnStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->setEndTime(J)V

    :cond_12
    :goto_4
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    iget-boolean p2, p1, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOn:Z

    if-nez p2, :cond_13

    iget-boolean p2, p1, Lcom/android/server/alarm/GmsAlarmManager;->mWaitCheckNetWork:Z

    if-nez p2, :cond_13

    iget-boolean p2, p1, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    if-nez p2, :cond_13

    iput-boolean v4, p1, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOffChange:Z

    goto :goto_5

    :cond_13
    iget-object p2, p1, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz p2, :cond_14

    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_14

    invoke-virtual {p2, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_14
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msendCheckNetWorkDelay(Lcom/android/server/alarm/GmsAlarmManager;)V

    :cond_15
    :goto_5
    return-void

    :pswitch_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_16

    goto :goto_6

    :cond_16
    const-string/jumbo p1, "android.os.action.CHARGING"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-wide/16 v0, 0x2710

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6

    :cond_17
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_6
    return-void

    :pswitch_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_18

    goto :goto_7

    :cond_18
    const-string/jumbo p1, "com.samsung.android.server.action_check_gms_network"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_7

    :cond_19
    const-string/jumbo p1, "com.samsung.android.server.action_insert_log"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_7

    :cond_1a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msendInsertLogDelay(Lcom/android/server/alarm/GmsAlarmManager;)V

    :cond_1b
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
