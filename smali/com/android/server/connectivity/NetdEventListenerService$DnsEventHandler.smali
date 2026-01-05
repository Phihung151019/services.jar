.class public final Lcom/android/server/connectivity/NetdEventListenerService$DnsEventHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/NetdEventListenerService;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetdEventListenerService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventHandler;->this$0:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 21

    move-object/from16 v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x2

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x2711

    if-eq v3, v4, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;

    move-object/from16 v3, p0

    iget-object v3, v3, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventHandler;->this$0:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mReturnCode:I

    iget v5, v0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mUid:I

    iget v6, v0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mNetId:I

    iget v7, v0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mLatencyMs:I

    iget-object v8, v3, Lcom/android/server/connectivity/NetdEventListenerService;->mContext:Landroid/content/Context;

    if-nez v8, :cond_1

    goto/16 :goto_8

    :cond_1
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const/4 v10, 0x0

    if-eqz v8, :cond_2

    aget-object v9, v8, v10

    array-length v8, v8

    if-le v8, v1, :cond_2

    const-string v8, ",..."

    invoke-static {v9, v8}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_2
    if-eqz v4, :cond_b

    iget-object v8, v3, Lcom/android/server/connectivity/NetdEventListenerService;->mCallback:Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;

    invoke-virtual {v8, v6}, Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;->getNetworkCapabilities(I)Landroid/net/NetworkCapabilities;

    move-result-object v6

    if-eqz v6, :cond_c

    iget-object v8, v3, Lcom/android/server/connectivity/NetdEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    if-nez v8, :cond_3

    goto/16 :goto_8

    :cond_3
    const/16 v8, 0xb

    invoke-virtual {v6, v8}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    xor-int/2addr v6, v1

    iget-object v8, v3, Lcom/android/server/connectivity/NetdEventListenerService;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v8, v5, v6}, Landroid/net/NetworkPolicyManager;->isUidNetworkingBlocked(IZ)Z

    move-result v6

    const-string/jumbo v8, "NetdEventListenerService"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "DNS Requested by "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, v0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mNetId:I

    const-string v13, ", "

    const-string v14, "("

    invoke-static {v12, v5, v13, v14, v11}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v5, "), "

    const-string v12, "("

    invoke-static {v4, v9, v5, v12, v11}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-static {v4}, Lcom/android/server/connectivity/NetdEventListenerService;->getReturnCodeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "), isBlocked="

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-static {v7, v5, v8, v11}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v5, v3, Lcom/android/server/connectivity/NetdEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    if-nez v5, :cond_4

    goto/16 :goto_8

    :cond_4
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v6

    new-instance v7, Landroid/telephony/TelephonyManager;

    iget-object v8, v3, Lcom/android/server/connectivity/NetdEventListenerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v6}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v8

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v7, v6}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v6

    iget v7, v0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mNetId:I

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v8

    goto :goto_0

    :cond_5
    move v8, v10

    :goto_0
    iget v11, v3, Lcom/android/server/connectivity/NetdEventListenerService;->mFailCount:I

    const/16 v12, 0x14

    if-ne v11, v12, :cond_7

    if-nez v5, :cond_7

    iget v11, v3, Lcom/android/server/connectivity/NetdEventListenerService;->mCheckedNetId:I

    if-eq v7, v11, :cond_7

    iput v7, v3, Lcom/android/server/connectivity/NetdEventListenerService;->mCheckedNetId:I

    :try_start_0
    new-instance v11, Ljava/net/DatagramSocket;

    invoke-direct {v11}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string/jumbo v13, "NetdEventListenerService"

    const-string/jumbo v14, "sending DNS"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v13, 0x3e8

    invoke-virtual {v11, v13}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    iget-object v0, v0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mHostname:Ljava/lang/String;

    const-string/jumbo v13, "\\."

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v13, Ljava/util/Random;

    invoke-direct {v13}, Ljava/util/Random;-><init>()V

    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array v15, v2, [B

    invoke-virtual {v13, v15}, Ljava/util/Random;->nextBytes([B)V

    invoke-virtual {v14, v15}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-array v13, v2, [B

    fill-array-data v13, :array_0

    invoke-virtual {v14, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-array v13, v2, [B

    fill-array-data v13, :array_1

    invoke-virtual {v14, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-array v13, v2, [B

    fill-array-data v13, :array_2

    invoke-virtual {v14, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-array v13, v2, [B

    fill-array-data v13, :array_3

    invoke-virtual {v14, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-array v13, v2, [B

    fill-array-data v13, :array_4

    invoke-virtual {v14, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    array-length v13, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v15, v10

    :goto_1
    if-ge v15, v13, :cond_6

    move/from16 v20, v1

    :try_start_2
    aget-object v1, v0, v15

    const-string/jumbo v12, "US-ASCII"

    invoke-virtual {v1, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v12, v1

    invoke-virtual {v14, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v14, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v20

    const/16 v12, 0x14

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_6
    move/from16 v20, v1

    invoke-virtual {v14, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    new-array v0, v2, [B

    fill-array-data v0, :array_5

    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-array v0, v2, [B

    fill-array-data v0, :array_6

    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, v0

    const-string v12, "8.8.8.8"

    invoke-static {v12}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    const/16 v13, 0x35

    invoke-direct {v1, v0, v2, v12, v13}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v11, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    array-length v0, v0

    new-array v1, v0, [B

    new-instance v2, Ljava/net/DatagramPacket;

    invoke-direct {v2, v1, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-virtual {v11, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v11}, Ljava/net/DatagramSocket;->close()V

    move v0, v10

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move/from16 v20, v1

    :goto_2
    invoke-virtual {v11}, Ljava/net/DatagramSocket;->close()V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_1
    move-exception v0

    move/from16 v20, v1

    :goto_3
    const-string/jumbo v1, "NetdEventListenerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v11, "IOException error: "

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v20

    goto :goto_4

    :cond_7
    move/from16 v20, v1

    const/4 v0, -0x1

    :goto_4
    iget-object v1, v3, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsErrorInfoLog:Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;

    const-string v2, "%02d %02d %d %d %d %d %d %s %s"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v4, v3, Lcom/android/server/connectivity/NetdEventListenerService;->mFailCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v18, v9

    const/16 v4, 0x14

    filled-new-array/range {v11 .. v19}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    iget v0, v1, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->mMaxLines:I

    if-gtz v0, :cond_8

    goto :goto_6

    :cond_8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v11, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string v0, "%ty-%tm-%td_%tH:%tM:%tS %s"

    move-object v12, v11

    move-object v13, v11

    move-object v14, v11

    move-object v15, v11

    move-object/from16 v16, v11

    filled-new-array/range {v11 .. v17}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    monitor-enter v1

    :goto_5
    :try_start_4
    iget-object v2, v1, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->mLog:Ljava/util/Deque;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    iget v5, v1, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->mMaxLines:I

    if-lt v2, v5, :cond_9

    iget-object v2, v1, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->mLog:Ljava/util/Deque;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_7

    :cond_9
    iget-object v2, v1, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->mLog:Ljava/util/Deque;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v1

    :goto_6
    iget v0, v3, Lcom/android/server/connectivity/NetdEventListenerService;->mFailCount:I

    if-ne v0, v4, :cond_a

    iput v10, v3, Lcom/android/server/connectivity/NetdEventListenerService;->mFailCount:I

    goto :goto_8

    :cond_a
    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/android/server/connectivity/NetdEventListenerService;->mFailCount:I

    goto :goto_8

    :goto_7
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_b
    const-string/jumbo v1, "NetdEventListenerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "DNS Requested by "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mNetId:I

    const-string v6, ", "

    const-string v8, "("

    invoke-static {v0, v5, v6, v8, v2}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "), "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/connectivity/NetdEventListenerService;->getReturnCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-static {v7, v0, v1, v2}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iput v10, v3, Lcom/android/server/connectivity/NetdEventListenerService;->mCheckedNetId:I

    iput v10, v3, Lcom/android/server/connectivity/NetdEventListenerService;->mFailCount:I

    :cond_c
    :goto_8
    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x1t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x0t
        0x1t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x0t
        0x1t
    .end array-data
.end method
