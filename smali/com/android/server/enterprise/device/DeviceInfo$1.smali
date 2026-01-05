.class public final Lcom/android/server/enterprise/device/DeviceInfo$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/enterprise/device/DeviceInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/device/DeviceInfo;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    iget p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->isMMSCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "DeviceInfo"

    if-eqz p1, :cond_7

    if-nez p2, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string/jumbo v1, "com.samsung.mms.RECEIVED_MSG"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "com.samsung.mms.SENT_MSG"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    :goto_0
    const-string/jumbo v0, "msg_type"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "msg_address"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "date"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string/jumbo v3, "msg_subject"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "msg_body"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "content_location"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    const-string v7, ""

    if-nez p2, :cond_3

    move-object p2, v7

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_4

    move-object p2, v7

    goto :goto_2

    :cond_4
    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_5

    move-object v4, v7

    :cond_5
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->storeMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4

    :cond_6
    const-string/jumbo p0, "Unexpected intent arrived at mMessagingReceiver"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    :goto_3
    const-string/jumbo p0, "No data arrived at mMessagingReceiver"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    return-void

    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DeviceInfo"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficWifiTx()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiTx:J

    invoke-static {}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficWifiRx()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiRx:J

    invoke-virtual {p1}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficMobileTx()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileTx:J

    invoke-virtual {p1}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficMobileRx()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileRx:J

    iput-wide v1, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    invoke-virtual {p1}, Lcom/android/server/enterprise/device/DeviceInfo;->getStrictDataUsageTimer()I

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_5

    :cond_9
    const/4 p2, 0x3

    :goto_5
    mul-int/lit16 p2, p2, 0x3e8

    iput p2, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimer:I

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/device/DeviceInfo;->getDataCallStatisticsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    iput-boolean v1, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsEnabled:Z

    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/device/DeviceInfo;->getDataCallLoggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    iput-boolean v1, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mDataLogEnabled:Z

    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/device/DeviceInfo;->getWifiStatisticEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    iput-boolean v1, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiStatsEnabled:Z

    const-string/jumbo v1, "deviceWifiSent"

    const-string/jumbo v2, "deviceWifiReceived"

    const-string/jumbo v3, "deviceNetworkSent"

    const-string/jumbo v4, "deviceNetworkReceived"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "DEVICE"

    invoke-virtual {v6, v7, p2, p2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    if-eqz v5, :cond_a

    :try_start_0
    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    invoke-virtual {v5, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    const-string/jumbo v1, "initializeStorageValues - Error reading from Device Storage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/device/DeviceInfo;->resetDataUsage(Lcom/samsung/android/knox/ContextInfo;)V

    :cond_a
    :goto_6
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/device/DeviceInfo;->dataUsageTimerActivation(Lcom/samsung/android/knox/ContextInfo;)V

    goto :goto_7

    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    const/16 p2, 0xa

    iput p2, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsCounter:I

    iget-object p2, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Lcom/android/server/enterprise/device/DeviceInfo$3;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    iget-boolean p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Lcom/android/server/enterprise/device/DeviceInfo$3;

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    :goto_7
    return-void

    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "android.net.conn.DATA_ACTIVITY_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string/jumbo p1, "isActive"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallConnected:Z

    goto :goto_8

    :cond_d
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    iput-wide p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    iput-boolean v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallConnected:Z

    :cond_e
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
