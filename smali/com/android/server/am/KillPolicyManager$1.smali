.class public final Lcom/android/server/am/KillPolicyManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/KillPolicyManager;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/am/KillPolicyManager$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string/jumbo v2, "persvc"

    const-string/jumbo v3, "pers"

    const-string/jumbo v4, "sys"

    const-string/jumbo v5, "native"

    const/4 v6, 0x3

    const-string v7, "ActivityManager"

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    iget v11, v0, Lcom/android/server/am/KillPolicyManager$1;->$r8$classId:I

    packed-switch v11, :pswitch_data_0

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.android.server.am.BROADCAST_SET_KPM_POLICY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "BROADCAST_SET_KPM_POLICY_RECEIVED"

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v10, Lcom/android/server/am/KillPolicyManager;->KPM_POLICY_ENABLE:Z

    goto/16 :goto_1

    :cond_0
    const-string/jumbo v2, "com.android.server.am.BROADCAST_SET_KPM_DEBUG"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "BROADCAST_SET_KPM_DEBUG_RECEIVED"

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v10, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    goto/16 :goto_1

    :cond_1
    const-string/jumbo v2, "com.android.server.am.BROADCAST_SET_KPM_ONOFF"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "BROADCAST_SET_KPM_ONOFF_RECEIVED"

    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->sPmmEnabledBySpcm:Z

    const-string/jumbo v2, "persist.sys.kpm_onoff"

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    const-string/jumbo v1, "Normal"

    invoke-virtual {v0, v1}, Lcom/android/server/am/KillPolicyManager;->forceChangeState(Ljava/lang/String;)V

    sput-boolean v9, Lcom/android/server/am/KillPolicyManager;->sPmmEnabledBySpcm:Z

    const-string/jumbo v0, "false"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    sput-boolean v10, Lcom/android/server/am/KillPolicyManager;->sPmmEnabledBySpcm:Z

    const-string/jumbo v0, "true"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v2, "com.android.server.am.BROADCAST_SET_KPM_STATE"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "BROADCAST_SET_KPM_STATE_RECEIVED"

    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "KpmState"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "KPM CHANGE STATE: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-virtual {v0, v1}, Lcom/android/server/am/KillPolicyManager;->forceChangeState(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "getExtras is null"

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "com.sec.server.am.BROADCAST_SET_PMM_DMABUF_LEAK_DETECTOR_SOURCE"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "BROADCAST_PMM_DMABUF_LEAK_DETECTOR_SOURCE_RECEIVED"

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "SOURCE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/pmm/PersonalizedMemoryManager$LazyHolder;->INSTANCE:Lcom/android/server/am/pmm/PersonalizedMemoryManager;

    if-eqz v0, :cond_8

    iget-object v1, v1, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->mDmaBufLeakDetector:Lcom/android/server/am/pmm/DmaBufLeakDetector;

    if-eqz v1, :cond_8

    sget-object v2, Lcom/android/server/am/pmm/DmaBufLeakDetector;->ISSUE_TRACKER_INTENT_LISTENERS_LIST:[Ljava/lang/String;

    :goto_0
    const-string v3, "DmaBufLeakDetector"

    if-ge v9, v8, :cond_7

    aget-object v4, v2, v9

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v0, "Listener app message received : "

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v10, v1, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsListenerAppInstalled:Z

    goto :goto_1

    :cond_6
    add-int/2addr v9, v10

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "Listener app message received but not found"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_1
    return-void

    :pswitch_0
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v11, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_11

    :cond_9
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "power"

    invoke-virtual {v1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    iget-object v11, v0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    iget-object v11, v11, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->-$$Nest$smgetInstance(Landroid/content/Context;)Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "ChimeraTriggerManager::onReceive() -  deviceInDoze: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", chimeraTriggerRequired: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v11, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mChimeraTriggerRequired:Z

    invoke-static {v7, v12, v13}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    if-eqz v1, :cond_b

    iget-boolean v12, v11, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mChimeraTriggerRequired:Z

    if-eqz v12, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-wide v14, v11, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mLastTriggeredTime:J

    sub-long/2addr v12, v14

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "ChimeraTriggerManager::onReceive() - need to trigger, elapsedTime: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-wide v14, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->TRIGGER_MIN_INTERVAL:J

    cmp-long v12, v12, v14

    if-gez v12, :cond_a

    const-string v11, "ChimeraTriggerManager::onReceive() - Not enough time has passed since the previous trigger."

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    const-string v12, "ChimeraTriggerManager::onReceive() - PMM_CRITICAL_TRIGGER_ACTION has been fired."

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v12, "com.samsung.PMM_CRITICAL_TRIGGER"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, "android"

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v12, v11, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v14, "com.samsung.android.permission.BROADCAST_PMM_CRITICAL_TRIGGER"

    invoke-virtual {v12, v7, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v11, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mLastTriggeredTime:J

    const/high16 v7, -0x40800000    # -1.0f

    iput v7, v11, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mLastPolicyScore:F

    :goto_2
    sput-boolean v10, Lcom/android/server/am/KillPolicyManager;->mIsChimeraPmmKillTriggered:Z

    :cond_b
    const-string v7, "ActivityManager_kpm"

    if-eqz v1, :cond_c

    iget-object v11, v0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-object v14, v0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    move v15, v8

    move/from16 p1, v9

    iget-wide v8, v14, Lcom/android/server/am/KillPolicyManager;->mLastIdleExitRealTimeMillis:J

    sub-long/2addr v12, v8

    iput-wide v12, v11, Lcom/android/server/am/KillPolicyManager;->mLastAwakeRealTimeMillis:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v11, v0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    iget-wide v12, v11, Lcom/android/server/am/KillPolicyManager;->mLastIdleExitUpTimeMillis:J

    sub-long/2addr v8, v12

    iput-wide v8, v14, Lcom/android/server/am/KillPolicyManager;->mLastAwakeUpTimeMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v11, Lcom/android/server/am/KillPolicyManager;->mLastIdleEnterRealTimeMillis:J

    sget-boolean v8, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v8, :cond_d

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Awake realtime : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    iget-wide v11, v9, Lcom/android/server/am/KillPolicyManager;->mLastAwakeRealTimeMillis:J

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", Awake uptime : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    iget-wide v11, v9, Lcom/android/server/am/KillPolicyManager;->mLastAwakeUpTimeMillis:J

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_c
    move v15, v8

    move/from16 p1, v9

    iget-object v8, v0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-object v9, v0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    iget-wide v13, v9, Lcom/android/server/am/KillPolicyManager;->mLastIdleEnterRealTimeMillis:J

    sub-long/2addr v11, v13

    iput-wide v11, v8, Lcom/android/server/am/KillPolicyManager;->mLastIdleRealTimeMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v9, Lcom/android/server/am/KillPolicyManager;->mLastIdleExitRealTimeMillis:J

    iget-object v8, v0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iput-wide v11, v8, Lcom/android/server/am/KillPolicyManager;->mLastIdleExitUpTimeMillis:J

    sget-boolean v8, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v8, :cond_d

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Idle realtime : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    iget-wide v11, v9, Lcom/android/server/am/KillPolicyManager;->mLastIdleRealTimeMillis:J

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_3
    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    iget-object v8, v0, Lcom/android/server/am/KillPolicyManager;->mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    if-eqz v1, :cond_2a

    iget-object v0, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-object v1, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;->IdleDump:Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    iget-object v9, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->this$0:Lcom/android/server/am/KillPolicyManager;

    const-string v11, ","

    const-string/jumbo v12, "sys.pmm.nativemse"

    if-nez v0, :cond_f

    const-string v0, ""

    invoke-static {v12, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_f

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v13, v0

    if-lt v13, v6, :cond_f

    aget-object v13, v0, p1

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    aget-object v16, v0, v10

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    aget-object v18, v0, v15

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v18, v10

    move/from16 v10, p1

    :goto_4
    if-ge v10, v15, :cond_e

    move/from16 v19, v6

    :try_start_1
    iget-object v6, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    move-object/from16 p0, v6

    new-instance v6, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    move-wide/from16 v20, v13

    int-to-double v13, v10

    mul-double v13, v13, v16

    add-double v13, v13, v20

    double-to-long v13, v13

    invoke-direct {v6, v13, v14, v1}, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;-><init>(JLcom/android/server/am/KillPolicyManager$MemoryLoggingType;)V

    move-object/from16 v13, p0

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v19

    move-wide/from16 v13, v20

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_e
    move/from16 v19, v6

    array-length v6, v0

    const/4 v10, 0x4

    if-lt v6, v10, :cond_10

    aget-object v0, v0, v19

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPmmCycleCountOnPlatformReset:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_1
    move-exception v0

    move/from16 v19, v6

    move/from16 v18, v10

    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "loadNativeDumpProperty exception ; "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_f
    move/from16 v19, v6

    move/from16 v18, v10

    :cond_10
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-wide/from16 v20, v13

    iget-wide v13, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastUptimeMillis:J

    sub-long v13, v20, v13

    const-wide/16 v22, 0x2

    invoke-static/range {v22 .. v23}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v24

    cmp-long v0, v13, v24

    const-string v6, ") added. total size : "

    const-string v10, ", "

    if-gtz v0, :cond_12

    iget-wide v13, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastRealTimeMillis:J

    sub-long v13, v15, v13

    invoke-static/range {v22 .. v23}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v22

    cmp-long v0, v13, v22

    if-lez v0, :cond_11

    goto :goto_7

    :cond_11
    move-object/from16 v24, v1

    move-object v0, v6

    move-object v6, v7

    move-object/from16 v28, v9

    move-object/from16 p0, v11

    move-object/from16 v17, v12

    move-wide/from16 v32, v15

    goto/16 :goto_a

    :cond_12
    :goto_7
    iget-object v0, v9, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    array-length v13, v0

    const-wide v22, 0x7fffffffffffffffL

    move/from16 v14, p1

    move-object/from16 v25, v0

    move-object/from16 v24, v1

    move-object/from16 v27, v6

    move-object/from16 v26, v7

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    move-object/from16 p0, v11

    move-object/from16 v17, v12

    move-wide/from16 v0, v22

    move-wide v6, v0

    move-wide v9, v6

    move-wide v11, v9

    :goto_8
    if-ge v14, v13, :cond_16

    move/from16 v30, v13

    aget-object v13, v25, v14

    move/from16 v31, v14

    if-eqz v13, :cond_13

    iget-object v14, v13, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    if-nez v14, :cond_14

    :cond_13
    move-wide/from16 v32, v15

    goto :goto_9

    :cond_14
    move-wide/from16 v32, v15

    iget-wide v14, v13, Lcom/android/server/am/KillPolicyManager$KpmRaw;->uptimeMillis:J

    move-wide/from16 v34, v14

    iget-wide v14, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastUptimeMillis:J

    cmp-long v14, v34, v14

    if-lez v14, :cond_15

    invoke-static {v5, v13, v11, v12}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getPmmMinDump(Ljava/lang/String;Lcom/android/server/am/KillPolicyManager$KpmRaw;J)J

    move-result-wide v11

    invoke-static {v4, v13, v0, v1}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getPmmMinDump(Ljava/lang/String;Lcom/android/server/am/KillPolicyManager$KpmRaw;J)J

    move-result-wide v0

    invoke-static {v3, v13, v6, v7}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getPmmMinDump(Ljava/lang/String;Lcom/android/server/am/KillPolicyManager$KpmRaw;J)J

    move-result-wide v6

    invoke-static {v2, v13, v9, v10}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getPmmMinDump(Ljava/lang/String;Lcom/android/server/am/KillPolicyManager$KpmRaw;J)J

    move-result-wide v9

    :cond_15
    :goto_9
    add-int/lit8 v14, v31, 0x1

    move/from16 v13, v30

    move-wide/from16 v15, v32

    goto :goto_8

    :cond_16
    move-wide/from16 v32, v15

    cmp-long v13, v22, v11

    if-eqz v13, :cond_17

    iget-object v13, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    new-instance v14, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    sget-object v15, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;->PmmDump:Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    invoke-direct {v14, v11, v12, v15}, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;-><init>(JLcom/android/server/am/KillPolicyManager$MemoryLoggingType;)V

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    new-instance v14, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    invoke-direct {v14, v0, v1, v15}, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;-><init>(JLcom/android/server/am/KillPolicyManager$MemoryLoggingType;)V

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPersistentMemDumpList:Ljava/util/List;

    new-instance v14, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    add-long/2addr v9, v6

    invoke-direct {v14, v9, v10, v15}, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;-><init>(JLcom/android/server/am/KillPolicyManager$MemoryLoggingType;)V

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    const-string/jumbo v9, "recordPmmDump ("

    move-object/from16 v10, v29

    invoke-static {v9, v11, v12, v10}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v0, v27

    invoke-static {v9, v10, v6, v7, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    iget-object v1, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v6, v26

    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    iget-wide v11, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastUptimeMillis:J

    sub-long v13, v20, v11

    sget v1, Lcom/android/server/am/KillPolicyManager;->sNeverCollectWithin:I

    int-to-long v11, v1

    invoke-static {v11, v12}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v11

    cmp-long v1, v13, v11

    if-gtz v1, :cond_18

    iget-wide v11, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastRealTimeMillis:J

    sub-long v15, v32, v11

    sget v1, Lcom/android/server/am/KillPolicyManager;->sNeverCollectWithin:I

    int-to-long v11, v1

    invoke-static {v11, v12}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v11

    cmp-long v1, v15, v11

    if-lez v1, :cond_2b

    :cond_18
    iget-object v1, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget v7, Lcom/android/server/am/KillPolicyManager;->sCompactTriggerSize:I

    if-le v1, v7, :cond_19

    iget-object v1, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getCompactList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    :cond_19
    iget-object v1, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget v7, Lcom/android/server/am/KillPolicyManager;->sCompactTriggerSize:I

    if-le v1, v7, :cond_1a

    iget-object v1, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getCompactList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    :cond_1a
    iget-object v1, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPersistentMemDumpList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget v7, Lcom/android/server/am/KillPolicyManager;->sCompactTriggerSize:I

    if-le v1, v7, :cond_1b

    iget-object v1, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPersistentMemDumpList:Ljava/util/List;

    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getCompactList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPersistentMemDumpList:Ljava/util/List;

    :cond_1b
    move-object/from16 v1, v28

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getDumpMemoryInfo$1()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_22

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_22

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    move/from16 v11, p1

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    :goto_b
    if-ge v11, v9, :cond_21

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v11, v11, 0x1

    check-cast v12, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    move-object/from16 v25, v7

    iget-object v7, v12, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_20

    iget-object v7, v12, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v26, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v27

    sparse-switch v27, :sswitch_data_0

    goto :goto_c

    :sswitch_0
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c

    goto :goto_c

    :cond_1c
    move/from16 v26, v19

    goto :goto_c

    :sswitch_1
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    goto :goto_c

    :cond_1d
    const/16 v26, 0x2

    goto :goto_c

    :sswitch_2
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    goto :goto_c

    :cond_1e
    move/from16 v26, v18

    goto :goto_c

    :sswitch_3
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1f

    goto :goto_c

    :cond_1f
    move/from16 v26, p1

    :goto_c
    packed-switch v26, :pswitch_data_1

    :cond_20
    move-object v7, v2

    move-object/from16 v26, v3

    goto :goto_d

    :pswitch_1
    move-object v7, v2

    move-object/from16 v26, v3

    iget-wide v2, v12, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    move-wide/from16 v27, v2

    iget-wide v2, v12, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    add-long v2, v27, v2

    add-long/2addr v15, v2

    goto :goto_d

    :pswitch_2
    move-object v7, v2

    move-object/from16 v26, v3

    iget-wide v2, v12, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    move-wide/from16 v27, v2

    iget-wide v2, v12, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    add-long v2, v27, v2

    add-long v20, v2, v20

    goto :goto_d

    :pswitch_3
    move-object v7, v2

    move-object/from16 v26, v3

    iget-wide v2, v12, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    move-wide/from16 v27, v2

    iget-wide v2, v12, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    add-long v2, v27, v2

    add-long/2addr v13, v2

    :goto_d
    move-object v2, v7

    move-object/from16 v7, v25

    move-object/from16 v3, v26

    goto :goto_b

    :cond_21
    move-wide v2, v15

    move-wide/from16 v4, v20

    goto :goto_e

    :cond_22
    const-wide/16 v22, 0x0

    move-wide/from16 v2, v22

    move-wide v4, v2

    move-wide v13, v4

    :goto_e
    cmp-long v7, v13, v22

    if-lez v7, :cond_23

    iget-object v7, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    new-instance v9, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    move-object/from16 v11, v24

    invoke-direct {v9, v13, v14, v11}, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;-><init>(JLcom/android/server/am/KillPolicyManager$MemoryLoggingType;)V

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_23
    move-object/from16 v11, v24

    :goto_f
    cmp-long v7, v2, v22

    if-lez v7, :cond_24

    iget-object v7, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    new-instance v9, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    invoke-direct {v9, v2, v3, v11}, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;-><init>(JLcom/android/server/am/KillPolicyManager$MemoryLoggingType;)V

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    cmp-long v7, v4, v22

    if-lez v7, :cond_25

    iget-object v7, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPersistentMemDumpList:Ljava/util/List;

    new-instance v9, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    invoke-direct {v9, v4, v5, v11}, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;-><init>(JLcom/android/server/am/KillPolicyManager$MemoryLoggingType;)V

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    const-string/jumbo v7, "recordIdleMemDump ("

    invoke-static {v7, v13, v14, v10}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {v7, v10, v4, v5, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    iget-object v0, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "TYPE"

    move/from16 v4, v19

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iget-wide v4, v1, Lcom/android/server/am/KillPolicyManager;->mLastAwakeRealTimeMillis:J

    long-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    float-to-double v9, v4

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    add-double/2addr v9, v11

    double-to-int v4, v9

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v4

    iget-wide v9, v1, Lcom/android/server/am/KillPolicyManager;->mLastAwakeUpTimeMillis:J

    long-to-float v7, v9

    div-float/2addr v7, v5

    float-to-double v9, v7

    add-double/2addr v9, v11

    double-to-int v7, v9

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v4

    iget-wide v9, v1, Lcom/android/server/am/KillPolicyManager;->mLastIdleRealTimeMillis:J

    long-to-float v7, v9

    div-float/2addr v7, v5

    float-to-double v9, v7

    add-double/2addr v9, v11

    double-to-int v7, v9

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v13, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastRealTimeMillis:J

    sub-long/2addr v9, v13

    long-to-float v7, v9

    div-float/2addr v7, v5

    float-to-double v9, v7

    add-double/2addr v9, v11

    double-to-int v7, v9

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-wide v13, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastUptimeMillis:J

    sub-long/2addr v9, v13

    long-to-float v7, v9

    div-float/2addr v7, v5

    float-to-double v9, v7

    add-double/2addr v9, v11

    double-to-int v5, v9

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    const-string v4, "DITI"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_26

    const-string v3, "FNAI"

    iget-object v4, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    invoke-static {v4}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getJsonSummary(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_26
    iget-object v3, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_27

    const-string v3, "FSAI"

    iget-object v4, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    invoke-static {v4}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getJsonSummary(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_27
    iget-object v3, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPersistentMemDumpList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_28

    const-string v3, "FPAI"

    iget-object v4, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPersistentMemDumpList:Ljava/util/List;

    invoke-static {v4}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getJsonSummary(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_28
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v3, v18

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_10

    :catch_2
    const-string/jumbo v2, "failed to create the KPUT"

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    sget-boolean v2, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v2, :cond_29

    const-string/jumbo v2, "Sending to HQM : "

    invoke-static {v2, v0, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    invoke-virtual {v1, v0}, Lcom/android/server/am/KillPolicyManager;->sendHqmBigData(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastUptimeMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastRealTimeMillis:J

    iget-object v0, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_2b

    :try_start_3
    iget-object v0, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getLinearRegressionFactor(Ljava/util/List;)Landroid/util/Pair;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v8, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPmmCycleCountOnPlatformReset:I

    iget v1, v1, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_11

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "saveNativeDumpProperty exception ; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_2a
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2b
    :goto_11
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x3ebdafe9 -> :sswitch_3
        -0x3b1c63dd -> :sswitch_2
        0x1becd -> :sswitch_1
        0x3472f6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
