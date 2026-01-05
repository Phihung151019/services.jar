.class public final Lcom/android/server/alarm/GmsAlarmManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEBUG_SCPM:Z

.field public static final SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

.field public static final sHandlerThread:Landroid/os/HandlerThread;

.field public static final sb:Ljava/lang/StringBuilder;


# instance fields
.field public final SCPM_URI_GNET:Landroid/net/Uri;

.field public final SCPM_URI_POLICY:Landroid/net/Uri;

.field public avaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

.field public cm:Landroid/net/ConnectivityManager;

.field public isCharging:Z

.field public final isChinaMode:Z

.field public isGmsNetWorkLimt:Z

.field public final isHongKongMode:Z

.field public isSetupWizardCompleteOrBootComplete:Z

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mAlarmService:Lcom/android/server/alarm/AlarmManagerService;

.field public mBatteryChargingReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

.field public final mBigdataEnable:Z

.field public final mCheckinServerUrl:Ljava/util/ArrayList;

.field public final mConfigupdaterUid:I

.field public final mContext:Landroid/content/Context;

.field public final mCurrentIpList:Ljava/util/ArrayList;

.field public final mGmsPkgAppid:I

.field public final mGmsPkgUid:I

.field public final mGmsUidOfMultiUser:Ljava/util/ArrayList;

.field public final mGoogleCalendarPkgAppid:I

.field public final mGoogleCalendarUid:I

.field public mGoogleNetWork:Z

.field public mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

.field public mInsertLogPendingIntent:Landroid/app/PendingIntent;

.field public final mIntentReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

.field public mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field public mNetworkInfo:Landroid/net/NetworkInfo;

.field public mNetworkReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

.field public mNetworkService:Landroid/os/INetworkManagementService;

.field public mObserver:Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;

.field public mPendingIntent:Landroid/app/PendingIntent;

.field public mPolicyControlSwitch:I

.field public mSCPMReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

.field public mScreenOffChange:Z

.field public mScreenOn:Z

.field public mScreenReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

.field public mSetupWizardCompleteOrBootCompleteReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

.field public mTimeoutcount:I

.field public mTimeoutcountDef:I

.field public mUserAddRemoveReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

.field public mUserEnable:Z

.field public final mVendingUid:I

.field public mWaitCheckNetWork:Z

.field public noAvaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

.field public vpnStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;


# direct methods
.method public static -$$Nest$mcheckActiveNet(Lcom/android/server/alarm/GmsAlarmManager;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "networkInfo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GmsAlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static -$$Nest$mcheckGoogleNetwork(Lcom/android/server/alarm/GmsAlarmManager;)I
    .locals 18

    move-object/from16 v1, p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "GmsAlarmManager"

    const-string/jumbo v0, "checkGoogleNetwork: https://www.google.com/"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/alarm/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string/jumbo v4, "https://www.google.com/"

    const/4 v7, 0x5

    const v8, 0x9d0b

    const-string v9, "HEAD"

    const/16 v10, 0xbb8

    const/4 v12, -0x1

    const/4 v13, 0x0

    if-nez v0, :cond_d

    invoke-virtual {v1}, Lcom/android/server/alarm/GmsAlarmManager;->isVPNConnected()Z

    move-result v0

    if-eqz v0, :cond_d

    iput v13, v1, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I

    const-string/jumbo v0, "checkGoogleNetworkByAll addr: https://www.google.com/"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v14, v1, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    if-nez v14, :cond_0

    iget-object v14, v1, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "connectivity"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/ConnectivityManager;

    iput-object v14, v1, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v14, v1, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    if-eqz v14, :cond_a

    invoke-virtual {v14}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v14

    if-eqz v14, :cond_a

    move/from16 v16, v12

    move v15, v13

    :goto_0
    array-length v11, v14

    if-ge v15, v11, :cond_3

    iget-object v11, v1, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    const/16 v17, 0x1

    aget-object v3, v14, v15

    invoke-virtual {v11, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v16

    :cond_1
    move/from16 v3, v16

    const/16 v11, 0x11

    if-ne v3, v11, :cond_2

    aget-object v11, v14, v15

    invoke-virtual {v0, v13, v11}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    aget-object v11, v14, v15

    invoke-virtual {v0, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v3

    goto :goto_0

    :cond_3
    const/16 v17, 0x1

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v14, v12

    const/4 v11, 0x0

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    iget-object v15, v1, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v15, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v15

    if-eqz v15, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "checkGoogleNetworkByAll networkInfo: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v6, :cond_6

    :try_start_1
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v11, v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v11, v6

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v11, v6

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v11, v6

    goto :goto_6

    :cond_6
    move-object v11, v6

    :goto_3
    :try_start_2
    invoke-virtual {v11, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v11, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v11, v13}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v11, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    if-eq v14, v12, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkGoogleNetworkByAll responseCode: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8, v14}, Landroid/util/EventLog;->writeEvent(II)I

    iput v13, v1, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_e

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_6

    :cond_7
    :goto_4
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_2

    :goto_5
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v11, :cond_4

    goto :goto_4

    :goto_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v11, :cond_4

    goto :goto_4

    :goto_7
    if-eqz v11, :cond_8

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    throw v0

    :cond_9
    move v12, v14

    goto :goto_8

    :cond_a
    const/16 v17, 0x1

    :goto_8
    invoke-virtual {v1}, Lcom/android/server/alarm/GmsAlarmManager;->isVPNConnected()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, v1, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "checkGoogleNetworkByAll timeout count: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I

    invoke-static {v0, v3, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, v1, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I

    if-ge v0, v7, :cond_b

    iget-object v0, v1, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move/from16 v1, v17

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_d

    :cond_b
    iput v13, v1, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I

    goto/16 :goto_d

    :cond_c
    iput v13, v1, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I

    goto/16 :goto_d

    :cond_d
    iput v13, v1, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I

    const-string/jumbo v3, "checkGoogleNetworkByDefault timeout count default: "

    const-string/jumbo v0, "checkGoogleNetworkByDefault: "

    const-string/jumbo v5, "checkGoogleNetworkByDefault addr: https://www.google.com/"

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_4
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {v4, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v4, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v4, v13}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v4, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8, v5}, Landroid/util/EventLog;->writeEvent(II)I

    iput v13, v1, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    move v12, v5

    goto :goto_d

    :catchall_2
    move-exception v0

    move-object v11, v4

    goto :goto_f

    :catch_4
    move-exception v0

    move-object v11, v4

    goto :goto_9

    :catch_5
    move-exception v0

    move-object v11, v4

    goto :goto_b

    :catchall_3
    move-exception v0

    const/4 v11, 0x0

    goto :goto_f

    :catch_6
    move-exception v0

    const/4 v11, 0x0

    goto :goto_9

    :catch_7
    move-exception v0

    const/4 v11, 0x0

    goto :goto_b

    :goto_9
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v11, :cond_10

    :goto_a
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_d

    :catchall_4
    move-exception v0

    goto :goto_f

    :goto_b
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    invoke-virtual {v1}, Lcom/android/server/alarm/GmsAlarmManager;->isVPNConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, v1, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I

    const/16 v17, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v1, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I

    if-ge v0, v7, :cond_e

    iget-object v0, v1, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    const/4 v1, 0x1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_c

    :cond_e
    iput v13, v1, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I

    goto :goto_c

    :cond_f
    iput v13, v1, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :goto_c
    if-eqz v11, :cond_10

    goto :goto_a

    :cond_10
    :goto_d
    move v14, v12

    :goto_e
    return v14

    :goto_f
    if-eqz v11, :cond_11

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_11
    throw v0
.end method

.method public static -$$Nest$mrestoreGcmAlarm(Lcom/android/server/alarm/GmsAlarmManager;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmService:Lcom/android/server/alarm/AlarmManagerService;

    const-string/jumbo v1, "com.google.android.gms"

    const-string/jumbo v2, "com.google.android.intent.action.GCM_RECONNECT"

    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    :cond_0
    :goto_0
    if-ge v6, v4, :cond_2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/server/alarm/Alarm;

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    iget-object v8, v7, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v7, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v8}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, v7, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v8}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/alarm/LazyAlarmStore;->remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_3

    return-void

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    const/4 v2, 0x4

    invoke-virtual {v7, v2, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmService:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    invoke-virtual {p0, v7}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(Lcom/android/server/alarm/Alarm;)V

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :goto_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static -$$Nest$msendCheckNetWorkDelay(Lcom/android/server/alarm/GmsAlarmManager;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    add-long/2addr v1, v3

    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mWaitCheckNetWork:Z

    :cond_1
    return-void
.end method

.method public static -$$Nest$msendInsertLogDelay(Lcom/android/server/alarm/GmsAlarmManager;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mInsertLogPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long/2addr v1, v3

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mInsertLogPendingIntent:Landroid/app/PendingIntent;

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method

.method public static -$$Nest$msetGMSLocationProviderChangeReceiverState(Lcom/android/server/alarm/GmsAlarmManager;I)V
    .locals 4

    const-string/jumbo v0, "setGMSLocationProviderChangeReceiverState:"

    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.google.android.gms"

    const-string/jumbo v3, "com.google.android.location.network.LocationProviderChangeReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, p1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    const-string p0, "GmsAlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static -$$Nest$msetGmsNetWorkAllow(Lcom/android/server/alarm/GmsAlarmManager;Z)V
    .locals 5

    const-string v0, "GmsAlarmManager"

    iget v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleCalendarUid:I

    iget v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mConfigupdaterUid:I

    iget v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    iget v4, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    iget-object v4, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, v3, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    iget-object v4, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, v3, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    iget-object v4, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, v2, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    iget-object v4, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, v2, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    iget-object v4, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, v1, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    iget-object v4, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, v1, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/alarm/GmsAlarmManager;->restrictJobsByUid(IZ)V

    invoke-virtual {p0, v2, v4}, Lcom/android/server/alarm/GmsAlarmManager;->restrictJobsByUid(IZ)V

    invoke-virtual {p0, v1, v4}, Lcom/android/server/alarm/GmsAlarmManager;->restrictJobsByUid(IZ)V

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->setGmsMultiUserWorkAllow(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "IllegalStateException:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_1
    const-string/jumbo p1, "RemoteException:"

    invoke-static {p1, p0, v0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "content://com.samsung.android.sm/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/alarm/GmsAlarmManager;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GmsAlarmManager"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/alarm/GmsAlarmManager;->sHandlerThread:Landroid/os/HandlerThread;

    sput-boolean v2, Lcom/android/server/alarm/GmsAlarmManager;->DEBUG_SCPM:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/server/alarm/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mVendingUid:I

    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mConfigupdaterUid:I

    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleCalendarUid:I

    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgAppid:I

    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleCalendarPkgAppid:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mWaitCheckNetWork:Z

    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    iput-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isCharging:Z

    iput-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z

    iput-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isChinaMode:Z

    iput-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    iput-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOffChange:Z

    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOn:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mUserEnable:Z

    iput v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I

    iput v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I

    iput-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    iput-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mInsertLogPendingIntent:Landroid/app/PendingIntent;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mBigdataEnable:Z

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    const-string/jumbo v0, "content://com.samsung.android.sm.policy/policy_item/gmsnet"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->SCPM_URI_GNET:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.samsung.android.sm.policy/policy_item/policy_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->SCPM_URI_POLICY:Landroid/net/Uri;

    new-instance v0, Lcom/android/server/alarm/GmsAlarmManager$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/alarm/GmsAlarmManager$1;-><init>(Lcom/android/server/alarm/GmsAlarmManager;I)V

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mIntentReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CHINA"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->isChinaMode:Z

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "HONG KONG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    :try_start_0
    const-string/jumbo v0, "com.google.android.gms"

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    const-string/jumbo v2, "com.android.vending"

    invoke-virtual {p1, v2, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mVendingUid:I

    const-string/jumbo v2, "com.google.android.configupdater"

    invoke-virtual {p1, v2, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mConfigupdaterUid:I

    const-string/jumbo v2, "com.google.android.syncadapters.calendar"

    invoke-virtual {p1, v2, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleCalendarUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgAppid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleCalendarPkgAppid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "NameNotFoundException"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GmsAlarmManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getInfoFromPendingIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object p0

    invoke-interface {v3, p0}, Landroid/app/IActivityManager;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method


# virtual methods
.method public final doDump(Ljava/io/PrintWriter;)V
    .locals 7

    const-string v0, "  <GmsAlarmManager>"

    const-string/jumbo v1, "isChinaMode:"

    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isChinaMode:Z

    const-string/jumbo v2, "isHongKongMode:"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    const-string/jumbo v3, "mGmsPkgUid:"

    invoke-static {v0, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    invoke-static {v0, v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    if-nez v1, :cond_0

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, -0x1

    if-eq v3, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mVendingUid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mVendingUid:I

    const-string/jumbo v2, "mConfigupdaterUid:"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mConfigupdaterUid:I

    const-string/jumbo v2, "mGoogleCalendarUid:"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleCalendarUid:I

    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/Integer;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "MultiUidList: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mUserEnable:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mUserEnable:Z

    const-string/jumbo v3, "mWaitCheckNetWork:"

    invoke-static {v0, v1, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mWaitCheckNetWork:Z

    const-string/jumbo v3, "mGoogleNetWork:"

    invoke-static {v0, v1, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    const-string/jumbo v3, "isGmsNetWorkLimt:"

    invoke-static {v0, v1, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    const-string/jumbo v3, "mScreenOn:"

    invoke-static {v0, v1, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOn:Z

    const-string/jumbo v3, "mScreenOffChange:"

    invoke-static {v0, v1, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOffChange:Z

    const-string/jumbo v3, "isCharging:"

    invoke-static {v0, v1, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isCharging:Z

    const-string/jumbo v3, "mPolicyControlSwitch:"

    invoke-static {v0, v1, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Since last 24 hours\nTotal time and # of event Google access is available   : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/alarm/GmsAlarmManager;->avaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-virtual {v4, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Total time and # of event Google access is not possible : "

    invoke-static {v3, v5}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/alarm/GmsAlarmManager;->noAvaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-virtual {v5, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Total time and # of event VPN is connected :"

    invoke-static {v3, v4}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/alarm/GmsAlarmManager;->vpnStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-virtual {v4, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v3, "mCheckinServerUrl:"

    invoke-static {p1, v3, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final getNetworkManagementService()Landroid/os/INetworkManagementService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    :cond_0
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    return-object p0
.end method

.method public final getSettingsValueFromDB()V
    .locals 8

    const-string v1, "GmsAlarmManager"

    :try_start_0
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/alarm/GmsAlarmManager;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    const-string/jumbo v0, "key"

    const-string/jumbo v4, "value"

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception with contentResolver : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_3

    :cond_0
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :try_start_1
    const-string/jumbo v4, "spcm_switch"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    move v0, v3

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get from smartmanager DB, spcm_switch : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mUserEnable:Z

    if-eq v3, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mUserEnable:Z

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception with parseInt : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method

.method public final init(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isChinaMode:Z

    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    sget-object v0, Lcom/android/server/alarm/GmsAlarmManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;-><init>(Lcom/android/server/alarm/GmsAlarmManager;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mUserEnable:Z

    :cond_1
    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmService:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    const-string/jumbo v1, "checkin.gstatic.com"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/server/alarm/GmsAlarmManager$1;

    const/4 v1, 0x2

    invoke-direct {p1, p0, v1}, Lcom/android/server/alarm/GmsAlarmManager$1;-><init>(Lcom/android/server/alarm/GmsAlarmManager;I)V

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

    const-string/jumbo p1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance p1, Lcom/android/server/alarm/GmsAlarmManager$1;

    const/4 v1, 0x4

    invoke-direct {p1, p0, v1}, Lcom/android/server/alarm/GmsAlarmManager$1;-><init>(Lcom/android/server/alarm/GmsAlarmManager;I)V

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

    const-string/jumbo p1, "android.intent.action.SCREEN_OFF"

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-static {p1, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance p1, Lcom/android/server/alarm/GmsAlarmManager$1;

    const/4 v1, 0x6

    invoke-direct {p1, p0, v1}, Lcom/android/server/alarm/GmsAlarmManager$1;-><init>(Lcom/android/server/alarm/GmsAlarmManager;I)V

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mUserAddRemoveReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

    const-string/jumbo p1, "android.intent.action.USER_ADDED"

    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    invoke-static {p1, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mUserAddRemoveReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance p1, Lcom/android/server/alarm/GmsAlarmManager$1;

    const/4 v1, 0x5

    invoke-direct {p1, p0, v1}, Lcom/android/server/alarm/GmsAlarmManager$1;-><init>(Lcom/android/server/alarm/GmsAlarmManager;I)V

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mSetupWizardCompleteOrBootCompleteReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

    const-string/jumbo p1, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-static {p1, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/alarm/GmsAlarmManager;->mSetupWizardCompleteOrBootCompleteReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

    invoke-virtual {v2, v4, p1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance p1, Lcom/android/server/alarm/GmsAlarmManager$1;

    const/4 v2, 0x3

    invoke-direct {p1, p0, v2}, Lcom/android/server/alarm/GmsAlarmManager$1;-><init>(Lcom/android/server/alarm/GmsAlarmManager;I)V

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mSCPMReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

    const-string/jumbo p1, "sec.app.policy.UPDATE.gmsnet"

    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/alarm/GmsAlarmManager;->mSCPMReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

    invoke-virtual {v2, v4, p1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance p1, Lcom/android/server/alarm/GmsAlarmManager$1;

    const/4 v2, 0x1

    invoke-direct {p1, p0, v2}, Lcom/android/server/alarm/GmsAlarmManager$1;-><init>(Lcom/android/server/alarm/GmsAlarmManager;I)V

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mBatteryChargingReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

    const-string/jumbo p1, "android.os.action.CHARGING"

    const-string/jumbo v2, "android.os.action.DISCHARGING"

    invoke-static {p1, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/alarm/GmsAlarmManager;->mBatteryChargingReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

    invoke-virtual {v2, v4, p1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const-class p1, Landroid/os/PowerManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManagerInternal;

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    const-string/jumbo p1, "com.samsung.android.server.action_check_gms_network"

    const-string/jumbo v2, "com.samsung.android.server.action_insert_log"

    invoke-static {p1, v2, v1}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/alarm/GmsAlarmManager;->mIntentReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

    invoke-virtual {v4, v5, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mWaitCheckNetWork:Z

    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isCharging:Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    const/high16 v3, 0x4000000

    invoke-static {p1, v0, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mInsertLogPendingIntent:Landroid/app/PendingIntent;

    new-instance p1, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-direct {p1}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;-><init>()V

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->avaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    new-instance p1, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-direct {p1}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;-><init>()V

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->noAvaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    new-instance p1, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-direct {p1}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;-><init>()V

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->vpnStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    :cond_2
    return-void
.end method

.method public final isVPNConnected()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final restrictJobsByUid(IZ)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.ACTION_JOB_RESTRICT_UID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "restrict"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "restrictJobsByUid: u="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", restrict="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GmsAlarmManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final setGmsMultiUserWorkAllow(Z)V
    .locals 7

    const-string v0, "GmsAlarmManager"

    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    iget-object v5, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    xor-int/lit8 v5, p1, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/alarm/GmsAlarmManager;->restrictJobsByUid(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "IllegalStateException:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :goto_2
    const-string/jumbo p1, "RemoteException:"

    invoke-static {p1, p0, v0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_1
    :goto_3
    return-void
.end method

.method public final setUrlFirewallRule(Ljava/util/ArrayList;Z)V
    .locals 7

    iget v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    const-string v4, "GmsAlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[GMS-CORE] setUrlFirewallRule, ip = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " isDeleteRule = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mGmsPkgUid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, v0, v3, p2}, Landroid/os/INetworkManagementService;->setUrlFirewallRuleMobileData(ILjava/lang/String;Z)V

    iget-object v4, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, v0, v3, p2}, Landroid/os/INetworkManagementService;->setUrlFirewallRuleWifi(ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public final updateMultiUserGmsUid(I)Ljava/util/ArrayList;
    .locals 8

    const-string/jumbo v0, "gmsuid = "

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v2, "get Multi userId: "

    const-string v3, "GmsAlarmManager"

    invoke-static {p1, v2, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    if-le p1, v2, :cond_0

    :try_start_0
    const-string/jumbo v2, "com.google.android.gms"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v2

    const-string/jumbo v5, "com.android.vending"

    invoke-virtual {p0, v5, v4, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v5

    const-string/jumbo v6, "com.google.android.configupdater"

    invoke-virtual {p0, v6, v4, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v6

    const-string/jumbo v7, "com.google.android.syncadapters.calendar"

    invoke-virtual {p0, v7, v4, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " vendinguid = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " configupdate = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " googleCalendarUid = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "NameNotFoundException"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1
.end method
