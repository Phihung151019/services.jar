.class public final Lcom/android/server/RealTimeTokenService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/RealTimeTokenService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/RealTimeTokenService;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/RealTimeTokenService$2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v1, 0x0

    const-string/jumbo v0, "connectivity"

    const-string/jumbo v2, "RealTimeTokenService"

    iget v3, p0, Lcom/android/server/RealTimeTokenService$2;->$r8$classId:I

    packed-switch v3, :pswitch_data_0

    const-string p2, "Boot Completed Receiver"

    invoke-static {v2, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    sget-object v2, Lcom/android/server/RealTimeTokenService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/android/server/RealTimeTokenService;->currentTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/android/server/RealTimeTokenService;->elapsedTime:J

    iget-object p2, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    iget-wide v2, p2, Lcom/android/server/RealTimeTokenService;->currentTime:J

    iget-wide v4, p2, Lcom/android/server/RealTimeTokenService;->elapsedTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p2, Lcom/android/server/RealTimeTokenService;->bootingTime:J

    invoke-virtual {p2}, Lcom/android/server/RealTimeTokenService;->initTokenStorage()I

    iget-object p2, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-virtual {p1}, Lcom/android/server/RealTimeTokenService;->getActiveTokenNumber()I

    move-result p1

    if-lez p1, :cond_3

    :try_start_0
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    iget-object p1, p1, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    iput-object v1, p1, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;

    :cond_2
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/android/server/RealTimeTokenService$1;

    invoke-direct {p2, p1}, Lcom/android/server/RealTimeTokenService$1;-><init>(Lcom/android/server/RealTimeTokenService;)V

    iput-object p2, p1, Lcom/android/server/RealTimeTokenService;->mTimerTask:Lcom/android/server/RealTimeTokenService$1;

    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    new-instance p2, Ljava/util/Timer;

    invoke-direct {p2}, Ljava/util/Timer;-><init>()V

    iput-object p2, p1, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;

    iget-object p0, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    iget-object v0, p0, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/server/RealTimeTokenService;->mTimerTask:Lcom/android/server/RealTimeTokenService$1;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x1499700

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void

    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    const-string/jumbo p1, "Time has changed"

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    sget-object p2, Lcom/android/server/RealTimeTokenService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/RealTimeTokenService;->currentTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/RealTimeTokenService;->elapsedTime:J

    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    iget-wide v0, p1, Lcom/android/server/RealTimeTokenService;->bootingTime:J

    iget-wide p1, p1, Lcom/android/server/RealTimeTokenService;->elapsedTime:J

    add-long/2addr v0, p1

    const-wide/16 p1, 0x3e8

    div-long/2addr v0, p1

    const-string/jumbo p1, "setUserTime: "

    const-string/jumbo p2, "|"

    invoke-static {p1, v0, v1, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v3, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    iget-wide v3, v3, Lcom/android/server/RealTimeTokenService;->bootingTime:J

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    iget-wide v3, p2, Lcom/android/server/RealTimeTokenService;->elapsedTime:J

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/RealTimeTokenService;->setUserTime(J)I

    move-result p0

    if-gez p0, :cond_4

    const-string/jumbo p1, "setUserTime failed: "

    invoke-static {p0, p1, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void

    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v3, "Broadcast NetWork received:"

    invoke-static {v3, p2, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object p2, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    sget-object v3, Lcom/android/server/RealTimeTokenService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    goto :goto_2

    :cond_5
    move-object p1, v1

    :goto_2
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    :goto_3
    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-virtual {p1}, Lcom/android/server/RealTimeTokenService;->getActiveTokenNumber()I

    move-result p1

    if-lez p1, :cond_7

    const-string/jumbo p1, "Start RTTS Time Observer"

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/RealTimeTokenService;->currentTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/RealTimeTokenService;->elapsedTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    iget-object p2, p1, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;

    if-nez p2, :cond_9

    new-instance p2, Lcom/android/server/RealTimeTokenService$1;

    invoke-direct {p2, p1}, Lcom/android/server/RealTimeTokenService$1;-><init>(Lcom/android/server/RealTimeTokenService;)V

    iput-object p2, p1, Lcom/android/server/RealTimeTokenService;->mTimerTask:Lcom/android/server/RealTimeTokenService$1;

    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    new-instance p2, Ljava/util/Timer;

    invoke-direct {p2}, Ljava/util/Timer;-><init>()V

    iput-object p2, p1, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;

    iget-object p0, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    iget-object v0, p0, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/server/RealTimeTokenService;->mTimerTask:Lcom/android/server/RealTimeTokenService$1;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x1499700

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    move-object p0, v0

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :cond_7
    const-string/jumbo p1, "Stop RTTS Time Observer"

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    iget-object p1, p1, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object p1, v0

    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_4
    iget-object p0, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    iput-object v1, p0, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
