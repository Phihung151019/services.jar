.class public final Lcom/android/server/enterprise/device/DeviceInfo$3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/device/DeviceInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/device/DeviceInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    iget-object v0, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    iget v1, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsCounter:I

    invoke-static {}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficWifiTx()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiTx:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    sub-long v3, v1, v3

    invoke-virtual {v0}, Lcom/android/server/enterprise/device/DeviceInfo;->isWifiStateEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiStatsEnabled:Z

    if-eqz v5, :cond_0

    iget-wide v5, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    add-long/2addr v5, v3

    iput-wide v5, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    :cond_0
    iput-wide v1, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiTx:J

    invoke-static {}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficWifiRx()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiRx:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    sub-long v3, v1, v3

    invoke-virtual {v0}, Lcom/android/server/enterprise/device/DeviceInfo;->isWifiStateEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiStatsEnabled:Z

    if-eqz v5, :cond_1

    iget-wide v5, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    add-long/2addr v5, v3

    iput-wide v5, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    :cond_1
    iput-wide v1, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiRx:J

    invoke-virtual {v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficMobileTx()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileTx:J

    cmp-long v5, v1, v3

    const-wide/16 v6, 0x0

    if-ltz v5, :cond_2

    sub-long v3, v1, v3

    iget-boolean v5, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsEnabled:Z

    if-eqz v5, :cond_3

    iget-wide v8, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    add-long/2addr v8, v3

    iput-wide v8, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    goto :goto_0

    :cond_2
    iput-wide v6, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    iput-wide v6, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    move-wide v3, v6

    :cond_3
    :goto_0
    iput-wide v1, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileTx:J

    invoke-virtual {v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficMobileRx()J

    move-result-wide v1

    iget-wide v8, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileRx:J

    cmp-long v5, v1, v8

    if-ltz v5, :cond_4

    sub-long v8, v1, v8

    iget-boolean v5, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsEnabled:Z

    if-eqz v5, :cond_5

    iget-wide v10, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J

    add-long/2addr v10, v8

    iput-wide v10, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J

    goto :goto_1

    :cond_4
    iput-wide v6, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    iput-wide v6, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    move-wide v8, v6

    :cond_5
    :goto_1
    iput-wide v1, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileRx:J

    add-long/2addr v3, v8

    cmp-long v1, v3, v6

    if-lez v1, :cond_e

    iget-boolean v2, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataLogEnabled:Z

    const-string v5, "DeviceInfo"

    if-nez v2, :cond_6

    const-string/jumbo v1, "Logging disabled"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_6
    iget-boolean v2, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallConnected:Z

    if-nez v2, :cond_7

    const-string v1, "Data Disconnected, don\'t log"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_7
    if-gtz v1, :cond_8

    const-string/jumbo v1, "No bytes to log"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_8
    iget-object v1, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_9

    const-string/jumbo v1, "failed logDataCall because mTelMgr is null"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_9
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string/jumbo v1, "ROAMING"

    goto :goto_2

    :cond_a
    const-string/jumbo v1, "NORMAL"

    :goto_2
    iget-object v2, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    :cond_b
    iput-wide v6, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    iput-wide v6, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    :cond_c
    iput-object v1, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    const-string/jumbo v1, "UNKNOWN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    iput-object v2, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    :cond_d
    iget-wide v1, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget-wide v5, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v5, "dataCallDate"

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    const-string/jumbo v6, "dataCallStatus"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    const-string/jumbo v7, "dataCallNetType"

    invoke-virtual {v1, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    iget-wide v8, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v5, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    invoke-virtual {v2, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v5, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string/jumbo v6, "dataCallBytes"

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v5, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "DATACALLLOG"

    invoke-virtual {v5, v6, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    :cond_e
    :goto_3
    invoke-virtual {v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getEDM$8()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->updateDateAndDataCallCounters(J)V

    iget v1, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsCounter:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_f

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget-wide v2, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "deviceWifiSent"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v2, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "deviceWifiReceived"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v2, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "deviceNetworkSent"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v2, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "deviceNetworkReceived"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DEVICE"

    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsCounter:I

    :cond_f
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    iget-boolean v1, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget v0, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimer:I

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_10
    return-void
.end method
