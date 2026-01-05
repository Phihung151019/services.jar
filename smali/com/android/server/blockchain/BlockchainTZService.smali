.class public Lcom/android/server/blockchain/BlockchainTZService;
.super Landroid/blockchain/IBlockchainManager$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEBUG:Z

.field public static mContext:Landroid/content/Context;


# instance fields
.field public mRegisteredFWKClientMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.product_ship"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/blockchain/BlockchainTZService;->DEBUG:Z

    return-void
.end method

.method public static checkCallerPermissionFor(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/server/blockchain/BlockchainTZService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "BlockchainTZService"

    invoke-static {v1, v2, v0, v3, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "BlockchainTZService() - Valid Caller"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Security Exception Occurred while pid["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "] with uid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "] trying to access methodName ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "] in [BlockchainTZService] service"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    const-string p0, "BlockchainTZService() - Invalid Caller"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method


# virtual methods
.method public final getCredential(I)[B
    .locals 2

    sget-boolean v0, Lcom/android/server/blockchain/BlockchainTZService;->DEBUG:Z

    const-string/jumbo v1, "getCredential"

    if-eqz v0, :cond_0

    const-string v0, "BlockchainTZService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v1}, Lcom/android/server/blockchain/BlockchainTZService;->checkCallerPermissionFor(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/blockchain/BlockchainTZService;->nativeGetCredential(I)[B

    move-result-object p0

    return-object p0
.end method

.method public final getMeasurementFile()[B
    .locals 8

    const-string/jumbo p0, "getMeasurementFile"

    invoke-static {p0}, Lcom/android/server/blockchain/BlockchainTZService;->checkCallerPermissionFor(Ljava/lang/String;)V

    const-string p0, "Error closing InputStream"

    const-string v0, "File Read - Length = "

    new-instance v1, Ljava/io/File;

    const-string v2, "/system/tima_measurement_info"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "In readFile - Path /system/tima_measurement_info"

    const-string/jumbo v3, "com.android.server.blockchain.Utils"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v1, v0, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-eq v5, v0, :cond_0

    const-string v0, "File Read Failed"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v4

    goto :goto_5

    :catch_0
    move-exception v0

    :goto_0
    move-object v2, v4

    goto :goto_2

    :cond_0
    move-object v2, v1

    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_3
    move-object v2, v1

    :goto_4
    return-object v2

    :goto_5
    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_6
    throw v0
.end method

.method public native nativeGetCredential(I)[B
.end method

.method public native nativePutCredential(I[B)Z
.end method

.method public native nativeSspExit()I
.end method

.method public native nativeSspInit()I
.end method

.method public final putCredential(I[B)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/blockchain/BlockchainTZService;->DEBUG:Z

    const-string/jumbo v1, "putCredential"

    if-eqz v0, :cond_0

    const-string v0, "BlockchainTZService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v1}, Lcom/android/server/blockchain/BlockchainTZService;->checkCallerPermissionFor(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/blockchain/BlockchainTZService;->nativePutCredential(I[B)Z

    move-result p0

    return p0
.end method

.method public final registerBlockchainFW(Landroid/blockchain/BlockchainTZServiceConfig;)Landroid/blockchain/BlockchainTZServiceCommnInfo;
    .locals 17

    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    sget-object v2, Lcom/android/server/blockchain/BlockchainTZService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    const-string v6, "BlockchainTZService"

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v7, v4, :cond_0

    iget-object v2, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v2, "Error: am.getRunningAppProcesses() is null"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v2, v5

    :goto_0
    if-nez v2, :cond_3

    const-string v2, "Error: can\'t find processname for PID"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :cond_3
    const-string v3, "Inside registerBlockchainFW, uid: "

    const-string v7, ", pid: "

    const-string v8, ", package: "

    invoke-static {v0, v4, v3, v7, v8}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v2, v6}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/blockchain/BlockchainTZService;->mRegisteredFWKClientMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/android/server/blockchain/BlockchainTZService;->mRegisteredFWKClientMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;

    iget v3, v0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mPid:I

    if-eq v4, v3, :cond_4

    const-string/jumbo v3, "Registered Client Died. Need to Rebind"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mBinderDeathReceiver:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;

    invoke-virtual {v0}, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;->deleteClient()V

    goto :goto_1

    :cond_4
    const-string v0, "Error: Framework App is already registered. Re-Registration not allowed"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_5
    :goto_1
    const-string/jumbo v0, "registerBlockchainFW"

    invoke-static {v0}, Lcom/android/server/blockchain/BlockchainTZService;->checkCallerPermissionFor(Ljava/lang/String;)V

    new-instance v3, Landroid/blockchain/BlockchainTZServiceCommnInfo;

    invoke-direct {v3}, Landroid/blockchain/BlockchainTZServiceCommnInfo;-><init>()V

    const/4 v0, 0x1

    iput v0, v3, Landroid/blockchain/BlockchainTZServiceCommnInfo;->mServiceVersion:I

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/blockchain/BlockchainTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    new-instance v8, Lcom/android/server/blockchain/TAController;

    sget-object v9, Lcom/android/server/blockchain/BlockchainTZService;->mContext:Landroid/content/Context;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;

    invoke-direct {v8}, Landroid/blockchain/ITAController$Stub;-><init>()V

    const/4 v12, 0x0

    iput-boolean v12, v8, Lcom/android/server/blockchain/TAController;->SET_QSEE_SECURE_UI:Z

    sget-boolean v13, Lcom/android/server/blockchain/TAController;->DEBUG:Z

    if-eqz v13, :cond_6

    const-string/jumbo v13, "TAController constructor: taId = "

    const-string v14, "; maxSendCmdSize = "

    invoke-static {v10, v13, v14}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->maxSendCmdSize:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "; maxRecvRespSize = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v11, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->maxRecvRespSize:I

    invoke-static {v13, v14, v6}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_6
    iput-object v9, v8, Lcom/android/server/blockchain/TAController;->mContext:Landroid/content/Context;

    iput v10, v8, Lcom/android/server/blockchain/TAController;->mTAId:I

    new-instance v9, Lcom/android/server/blockchain/BlockchainTZNative;

    iget-object v13, v11, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->taTechnology:Ljava/lang/String;

    iget-object v14, v11, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->rootName:Ljava/lang/String;

    iget-object v15, v11, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->processName:Ljava/lang/String;

    iget v12, v11, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->maxSendCmdSize:I

    iget v11, v11, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->maxRecvRespSize:I

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    sget-boolean v16, Lcom/android/server/blockchain/BlockchainTZNative;->DEBUG:Z

    if-eqz v16, :cond_7

    const-string v0, "BlockchainTZNative constructor: taId = "

    invoke-static {v10, v0, v6}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    iput v10, v9, Lcom/android/server/blockchain/BlockchainTZNative;->mTAId:I

    const-wide/16 v0, 0x0

    iput-wide v0, v9, Lcom/android/server/blockchain/BlockchainTZNative;->mMOPTZNativePtr_:J

    iput v12, v9, Lcom/android/server/blockchain/BlockchainTZNative;->mSendBufSize:I

    iput v11, v9, Lcom/android/server/blockchain/BlockchainTZNative;->mRecvBufSize:I

    iput-object v13, v9, Lcom/android/server/blockchain/BlockchainTZNative;->mTATechnology:Ljava/lang/String;

    iput-object v14, v9, Lcom/android/server/blockchain/BlockchainTZNative;->mRootName:Ljava/lang/String;

    iput-object v15, v9, Lcom/android/server/blockchain/BlockchainTZNative;->mProcessName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/android/server/blockchain/BlockchainTZNative;->mIsLoaded:Z

    iput-object v9, v8, Lcom/android/server/blockchain/TAController;->mNative:Lcom/android/server/blockchain/BlockchainTZNative;

    iget-object v0, v3, Landroid/blockchain/BlockchainTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    goto/16 :goto_2

    :cond_8
    new-instance v0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;

    move-object/from16 v1, p0

    move-object v5, v2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;-><init>(Lcom/android/server/blockchain/BlockchainTZService;Landroid/blockchain/BlockchainTZServiceConfig;Landroid/blockchain/BlockchainTZServiceCommnInfo;ILjava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/blockchain/BlockchainTZService;->mRegisteredFWKClientMap:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "callingApp: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is registered, current size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/blockchain/BlockchainTZService;->mRegisteredFWKClientMap:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public final sspExit()I
    .locals 2

    sget-boolean v0, Lcom/android/server/blockchain/BlockchainTZService;->DEBUG:Z

    const-string/jumbo v1, "sspExit"

    if-eqz v0, :cond_0

    const-string v0, "BlockchainTZService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v1}, Lcom/android/server/blockchain/BlockchainTZService;->checkCallerPermissionFor(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/blockchain/BlockchainTZService;->nativeSspExit()I

    move-result p0

    return p0
.end method

.method public final sspInit()I
    .locals 2

    sget-boolean v0, Lcom/android/server/blockchain/BlockchainTZService;->DEBUG:Z

    const-string/jumbo v1, "sspInit"

    if-eqz v0, :cond_0

    const-string v0, "BlockchainTZService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v1}, Lcom/android/server/blockchain/BlockchainTZService;->checkCallerPermissionFor(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/blockchain/BlockchainTZService;->nativeSspInit()I

    move-result p0

    return p0
.end method
