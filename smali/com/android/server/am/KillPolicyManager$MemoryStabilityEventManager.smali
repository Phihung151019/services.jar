.class public final Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mReporter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;->this$0:Lcom/android/server/am/KillPolicyManager;

    new-instance p1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;

    invoke-direct {p1, p0}, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;-><init>(Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;)V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;->mReporter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;

    return-void
.end method


# virtual methods
.method public final report()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;->mReporter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    div-long/2addr v6, v4

    long-to-int v3, v6

    iget-boolean v0, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mHasReportedAtLeastOnce:Z

    if-eqz v0, :cond_0

    iget v0, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mLastUptimeMinutes:I

    sub-int v0, v2, v0

    iget v4, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mLastRealtimeMinutes:I

    sub-int v4, v3, v4

    move v5, v4

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v2

    move v5, v3

    :goto_0
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    const-string v6, "ActivityManager_kpm"

    if-nez v0, :cond_1

    const/16 v0, 0x578

    if-ge v5, v0, :cond_1

    const-string/jumbo v0, "reportDiff() Skipped. diffRealtimeMinutes="

    invoke-static {v5, v0, v6}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v7, "Failed to close file: "

    const-string v8, "Failed to read file (IOException). But, It can be possible. : "

    const-string v9, "Failed to read file (NumberFormatException):"

    const-string/jumbo v0, "read zram error count type1="

    iget-object v10, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mTempCounter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;

    iget-object v11, v10, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->countOfEvents:[J

    const/4 v12, 0x0

    const-wide/16 v13, -0x1

    aput-wide v13, v11, v12

    const/4 v15, 0x1

    aput-wide v13, v11, v15

    move/from16 p0, v12

    :try_start_0
    new-instance v12, Ljava/io/FileReader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move/from16 v16, v15

    :try_start_1
    const-string v15, "/sys/block/zram0/error_count"

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v12, v15, v14}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    new-instance v14, Ljava/io/BufferedReader;

    invoke-direct {v14, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_2

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_2

    invoke-virtual {v15}, Ljava/lang/String;->strip()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v13, "\\s+"

    invoke-virtual {v15, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v15, v13
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v19, v11

    const/4 v11, 0x2

    if-lt v15, v11, :cond_2

    :try_start_4
    aget-object v11, v13, p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v15, v12

    :try_start_5
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    aget-object v13, v13, v16
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v20, v14

    :try_start_6
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    aput-wide v11, v19, p0

    aput-wide v13, v19, v16
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v19, v15

    :try_start_8
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " type2="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move/from16 v11, v16

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    :goto_1
    move-object v1, v0

    move-object/from16 v14, v19

    goto/16 :goto_19

    :catch_0
    move-exception v0

    :goto_2
    move/from16 v11, v16

    :goto_3
    move-object/from16 v12, v19

    move-object/from16 v14, v20

    goto/16 :goto_e

    :catch_1
    move-exception v0

    :goto_4
    move/from16 v11, v16

    goto :goto_8

    :catchall_1
    move-exception v0

    :goto_5
    move-object/from16 v19, v15

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v19, v15

    goto :goto_2

    :catch_3
    move-exception v0

    move-object/from16 v19, v15

    goto :goto_4

    :catch_4
    move-exception v0

    move-object/from16 v19, v15

    move/from16 v11, p0

    goto :goto_3

    :catch_5
    move-exception v0

    :goto_6
    move-object/from16 v19, v15

    :goto_7
    move/from16 v11, p0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v20, v14

    goto :goto_5

    :catch_6
    move-exception v0

    move-object/from16 v20, v14

    move-object/from16 v19, v15

    move/from16 v11, p0

    move-object/from16 v12, v19

    goto/16 :goto_e

    :catch_7
    move-exception v0

    move-object/from16 v20, v14

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object/from16 v19, v12

    move-object/from16 v20, v14

    goto :goto_1

    :catch_8
    move-exception v0

    move-object/from16 v19, v12

    move-object/from16 v20, v14

    move/from16 v11, p0

    goto/16 :goto_e

    :catch_9
    move-exception v0

    move-object/from16 v19, v12

    move-object/from16 v20, v14

    goto :goto_7

    :goto_8
    :try_start_9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_9

    :catch_a
    move-exception v0

    goto :goto_3

    :cond_2
    move-object/from16 v19, v12

    move-object/from16 v20, v14

    move/from16 v11, p0

    :goto_9
    :try_start_a
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileReader;->close()V

    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    goto :goto_11

    :catch_b
    move-exception v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_a
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :catchall_4
    move-exception v0

    move-object/from16 v19, v12

    move-object v1, v0

    move-object/from16 v14, v19

    :goto_b
    const/16 v20, 0x0

    goto/16 :goto_19

    :catch_c
    move-exception v0

    move-object/from16 v19, v12

    move/from16 v11, p0

    :goto_c
    const/4 v14, 0x0

    goto :goto_e

    :catchall_5
    move-exception v0

    move-object v1, v0

    const/4 v14, 0x0

    goto :goto_b

    :catch_d
    move-exception v0

    :goto_d
    move/from16 v11, p0

    const/4 v12, 0x0

    goto :goto_c

    :catch_e
    move-exception v0

    move/from16 v16, v15

    goto :goto_d

    :goto_e
    :try_start_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    if-eqz v12, :cond_3

    :try_start_c
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V

    goto :goto_f

    :catch_f
    move-exception v0

    goto :goto_10

    :cond_3
    :goto_f
    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_f

    goto :goto_11

    :goto_10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :cond_4
    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "updateZramError() success="

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mDiffCounter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;

    move/from16 v7, v16

    :goto_12
    if-ltz v7, :cond_5

    iget-object v8, v10, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->countOfEvents:[J

    aget-wide v8, v8, v7

    iget-object v11, v0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->countOfEvents:[J

    aput-wide v8, v11, v7

    add-int/lit8 v7, v7, -0x1

    goto :goto_12

    :cond_5
    iget-boolean v7, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mHasReportedAtLeastOnce:Z

    iget-object v8, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mLastCounter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;

    if-eqz v7, :cond_6

    invoke-virtual {v0, v8}, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->diffFrom(Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;)V

    goto :goto_13

    :cond_6
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->diffFrom(Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;)V

    :goto_13
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mLastUptimeMinutes:I

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mLastRealtimeMinutes:I

    move/from16 v2, v16

    :goto_14
    if-ltz v2, :cond_7

    iget-object v3, v10, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->countOfEvents:[J

    aget-wide v11, v3, v2

    iget-object v3, v8, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->countOfEvents:[J

    aput-wide v11, v3, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    :cond_7
    iget-boolean v2, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mHasReportedAtLeastOnce:Z

    if-nez v2, :cond_8

    move/from16 v2, v16

    iput-boolean v2, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mHasReportedAtLeastOnce:Z

    :cond_8
    const/4 v2, 0x1

    :goto_15
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->countOfEvents:[J

    const-wide/16 v7, 0x0

    if-ltz v2, :cond_a

    aget-wide v9, v3, v2

    cmp-long v3, v9, v7

    if-gez v3, :cond_9

    goto/16 :goto_18

    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    :cond_a
    const/4 v2, 0x1

    :goto_16
    if-ltz v2, :cond_f

    aget-wide v9, v3, v2

    cmp-long v0, v9, v7

    if-lez v0, :cond_e

    :try_start_d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "UTDIFF"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "RTDIFF"

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "ZRERR"

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move/from16 v12, p0

    const/4 v11, 0x2

    :goto_17
    if-ge v12, v11, :cond_b

    aget-wide v7, v3, v12

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v12, v12, 0x1

    goto :goto_17

    :cond_b
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    invoke-virtual {v0, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_10

    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->this$1:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;

    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;->this$0:Lcom/android/server/am/KillPolicyManager;

    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager;->mHqmManager:Landroid/os/SemHqmManager;

    if-nez v1, :cond_c

    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    const-string v2, "HqmManagerService"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SemHqmManager;

    iput-object v1, v0, Lcom/android/server/am/KillPolicyManager;->mHqmManager:Landroid/os/SemHqmManager;

    if-nez v1, :cond_c

    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "HQM services is not working"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :cond_c
    iget-object v10, v0, Lcom/android/server/am/KillPolicyManager;->mHqmManager:Landroid/os/SemHqmManager;

    sget-boolean v11, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    const-string v15, "1.1"

    const-string/jumbo v16, "sec"

    const-string/jumbo v12, "Sluggish"

    const-string/jumbo v13, "MSEC"

    const-string/jumbo v14, "ph"

    const-string v17, ""

    const-string v19, ""

    invoke-virtual/range {v10 .. v19}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    move-object/from16 v1, v18

    if-eqz v0, :cond_d

    const-string/jumbo v0, "Success to report \'MSEC\' : "

    invoke-static {v0, v1, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    :cond_d
    const-string v0, "Failed to send to server"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSON Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :cond_e
    const/4 v9, 0x1

    const/4 v11, 0x2

    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_16

    :cond_f
    :goto_18
    return-void

    :catchall_6
    move-exception v0

    move-object v1, v0

    move-object/from16 v20, v14

    move-object v14, v12

    :goto_19
    if-eqz v14, :cond_10

    :try_start_e
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V

    goto :goto_1a

    :catch_11
    move-exception v0

    goto :goto_1b

    :cond_10
    :goto_1a
    if-eqz v20, :cond_11

    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_11

    goto :goto_1c

    :goto_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_1c
    throw v1
.end method
