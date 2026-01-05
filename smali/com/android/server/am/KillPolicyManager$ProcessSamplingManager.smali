.class public final Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mCurrentState:I

.field public mIsSampleDevice:Z

.field public mSampler:Lcom/android/server/am/KillPolicyManager$ProcessSampler;

.field public mSkipCount:I

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->this$0:Lcom/android/server/am/KillPolicyManager;

    return-void
.end method


# virtual methods
.method public final activate(Landroid/content/Context;)V
    .locals 17

    move-object/from16 v1, p0

    iget v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mCurrentState:I

    const/4 v2, 0x6

    const-string v3, " )"

    const-string v4, " mSkipCount="

    const/4 v5, 0x1

    const-string v6, "ActivityManager_kpm"

    const/4 v7, 0x0

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/server/am/KillPolicyManager$DeviceInfoHelper;->URI_ISSUE_TRACKER:Landroid/net/Uri;

    const-string/jumbo v0, "sem_ssdid"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ssdid/SemSsdidManagerService;

    const/4 v8, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/ssdid/SemSsdidManagerService;->getSsdid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    if-gez v0, :cond_1

    neg-int v0, v0

    goto :goto_0

    :cond_0
    move v0, v8

    :cond_1
    :goto_0
    if-ne v0, v8, :cond_2

    goto/16 :goto_9

    :cond_2
    new-instance v8, Lcom/android/server/am/KillPolicyManager$ProcessSampler;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v8, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->mTotalProcessInfos:Ljava/util/ArrayList;

    iput-object v8, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mSampler:Lcom/android/server/am/KillPolicyManager$ProcessSampler;

    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v8

    const-string v9, "KOREA"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string/jumbo v9, "USA"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    rem-int/lit8 v0, v0, 0x64

    const/16 v8, 0x1e

    if-ge v0, v8, :cond_4

    move v0, v5

    goto :goto_1

    :cond_4
    move v0, v7

    :goto_1
    iput-boolean v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mIsSampleDevice:Z

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mSkipCount:I

    iput v5, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mCurrentState:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Process sampler initialized! ( mIsSampleDevice="

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mIsSampleDevice:Z

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mSkipCount:I

    invoke-static {v8, v3, v6, v0}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_5
    if-nez p1, :cond_6

    invoke-virtual {v1}, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->deactivate()V

    return-void

    :cond_6
    iget-object v8, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mSampler:Lcom/android/server/am/KillPolicyManager$ProcessSampler;

    sget-object v0, Lcom/android/server/am/KillPolicyManager$DeviceInfoHelper;->URI_ISSUE_TRACKER:Landroid/net/Uri;

    const-string v0, ""

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/server/am/KillPolicyManager$DeviceInfoHelper;->URI_ISSUE_TRACKER:Landroid/net/Uri;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v11, v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    const/4 v10, 0x2

    if-nez v9, :cond_7

    :try_start_0
    const-string v0, "Cannot find the issue tracker provider."

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_a

    :cond_7
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-ge v11, v5, :cond_9

    const-string v0, "Cannot find any userdata in the issue tracker provider."

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    :goto_2
    move/from16 v16, v5

    move v14, v7

    goto/16 :goto_6

    :cond_9
    :try_start_1
    const-string/jumbo v11, "model"

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v12, "useMode"

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string/jumbo v13, "ro.product.model"

    invoke-static {v13, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_8

    move v14, v7

    :goto_3
    if-eq v14, v10, :cond_c

    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v16, v5

    :try_start_3
    const-string v5, "Find an issue tracker info.model="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", curModel="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", curUseMode="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "UT"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v14, v10

    goto :goto_4

    :cond_a
    const-string/jumbo v0, "NR"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_b

    move/from16 v14, v16

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_b
    :goto_4
    move/from16 v5, v16

    const/4 v2, 0x6

    goto :goto_3

    :catch_1
    move-exception v0

    move/from16 v16, v5

    goto :goto_5

    :cond_c
    move/from16 v16, v5

    goto :goto_6

    :catch_2
    move-exception v0

    move/from16 v16, v5

    move v14, v7

    :goto_5
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_6
    if-eqz v9, :cond_d

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_d
    if-ne v14, v10, :cond_e

    move/from16 v0, v16

    goto :goto_7

    :cond_e
    move v0, v7

    :goto_7
    iput-boolean v0, v8, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->mIsUserTrialDevice:Z

    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mSampler:Lcom/android/server/am/KillPolicyManager$ProcessSampler;

    iget-boolean v0, v0, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->mIsUserTrialDevice:Z

    if-nez v0, :cond_f

    iget-boolean v2, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mIsSampleDevice:Z

    if-nez v2, :cond_f

    invoke-virtual {v1}, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->deactivate()V

    return-void

    :cond_f
    if-eqz v0, :cond_10

    move v2, v7

    goto :goto_8

    :cond_10
    const/4 v2, 0x6

    :goto_8
    iget v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mSkipCount:I

    const-string v5, " maxSkip="

    const-string v8, " isUserTrial="

    if-ge v0, v2, :cond_11

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mSkipCount:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Skipped process sampling. ( mIsSampleDevice="

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mIsSampleDevice:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mSampler:Lcom/android/server/am/KillPolicyManager$ProcessSampler;

    iget-boolean v7, v7, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->mIsUserTrialDevice:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mSkipCount:I

    invoke-static {v4, v2, v5, v3, v0}, Lcom/android/server/am/BroadcastController$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->deactivate()V

    goto :goto_9

    :cond_11
    iput v7, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mSkipCount:I

    iput v10, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mCurrentState:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Process sampler activated! ( mIsSampleDevice="

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mIsSampleDevice:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mSampler:Lcom/android/server/am/KillPolicyManager$ProcessSampler;

    iget-boolean v7, v7, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->mIsUserTrialDevice:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mSkipCount:I

    invoke-static {v1, v2, v5, v3, v0}, Lcom/android/server/am/BroadcastController$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    return-void

    :goto_a
    if-eqz v9, :cond_12

    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_b

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_12
    :goto_b
    throw v1
.end method

.method public final deactivate()V
    .locals 2

    iget v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mCurrentState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mSampler:Lcom/android/server/am/KillPolicyManager$ProcessSampler;

    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->mTotalProcessInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mCurrentState:I

    const-string p0, "ActivityManager_kpm"

    const-string/jumbo v0, "Process sampler deactivated!"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final report(Lcom/android/server/am/KillPolicyManager$KpmRaw;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mCurrentState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mSampler:Lcom/android/server/am/KillPolicyManager$ProcessSampler;

    iput-object v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mProcessSampler:Lcom/android/server/am/KillPolicyManager$ProcessSampler;

    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->this$0:Lcom/android/server/am/KillPolicyManager;

    sget-boolean v2, Lcom/android/server/am/KillPolicyManager;->KPM_POLICY_ENABLE:Z

    if-nez v2, :cond_1

    goto/16 :goto_9

    :cond_1
    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    const-string v4, "ActivityManager_kpm"

    if-nez v2, :cond_2

    const-string/jumbo v0, "it has \'zero\' samples."

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v6, "TYPE"

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "DRAM"

    iget v7, v0, Lcom/android/server/am/KillPolicyManager;->mTotalMem:I

    mul-int/lit16 v7, v7, 0x400

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v6, "SWPT"

    iget v7, v0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v6, "UPTM"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    const-wide/16 v9, 0x3c

    div-long/2addr v7, v9

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "KVER"

    const-string v7, "4.7"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_8

    sget-object v7, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    array-length v10, v7

    move v11, v9

    :goto_0
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v14, 0x4090000000000000L    # 1024.0

    const-wide/16 v16, 0x0

    if-ge v11, v10, :cond_4

    aget-object v2, v7, v11

    move/from16 v18, v3

    iget-object v3, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    aget-wide v16, v2, v9

    aget-wide v19, v2, v8

    move/from16 v21, v10

    add-long v9, v16, v19

    long-to-double v9, v9

    div-double/2addr v9, v14

    add-double/2addr v9, v12

    double-to-long v9, v9

    const/4 v12, 0x3

    aget-wide v16, v2, v12

    move-wide/from16 v12, v16

    goto :goto_1

    :catch_0
    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_3
    move/from16 v21, v10

    move-wide/from16 v9, v16

    move-wide v12, v9

    :goto_1
    invoke-virtual {v6, v9, v10}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v18

    move/from16 v10, v21

    const/4 v9, 0x0

    goto :goto_0

    :cond_4
    move/from16 v18, v3

    sget-object v2, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    array-length v7, v2

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v7, :cond_6

    aget-object v10, v2, v9

    iget-object v11, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [J

    aget-wide v10, v10, v8

    long-to-double v10, v10

    div-double/2addr v10, v14

    add-double/2addr v10, v12

    double-to-long v10, v10

    goto :goto_3

    :cond_5
    move-wide/from16 v10, v16

    :goto_3
    invoke-virtual {v6, v10, v11}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    sget-object v2, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    array-length v7, v2

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v7, :cond_9

    aget-object v10, v2, v9

    iget-object v11, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [J

    aget-wide v10, v10, v18

    long-to-double v10, v10

    div-double/2addr v10, v14

    add-double/2addr v10, v12

    double-to-long v10, v10

    goto :goto_5

    :cond_7
    move-wide/from16 v10, v16

    :goto_5
    invoke-virtual {v6, v10, v11}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_8
    move/from16 v18, v3

    :cond_9
    const-string/jumbo v2, "PRST"

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mProcessSampler:Lcom/android/server/am/KillPolicyManager$ProcessSampler;

    if-eqz v6, :cond_b

    iget-object v7, v6, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->mTotalProcessInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mProcessSampler:Lcom/android/server/am/KillPolicyManager$ProcessSampler;

    iget-boolean v1, v1, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->mIsUserTrialDevice:Z

    xor-int/2addr v1, v8

    invoke-virtual {v6, v7, v1}, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->sampleAdjPriority(IZ)Ljava/util/List;

    move-result-object v1

    move/from16 v3, v18

    const/4 v9, 0x0

    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v9, v6, :cond_b

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;

    invoke-virtual {v6}, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;->toJsonArray()Lorg/json/JSONArray;

    move-result-object v6

    if-lez v9, :cond_a

    add-int/lit8 v3, v3, 0x1

    :cond_a
    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v3, v7

    const/16 v7, 0x4c2c

    if-gt v3, v7, :cond_b

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_b
    const-string/jumbo v1, "PRS"

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ProcessSampleCount="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ProcessSamplesJsonStringSize="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v8

    invoke-virtual {v2, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    :goto_7
    const-string/jumbo v1, "failed to create the KPUT"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    :goto_8
    invoke-virtual {v0, v1}, Lcom/android/server/am/KillPolicyManager;->sendHqmBigData(Ljava/lang/String;)V

    :goto_9
    return-void
.end method
